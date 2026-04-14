#!/bin/bash

if [[ -z "$1" || ! "$1" =~ ^[0-9]+$ ]]; then
  echo "Usage: $0 <num_messages> <topic> <broker>" >&2
  exit 1
fi

if [[ -z "$2" ]]; then
  echo "Usage: $0 <num_messages> <topic> <broker>" >&2
  echo "Error: topic name is required" >&2
  exit 1
fi

if [[ -z "$3" ]]; then
  echo "Usage: $0 <num_messages> <topic> <broker>" >&2
  echo "Error: broker is required" >&2
  exit 1
fi

KAFKA_HOME=/opt/kafka
BROKER="$3"
TOPIC="$2"
NUM_MESSAGES="$1"

$KAFKA_HOME/bin/kafka-console-consumer.sh \
  --bootstrap-server "$BROKER" \
  --topic "$TOPIC" \
  --from-beginning \
  --max-messages $NUM_MESSAGES
