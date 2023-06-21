#!/usr/bin/env bash

set -e

project_dir=$(dirname $(dirname $(readlink -f "$0")))
version_file=$project_dir/version

docker push leonseng/harbor-db:$(cat $version_file)-no-hugepages
