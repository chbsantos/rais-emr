#!/bin/bash
set -e

cd etl/

# Push to AWS ECR
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 072163000909.dkr.ecr.us-east-2.amazonaws.com
docker build -t carlos-prod-extract-rais .
docker tag carlos-prod-extract-rais:latest 072163000909.dkr.ecr.us-east-2.amazonaws.com/carlos-prod-extract-rais:latest
docker push 072163000909.dkr.ecr.us-east-2.amazonaws.com/carlos-prod-extract-rais:latest
