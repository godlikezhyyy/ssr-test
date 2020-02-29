#!/bin/bash
yum -y install wget;
wget https://install.direct/go.sh;
yum install -y zip unzip;
sh go.sh;
systemctl start v2ray;
cat /etc/v2ray/config.json;
aaa=`grep 'port' /etc/v2ray/config.json|awk '{print $2}'|sed s/,//g`;
firewall-cmd --zone=public --add-port=$aaa/tcp --permanent;
reboot;