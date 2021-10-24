#! /bin/sh

lower_bound=$1 #date/time in YYYY-MM-DDTHH:MM:SS.sss
limit=$2 #int
json=$3 # boolean
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/get_scheduled_transaction \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"lower_bound":"'${lower_bound}'","limit":'${limit}',"json":'${json}'}' | jq .
