#!/bin/bash
#
# 脚本的日志文件
LOGFILE="/usr/local/zabbix3.2/share/zabbix/alertscripts/submailsms.log"
#:>"$LOGFILE"
exec 1>>"$LOGFILE"
exec 2>&1

appid=13877
signature=2dd3d55e93816e6efe7b4cbfca995642
project=bzokB1

MOBILE_NUMBER=$1	# 手机号码
TRIGGER_STATUS=$2
HOSTNAME1=$3
EVENT_DATE=$4
EVENT_TIME=$5
TRIGGER_NAME=$6
ITEM_NAME=$7
ITEM_VALUE=$8

CURL="/usr/bin/curl"
${CURL} -d "appid=$appid&to=$MOBILE_NUMBER&project=$project&vars={\"TRIGGER.STATUS\":\"$TRIGGER_STATUS\",\"HOSTNAME1\":\"$HOSTNAME1\",\"EVENT.DATE\":\"$EVENT_DATE\",\"EVENT.TIME\":\"$EVENT_TIME\",\"TRIGGER.NAME\":\"$TRIGGER_NAME\",\"ITEM.NAME\":\"$ITEM_NAME\",\"ITEM.VALUE\":\"$ITEM_VALUE\"}&signature=2dd3d55e93816e6efe7b4cbfca995642" https://api.mysubmail.com/message/xsend.json
