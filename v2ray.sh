#!/bin/bash
yum -y install wget;
wget https://install.direct/go.sh;
yum install -y zip unzip;
sh go.sh;
systemctl start v2ray;
echo '账号密码:'
grep 'clients' -A 5 /etc/v2ray/config.json;
aaa=`grep 'port' /etc/v2ray/config.json|awk '{print $2}'|sed s/,//g`;
echo 'port: $aaa'
firewall-cmd --zone=public --add-port=$aaa/tcp --permanent;
echo '开启bbr加速';
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh;
bbrFlg= `lsmod | grep bbr|wc -l`
if [[ bbrFlg=1 ]]; then
	echo 'bbr加速成功'
else
	echo 'bbr加速失败，maybe会慢点'
fi
echo '重启';
reboot;