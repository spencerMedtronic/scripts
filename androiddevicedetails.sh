#!/bin/bash

#usage: ./androidevicedetails.sh hostlist.txt
while read -u10 line; do
  ssh vagrant@$line "hostname;\
  for container in 'docker ps -f name = testnodeandroid4'; do\
  docker inspect --format='{{.Name}}' $container;\
  docker exec -it $container bash -c 'adb shell getprop ril.serialnumber; adb shell getprop ro.product.model';\
  done";
done 10< $1
