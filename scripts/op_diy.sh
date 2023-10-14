#!/bin/bash
#
# File name: diy.sh
# Description: OpenWrt DIY script part(Before Update feeds)
#

# Remove telephony
sed -i '/telephony/d' feeds.conf.default

# Add other package

# git clone https://github.com/destan19/OpenAppFilter package/more/OpenAppFilter
# git clone https://github.com/kuoruan/luci-app-kcptun package/more/luci-app-kcptun
# git clone https://github.com/kuoruan/luci-app-frpc package/more/luci-app-frpc

git clone https://github.com/izilzty/luci-app-chinadns-ng package/more/luci-app-chinadns-ng
git clone https://github.com/izilzty/openwrt-chinadns-ng.git package/more/chinadns-ng
# git clone https://github.com/pexcn/openwrt-chinadns-ng package/more/chinadns-ng

git clone https://github.com/NagaseKouichi/luci-app-dnsproxy package/more/luci-app-dnsproxy

git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/more/passwall-packages
git clone https://github.com/xiaorouji/openwrt-passwall.git package/more/passwall-luci
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/more/passwall2-luci
# git clone https://github.com/jliveusa/openwrt-passwall2.git -b v1.19 package/more/passwall2-luci

# git clone https://github.com/QiuSimons/openwrt-mos package/more/openwrt-mos
git clone https://github.com/jliveusa/luci-app-mosdns -b v5-119 package/more/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/more/v2ray-geodata
# svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/more/luci-app-amlogic

svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/more/luci-app-ssr-plus
svn co https://github.com/fw876/helloworld/trunk/lua-neturl package/more/lua-neturl
svn co https://github.com/fw876/helloworld/trunk/redsocks2 package/more/redsocks2

git clone https://github.com/chenmozhijin/turboacc -b package package/more/turboacc
git clone https://github.com/fullcone-nat-nftables/nft-fullcone package/more/nft-fullcone
svn co https://github.com/chenmozhijin/turboacc/trunk/luci-app-turboacc package/more/luci-app-turboacc

svn co https://github.com/kiddin9/openwrt-packages/trunk/autocore package/more/autocore
# svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-mosdns package/more/luci-app-mosdns
# svn co https://github.com/kiddin9/openwrt-packages/trunk/mosdns package/more/mosdns
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-autotimeset package/more/luci-app-autotimeset
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-cpulimit package/more/luci-app-cpulimit
svn co https://github.com/kiddin9/openwrt-packages/trunk/cpulimit package/more/cpulimit
svn co https://github.com/kiddin9/openwrt-packages/trunk/dnsproxy package/more/dnsproxy
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ddns-go package/more/luci-app-ddns-go
svn co https://github.com/kiddin9/openwrt-packages/trunk/ddns-go package/more/ddns-go
# svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-dockerman package/more/luci-app-dockerman
# svn co https://github.com/kiddin9/openwrt-packages/trunk/dockerd package/more/dockerd
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fileassistant package/more/luci-app-fileassistant
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-accesscontrol package/more/luci-app-accesscontrol
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-autoreboot package/more/luci-app-autoreboot
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-filetransfer package/more/luci-app-filetransfer
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-vlmcsd package/more/luci-app-vlmcsd
svn co https://github.com/kiddin9/openwrt-packages/trunk/vlmcsd package/more/vlmcsd
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-lib-fs package/more/luci-lib-fs

# Set permission
chmod -R 755 package/more/
