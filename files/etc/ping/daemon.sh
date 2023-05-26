#!/bin/sh

LOG_PATH="/tmp/ping-log.txt"

# 用ps获取ups进程数量
NUM=`ps | grep ping.sh | grep -v grep | wc -l`
echo ${NUM}

# 少于1，重启进程
if [ "${NUM}" -lt "1" ]
then
    /etc/ping/ping.sh > /dev/null &
    echo -n `date '+%Y-%m-%d %H:%M:%S'` >> $LOG_PATH
    echo '-> Ping daemon start' >> $LOG_PATH
fi
exit 0