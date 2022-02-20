#!/bin/bash
PATH="/usr/sbin:/usr/bin:/sbin:/bin"

# update frp
 mkdir -p /tmp/frp && cd /tmp/frp
 wget -c -T 0 --no-check-certificate https://github.com/jliveusa/AutoWRT/releases/download/frp/frp.zip -O frp.zip
 unzip frp.zip
 chmod 755 frpc_amd64 && mv -f frpc_amd64 /usr/bin/frpc
 cd ~ && rm -rf /tmp/frp

# update dnsmasq
# wget -T 0 --no-check-certificate https://github.com/felixonmars/dnsmasq-china-list/blob/master/accelerated-domains.china.conf -O /tmp/accelerated-domains.china.conf.tmp
# mv -f /tmp/accelerated-domains.china.conf.tmp /etc/dnsmasq.d/accelerated-domains.china.conf

# update mosdns
 mkdir -p /tmp/mosdns && cd /tmp/mosdns
 wget -c -T 0 --no-check-certificate https://github.com/jliveusa/AutoWRT/releases/download/mosdns/mosdns-linux-amd64.zip -O mosdns.zip
 unzip mosdns.zip
 chmod 755 mosdns && mv -f mosdns /usr/bin/mosdns
 cd ~ && rm -rf /tmp/mosdns
 
# update xray
 mkdir -p /tmp/xray && cd /tmp/xray
 wget -c -T 0 --no-check-certificate https://github.com/jliveusa/AutoWRT/releases/download/xray/xray.zip -O xray.zip
 unzip xray.zip
 chmod 755 xray_amd64 && mv -f xray_amd64 /usr/bin/xray
 cd ~ && rm -rf /tmp/xray
 
# restart services
# /etc/init.d/dnsmasq restart
 /etc/init.d/frp restart
 /etc/init.d/mosdns restart
 /etc/init.d/shadowsocksr restart
