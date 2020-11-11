#!/bin/bash

while read -u10 line; do
  ssh vagrant@$line "echo 'fnJMM(JWm0TetkQ' | sudo -S apt-get -y update";
done 10< TNAhosts.txt
