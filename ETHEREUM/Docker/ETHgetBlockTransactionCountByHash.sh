#! /bin/sh

block_hash=$1

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_getBlockTransactionCountByHash","params": ["'${block_hash}'"],"id":1}' | jq .
