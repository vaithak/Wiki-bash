#!/bin/bash

brew install jq

SOURCE_FILE=~/.bash_profile

# check if current shell is
# zsh and change source file
# accordingly
if [ $SHELL == "/bin/zsh" ]; then
    SOURCE_FILE=~/.zshrc
fi
echo -e "\nalias wiki='`pwd`/wiki.sh'" >> $SOURCE_FILE
source $SOURCE_FILE
