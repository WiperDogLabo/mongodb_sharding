#!/bin/sh
# start config db
mongod -f shard_configurator.conf
# start mongos
mongos -f shard_mongos.conf

#start shard servers
mongod -f shard_shard1.conf
mongod -f shard_shard2.conf


