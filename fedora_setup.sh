#!bin/bash
sudo dnf upgrade
sudo dnf update
sudo dnf install jq
echo -e "\nalias wiki='`pwd`/wiki.sh'" >> ~/.bashrc
source ~/.bashrc
