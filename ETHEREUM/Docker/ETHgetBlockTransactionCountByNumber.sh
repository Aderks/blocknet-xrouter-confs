#! /bin/sh

block_parameter=$1

# block_parameter info
# integer block number, or string "latest", "earliest" or "pending"
#   HEX String - an integer block number
#   String "earliest" for the earliest/genesis block
#   String "latest" - for the latest mined block
#   String "pending" - for the pending state/transactions


curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_getBlockTransactionCountByNumber","params": ["'${block_parameter}'"],"id":1}' | jq .
