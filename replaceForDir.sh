#!/bin/sh
dir=`dirname $0`
dir=`cd $dir;pwd`

DIR=$1
src=$2
des=$3

echo "dir:$DIR,src:$src,des:$des"
sed -i "s/$src/$des/g" `grep -e "$des" -rl $DIR`
