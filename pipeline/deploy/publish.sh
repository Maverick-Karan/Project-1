#!/bin/bash

export BUILD_NUMBER=$(sed -n '1p' /tmp/build.txt)
export IMAGE=$(sed -n '2p' /tmp/build.txt)

docker login -u maverick8266 -p PASS

cd /home/ubuntu/ && docker-compose -f docker-compose-prod.yml up -d
