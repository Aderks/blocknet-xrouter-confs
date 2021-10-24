#! /bin/sh

limit=$1
lower_bound=$2
json=$3 # boolean
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/get_producers \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"limit":"'${limit}'","lower_bound":"'${lower_bound}'","json":'${json}'}' | jq .
