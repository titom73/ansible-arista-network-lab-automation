CURRENT_DIR = $(shell pwd)
DOCKER_NAME ?= avd-k8s-dev
DOCKER_BASE ?= titom73
DOCKER_TAG ?= 3.6
DOCKER_DIR ?= .
ANSIBLE_VERSION ?= 2.9.6

.PHONY: help
help: ## Display help message
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: build
build: ## Build docker image
	docker build -t $(DOCKER_BASE)/$(DOCKER_NAME):$(DOCKER_TAG) $(DOCKER_DIR)

.PHONY: run
run: ## run docker image
	docker run --rm -it \
		-e REPO_AVD_DATA='https://github.com/titom73/ansible-avd-cloudvision-demo.git' \
		-e ANSIBLE_PLAYBOOK='dc1-fabric-deploy-cvp.yml' \
		-e ANSIBLE_TAGS='build' \
		-v /etc/hosts:/etc/hosts $(DOCKER_BASE)/$(DOCKER_NAME):$(DOCKER_TAG)

.PHONY: exec
exec: ## exec docker image
	docker run --rm -it \
		-e REPO_AVD_DATA='https://github.com/titom73/ansible-avd-cloudvision-demo.git' \
		-e ANSIBLE_PLAYBOOK='dc1-fabric-deploy-cvp.yml' \
		-e ANSIBLE_TAGS='build' \
		-v /etc/hosts:/etc/hosts $(DOCKER_BASE)/$(DOCKER_NAME):$(DOCKER_TAG) zsh
