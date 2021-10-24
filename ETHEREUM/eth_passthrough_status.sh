#! /bin/bash

name=$1

curl -s http://192.168.50.52:8080/list_projects | jq '.result[] | select(.name=="'$name'") | {project_id: .name, project_active: .active, project_expires: .expires, api_token_count: .api_token_count, used_api_tokens: .used_api_tokens}'