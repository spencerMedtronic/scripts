#!/bin/bash

while read line; do
  sshpass -p "fnJMM(JWm0TetkQ" ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@$line;
done < TNAhosts.txt
