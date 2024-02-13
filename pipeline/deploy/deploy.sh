#!/bin/bash

chmod 600 pipeline/deploy/key

scp -i pipeline/deploy/key pipeline/deploy/publish.sh ubuntu@prod:/home/ubuntu/
scp -i pipeline/deploy/key pipeline/deploy/docker-compose-prod.yml ubuntu@prod:/home/ubuntu/

ssh -i pipeline/deploy/key ubuntu@prod "echo \"$BUILD_NUMBER\" > /tmp/build.txt; echo \"$IMAGE\" >> /tmp/build.txt"
ssh -i pipeline/deploy/key ubuntu@prod "./publish.sh"
