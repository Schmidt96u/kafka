#!/bin/sh
curl -X POST \
  http://localhost:8083/connectors \
  -H 'Content-Type: application/json' \
  -d '{ "name": "JDBC_My_SQL",
  "config": {
  "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
  "mode": "bulk",
  "incrementing.column.name": "id",
  "tasks.max": "2",
  "topic.prefix": "JDBC_",
  "topic": "testFinal",
  "connection.user":"Schmidt96u",
  "connection.password":"mdp123",
  "connection.url": "jdbc:mysql://127.0.0.1:3306/JDBCTEST",
  "table.whitelist": "test"
  }
}
'
