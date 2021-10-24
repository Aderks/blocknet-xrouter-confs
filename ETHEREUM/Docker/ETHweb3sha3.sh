#! /bin/sh

data=$1

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"web3_sha3","params":["'${data}'"],"id":1}' | jq .

