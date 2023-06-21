#!/usr/bin/env bash

set -e

project_dir=$(dirname $(dirname $(readlink -f "$0")))
version_file=$project_dir/version

docker build --build-arg "HARBOR_DB_VERSION=$(cat $version_file)" -t leonseng/harbor-db:$(cat $version_file)-no-hugepages ./
