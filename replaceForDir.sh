#!/bin/sh
#  批量替换文本
dir=`dirname $0`
dir=`cd $dir;pwd`

if [ $# -lt 3 ] ; then
    echo "usage dir, src , des"
    exit 1
fi
DIR=$1  # 需要替换的目录
src=$2  # 原始文本
des=$3  # 目标文本

echo "dir:$DIR,src:$src,des:$des"
sed -i "s/$src/$des/g" `grep -e "$des" -rl $DIR`
