#! /bin/sh

block_num_or_id=$1
  
curl -s --request POST \
  --url http://localhost:8888/v1/chain/get_block_header_state \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"block_num_or_id":"'${block_num_or_id}'"}' | jq .
