#!/bin/bash

PASS='fnJMM(JWm0TetkQ'
while read -u10 line; do
  ssh vagrant@$line "dos2unix --version";
done 10< $1
