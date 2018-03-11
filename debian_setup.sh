#!/bin/bash

sudo apt-get upgrade
sudo apt-get update
sudo apt-get install jq
echo "alias wiki='`pwd`/wiki.sh'" >> ~/.bashrc
source ~/.bashrc
