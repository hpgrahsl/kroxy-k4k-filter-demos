#!/bin/bash

KAFKA_CLI_TOOLS=/usr/bin
BROKER=kroxylicious:9192
SCHEMA_REGISTRY=http://schema-registry:8081
TOPIC=demo-kroxy-k4k-payments

$KAFKA_CLI_TOOLS/kafka-avro-console-consumer \
  --bootstrap-server "$BROKER" \
  --property schema.registry.url="$SCHEMA_REGISTRY" \
  --topic "$TOPIC" \
  --from-beginning
