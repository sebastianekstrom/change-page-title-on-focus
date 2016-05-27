.PHONY: install clean build

install:
	npm prune
	npm install

clean:
	rm -rf lib
	rm -rf build

build: clean
	coffee -o lib -c src
