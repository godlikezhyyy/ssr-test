#!/bin/bash
git clone -b master https://github.com/flyzy2005/ss-fly;
read -p "请输入您SSR的密码：" input;echo -e "$input\n\n\n\n\n" | ss-fly/ss-fly.sh -ssr;
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh;
echo '开始重启，请稍候';
reboot;