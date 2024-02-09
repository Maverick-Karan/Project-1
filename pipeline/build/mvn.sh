#!/bin/bash

echo "*************************************"
echo "********** Building jar *************"
echo "*************************************"

WORKSPACE=/home/ubuntu/demo/jenkins_home/workspace/demo

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"

cp java-app/target/*.war pipleine/build/
