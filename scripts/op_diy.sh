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

git clone -b packages https://github.com/xiaorouji/openwrt-passwall.git package/more/passwall-packages
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/more/passwall-luci
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/more/passwall2-luci

# git clone https://github.com/QiuSimons/openwrt-mos package/more/openwrt-mos
# git clone https://github.com/sbwml/luci-app-mosdns package/more/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/more/v2ray-geodata
# svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/more/luci-app-amlogic

svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/more/luci-app-ssr-plus
svn co https://github.com/fw876/helloworld/trunk/lua-neturl package/more/lua-neturl
svn co https://github.com/fw876/helloworld/trunk/redsocks2 package/more/redsocks2

svn co https://github.com/kiddin9/openwrt-packages/trunk/autocore package/more/autocore
svn co https://github.com/kiddin9/openwrt-packages/trunk/fullconenat package/more/fullconenat
svn co https://github.com/kiddin9/openwrt-packages/trunk/fullconenat-nft package/more/fullconenat-nft
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fullconenat package/more/luci-app-fullconenat
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-mosdns package/more/luci-app-mosdns
svn co https://github.com/kiddin9/openwrt-packages/trunk/mosdns package/more/mosdns
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-autotimeset package/more/luci-app-autotimeset
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-cpulimit package/more/luci-app-cpulimit
svn co https://github.com/kiddin9/openwrt-packages/trunk/cpulimit package/more/cpulimit
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ddns-go package/more/luci-app-ddns-go
svn co https://github.com/kiddin9/openwrt-packages/trunk/ddns-go package/more/ddns-go
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-dockerman package/more/luci-app-dockerman
svn co https://github.com/kiddin9/openwrt-packages/trunk/dockerd package/more/dockerd
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-fileassistant package/more/luci-app-fileassistant
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-accesscontrol package/more/luci-app-accesscontrol
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-autoreboot package/more/luci-app-autoreboot
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-filetransfer package/more/luci-app-filetransfer
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-vlmcsd package/more/luci-app-vlmcsd
svn co https://github.com/kiddin9/openwrt-packages/trunk/vlmcsd package/more/vlmcsd
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-lib-fs package/more/luci-lib-fs

# Set permission
chmod -R 755 package/more/
