#! /bin/sh

tx_hash=$1

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_getTransactionByHash","params": ["'${tx_hash}'"],"id":1}' | jq .

