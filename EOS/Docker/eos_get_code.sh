#! /bin/sh

account_name=$1
code_as_wasm=1 #int #must be set to 1 (true)
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/get_code \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"account_name":"'${account_name}'","code_as_wasm":1}' | jq .
