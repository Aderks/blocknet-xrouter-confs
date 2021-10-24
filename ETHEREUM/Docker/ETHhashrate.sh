#! /bin/sh

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_hashrate","params": [],"id":1}' | jq .

# ETH_hashrate will only return 0x0 hashrate