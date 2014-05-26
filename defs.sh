
# BASEDIR=$(cd $(dirname $0);pwd)
PID_CONFIG=$BASEDIR/var/run/mongodb/shard_configurator.pid
PID_MONGOS=$BASEDIR/var/run/mongodb/shard_mongos.pid
PID_SHARD1=$BASEDIR/var/run/mongodb/shard_shard1.pid
PID_SHARD2=$BASEDIR/var/run/mongodb/shard_shard2.pid

LOG_CONFIG=$BASEDIR/var/log/mongodb/shard_configurator.log
LOG_MONGOS=$BASEDIR/var/log/mongodb/shard_mongos.log
LOG_SHARD1=$BASEDIR/var/log/mongodb/shard_shard1.log
LOG_SHARD2=$BASEDIR/var/log/mongodb/shard_shard2.log

for fname in $PID_CONFIG $PID_MONGOS $PID_SHARD1 $PID_SHARD2 $LOG_CONFIG $LOG_MONGOS $LOG_SHARD1 $LOG_SHARD2;do
	mkdir -p $(dirname $fname) > /dev/null 2>&1
done

DB_CONFIG=$BASEDIR/var/lib/shard_configurator
DB_MONGOS=$BASEDIR/var/lib/shard_mongos
DB_SHARD1=$BASEDIR/var/lib/shard_shard1
DB_SHARD2=$BASEDIR/var/lib/shard_shard2

for dname in $DB_CONFIG $DB_MONGOS $DB_SHARD1 $DB_SHARD2;do
	mkdir -p $dname > /dev/null 2>&1
done

