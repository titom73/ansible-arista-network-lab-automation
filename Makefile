### Generic Variables
SHELL := /bin/zsh
# Github CLI tool
GH_CLI := $(which gh)

### Ansible variables
# Inventory for EOS playbooks
INVENTORY ?= inventories/inetsix-lab
# Default Inventory file to look for
INVENTORY_FILE = inventory.yml
# VAULT file
VAULT_FILE ?= ~/bin/op-vault
# Name of the SCOPE to build. Used in --limit scope
SCOPE ?= avd,tooling
# For optional ansible options
ANSIBLE_ARGS ?= --skip-tags debug --diff
# Email to login with Mysocket.io
EMAIL ?=
# Topology file generated for containerlab
CLAB_TOPO ?= containerlabs.yml
# Network used by CLAB to expose containers
CLAB_NETWORK ?= mgmt-fabric
# EAPI NAT Host
JUMP ?= 10.73.1.27
# Ansible Execution builder
EE_FILE ?= ansible-ee-avd/execution-environment-default.yml
EE_IMAGE ?= titom73/ansible-ee-avd
EE_TAG ?= stable-2.12-devel

# NRFU Options to pass to ANTA framework
NRFU_OTIONS ?= --table --tags fabric

.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


################################################################################
### Generic commands & aliases
################################################################################

.PHONY: build
build: avd-build tooling-build ## Build AVD topology, tooling configuration and Containerlab topology

.PHONY: push
push: avd-push ## Alias to push configuration to default lab

.PHONY: clean
clean: clab-clean avd-clean  ## Cleanup local environment (AVD and Containerlab)

.PHONY: deploy
deploy: clab-deploy  ## Power UP containerlab topology

.PHONY: destroy
destroy: clab-destroy  ## Shutdown containerlab topology

.PHONY: pause
pause: clab-pause  ## Save configuration and Shutdown containerlab topology

.PHONY: unpause
unpause: clab-unpause  ## Deploy containerlab with no reconfigure

################################################################################
### AVD build & deploy
################################################################################

.PHONY: avd-build
avd-build: ## Run ansible playbook to build EVPN SCOPE configuration for generic EOS AVD topology and NO CV (No Documentation)
	ansible-playbook playbooks/topology/avd-build-and-deploy.yml --vault-password-file=$(VAULT_FILE) --tags build --skip-tags documentation --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: tooling-build
tooling-build: ## Run ansible playbook to build EVPN SCOPE configuration for generic EOS AVD topology and NO CV (No Documentation)
	ansible-playbook playbooks/topology/avd-build-and-deploy.yml --vault-password-file=$(VAULT_FILE) --tags build --skip-tags documentation --limit tooling -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-build-complete
avd-build-complete: ## Run ansible playbook to build EVPN SCOPE configuration for generic EOS AVD topology and NO CV (No Documentation)
	ansible-playbook playbooks/topology/avd-build-and-deploy.yml --vault-password-file=$(VAULT_FILE) --tags build --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-push
avd-push: ## Run ansible playbook to push previsouly generated configurations via eAPI
	ansible-playbook playbooks/topology/avd-build-and-deploy.yml --vault-password-file=$(VAULT_FILE) --tags "deploy_eapi" --extra-vars "ansible_httpapi_port=443" --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: avd-clean
avd-clean: ## Cleanup Build environment
	cd $(INVENTORY) && rm -rf intended && rm -rf documentation && rm -rf config_backup && rm -f .$(CLAB_TOPO)

.PHONY: cvp-provision
cvp-provision: ## Provision CVP with AVD topology
	ansible-playbook playbooks/cvp/avd-deploy-cvp.yml --vault-password-file=$(VAULT_FILE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: cvp-tags
cvp-tags: ## Provision CVP with AVD topology
	ansible-playbook playbooks/cvp/avd-deploy-tags.yml --vault-password-file=$(VAULT_FILE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)


################################################################################
### AVD Tools
################################################################################

.PHONY: eos-backup
eos-backup: ## Backup current running configuration
	ansible-playbook playbooks/eos-configuration-backup.yml --vault-password-file=$(VAULT_FILE) --limit $(SCOPE) --extra-vars "ansible_httpapi_port=443" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

.PHONY: eos-snapshot
eos-snapshot: ## Extract commands outputs
	ansible-playbook playbooks/topology/eos-snapshot.yml --vault-password-file=$(VAULT_FILE) --limit $(SCOPE) --extra-vars "ansible_httpapi_port=443" -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

# .PHONY: eos-states-validation
# eapi-states-validation: ## eapi-states-validation description
# 	ansible-playbook playbooks/eos-states-validation.yml --limit $(SCOPE) -i $(INVENTORY)/$(INVENTORY_FILE) $(ANSIBLE_ARGS)

################################################################################
### Containerlab Tools
################################################################################

.PHONY: clab-deploy
clab-deploy: ## Deploy containerlab topology
	cd ${INVENTORY} && sudo -E containerlab deploy --topo ${CLAB_TOPO}

.PHONY: clab-destroy
clab-destroy:  ## Destroy Containerlab topology
	cd ${INVENTORY} && sudo containerlab destroy --topo ${CLAB_TOPO}

.PHONY: clab-clean
clab-clean: clab-destroy ## Cleanup Containerlab previous builds
	cd ${INVENTORY} && sudo rm -rf clab-*/*

.PHONY: clab-reload
clab-reload: clab-destroy clab-deploy ## Destroy lab, build configuration and deploy lab.

.PHONY: clab-unpause
clab-unpause: ## Deploy containerlab topology without reconfigure
	cd ${INVENTORY} && sudo -E containerlab deploy --topo ${CLAB_TOPO}

.PHONY: clab-pause
clab-pause:  ## Save configurations and destroy Containerlab topology
	cd ${INVENTORY} && sudo -E containerlab save --topo ${CLAB_TOPO} && sudo containerlab destroy --topo ${CLAB_TOPO}

################################################################################
### AVD Tools
################################################################################

.PHONY: nrfu
nrfu:  ## Run Network testing based on ANTA
	cd network-tests && check-devices.py -i anta-inventory.yml -c tests-bases.yml -u tom -p arista123 $(NRFU_OTIONS)

################################################################################
### Installation process
################################################################################

.PHONY: install
setup-galaxy: ## Install arista collections using ansible galaxy
	ansible-galaxy collection install -r collections.yml

################################################################################
### Ansible Executor Engine
################################################################################

.PHONY: ee-build
ee-build: ## Build Ansible Execution Builder
	ansible-builder build --tag $(EE_IMAGE):$(EE_TAG) --container-runtime docker -f $(EE_FILE) --build-arg EE_BASE_IMAGE=quay.io/ansible/ansible-runner:$(EE_TAG)

.PHONY: ee-build-latest
ee-build-latest: ## Build Ansible Execution Builder
	ansible-builder build --tag $(EE_IMAGE):latest --container-runtime docker -f $(EE_FILE) --build-arg EE_BASE_IMAGE=quay.io/ansible/ansible-runner:latest

.PHONY: ee-runner
ee-runner: ## Execute ansible EE runner in interactive mode
	docker run -it --rm -v ${PWD}:/runner \
		--network ${CLAB_NETWORK} \
		$(EE_IMAGE):$(EE_TAG) zsh
