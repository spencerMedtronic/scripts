#!/bin/bash

#usage: ./sshAll.sh hostlist.txt
PASS='fnJMM(JWm0TetkQ'
while read -u10 line; do
  ssh vagrant@$line "echo 'fnJMM(JWm0TetkQ' | sudo -S sudo apt-get -y update; sudo apt-get -y upgrade; sudo apt-get -y dist-upgrade; sudo reboot";
done 10< $1
