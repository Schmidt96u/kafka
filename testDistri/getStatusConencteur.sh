#!/bin/sh
curl -X  GET \
 http://localhost:8083/connectors/"$1"
curl -X  GET \
 http://localhost:8083/connectors/"$1"/status
