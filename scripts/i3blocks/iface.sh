#/bin/bash

IF=$BLOCK_INSTANCE

res=$(cat /sys/class/net/$IF/operstate)

echo $1 
echo $1

if [ ! -z $res ] && [[ $res == "up" ]]; then
	echo \#00FF00
else 
	echo \#FF0000
fi
