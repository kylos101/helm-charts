#!/usr/bin/env bash

set -euox pipefail

remove_artifacts() {
  make clean
}
trap remove_artifacts EXIT

build/make.sh
build/release.sh


