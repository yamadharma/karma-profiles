#!/usr/bin/env sh

mkdir -p /var/tmp/${USER}
export JULIA_DEPOT_PATH=/var/tmp/${USER}:${JULIA_DEPOT_PATH}
