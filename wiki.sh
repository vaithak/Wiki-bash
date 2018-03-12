#!/bin/bash

search=$1
search=`sed 's/ /%20/g' <<< $search`
inp=`curl -s -H "Accept:application/json" "https://en.wikipedia.org/w/api.php?action=opensearch&format=json&redirects=return&search=$search"`
length=2

echo -e "Top 2 relevant searches\n"
for i in `seq 0 $((length-1))`
do
    output=`jq --argjson i "$i" '.[1][$i]' <<< $inp`
    echo -e "\033[0;32m Title: \033[0;36m $output"
    output=`jq --argjson i "$i" '.[2][$i]' <<< $inp`
    echo -e "\033[0;32m About: \033[0;36m $output"
    output=`jq --argjson i "$i" '.[3][$i]' <<< $inp`
    echo -e "\033[0;32m Wiki Link: \033[0;36m $output\n"
done

echo -e "\033[0m"
