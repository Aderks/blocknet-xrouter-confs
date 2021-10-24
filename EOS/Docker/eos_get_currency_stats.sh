#! /bin/sh

code=$1
symbol=$2 # will require user input with double quotes eg. "1.0000 ABC" // requires float with 4 decimals & cap symbol 1-7 in length
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/get_currency_stats \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"code":"'${code}'","symbol":"'${symbol}'"}' | jq .
