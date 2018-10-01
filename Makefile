all: webpack

webpack: node_modules
	./node_modules/.bin/webpack-cli

watch: node_modules
	./node_modules/.bin/webpack-cli --watch

node_modules:
	npm install
