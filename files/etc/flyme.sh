#!/bin/bash
PATH="/usr/sbin:/usr/bin:/sbin:/bin"

# update frp
# mkdir -p /tmp/frp && cd /tmp/frp
# wget -c -T 0 --no-check-certificate https://github.com/jliveusa/AutoWRT/releases/download/frp/frpc_amd64 -O frpc
# chmod 755 frpc
# rm -f /usr/bin/frpc
# mv -f frpc /usr/bin/frpc
# cd ~ && rm -rf /tmp/frp
# /etc/init.d/frp restart
 
# update dnsmasq
# cd /tmp
# wget -T 0 --no-check-certificate https://github.com/felixonmars/dnsmasq-china-list/blob/master/accelerated-domains.china.conf -O accelerated-domains.china.conf.tmp
# mv -f /tmp/accelerated-domains.china.conf.tmp /etc/dnsmasq.d/accelerated-domains.china.conf
# /etc/init.d/dnsmasq restart

# update mosdns
 mkdir -p /tmp/mosdns && cd /tmp/mosdns
 wget -c -T 0 --no-check-certificate https://github.com/jliveusa/AutoWRT/releases/download/mosdns/mosdns-linux-amd64.zip -O mosdns.zip
 unzip mosdns.zip
 chmod 755 mosdns
 rm -f /usr/bin/mosdns
 mv -f mosdns /usr/bin/mosdns
 cd ~ && rm -rf /tmp/mosdns
 /etc/init.d/mosdns restart
 
# update xray
 mkdir -p /tmp/xray && cd /tmp/xray
 wget -c -T 0 --no-check-certificate https://github.com/jliveusa/AutoWRT/releases/download/xray/xray_amd64 -O xray
 chmod 755 xray
 rm -f /usr/bin/xray
 mv -f xray /usr/bin/xray
 cd ~ && rm -rf /tmp/xray

# update v2ray
# mkdir -p /tmp/v2ray && cd /tmp/v2ray
# wget -c -T 0 --no-check-certificate https://github.com/jliveusa/AutoWRT/releases/download/v2ray/v2ray_amd64 -O v2ray
# chmod 755 v2ray
# rm -f /usr/bin/v2ray
# mv -f v2ray /usr/bin/v2ray
# cd ~ && rm -rf /tmp/v2ray
 
# /etc/init.d/passwall restart
/etc/init.d/passwall2 restart
# /etc/init.d/shadowsocksr restart
