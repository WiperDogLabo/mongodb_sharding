#!/bin/sh

BASEDIR=$(cd $(dirname $0);pwd)
. $BASEDIR/defs.sh


for pidpath in $PID_SHARD1 $PID_SHARD2 $PID_MONGOS $PID_CONFIG;do
	kill -TERM $(cat $pidpath)
done

