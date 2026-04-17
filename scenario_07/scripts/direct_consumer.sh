#!/bin/bash

KAFKA_CLI_TOOLS=/usr/bin
BROKER=kafka:9092
SCHEMA_REGISTRY=http://schema-registry:8081
TOPIC=insurance-claims
NUM_MESSAGES=500

$KAFKA_CLI_TOOLS/kafka-avro-console-consumer \
  --bootstrap-server "$BROKER" \
  --property schema.registry.url="$SCHEMA_REGISTRY" \
  --topic "$TOPIC" \
  --from-beginning \
  --max-messages $NUM_MESSAGES
