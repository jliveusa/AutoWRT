#!/bin/bash
#
# File name: diy.sh
# Description: OpenWrt DIY script part(Before Update feeds)
#

# Remove telephony
sed -i '/telephony/d' feeds.conf.default

# Add other package
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/more/passwall-packages
git clone https://github.com/xiaorouji/openwrt-passwall.git package/more/passwall-luci
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/more/passwall2-luci

git clone https://github.com/jliveusa/luci-app-mosdns -b v5-119 package/more/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/more/v2ray-geodata

svn co https://github.com/fw876/helloworld/branches/luci-app-ssr-plus package/more/luci-app-ssr-plus
svn co https://github.com/fw876/helloworld/branches/lua-neturl package/more/lua-neturl
svn co https://github.com/fw876/helloworld/branches/redsocks2 package/more/redsocks2

git clone https://github.com/izilzty/luci-app-chinadns-ng package/more/luci-app-chinadns-ng
git clone https://github.com/izilzty/openwrt-chinadns-ng.git package/more/chinadns-ng

git clone https://github.com/NagaseKouichi/luci-app-dnsproxy package/more/luci-app-dnsproxy
svn co https://github.com/kiddin9/openwrt-packages/trunk/dnsproxy package/more/dnsproxy

svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ddns-go package/more/luci-app-ddns-go
svn co https://github.com/kiddin9/openwrt-packages/trunk/ddns-go package/more/ddns-go

# Set permission
chmod -R 755 package/more/
