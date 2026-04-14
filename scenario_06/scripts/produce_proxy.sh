#!/bin/bash

if [[ -z "$1" ]]; then
  echo "Usage: $0 <path_to_data_file> <topic>" >&2
  exit 1
fi

if [[ -z "$2" ]]; then
  echo "Usage: $0 <path_to_data_file> <topic>" >&2
  echo "Error: topic name is required" >&2
  exit 1
fi

KAFKA_HOME=/opt/kafka
BROKER=kroxylicious:9192
TOPIC="$2"
PATH_TO_DATA="$1"

$KAFKA_HOME/bin/kafka-console-producer.sh \
  --bootstrap-server "$BROKER" \
  --topic "$TOPIC" \
  < "$PATH_TO_DATA"
