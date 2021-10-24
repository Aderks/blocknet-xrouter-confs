#! /bin/sh

code=$1
table=$2
scope=$3
index_position=$4 #can only be: primary, secondary, tertiary, fourth, fifth, sixth, seventh, eighth, ninth, tenth
key_type=$5 #uint64_t or name
encode_type=$6
upper_bound=$7
lower_bound=$8
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/get_table_rows \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"code":"'${code}'","table":"'${table}'","scope":"'${scope}'","index_position":"'${index_position}'","key_type":"'${key_type}'","encode_type":"'${encode_type}'","upper_bound":"'${upper_bound}'","lower_bound":"'${lower_bound}'"}' | jq .
