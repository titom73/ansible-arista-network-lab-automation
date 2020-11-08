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
export MOUNT_FOLDER='/projects'
export GIT_BIN=$(which git)
export PIP_BIN=$(which pip3)
export ANSIBLE_PLAYBOOK_BIN=$(which ansible-playbook)
export COLLECTION_AVD_GIT=""
export COLLECTION_CVP=""

# AVD data repository
if [[ -z REPO_AVD_DATA ]]; then
    export REPO_AVD_DATA='https://github.com/arista-netdevops-community/avd-for-compose-kubernetes-demo.git'
else
    echo 'REPO_AVD_DATA is set from outside with: '${REPO_AVD_DATA}
fi

# AVD branch to use from repository
if [[ -z AVD_BRANCH ]]; then
    export AVD_BRANCH='devel'
else
    echo 'AVD_BRANCH is set from outside with: '${REPO_AVD_DATA}
fi

# TAG to use to run AVD playbook. Default is build
if [[ -z ANSIBLE_TAGS ]]; then
    export ANSIBLE_TAGS="build"
fi

# Playbook path to use from $REPO_AVD_DATA
if [[ -z ANSIBLE_PLAYBOOK ]]; then
    export ANSIBLE_PLAYBOOK="dc1-fabric-deploy-cvp.yml"
fi

# Installation method for AVD collections. Support: < git | galaxy >
if [[ -z AVD_SOURCE ]]; then
    export ANSIBLE_PLAYBOOK="galaxy"
fi

cd ${MOUNT_FOLDER}

# if [ -d .git ]; then
#   echo 'Repo already there, pulling out new version'
#   ${GIT_BIN} fetch origin HEAD
#   ${GIT_BIN} pull origin HEAD
# else
#   echo 'Cloning repository ...'
#   ${GIT_BIN} clone ${REPO_AVD_DATA} .
# fi;

if [ -f requirements.txt ]; then
  echo 'Found additional requirements, installing ...'
  ${PIP_BIN} install -r requirements.txt
fi;

if [ "${AVD_SOURCE}" = "galaxy" ]; then
  ansible-galaxy collection install arista.avd
elif [ "${AVD_SOURCE}" = "git" ]
  ${GIT_BIN} clone --depth=1 ${REPO_AVD_DATA}
fi

echo "* Installing arista.cvp collection from ansible-galaxy"
ansible-galaxy collection install arista.cvp

echo '* Checking playbook sanity'
${ANSIBLE_PLAYBOOK_BIN} ${ANSIBLE_PLAYBOOK} --syntax-check

echo '* Building configuration and documentation'
${ANSIBLE_PLAYBOOK_BIN} ${ANSIBLE_PLAYBOOK} --tags ${ANSIBLE_TAGS}

echo '* Building documentation'
if [[ -f medias/stylesheet.css ]]; then
  cp -r medias/stylesheet.css documentation/
fi;
mkdocs build -f mkdocs.yml
rm -rf /web/*
mv site/* /web/

# echo '* Infinite wait...'
# tail -f /dev/null
