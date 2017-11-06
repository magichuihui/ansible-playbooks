#!/bin/bash
cat $1 | while read line
do
   ssh-copy-id -i ~/keygens/qingdao.pub -p 2323 root@$line
done
