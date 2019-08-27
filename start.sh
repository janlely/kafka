#!/bin/sh
cd kafka_2.11-2.1.1
cp ../server.properties .
sed -i "s/BROKER_ID/$BROKER_ID/g" server.properties
sed -i "s/ZOOKEEPER_CLUSTER/$ZOOKEEPER_CLUSTER/g" server.properties
./bin/kafka-server-start.sh server.properties
