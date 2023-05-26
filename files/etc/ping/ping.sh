#!/bin/sh

#ping 的总次数
PING_SUM=3

#ping 的间隔时间，单位秒
SLEEP_SEC=10

#连续重启翻墙软件 REBOOT_CNT 次网络都没有恢复正常，重启网络
#时间= (SLEEP_SEC * PING_SUM + 20) * REBOOT_CNT
#REBOOT_CNT=30

LOG_PATH="/tmp/ping-log.txt"

cnt=0
#reboot_cnt=0
while :
do
    ping -c 1 -W 1 youtube.com > /dev/null
    ret=$?
    
    ping -c 1 -W 1 twitter.com > /dev/null
    ret2=$?
    
    if [[ $ret -eq 0 || $ret2 -eq 0 ]]
    then
        echo 'Flyme OK!'
        cnt=0
        #reboot_cnt=0
    else
        cnt=`expr $cnt + 1`
        echo -n `date '+%Y-%m-%d %H:%M:%S'` >> $LOG_PATH
        printf '-> [%d/%d] Flyme maybe disconnected,checking again after %d seconds!\r\n' $cnt $PING_SUM $SLEEP_SEC >> $LOG_PATH
        printf '-> [%d/%d] Flyme maybe disconnected,checking again after %d seconds!\r\n' $cnt $PING_SUM $SLEEP_SEC 
        
        if [ $cnt == $PING_SUM ]
        then
            echo 'Flyme disconnected!' >> $LOG_PATH
            echo 'Flyme disconnected!'
            
		/etc/init.d/shadowsocksr restart
		/etc/init.d/passwall restart
		/etc/init.d/passwall2 restart
            
            cnt=0
            #重连后，等待20秒再进行ping检测
            sleep 20
            
            
            #网卡重启超过指定次数还没恢复正常，重启软路由
            #reboot_cnt=`expr $reboot_cnt + 1`
            #if [ $reboot_cnt == $REBOOT_CNT ]
            #then
            #    echo -n `date '+%Y-%m-%d %H:%M:%S'` >> $LOG_PATH
            #    echo '-> =============== reboot!' >> $LOG_PATH
            #    echo '-> =============== reboot!'
                
            #    /etc/init.d/network restart 
            #fi
        fi
    fi
    
    sleep $SLEEP_SEC
done
