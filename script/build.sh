#!/usr/bin/env bash
#
# build.sh
#
# Build docker images for kerberos cluster.

cd "$(dirname "$0")"
cd ..

# Build each service in parallel instead of sequentially
docker-compose -f docker-compose.yml build --parallel
