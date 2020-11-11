#!/bin/bash

PASS='fnJMM(JWm0TetkQ'
while read -u10 line; do
  ssh vagrant@$line "hostname";
done 10< TNAhosts.txt
