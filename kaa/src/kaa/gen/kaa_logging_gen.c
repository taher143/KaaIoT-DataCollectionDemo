/*
 * Copyright 2014-2016 CyberVision, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

# include <inttypes.h>
# include <string.h>
# include "platform/stdio.h"
# include "kaa_logging_gen.h"
# include "avro_src/avro/io.h"
# include "avro_src/encoding.h"
# include "utilities/kaa_mem.h"

/*
 * AUTO-GENERATED CODE
 */




static void kaa_logging_data_collection_schema_serialize(avro_writer_t writer, void *data)
{
    if (data) {
        kaa_logging_data_collection_schema_t *record = (kaa_logging_data_collection_schema_t *)data;

        kaa_float_serialize(writer, &record->temperature);
        kaa_float_serialize(writer, &record->humidity);
        kaa_long_serialize(writer, &record->timestamp);
    }
}

static size_t kaa_logging_data_collection_schema_get_size(void *data)
{
    if (data) {
        size_t record_size = 0;
        kaa_logging_data_collection_schema_t *record = (kaa_logging_data_collection_schema_t *)data;

        record_size += AVRO_FLOAT_SIZE;
        record_size += AVRO_FLOAT_SIZE;
        record_size += kaa_long_get_size(&record->timestamp);

        return record_size;
    }

    return 0;
}

kaa_logging_data_collection_schema_t *kaa_logging_data_collection_schema_create(void)
{
    kaa_logging_data_collection_schema_t *record = 
            (kaa_logging_data_collection_schema_t *)KAA_CALLOC(1, sizeof(kaa_logging_data_collection_schema_t));

    if (record) {
        record->serialize = kaa_logging_data_collection_schema_serialize;
        record->get_size = kaa_logging_data_collection_schema_get_size;
        record->destroy = kaa_data_destroy;
    }

    return record;
}

kaa_logging_data_collection_schema_t *kaa_logging_data_collection_schema_deserialize(avro_reader_t reader)
{
    kaa_logging_data_collection_schema_t *record = 
            (kaa_logging_data_collection_schema_t *)KAA_MALLOC(sizeof(kaa_logging_data_collection_schema_t));

    if (record) {
        record->serialize = kaa_logging_data_collection_schema_serialize;
        record->get_size = kaa_logging_data_collection_schema_get_size;
        record->destroy = kaa_data_destroy;

        avro_binary_encoding.read_float(reader, &record->temperature);
        avro_binary_encoding.read_float(reader, &record->humidity);
        avro_binary_encoding.read_long(reader, &record->timestamp);
    }

    return record;
}

