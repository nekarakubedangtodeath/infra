#!/bin/bash
docker exec -it nekara-infra-kafka-1 kafka-topics --bootstrap-server localhost:9092 --create --topic $1 --partitions $2
