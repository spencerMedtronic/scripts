#!/bin/bash

for server in 'cat TNAhosts.txt'; do
    sshpass -p "fnJMM(JWm0TetkQ" ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@$server
done
