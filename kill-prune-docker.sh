#!/bin/bash

#usage: ./kill-prine-docker.sh hostlist.txt
PASS='fnJMM(JWm0TetkQ'
while read -u10 line; do
  ssh vagrant@$line "docker stop $(docker ps -aq) && yes | docker system prune && echo '$PASS' | sudo -S ./tnUp.sh";
done 10< $1
