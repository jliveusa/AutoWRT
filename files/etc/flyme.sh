#!/bin/bash
PATH="/usr/sbin:/usr/bin:/sbin:/bin"

# update xray
 mkdir -p /tmp/xray && cd /tmp/xray
 wget -c -T 0 --no-check-certificate https://github.com/jliveusa/AutoWRT/releases/download/xray/xray_amd64
  if [ -f "/tmp/xray/xray_amd64" ]; then
     chmod 755 xray_amd64 && mv -f xray_amd64 /usr/bin/xray
     echo "succeed" 
else
     echo "failed"
 fi
 cd ~ && rm -rf /tmp/xray

# /etc/init.d/passwall restart
/etc/init.d/passwall2 restart
# /etc/init.d/shadowsocksr restart
