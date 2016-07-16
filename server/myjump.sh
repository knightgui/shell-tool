#!/bin/sh
dir=`dirname $0`
dir=`cd $dir;pwd`
server_file="$dir/server_list"
if [ $# -eq 0 ]; then
   echo "usage server_name username"
   while read line
   do
      echo $line
   done < $server_file
   exit 0
fi
server_name=$1
ip=""
while read line
do  
   tem_name=`echo $line|awk -F ',' '{print $1}'`
   username=`echo $line |awk -F ',' '{print $3}'`
   port=`echo $line|awk -F ',' '{print $5}'`
   if [ "$tem_name" == "$server_name" ] ; then
        ip=`echo $line |awk -F ',' '{print $2}'`
        break
   fi 
done < $server_file
echo "$ip,$username"
ssh $username@$ip -p $port

