#!/bin/bash

docker login -u maverick8266 -p $PASS

cd /home/ubuntu/ && docker-compose up -d
