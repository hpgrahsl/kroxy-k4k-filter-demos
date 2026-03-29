#!/bin/bash

KAFKA_CLI_TOOLS=/usr/bin
BROKER=kroxylicious:9192
SCHEMA_REGISTRY=http://schema-registry:8081
TOPIC=demo-kroxy-k4k-payments
PATH_TO_DATA="/home/appuser/data/checkout_events.jsonl"
PATH_TO_SCHEMA="/home/appuser/data/checkout_event.avsc"

$KAFKA_CLI_TOOLS/kafka-avro-console-producer \
  --bootstrap-server "$BROKER" \
  --property schema.registry.url="$SCHEMA_REGISTRY" \
  --property value.schema="$(cat "$PATH_TO_SCHEMA")" \
  --topic "$TOPIC" \
  < "$PATH_TO_DATA"
