#/bin/bash

IF=$BLOCK_INSTANCE

res=$(ip addr show dev $IF primary | grep DOWN | wc -l)

echo $1 
echo $1
if [[ $res -ne 0 ]]; then
	echo \#FF0000
else
	echo \#00FF00
fi
