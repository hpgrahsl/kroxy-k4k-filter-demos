#!/bin/bash

KAFKA_HOME=/opt/kafka/
BROKER=kafka:9092
TOPIC=demo-kroxy-k4k-basic

$KAFKA_HOME/bin/kafka-console-consumer.sh \
  --bootstrap-server "$BROKER" \
  --topic "$TOPIC" \
  --from-beginning
