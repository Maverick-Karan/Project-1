#!/bin/bash

scp -i pipeline/deploy/prod pipeline/deploy/publish.sh ubuntu@prod:/home/ubuntu/
scp -i pipeline/deploy/prod pipeline/deploy/docker-compose.yml ubuntu@prod:/home/ubuntu/

ssh -i pipeline/deploy/prod ubuntu@prod "export IMAGE=$IMAGE"
ssh -i pipeline/deploy/prod ubuntu@prod "./home/ubuntu/publish.sh"
