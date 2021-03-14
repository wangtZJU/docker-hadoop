#!/bin/bash
# usage: sudo ./add_hosts.sh {host_ip} /etc/hosts
sed -i \
    -e '/namenode$/d' \
    -e '/datanode$/d' \
    -e '/resourcemanager$/d' \
    -e '/nodemanager$/d' \
    -e '/historyserver$/d' $2

sed -i \
    -e "1i $1 namenode" \
    -e "1i $1 datanode" \
    -e "1i $1 resourcemanager" \
    -e "1i $1 nodemanager" \
    -e "1i $1 historyserver" $2


