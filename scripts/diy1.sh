#!/bin/bash
#
# File name: diy1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Remove telephony
sed -i '/telephony/d' feeds.conf.default

# Delete old package
rm -rf package/lean/luci-app-frpc

# modify pdnsd
# cp -f modified/10-disallow-aaaa.patch openwrt/package/lean/pdnsd-alt/patches/10-disallow-aaaa.patch

# Add other package
# git clone https://github.com/destan19/OpenAppFilter package/more/OpenAppFilter
git clone https://github.com/QiuSimons/openwrt-mos package/more/mosdns
# git clone https://github.com/xiaorouji/openwrt-passwall package/more/openwrt-passwall
git clone https://github.com/fw876/helloworld package/more/helloworld
git clone https://github.com/kuoruan/luci-app-kcptun package/more/luci-app-kcptun
git clone https://github.com/kuoruan/luci-app-frpc package/more/luci-app-frpc
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/luci-app-amlogic
