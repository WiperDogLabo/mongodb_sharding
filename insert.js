var wddb = db.getSisterDB("wiperdog");

for (var i = 0;i < 10000;++i) {
	var hostId = "tgtHost_"+ (i % 100);
	var mgroup = i % 2 == 0 ? "A" : "B";
	wddb.SysCpu.insert({ "mgroup": mgroup, "hostId": hostId, seq: i, SysPct: 90, UsrPct: 5, IdlePct: 5 });
}

