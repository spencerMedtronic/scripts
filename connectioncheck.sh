#!/bin/bash

#usage: ./connectioncheck.sh hostlist.txt
PASS='fnJMM(JWm0TetkQ'
while read -u10 line; do
  ssh vagrant@$line "hostname";
done 10< $1
