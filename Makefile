.DEFAULT_GOAL := help

SHELL := /bin/bash

VENV=.venv
VENV_ACTIVATE=source $(VENV)/bin/activate

setup: ## Create a virtualenv in the current directory and install dependencies
	@test -d $(VENV) || virtualenv $(VENV) --no-site-packages
	@./$(VENV)/bin/pip install -r ./requirements.txt

clone: ## Execute the clone script
	@./$(VENV)/bin/python clone.py

.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

