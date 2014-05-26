#!/bin/sh
BASEDIR=$(cd $(dirname $0);pwd)
. $BASEDIR/defs.sh
# start config db
mongod -f shard_configurator.conf --logpath $LOG_CONFIG --pidfilepath $PID_CONFIG --dbpath $DB_CONFIG &
# start mongos
echo waiting for config server start ups.
sleep 10

mongos -f shard_mongos.conf --logpath $LOG_MONGOS --pidfilepath $PID_MONGOS &

#start shard servers
mongod -f shard_shard1.conf --logpath $LOG_SHARD1 --pidfilepath $PID_SHARD1 --dbpath $DB_SHARD1 &
mongod -f shard_shard2.conf --logpath $LOG_SHARD2 --pidfilepath $PID_SHARD2 --dbpath $DB_SHARD2 &


