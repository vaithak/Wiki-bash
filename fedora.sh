#!bin/bash
sudo dnf upgrade
sudo dnf update
sudo dnf install jq
echo "alias wiki='`pwd`/wiki.sh'" >> ~/.bashrc
source ~/.bashrc
