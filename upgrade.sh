#!/bin/bash
set -x

cd "$( dirname "${BASH_SOURCE[0]}" )"

version=$1 # edge or stable

if [[ "$version" = "" ]]; then
    echo "Usage: ./install.sh edge or ./install.sh stable"
    exit 1
fi

./scripts/uninstall.sh
./scripts/install.sh $version
