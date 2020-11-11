#!/bin/bash

#usage: ./addsshkeys.sh hostlist.txt

while read line; do
  sshpass -p "fnJMM(JWm0TetkQ" ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@$line;
done < $1
