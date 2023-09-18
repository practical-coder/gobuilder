#!/usr/bin/env bash
set -e
set -o xtrace
release_url='https://api.github.com/repos/dominikh/go-tools/releases/latest'
tar_name=staticcheck_linux_amd64.tar.gz
query="[.assets[] | select(.name | match(\"${tar_name}$\"))][0] | .browser_download_url"
tar_url=$(curl -s "${release_url}" | jq -r "${query}")
echo "$tar_url"
filename=$(basename "$tar_url")
wget "$tar_url"
tar zxvf "$tar_name"