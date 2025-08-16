#!/usr/bin/env bash

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
echo "current dir: ${SCRIPT_DIR}"

nix shell nixpkgs#age --command age -d ${SCRIPT_DIR}/workspace.tar.gz.age > ${SCRIPT_DIR}/workspace.tar.gz
tar -xzf ${SCRIPT_DIR}/workspace.tar.gz -C ${SCRIPT_DIR}
rm ${SCRIPT_DIR}/workspace.tar.gz