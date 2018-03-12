#!/bin/bash

sudo apt-get upgrade
sudo apt-get update
sudo apt-get install jq
source ~/.bashrc
echo -e "\nalias wiki='`pwd`/wiki.sh'" >> ~/.bashrc
