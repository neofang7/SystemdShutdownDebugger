#!/bin/bash

TOTAL_COUNT=10
COUNT_FILE=/down_count

LOG_DIR=/shutdown/
LOG_BASE_NAME=shutdown.txt

if [ ! -f $COUNT_FILE ]; then
	echo '0' > $COUNT_FILE
fi

if [ ! -d $LOG_DIR ]; then
	mkdir $LOG_DIR
fi

count=`awk '{print $1}' $COUNT_FILE`

if [ $count -ge $TOTAL_COUNT ]; then
	exit 0
fi

let delta=${count}+1
echo $delta > $COUNT_FILE

#Move the latest log file 'shutdown.txt' to 'shutdown.txt.timestamp'
TIMESTAMP=`date +%N`
cd $LOG_DIR
NEW_LOG_NAME=$LOG_BASE_NAME'.'$TIMESTAMP
mv /shutdown.txt $NEW_LOG_NAME

sleep 1m
#echo 0 > /sys/class/rtc/rtc0/wakealarm
#echo `date '+%s' -d '+ 30 seconds'` > /sys/class/rtc/rtc0/wakealarm
echo 'System starts to poweroff'

date -s "23:58:30"
hwclock -w
poweroff

