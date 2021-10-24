#! /bin/sh

block_hash=$1
tx_index_position=$2

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_getTransactionByBlockHashAndIndex","params": ["'${block_hash}'","'${tx_index_position}'"],"id":1}' | jq .
