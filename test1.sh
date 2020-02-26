#!/bin/bash
git clone -b master https://github.com/flyzy2005/ss-fly;
echo -e "zy123\n\n\n\n" | ss-fly/ss-fly.sh -ssr;
ss-fly/ss-fly.sh -bbr;
reboot;
