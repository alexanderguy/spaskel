BIN = ./node_modules/.bin
WEBPACK = $(BIN)/webpack-cli
MOCHA = $(BIN)/mocha


all: webpack

webpack: node_modules
	$(WEBPACK)

watch: node_modules
	$(WEBPACK) --watch

node_modules:
	npm install

test: .PHONY
	TS_NODE_COMPILER_OPTIONS='{"module":"commonjs"}' $(MOCHA) --require ./test/node-compat.js --require ts-node/register 'test/**/*.spec.{ts,tsx}'

clean:
	$(RM) dist/index.js

distclean: clean
	$(RM) -r node_modules

.PHONY:
