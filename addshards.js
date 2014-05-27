sh.addShard("localhost:27028");
sh.addShard("localhost:27038");
sh.enableSharding("wiperdog");
// sh.shardCollection("wiperdog.SysCpu", { "hostId": "hashed" });
// sh.shardCollection("wiperdog.SysCpu", { "hostId": 1 });
sh.shardCollection("wiperdog.SysCpu", { "mgroup": 1 });
sh.addShardTag("shard0000", "GRPA");
sh.addShardTag("shard0001", "GRPB");
sh.addTagRange("wiperdog.SysCpu", { "mgroup": MinKey }, {"mgroup": "A"}, "GRPA");
sh.addTagRange("wiperdog.SysCpu", { "mgroup": "B" }, {"mgroup": MaxKey}, "GRPB");

