#! /bin/sh

account_name=$1
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/get_account \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"account_name":"'${account_name}'"}' | jq .
