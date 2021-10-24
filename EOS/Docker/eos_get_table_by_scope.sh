#! /bin/sh

code=$1
table=$2
lower_bound=$3
upper_bound=$4
limit=$5 #int
reverse=$6 #boolean
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/get_table_by_scope \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"code":"'${code}'","table":"'${table}'","lower_bound":"'${lower_bound}'","upper_bound":"'${upper_bound}'","limit":'${limit}',"reverse":'${reverse}'}' | jq .
