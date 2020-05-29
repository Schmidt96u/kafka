#!/bin/sh
curl -X  PUT \
 http://localhost:8083/connectors/"$1"/pause