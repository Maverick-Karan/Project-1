#!/bin/bash

echo "********************" 
echo "** Pushing Image ***" 
echo "********************"

export IMAGE="hkhcoder" 

echo "*** Logging In ***"
docker login -u maverick8266 -p $PASS 
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG maverick8266/$IMAGE:$BUILD_TAG 
echo "*** Pushing image ***" 
docker push maverick8266/$IMAGE:$BUILD_TAG
