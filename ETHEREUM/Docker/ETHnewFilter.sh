#! /bin/sh

# fromBlock & toBlock info:
# integer block number, or string "latest", "earliest" or "pending"
#   HEX String - an integer block number
#   String "earliest" for the earliest/genesis block
#   String "latest" - for the latest mined block
#   String "pending" - for the pending state/transactions

fromBlock=$1
toBlock=$2
address=$3

# user input needs to provide JSON array of topics
# eg: '["0x000000000000000000000000a94f5374fce5edbc8e2a8697c15331677e6ebf0b",null,["0x000000000000000000000000a94f5374fce5edbc8e2a8697c15331677e6ebf0b","0x000000000000000000000000aff3454fce5edbc8cca8697c15331677e6ebccc"]]'

topics=$4

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_newFilter","params":[{"fromBlock":"'${fromBlock}'","toBlock":"'${toBlock}'","address":"'${address}'","topics": '${topics}'}],"id":1}' | jq .
