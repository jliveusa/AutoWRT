#!/bin/bash
#
# File name: diy.sh for x64
# Description: OpenWrt DIY script part (After Update feeds)
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.50.57/g' package/base-files/files/bin/config_generate

# Modify ipk


# Remove unused ipk
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/luci/applications/luci-app-unblockmusic
rm -rf feeds/packages/net/mosdns
rm -rf package/more/passwall-packages/chinadns-ng

# Fit my network
# sed -i 's/OpenWrt/OpenWrt Build @ $(date +"%Y.%m.%d-%H%M")/g' package/lean/default-settings/files/zzz-default-settings
# echo '0 3 * * 6 /etc/flyme.sh >>/tmp/flyme.sh.log 2>&1' >> /etc/crontabs/root
# echo '/etc/ddns/' >> /etc/sysupgrade.conf
# echo '/etc/ping/' >> /etc/sysupgrade.conf
# echo '/usr/share/passwall/rules/' >> /etc/sysupgrade.conf


# Set for double interface
# cat >network.txt<< EOF

# uci set network.lan.ipaddr='192.168.50.56'
# uci set network.lan.proto='static'
# uci set network.lan.type='bridge'                
# uci set network.lan.ifname='eth1 eth2'
# uci set network.wan.proto='pppoe'
# uci set network.wan.username=''
# uci set network.wan.password=''
# uci set network.wan.ifname='eth0'
# uci commit network

# EOF
# sed -i '2 r network.txt' package/lean/default-settings/files/zzz-default-settings

# echo "*         hard    nofile      610000" >> /etc/security/limits.conf
# echo "*         soft    nofile      610000" >> /etc/security/limits.conf
# echo "root      hard    nofile      610000" >> /etc/security/limits.conf
# echo "root      soft    nofile      610000" >> /etc/security/limits.conf
# echo "* hard core unlimited" >> /etc/security/limits.conf
# echo "* soft core unlimited" >> /etc/security/limits.conf

# Mod sysctl.conf
# cat >sysctl.txt<< EOF
# net.ipv4.conf.default.arp_announce = 2
# net.ipv4.conf.lo.arp_announce = 2
# net.ipv4.conf.all.arp_announce = 2
# net.ipv4.conf.default.rp_filter =  0  
# net.ipv4.conf.all.rp_filter =  0  
# net.ipv4.conf.lo.rp_filter =  0
# net.ipv6.conf.all.disable_ipv6 = 0
# net.ipv6.conf.default.disable_ipv6 = 0
# net.ipv6.conf.lo.disable_ipv6 = 0
# net.ipv4.neigh.default.gc_thresh1=512
# net.ipv4.neigh.default.gc_thresh2=2048
# net.ipv4.neigh.default.gc_thresh3=4096
# net.netfilter.nf_conntrack_max=65535
# net.ipv4.tcp_max_syn_backlog = 65535
# net.core.somaxconn = 65535
# net.ipv4.tcp_max_tw_buckets = 65535
# net.core.netdev_max_backlog = 16384
# net.ipv4.tcp_keepalive_time = 1800
# net.ipv4.tcp_keepalive_intvl = 30
# net.ipv4.tcp_keepalive_probes = 3
# net.ipv4.ip_local_port_range = 1024 65535
# net.ipv4.tcp_fin_timeout = 20
# net.ipv4.route.gc_timeout = 100
# fs.file-max=10485760
# net.ipv4.tcp_syn_retries = 2
# net.ipv4.tcp_retries2 = 11
# net.ipv4.tcp_timestamps = 1
# net.ipv4.tcp_fastopen = 3
# net.ipv4.tcp_window_scaling=1
# net.ipv4.tcp_slow_start_after_idle=0
# vm.swappiness = 0
# vm.overcommit_memory = 0
# net.ipv4.tcp_rmem = 1024 4096 6291456
# net.ipv4.tcp_wmem = 1024 4096 4194304
# net.core.wmem_default = 873200
# net.core.wmem_max = 4194304
# net.core.rmem_default = 873200
# net.core.rmem_max = 6291456

# 以下配置需要自行根据机器内存衡量，示例机器内存为 4G

# TCP 内存使用低于 0.5G 时不做干扰
# 使用 1.5G 内存后启动 TCP 内存压力模式，直到内存使用 低于 0.5G 时关闭内存压力模式
# 内存使用上限为 3G
# 参数数值单位为页，大部分系统内存页默认是 4K，可通过命令获取当前内存页大小：$ getconf PAGE_SIZE
# 反向计算方法：131072 * 4K = 524288 K = 512 M = 0.5 G
# 正向计算方法: 0.5 G = 512 M = 512 * 1024 K / 4K = 131072
# openwrt 2G内存
# net.ipv4.tcp_mem = 131072 262144 393216
# vps 1G内存
# net.ipv4.tcp_mem = 65536 131072 196608

# TCP Socket 接收缓冲区分配的最小字节数为 1K
# 接收缓冲区在内存负载不高时的默认值 4K
# 接收缓冲区的最大字节数 6M
# net.ipv4.tcp_rmem = 1024 4096 6291456

# TCP Socket 发送缓冲区分配的最小字节数为 1K
# 发送缓冲区在内存负载不高时的默认值 4K
# 发送缓冲区的最大字节数 4M
# net.ipv4.tcp_wmem = 1024 4096 4194304

# 其他协议如 UDP Socket 默认的数据发送缓冲区大小，单位字节，约 852.7K
# net.core.wmem_default = 873200

# 各类 Socket 的最大数据发送缓冲区大小，单位字节，4M
# net.core.wmem_max = 4194304

# 其他协议如 UDP Socket 默认的数据接收缓冲区大小，单位字节，约 852.7K
# net.core.rmem_default = 873200

# 各类 Socket 的最大数据接收缓冲区大小，单位字节，6M
# net.core.rmem_max = 6291456
# EOF
# sed -i '$ r sysctl.txt' package/base-files/files/etc/sysctl.conf
