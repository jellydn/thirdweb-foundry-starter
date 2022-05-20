.PHONY: all
all: install build test

.PHONY: install
install:
	forge install
	yarn install

.PHONY: deploy
deploy:
	thirdweb deploy

.PHONY: publish
publish:
	thirdweb publish

.PHONY: remappings
remappings:
	forge remappings > remappings.txt

.PHONY: build
build:
	forge build

.PHONY: update
update:
	forge update

.PHONY: test
test:
	forge test -vv

.PHONY: gas-report
gas-report:
	forge test --gas-report

.PHONY: snapshot
snapshot:
	forge snapshot

.PHONY: clean
clean:
	forge clean

.PHONY: analyzers
analyzers:
	slither .

.PHONY: local testnet node
local-node:
	anvil

.PHONY: config
config:
	forge config

.PHONY: help
help:
	forge help