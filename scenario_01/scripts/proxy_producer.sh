#!/bin/bash

KAFKA_HOME=/opt/kafka/
BROKER=kroxylicious:9192
TOPIC=demo-kroxy-k4k-basic
PATH_TO_FILE="/home/kafka/data/fake_citizens.jsonl"

$KAFKA_HOME/bin/kafka-console-producer.sh \
  --bootstrap-server "$BROKER" \
  --topic "$TOPIC" \
  < "$PATH_TO_FILE"
