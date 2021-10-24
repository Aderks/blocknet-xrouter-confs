#! /bin/sh

binargs=$1
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/abi_json_to_bin \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"binargs":"'${binargs}'"}' | jq .
