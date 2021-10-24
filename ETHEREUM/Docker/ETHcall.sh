#! /bin/sh

from=$1 #address tx sent from
to=$2	#address tx directed to
gas=$3
gasPrice=$4
value=$5
data=$6

# block_parameter info
# integer block number, or string "latest", "earliest" or "pending"
#   HEX String - an integer block number
#   String "earliest" for the earliest/genesis block
#   String "latest" - for the latest mined block
#   String "pending" - for the pending state/transactions

block_parameter=$7


curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_call","params": [{"from": "'${from}'","to": "'${to}'","gas": "'${gas}'","gasPrice": "'${gasPrice}'","value": "'${value}'","data": "'${data}'"}, "'${block_parameter}'"],"id":1}' | jq .

