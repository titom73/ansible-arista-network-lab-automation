#!/bin/bash
#
# Purpose: Run AVD demo
# Author: @titom73
# Date: 2020-04-27
# Version: 0.1
# License: BSD
# --------------------------------------



export PIP_BIN=$(which pip3)
export ANSIBLE_PLAYBOOK=$(which ansible-playbook)
export PROJECT_ROOT='/projects'

cd ${PROJECT_ROOT}

echo '* Checking playbook sanity'
${ANSIBLE_PLAYBOOK} dc1-fabric-deploy-cvp.yml --syntax-check
${ANSIBLE_PLAYBOOK} dc1-fabric-reset-cvp.yml --syntax-check
${ANSIBLE_PLAYBOOK} dc1-ztp-configuration.yml --syntax-check
