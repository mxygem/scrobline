#!/bin/bash

KT="docker compose exec kafka /opt/kafka/bin/kafka-topics.sh"

$KT --bootstrap-server localhost:9092 --create --topic listens.raw --partitions 6
$KT --bootstrap-server localhost:9092 --create --topic listens.enriched --partitions 6
$KT --bootstrap-server localhost:9092 --create --topic listens.dlq --partitions 1
