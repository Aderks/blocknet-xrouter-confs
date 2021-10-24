#! /bin/sh

code=$1
action=$2
binargs=$3
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/abi_bin_to_json \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"code":"'${code}'","action":"'${action}'","binargs":"'${binargs}'"}' | jq .
