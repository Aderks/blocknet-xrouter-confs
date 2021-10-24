#! /bin/sh

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_accounts","params":[],"id":1}' | jq .
	
# ETHaccounts will not return any accounts, use ETHsendRawTransaction 	