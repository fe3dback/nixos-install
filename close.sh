#!/usr/bin/env bash

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
echo "current dir: ${SCRIPT_DIR}"

tar cvz -C ${SCRIPT_DIR} workspace | nix shell nixpkgs#age --command age -p > workspace.tar.gz.age
