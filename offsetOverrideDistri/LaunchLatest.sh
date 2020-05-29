#!/bin/sh


curl -X POST \
  http://localhost:8083/connectors \
  -H 'Content-Type: application/json' \
  -d '{ "name": "myLatest",
  "config": {
  "connector.class": "org.apache.kafka.connect.file.FileStreamSinkConnector",
  "tasks.max": "1",
  "file": "/tmp/test.sink.latest.txt",
  "topics": "test",
  "consumer.override.auto.offset.reset": "latest",
  "value.converter": "org.apache.kafka.connect.storage.StringConverter"
}
}
'


echo "Status connector : \n"

echo "Earliest : \n"
echo "==================Status================== \n"
curl -X  GET \
 http://localhost:8083/connectors/"myLatest"/status
echo "\n"
