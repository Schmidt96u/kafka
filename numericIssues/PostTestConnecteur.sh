#!/bin/sh

curl -X POST \
  http://localhost:8083/connectors \
  -H 'Content-Type: application/json' \
  -d '{ "name": "Postgres-source_test", 
  "config": { 
    "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector", 
    "tasks.max": "1", 
    "topic.prefix":"numeric-issue-test",
    "connection.url": "jdbc:postgresql://localhost:5432/theo.schmidt?user=theo.schmidt&password=mdp123&preparedStatementCacheQueries=0", 
    "table.whitelist": "postgres_source2", 
    "numeric.mapping": "best_fit",
     "mode": "timestamp+incrementing",
      "incrementing.column.name": "id",
       "timestamp.column.name": "updated_at",
        "key.converter":"org.apache.kafka.connect.json.JsonConverter", 
        "key.converter.schemas.enable":"true", 
        "value.converter":"org.apache.kafka.connect.json.JsonConverter", 
         "value.converter.schemas.enable":"true" } }
'


echo "Status connector : \n"

echo "Postgres-source_test : \n"
echo "==================Status================== \n"
curl -X  GET \
 http://localhost:8083/connectors/"Postgres-source_test"/status
echo "\n"
