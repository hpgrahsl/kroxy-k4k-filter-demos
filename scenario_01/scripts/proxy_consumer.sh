#!/bin/bash

KAFKA_HOME=/opt/kafka/
BROKER=kroxylicious:9192
TOPIC=demo-kroxy-k4k-basic

$KAFKA_HOME/bin/kafka-console-consumer.sh \
  --bootstrap-server "$BROKER" \
  --topic "$TOPIC" \
  --from-beginning

