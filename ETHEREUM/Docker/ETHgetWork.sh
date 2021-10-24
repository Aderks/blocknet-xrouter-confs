#! /bin/sh

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_getWork","params": [],"id":1}' | jq .

# ETH_getWork will never return mining work