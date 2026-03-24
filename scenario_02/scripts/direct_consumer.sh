#!/bin/bash

KAFKA_CLI_TOOLS=/usr/bin
BROKER=kafka:9092
SCHEMA_REGISTRY=http://schema-registry:8081
TOPIC=demo-kroxy-k4k-jsonsr

$KAFKA_CLI_TOOLS/kafka-json-schema-console-consumer \
  --bootstrap-server "$BROKER" \
  --property schema.registry.url=http://schema-registry:8081 \
  --property value.schema="$(cat "$PATH_TO_SCHEMA")" \
  --topic "$TOPIC" \
  --from-beginning
