#! /bin/sh

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_newBlockFilter","params": [],"id":1}' | jq .
