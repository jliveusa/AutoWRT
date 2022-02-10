#!/bin/bash
#
# File name: diy3.sh
# Description: OpenWrt DIY script part 3 (After Update feeds for N1)
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.50.56/g' package/base-files/files/bin/config_generate

# Rename flyme.sh
rm -f files/etc/x64.sh
mv -f files/etc/armv8.sh files/etc/flyme.sh

# Fit my network
sed -i 's/OpenWrt/Github AutoBuild @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings
cat >network.txt<< EOF

# echo '0 3 * * 6 /etc/flyme.sh >>/tmp/flyme.sh.log 2>&1' >> /etc/crontabs/root
uci set network.lan.ipaddr='192.168.50.57'
uci set network.lan.proto='static'         
uci set network.lan.ifname='eth0'
uci commit network

EOF
sed -i '2 r network.txt' package/lean/default-settings/files/zzz-default-settings

# Mod sysctl.conf
cat >sysctl.txt<< EOF
net.ipv4.ip_forward = 1
net.ipv6.conf.all.forwarding=1
net.ipv4.tcp_ecn = 0
net.ipv4.tcp_fastopen = 3
vm.swappiness = 0
fs.file-max= 65536
fs.inotify.max_user_watches= 524288
net.ipv4.tcp_tw_reuse = 1
net.ipv4.ip_local_port_range = 10240 65535
net.ipv4.tcp_rmem = 16384 262144 8388608
net.ipv4.tcp_wmem = 32768 524288 16777216
net.core.somaxconn = 4096
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216
net.core.wmem_default = 8388608
net.core.rmem_default = 8388608
net.ipv4.tcp_max_tw_buckets = 4096
net.ipv4.tcp_max_syn_backlog = 10240
net.core.netdev_max_backlog = 10240
net.nf_conntrack_max = 262144
net.netfilter.nf_conntrack_max = 262144
net.ipv4.tcp_slow_start_after_idle = 0
net.ipv4.tcp_congestion_control = bbr
EOF
sed -i '$ r sysctl.txt' package/base-files/files/etc/sysctl.conf

# Set permission
chmod -R 755 package
