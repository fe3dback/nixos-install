#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "hostID param is required"
    echo "using: $0 my_host_id"
    echo "some known hosts: [home_hp_omen]"
    exit 1
fi

HOST_ID="$1"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
echo "current dir: ${SCRIPT_DIR}"
echo "hostID: ${HOST_ID}"

./open.sh
./workspace/install.sh ${HOST_ID}