# Copyright Layer5, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include .github/build/Makefile.core.mk
include .github/build/Makefile.show-help.mk
#----------------------------------------------------------------------------
# Academy
#----------------------------------------------------------------------------
## ------------------------------------------------------------
----LOCAL_BUILDS: Show help for available targets
	
## Local: Install site dependencies
setup:
	npm install

## Local: Build and run site locally with draft and future content enabled.
site: check-go
	hugo server -D -F

## Local: Build site for local consumption
build:
	hugo build

## Build site for local consumption
build-preview:
	hugo --baseURL=$(BASEURL)

## Empty build cache and run on your local machine.
clean:
	hugo --cleanDestinationDir
	make setup
	make site

## Fix Markdown linting issues
lint-fix:
	@echo "Checking for markdownlint-cli2..."
	@command -v markdownlint-cli2 > /dev/null || { \
		echo "markdownlint-cli2 not found. Attempting to install globally..."; \
		command -v npm > /dev/null || { echo "npm is not installed. Please install Node.js/npm and re-run 'make lint-fix'."; exit 1; }; \
		npm install -g markdownlint-cli2; \
	}
	@echo "Running markdownlint-cli2 --fix..."
	@markdownlint-cli2 --fix "**/*.md" "#node_modules" "#public" "#resources"

## ------------------------------------------------------------
----MAINTENANCE: Show help for available targets

check-go:
	@echo "Checking if Go is installed..."
	@command -v go > /dev/null || (echo "Go is not installed. Please install it before proceeding."; exit 1)
	@echo "Go is installed."

## Update the academy-theme package to latest version
theme-update:
	echo "Updating to latest academy-theme..." && \
	hugo mod get github.com/layer5io/academy-theme

.PHONY: setup build build-preview site clean lint-fix check-go theme-update
