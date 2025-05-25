#!/bin/bash
docker build -t terraform-act-test .

docker run --rm -it \
  -v $(pwd):/github/workspace \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e DRY_RUN=true \
  -e ACT=true \
  -e INPUT_DRY_RUN=true \
  -e GITHUB_TOKEN=dummy_token \
  terraform-act-test \
  act workflow_dispatch -s ARM_CLIENT_ID=fake-client-id -s ARM_CLIENT_SECRET=fake-secret -s ARM_TENANT_ID=fake-tenant-id -s ARM_SUBSCRIPTION_ID=fake-subscription-id
