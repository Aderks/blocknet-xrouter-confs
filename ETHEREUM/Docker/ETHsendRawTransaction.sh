#! /bin/sh

tx_data=$1

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_sendRawTransaction","params":["'${tx_data}'"],"id":1}' | jq .

