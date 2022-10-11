#!/bin/sh

DOCKER=$(which docker)
LAB_PREFIX=${1:-clab-fabric-avd}

echo "🪐 Docker path: ${DOCKER}"
echo "❓ Lab prefix is: ${LAB_PREFIX}"

NODES_RUNNING=$($DOCKER ps | grep clab-fabric-avd | wc -l)
echo "🔎 Number of nodes running: ${NODES_RUNNING}"
if (( ${NODES_RUNNING:0} == 0 )); then
    echo "❌ Lab is not running !"
    exit 1
fi

echo "✅ Lab is running..."
exit 0