#! /bin/sh

code=$1
account=$2
symbol=$3 # will require user input with double quotes eg. "1.0000 ABC" // requires float with 4 decimals & cap symbol 1-7 in length
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/get_currency_balance \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"code":"'${code}'","account":"'${account}'","symbol":"'${symbol}'"}' | jq .
