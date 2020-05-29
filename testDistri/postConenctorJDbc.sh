#!/bin/sh
curl -X POST \
  http://localhost:8083/connectors \
  -H 'Content-Type: application/json' \
  -d '{ "name": "JDBC",
  "config": {
  "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
  "mode": "bulk",
  "incrementing.column.name": "id",
  "tasks.max": "1",
  "topic.prefix": "JDBC_",
  "topic": "testFinal",
  "connection.url": "jdbc:postgresql://localhost:5432/theo.schmidt?user=theo.schmidt&password=mdp123",
  "table.whitelist": "tasktest"
  }
}
'