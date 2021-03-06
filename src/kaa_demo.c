/*
 * ----------------------------------------------------------------------------
 * "THE BEER-WARE LICENSE" (Revision 42):
 * <luis.echeverri6408@gmail.com>, <manuelj6@gmail.com> <alberthm12@gmail.com>
 * wrote this file. As long as you retain this notice you can do whatever you 
 * want with this stuff. If we meet some day, and you think this stuff is worth
 * it, you can buy us a beer in return 
 * ----------------------------------------------------------------------------
 */
/* File:         Datacollection
   Desined by:   Luis Felipe Echeverri
                 Alberth Moreno
				 Juan Manuel Gomez
				 
   Description:  This code implements a simple datacollection device, with possibility to change 
                 sampletime through configuration system 
*/  
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include <kaa.h>
#include <platform/kaa_client.h>
#include <kaa_error.h>
#include <kaa_configuration_manager.h>
#include <kaa_logging.h>
#include <gen/kaa_logging_gen.h>
#include <platform/kaa_client.h>
#include <utilities/kaa_log.h>
#include <platform-impl/common/ext_log_upload_strategies.h>

static int32_t sample_period;
extern kaa_error_t ext_unlimited_log_storage_create(void **log_storage_context_p, kaa_logger_t *logger);

const minTemperature = 17.5, maxTemperature = 30;
const minHumidity = 40, maxHumidity = 60;
#define RAND_MAX        0x7fffffff

/*--------------------------------------------------------------------------*/
/* get_temperature_sample: this function returns ADC value in voltage range */
/*                         from 0 to 3.3, is used for emulates temperature  */
/*                         the ADC is 10bits   */
/*--------------------------------------------------------------------------*/
static float get_temperature_sample(void)
{
    /* For the sake of example, ADC data is used */   
    float temp;
    float fr;
    fr = (float)rand()/RAND_MAX;
    temp = minTemperature + (maxTemperature - minTemperature) * fr;
    temp = temp + ((maxTemperature - minTemperature) * (fr - 0.5)) * 0.03;
    return temp;
}

/*--------------------------------------------------------------------------*/
/* get_humidity_sample: this function returns ADC value in voltage range */
/*                         from 0 to 3.3, is used for emulates temperature  */
/*                         the ADC is 10bits   */
/*--------------------------------------------------------------------------*/
static float get_humidity_sample(void)
{
    /* For the sake of example, ADC data is used */   
    float hum;
    float fr;
    fr = (float)rand()/RAND_MAX;
   
    hum = minHumidity + (maxHumidity - minHumidity) * fr;
    hum = hum + ((maxHumidity - minHumidity) * (fr - 0.5)) * 0.03;
  
    return hum;
}
/*--------------------------------------------------------------------------*/
/* periodically_callback: called by Kaa SDK once per second.                   */
/*--------------------------------------------------------------------------*/
static void periodically_callback(void *context)
{
    static uint8_t current_time = 0;
    current_time++;
    /* Respect sample period */
    if ( current_time >= sample_period) {
    current_time=0;
        float temperature = get_temperature_sample();
        float humidity = get_humidity_sample();
        int64_t timestamp = time(NULL);
        printf("Sampled temperature is close to: %d\r\n", (int)temperature);
        printf("Sampled humidity is close to: %d\r\n", (int)humidity);
        printf("TimeStamp is : %d\r\n", timestamp);
        kaa_user_log_record_t *log_record = kaa_logging_data_collection_schema_create();
        log_record->temperature = temperature;
        log_record->humidity = humidity;
        log_record->timestamp = timestamp;
        kaa_logging_add_record(kaa_client_get_context(context)->log_collector, log_record, NULL);
    }
}
/*--------------------------------------------------------------------------*/
/* on_configuration_updated: This function receives new configuration data. */
/*--------------------------------------------------------------------------*/
static kaa_error_t on_configuration_updated(void *context, const kaa_root_configuration_t *conf)
{
    (void) context;
    printf("Received configuration data. New sample period: %d seconds\n", conf->sample_period);
    sample_period = conf->sample_period;
    return KAA_ERR_NONE;
}
int main(void)
{
    /* Prepare Kaa client. */
    kaa_client_t *kaa_client = NULL;
    kaa_error_t error = kaa_client_create(&kaa_client, NULL);
    if (error) {
        return EXIT_FAILURE;
    }
    /* Configure notification manager. */
    kaa_configuration_root_receiver_t receiver = {
        .context = NULL,
        .on_configuration_updated = on_configuration_updated
    };
    error = kaa_configuration_manager_set_root_receiver(
        kaa_client_get_context(kaa_client)->configuration_manager,
        &receiver);
    if (error) {
        return EXIT_FAILURE;
    }
    /* Obtain default configuration shipped within SDK. */
    const kaa_root_configuration_t *dflt = kaa_configuration_manager_get_configuration(
        kaa_client_get_context(kaa_client)->configuration_manager);
    printf("Default sample period: %d seconds\n", dflt->sample_period);
    sample_period = dflt->sample_period;
    
    /* Configure data collection. */
    void *log_storage_context         = NULL;
    void *log_upload_strategy_context = NULL;
    /* The internal memory log storage distributed with Kaa SDK. */
    error = ext_unlimited_log_storage_create(&log_storage_context,
        kaa_client_get_context(kaa_client)->logger);
    if (error) {
        return EXIT_FAILURE;
    }
    /* Create a strategy based on timeout. */
    error = ext_log_upload_strategy_create(
        kaa_client_get_context(kaa_client), &log_upload_strategy_context,
        KAA_LOG_UPLOAD_BY_TIMEOUT_STRATEGY);
    if (error) {
        return EXIT_FAILURE;
    }
    /* Strategy will upload logs every 5 seconds. */
    error = ext_log_upload_strategy_set_upload_timeout(log_upload_strategy_context, 5);
    if (error) {
        return EXIT_FAILURE;
    }
    /* Specify log bucket size constraints. */
    kaa_log_bucket_constraints_t bucket_sizes = {
         .max_bucket_size       = 32,   /* Bucket size in bytes. */
         .max_bucket_log_count  = 2,    /* Maximum log count in one bucket. */
    };
    /* Initialize the log storage and strategy (by default, they are not set). */
    error = kaa_logging_init(kaa_client_get_context(kaa_client)->log_collector,
        log_storage_context, log_upload_strategy_context, &bucket_sizes);
    if (error) {
        return EXIT_FAILURE;
    }
    
    /* Start Kaa SDK's main loop. periodically_callback is called once per second. */
    error = kaa_client_start(kaa_client, periodically_callback, kaa_client, 1);
    /* Should get here only after Kaa stops. */
    kaa_client_destroy(kaa_client);
    
    if (error) {
        return EXIT_FAILURE;
    }
    return EXIT_SUCCESS;
}
