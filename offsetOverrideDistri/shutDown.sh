#!/bin/sh


sudo kill -9  `sudo lsof -t -i:8083` `sudo lsof -t -i:9092` `sudo lsof -t -i:2181` 

