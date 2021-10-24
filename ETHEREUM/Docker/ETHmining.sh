#! /bin/sh

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_mining","params": [],"id":1}' | jq .

# ETH_mining will always be false