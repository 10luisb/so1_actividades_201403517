#! /usr/bin/env bash


read -p "Ingresa tu usuario de github: " GITHUB_USER

github_user=$(curl -s https://api.github.com/users/$GITHUB_USER | jq '.name')
github_id=$(curl -s https://api.github.com/users/$GITHUB_USER | jq '.id')
github_create_at=$(curl -s https://api.github.com/users/$GITHUB_USER | jq '.created_at')

github_user=$(sed -e 's/^"//' -e 's/"$//' <<<"$github_user") 
github_create_at=$(sed -e 's/^"//' -e 's/"$//' <<<"$github_create_at") 

if [[ ! -d "/tmp/$(date +'%d-%m-%Y')" ]]
then
mkdir /tmp/$(date +"%d-%m-%Y")
fi
echo "Usuario: $github_user, Usuario ID: $github_id, Eres usuario github desde: $github_create_at." 
