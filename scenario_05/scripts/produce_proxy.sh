#!/bin/bash

if [[ -z "$1" ]]; then
  echo "Usage: $0 <path_to_data_file>" >&2
  exit 1
fi

KAFKA_HOME=/opt/kafka
BROKER=kroxylicious:9192
TOPIC=demo-kroxy-k4k-rotation
PATH_TO_DATA="$1"

$KAFKA_HOME/bin/kafka-console-producer.sh \
  --bootstrap-server "$BROKER" \
  --topic "$TOPIC" \
  < "$PATH_TO_DATA"
