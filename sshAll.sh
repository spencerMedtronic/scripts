#!/bin/bash

while read -u10 line; do
  ssh vagrant@$line "hostname";
done 10< TNAhosts.txt
