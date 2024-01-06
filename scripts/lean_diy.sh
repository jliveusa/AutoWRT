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

svn co https://github.com/v2rayA/v2raya-openwrt/trunk/luci-app-v2raya package/more/luci-app-v2raya
svn co https://github.com/v2rayA/v2raya-openwrt/trunk/v2raya package/more/v2raya
svn co https://github.com/v2rayA/v2raya-openwrt/trunk/v2fly-geodata package/more/v2fly-geodata

svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/more/luci-app-ssr-plus
svn co https://github.com/fw876/helloworld/trunk/lua-neturl package/more/lua-neturl
svn co https://github.com/fw876/helloworld/trunk/redsocks2 package/more/redsocks2
svn co https://github.com/fw876/helloworld/trunk/shadow-tls package/more/shadow-tls

git clone https://github.com/izilzty/luci-app-chinadns-ng package/more/luci-app-chinadns-ng
git clone https://github.com/jliveusa/openwrt-chinadns-ng.git package/more/chinadns-ng

git clone https://github.com/NagaseKouichi/luci-app-dnsproxy package/more/luci-app-dnsproxy
svn co https://github.com/kiddin9/openwrt-packages/trunk/dnsproxy package/more/dnsproxy

svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ddns-go package/more/luci-app-ddns-go
svn co https://github.com/kiddin9/openwrt-packages/trunk/ddns-go package/more/ddns-go

# Set permission
chmod -R 755 package/more/
