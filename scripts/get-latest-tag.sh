#!/usr/bin/env bash

set -e

curl -s https://hub.docker.com/v2/repositories/goharbor/harbor-db/tags \
  | jq -r '.results[].name' \
  | grep -P '^v\d+\.\d+\.\d+$' \
  | sort -V \
  | tail -n1
