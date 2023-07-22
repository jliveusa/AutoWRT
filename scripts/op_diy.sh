#!/bin/bash
#
# File name: diy.sh
# Description: OpenWrt DIY script part(Before Update feeds)
#

# Remove telephony
sed -i '/telephony/d' feeds.conf.default

# Add other package
git clone https://github.com/jliveusa/openwrt-mod package/more/openwrt-mod
# git clone https://github.com/destan19/OpenAppFilter package/more/OpenAppFilter
# git clone https://github.com/kuoruan/luci-app-kcptun package/more/luci-app-kcptun
# git clone https://github.com/kuoruan/luci-app-frpc package/more/luci-app-frpc
git clone -b packages https://github.com/xiaorouji/openwrt-passwall.git package/more/passwall-packages
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/more/passwall-luci
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/more/passwall2-luci
# git clone https://github.com/QiuSimons/openwrt-mos package/more/openwrt-mos
git clone https://github.com/sbwml/luci-app-mosdns package/more/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/more/v2ray-geodata
# svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/more/luci-app-amlogic
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/more/luci-app-ssr-plus
svn co https://github.com/fw876/helloworld/trunk/lua-neturl package/more/lua-neturl
svn co https://github.com/fw876/helloworld/trunk/redsocks2 package/more/redsocks2
svn co https://github.com/kenzok8/small-package/trunk/luci-app-autotimeset package/more/luci-app-autotimeset
svn co https://github.com/kenzok8/small-package/trunk/luci-app-ddns-go package/more/luci-app-ddns-go
#svn co https://github.com/kenzok8/small-package/trunk/luci-app-dockerman package/more/luci-app-dockerman
svn co https://github.com/kenzok8/small-package/trunk/luci-app-fileassistant package/more/luci-app-fileassistant


# Set permission
chmod -R 755 package/more/
