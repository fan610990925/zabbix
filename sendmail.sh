#!/bin/sh
#export PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin
#email=$1
#subject=$2
#data=$3

echo "$3" | sed s/'\r'//g | mail -s "$2" $1

#echo "$data" | mail -s "$subject" $email
#if [ "$email" = "" ];then
#	#email=`echo ${maillist[@]}|sed "s/ /,/g"`
#	email="bo.sun@qingteng.cn"
#fi
#for i in $email
#do
#	echo "$data" | mail -s "$subject" $i fan.long@qingteng.cn
#done

