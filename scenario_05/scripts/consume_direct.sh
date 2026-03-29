#!/bin/bash

if [[ -z "$1" || ! "$1" =~ ^[0-9]+$ ]]; then
  echo "Usage: $0 <num_messages>" >&2
  exit 1
fi

KAFKA_HOME=/opt/kafka
BROKER=kafka:9092
TOPIC=demo-kroxy-k4k-rotation
NUM_MESSAGES="$1"

$KAFKA_HOME/bin/kafka-console-consumer.sh \
  --bootstrap-server "$BROKER" \
  --topic "$TOPIC" \
  --from-beginning \
  --max-messages $NUM_MESSAGES
