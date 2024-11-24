#!/bin/bash
#
# File name: diy.sh
# Description: OpenWrt DIY script part(Before Update feeds)
#

# Remove telephony
sed -i '/telephony/d' feeds.conf.default

# Remove unused ipk
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/lang/golang

# Modify ipk
mkdir ./package/more/
git clone https://github.com/sirpdboy/luci-app-ddns-go package/more/ddns-go
git clone https://github.com/xiaorouji/openwrt-passwall-packages package/more/passwall-packages
git clone https://github.com/xiaorouji/openwrt-passwall package/more/passwall-luci
git clone https://github.com/xiaorouji/openwrt-passwall2 package/more/passwall2-luci
git clone https://github.com/sbwml/luci-app-mosdns package/more/luci-app-mosdns
git clone https://github.com/sbwml/v2ray-geodata package/more/v2ray-geodata
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang

git clone https://github.com/fw876/helloworld
mv ./helloworld/redsocks2 ./package/more/
mv ./helloworld/shadow-tls ./package/more/
mv ./helloworld/lua-neturl ./package/more/
mv ./helloworld/luci-app-ssr-plus ./package/more/

# Merge_package
# function merge_package() {
    # 参数1是分支名,参数2是库地址,参数3是所有文件下载到指定路径。
    # 同一个仓库下载多个文件夹直接在后面跟文件名或路径，空格分开。
#    if [[ $# -lt 3 ]]; then
#        echo "Syntax error: [$#] [$*]" >&2
#        return 1
#    fi
#    trap 'rm -rf "$tmpdir"' EXIT
#    branch="$1" curl="$2" target_dir="$3" && shift 3
#    rootdir="$PWD"
#    localdir="$target_dir"
#    [ -d "$localdir" ] || mkdir -p "$localdir"
#    tmpdir="$(mktemp -d)" || exit 1
#    git clone -b "$branch" --depth 1 --filter=blob:none --sparse "$curl" "$tmpdir"
#    cd "$tmpdir"
#    git sparse-checkout init --cone
#    git sparse-checkout set "$@"
    # 使用循环逐个移动文件夹
#    for folder in "$@"; do
#        mv -f "$folder" "$rootdir/$localdir"
#    done
#    cd "$rootdir"
#}

# merge_package master https://github.com/kiddin9/kwrt-packages package/more ddns-go luci-app-ddns-go frp luci-app-frpc
# merge_package master https://github.com/fw876/helloworld package/more redsocks2 shadow-tls lua-neturl luci-app-ssr-plus

# Set permission
chmod -R 755 package/more/
