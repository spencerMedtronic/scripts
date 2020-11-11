#!/bin/bash

PASS='fnJMM(JWm0TetkQ'
while read -u10 line; do
  ssh vagrant@$line "echo '$PASS' | sudo -S apt-get -y update";
done 10< TNAhosts.txt
