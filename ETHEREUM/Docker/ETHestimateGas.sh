#! /bin/sh

from=$1 #address tx sent from
to=$2	#address tx directed to
gas=$3
gasPrice=$4
value=$5
data=$6


curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_estimateGas","params": [{"from": "'${from}'","to": "'${to}'","gas": "'${gas}'","gasPrice": "'${gasPrice}'","value": "'${value}'","data": "'${data}'"}],"id":1}' | jq .

