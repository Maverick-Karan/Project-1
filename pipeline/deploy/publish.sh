#!/bin/bash

docker login -u maverick8266 -p $PASS

cd /home/ubuntu/ && docker-compose -f docker-compose-prod.yml up -d
