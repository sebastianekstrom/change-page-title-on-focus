.PHONY: install clean build test release

export PATH := $(shell npm bin):$(PATH)
SHELL := /bin/bash

install:
	npm prune
	npm install

clean:
	rm -rf lib
	rm -rf build

build: clean
	npm run build

release: build
	@./release.sh
