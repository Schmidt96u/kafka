#!/bin/sh

curl -X POST \
  http://localhost:8083/connectors \
  -H 'Content-Type: application/json' \
  -d '{ "name": "myEarliest",
  "config": {
  "connector.class": "org.apache.kafka.connect.file.FileStreamSinkConnector",
  "tasks.max": "1",
  "file": "/tmp/test.sink.earliest.txt",
  "topics": "test",
  "consumer.override.auto.offset.reset": "earliest",
  "value.converter": "org.apache.kafka.connect.storage.StringConverter"
}
'


echo "Status connector : \n"
echo "Earliest : \n"
echo "==================Config================== \n"
curl -X  GET \
 http://localhost:8083/connectors/"myEarliest"
echo "==================Status================== \n"
curl -X  GET \
 http://localhost:8083/connectors/"myEarliest"/status
echo "\n"
cat /tmp/test.sink.earliest.txt

