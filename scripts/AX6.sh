#!/bin/bash
#
# File name: diy.sh for AX6
# Description: OpenWrt DIY script part (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.50.56/g' package/base-files/files/bin/config_generate

# Fit my network
sed -i 's/OpenWrt/OpenWrt AutoBuild @ $(date +"%Y.%m.%d-%H%M")/g' package/lean/default-settings/files/zzz-default-settings

# Set permission
chmod -R 755 package
