#!/bin/bash
#
# Purpose: Entrypoint for AVD Demo container
#
# Author: @titom73
# Date: 2020-10-26
# Version: 0.2
# License: BSD
# --------------------------------------

# Builder variables
# Protected var if not set in K8S specs:
# - name: REPO_AVD_DATA
#   value: "https://github.com/inetsix/avd-for-compose-kubernetes-demo.git"
# - name: ANSIBLE_PLAYBOOK
#   value: "dc1-fabric-deploy-cvp.yml"
# - name: ANSIBLE_TAGS
#   value: "build"

# Local binaries

echo "* Installing arista.cvp collection from ansible-galaxy"
curl -fsSL https://get.avd.sh | bash


echo '* Infinite wait...'
tail -f /dev/null
