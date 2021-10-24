#! /bin/sh

curl -s --request POST \
  --url http://localhost:8888/v1/chain/get_info \
  --header 'accept: application/json' | jq .