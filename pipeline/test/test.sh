#!/bin/bash

echo "****************************"
echo "***** Testing the code *****"
echo "****************************"

WORKSPACE=/home/ubuntu/coder/jenkins_home/workspace/coder

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
