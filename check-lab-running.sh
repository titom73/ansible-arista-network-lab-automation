#!/bin/sh

CLAB=$(which containerlab)
LAB_PREFIX=${1:-clab-fabric-avd}

echo "🪐 Containerlab path: ${CLAB}"
echo "❓ Lab prefix is: ${LAB_PREFIX}"

NODES_RUNNING=$(sudo $CLAB inspect --all | grep $LAB_PREFIX | wc -l)
echo "🔎 Number of nodes running: ${NODES_RUNNING}"
if (( ${NODES_RUNNING:0} == 0 )); then
    echo "❌ Lab is not running !"
    exit 1
fi

echo "✅ Lab is running..."
exit 0