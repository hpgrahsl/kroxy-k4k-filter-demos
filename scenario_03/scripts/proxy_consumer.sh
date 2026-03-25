#!/bin/bash

CLEARANCE_LEVEL=${1:-unclassified}
KAFKA_CLI_TOOLS=/usr/bin
BROKER=kroxylicious-${CLEARANCE_LEVEL}:9192
SCHEMA_REGISTRY=http://schema-registry:8081
TOPIC=demo-kroxy-k4k-jsonsr
NUM_MESSAGES=100

$KAFKA_CLI_TOOLS/kafka-json-schema-console-consumer \
  --bootstrap-server "$BROKER" \
  --property schema.registry.url=http://schema-registry:8081 \
  --topic "$TOPIC" \
  --from-beginning \
  --max-messages $NUM_MESSAGES
