SHELL := /usr/bin/bash

.PHONY: test lint ci

install-tools:
	@echo "Installing local dev tools (optional)"
	@command -v bats >/dev/null || echo "Install bats to run tests locally"

test:
	bats -r tests

ci:
	set -e; \
	chmod +x */*.sh 2>/dev/null || true; \
	bats -r tests; \
	bash ./test-workflows.sh | cat