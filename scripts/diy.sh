#!/bin/bash
#
# File name: diy.sh
# Description: OpenWrt DIY script part(Before Update feeds)
#

# Remove telephony
sed -i '/telephony/d' feeds.conf.default

# Add other package
# git clone https://github.com/destan19/OpenAppFilter package/more/OpenAppFilter
# git clone https://github.com/QiuSimons/openwrt-mos package/more/mosdns
# git clone https://github.com/kuoruan/luci-app-kcptun package/more/luci-app-kcptun
# git clone https://github.com/kuoruan/luci-app-frpc package/more/luci-app-frpc
# svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
