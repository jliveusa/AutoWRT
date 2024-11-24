#!/bin/bash
#
# File name: diy.sh
# Description: OpenWrt DIY script part(Before Update feeds)
#

# Remove telephony
sed -i '/telephony/d' feeds.conf.default

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
