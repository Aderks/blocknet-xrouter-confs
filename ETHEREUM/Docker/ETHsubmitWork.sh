#! /bin/sh

# user input needs to provide JSON array for work_array payload
# work_array format: ["<8 bytes-nonce found>","<32 bytes-headers pow-hash>","<32 bytes-mix digest>"]
# work_array eg: '["0x0000000000000001","0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef","0xD1FE5700000000000000000000000000D1FE5700000000000000000000000000"]'
# work_array format must be: <'[...]'> 

work_array=$1

curl -s localhost:8545 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_submitWork","params": '${work_array}',"id":1}' | jq .

