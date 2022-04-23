SOLIDITY_VERSION ?= stable

compile-solidity:
	docker run --platform linux/amd64 \
		-v ${PWD}/solidity:/solidity \
		ethereum/solc:$(SOLIDITY_VERSION) \
		--abi --bin ./solidity/$(CONTRACT).sol \
		> ${PWD}/solidity/output/${CONTRACT}.${SOLIDITY_VERSION}.bin
