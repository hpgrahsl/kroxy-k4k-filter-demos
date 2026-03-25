#!/bin/bash

KAFKA_CLI_TOOLS=/usr/bin
BROKER=kroxylicious-topsecret:9192
SCHEMA_REGISTRY=http://schema-registry:8081
TOPIC=demo-kroxy-k4k-jsonsr
PATH_TO_DATA="/home/appuser/data/fake_citizens.jsonl"
PATH_TO_SCHEMA="/home/appuser/data/fake_citizens.schema.json"

$KAFKA_CLI_TOOLS/kafka-json-schema-console-producer \
  --bootstrap-server "$BROKER" \
  --property schema.registry.url="$SCHEMA_REGISTRY" \
  --property value.schema="$(cat "$PATH_TO_SCHEMA")" \
  --topic "$TOPIC" \
  < "$PATH_TO_DATA"
