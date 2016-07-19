#!/bin/sh
DIR=`pwd`
FILE=$1
find $DIR |egrep -i ".*$FILE.*"|egrep -v '*.class'|while read line
do
if [ -d $line ] ; then
     continue
fi
file=`echo $line|awk -F '/' '{print $NF}'|egrep -i $FILE`
if [ ! -z $file ]; then
   echo $line
fi
done
