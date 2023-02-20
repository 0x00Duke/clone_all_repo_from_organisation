#!/bin/bash

if [[ -n "$1" ]]; then
  ACCESS_TOKEN=$1
fi

if [[ -n "$2" ]]; then
  ORG_NAME=$2
fi

if [[ -z "$ACCESS_TOKEN" ]]; then
  echo "ACCESS_TOKEN environment variable not set."
  exit 1
fi

if [[ -z "$ORG_NAME" ]]; then
  echo "ORG_NAME environment variable not set."
  exit 1
fi

for repo in $(curl -s -iH "Authorization: token ${ACCESS_TOKEN}" https://api.github.com/orgs/${ORG_NAME}/repos?per_page=200 | grep ssh_url | rev | cut -d'"' -f2 | rev); do 
  git clone $repo; 
done
