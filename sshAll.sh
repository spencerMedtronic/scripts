#!/bin/bash

#usage: ./sshAll.sh hostlist.txt
PASS='fnJMM(JWm0TetkQ'
while read -u10 line; do
  ssh vagrant@$line "echo 'fnJMM(JWm0TetkQ' | sudo sed -i 's/http:\/\/us.archive.ubuntu.com\/ubuntu/https:\/\/mirrors.bloomu.edu\/ubuntu/g' /etc/apt/sources.list; sudo apt-get update";
done 10< $1
