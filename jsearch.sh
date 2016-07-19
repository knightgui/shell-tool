#!/bin/sh
DIR=`pwd`
FILE=$1
find $DIR |egrep -i ".*$FILE[^/]*.java"|while read line
do
if [ -d $line ] ; then
     continue
fi
echo $line
done
