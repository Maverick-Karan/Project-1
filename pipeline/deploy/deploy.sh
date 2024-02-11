#!/bin/bash

sudo chmod 600 pipeline/deploy/key

scp -i pipeline/deploy/key pipeline/deploy/publish.sh ubuntu@prod:/home/ubuntu/
scp -i pipeline/deploy/key pipeline/deploy/docker-compose.yml ubuntu@prod:/home/ubuntu/

ssh -i pipeline/deploy/key ubuntu@prod "export IMAGE=$IMAGE"
ssh -i pipeline/deploy/key ubuntu@prod "./home/ubuntu/publish.sh"
