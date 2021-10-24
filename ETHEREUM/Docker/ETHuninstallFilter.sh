#! /bin/sh

filter_id=$1

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_uninstallFilter","params":["'${filter_id}'"],"id":1}' | jq .

