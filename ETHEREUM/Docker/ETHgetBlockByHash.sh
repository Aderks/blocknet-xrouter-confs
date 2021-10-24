#! /bin/sh

block_hash=$1
show_tx_details=$2 # true or false ... if set to true, returns full tx objects, if false only the hashes of the tx

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_getBlockByHash","params": ["'${block_hash}'",'${show_tx_details}'],"id":1}' | jq .

