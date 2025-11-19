uint64_t sub_10003384C()
{
  if (!v0[71])
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_1005A8148 != -1)
  {
    swift_once();
  }

  v1 = v0[70];
  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E00A8);
  v0[65] = v2;
  v0[66] = &protocol witness table for Table;
  v4 = sub_10000331C(v0 + 62);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  sub_100030588();
  if (v1)
  {

    sub_100004984(v0 + 62);
LABEL_7:
    v7 = v0[1];
    goto LABEL_9;
  }

  v8 = v0[67];
  sub_100004984(v0 + 62);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();

  memcpy(v8, v0 + 2, 0x1E0uLL);
  v7 = v0[1];
LABEL_9:

  return v7();
}

uint64_t sub_100033A74()
{
  v2 = *(*v1 + 8344);
  v5 = *v1;
  *(*v1 + 8352) = v0;

  if (v0)
  {
    v3 = sub_10030EA20;
  }

  else
  {
    v3 = sub_100032E74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100033B90(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100033BA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 480))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100033BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 480) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003429C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000342E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003434C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 144))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000343A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 3224);
  v12 = *v1;
  v3[404] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[405] = v6;
  v7 = type metadata accessor for Daemon();
  v3[406] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100008FC0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[407] = v9;
  v10 = sub_100008FC0(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100035CC8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100034580(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 2696) = v3;
  *(v4 + 2688) = a3;
  *(v4 + 2680) = a2;
  *(v4 + 3620) = a1;
  v5 = type metadata accessor for Date();
  *(v4 + 2704) = v5;
  v6 = *(v5 - 8);
  *(v4 + 2712) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 2720) = swift_task_alloc();
  v8 = *(*(type metadata accessor for Location() - 8) + 64) + 15;
  *(v4 + 2728) = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005A92D0, &qword_1004C2890) - 8) + 64) + 15;
  *(v4 + 2736) = swift_task_alloc();
  v10 = type metadata accessor for LegacyLocation(0);
  *(v4 + 2744) = v10;
  v11 = *(v10 - 8);
  *(v4 + 2752) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 2760) = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  *(v4 + 2768) = swift_task_alloc();
  v14 = type metadata accessor for ServerLocation(0);
  *(v4 + 2776) = v14;
  v15 = *(v14 - 8);
  *(v4 + 2784) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 2792) = swift_task_alloc();
  *(v4 + 2800) = swift_task_alloc();
  v17 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  *(v4 + 2808) = swift_task_alloc();
  refreshed = type metadata accessor for LegacyRefreshSchedule();
  *(v4 + 2816) = refreshed;
  v19 = *(refreshed - 8);
  *(v4 + 2824) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 2832) = swift_task_alloc();
  v21 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v4 + 2840) = v21;
  v22 = *(v21 - 8);
  *(v4 + 2848) = v22;
  v23 = *(v22 + 64) + 15;
  *(v4 + 2856) = swift_task_alloc();
  v24 = type metadata accessor for LegacyLocationServerRequestContext();
  *(v4 + 2864) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v4 + 2872) = swift_task_alloc();
  *(v4 + 2880) = swift_task_alloc();
  *(v4 + 2888) = swift_task_alloc();
  v26 = type metadata accessor for LocationEndpoint();
  *(v4 + 2896) = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  *(v4 + 2904) = swift_task_alloc();
  v28 = type metadata accessor for ClientOrigin();
  *(v4 + 2912) = v28;
  v29 = *(v28 - 8);
  *(v4 + 2920) = v29;
  v30 = *(v29 + 64) + 15;
  *(v4 + 2928) = swift_task_alloc();
  v31 = *(*(sub_10004B564(&qword_1005A92D8, &qword_1004C2898) - 8) + 64) + 15;
  *(v4 + 2936) = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  *(v4 + 2944) = Priority;
  v33 = *(Priority - 8);
  *(v4 + 2952) = v33;
  v34 = *(v33 + 64) + 15;
  *(v4 + 2960) = swift_task_alloc();
  *(v4 + 2968) = swift_task_alloc();
  v35 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  *(v4 + 2976) = swift_task_alloc();
  v36 = type metadata accessor for Account();
  *(v4 + 2984) = v36;
  v37 = *(v36 - 8);
  *(v4 + 2992) = v37;
  v38 = *(v37 + 64) + 15;
  *(v4 + 3000) = swift_task_alloc();
  *(v4 + 3008) = swift_task_alloc();
  *(v4 + 3016) = swift_task_alloc();
  *(v4 + 3024) = swift_task_alloc();
  v39 = type metadata accessor for RequestOrigin();
  *(v4 + 3032) = v39;
  v40 = *(v39 - 8);
  *(v4 + 3040) = v40;
  v41 = *(v40 + 64) + 15;
  *(v4 + 3048) = swift_task_alloc();
  v42 = type metadata accessor for LegacyRefreshCommandReason();
  *(v4 + 3056) = v42;
  v43 = *(v42 - 8);
  *(v4 + 3064) = v43;
  v44 = *(v43 + 64) + 15;
  *(v4 + 3072) = swift_task_alloc();
  v45 = type metadata accessor for LocationRequest();
  *(v4 + 3080) = v45;
  v46 = *(v45 - 8);
  *(v4 + 3088) = v46;
  v47 = *(v46 + 64) + 15;
  *(v4 + 3096) = swift_task_alloc();
  *(v4 + 3104) = swift_task_alloc();
  *(v4 + 3112) = swift_task_alloc();
  *(v4 + 3120) = swift_task_alloc();
  *(v4 + 3128) = swift_task_alloc();
  v48 = type metadata accessor for Handle();
  *(v4 + 3136) = v48;
  v49 = *(v48 - 8);
  *(v4 + 3144) = v49;
  v50 = *(v49 + 64) + 15;
  *(v4 + 3152) = swift_task_alloc();
  *(v4 + 3160) = swift_task_alloc();
  *(v4 + 3168) = swift_task_alloc();
  v51 = type metadata accessor for Friend();
  *(v4 + 3176) = v51;
  v52 = *(v51 - 8);
  *(v4 + 3184) = v52;
  v53 = *(v52 + 64) + 15;
  *(v4 + 3192) = swift_task_alloc();
  *(v4 + 3200) = swift_task_alloc();
  *(v4 + 3208) = swift_task_alloc();
  *(v4 + 3216) = swift_task_alloc();
  v54 = async function pointer to daemon.getter[1];
  v55 = swift_task_alloc();
  *(v4 + 3224) = v55;
  *v55 = v4;
  v55[1] = sub_1000343A0;

  return daemon.getter();
}

uint64_t sub_100034D30()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 504);
  if (v0)
  {
    v6 = sub_10030698C;
  }

  else
  {
    v6 = sub_10003608C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100034E5C()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1504);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager load LocalStorage serverSettings", v6, 2u);
  }

  memcpy((v0 + 16), (v0 + 976), 0x1E0uLL);
  memcpy(*(v0 + 1464), (v0 + 16), 0x1E0uLL);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100034F9C()
{
  memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
  if (sub_100033B90(v0 + 16) != 1)
  {
    v1 = *(v0 + 224);
    *(v0 + 1232) = *(v0 + 208);
    *(v0 + 1248) = v1;
    v2 = *(v0 + 256);
    *(v0 + 1264) = *(v0 + 240);
    *(v0 + 1280) = v2;
    v3 = *(v0 + 160);
    *(v0 + 1168) = *(v0 + 144);
    *(v0 + 1184) = v3;
    v4 = *(v0 + 192);
    *(v0 + 1200) = *(v0 + 176);
    *(v0 + 1216) = v4;
    v5 = *(v0 + 128);
    *(v0 + 1136) = *(v0 + 112);
    *(v0 + 1152) = v5;
    sub_100005F04(v0 + 1136, v0 + 1296, &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0(v0 + 496, &qword_1005A90D8, &unk_1004C6AB0);
    v6 = *(v0 + 1248);
    *(v0 + 1072) = *(v0 + 1232);
    *(v0 + 1088) = v6;
    v7 = *(v0 + 1280);
    *(v0 + 1104) = *(v0 + 1264);
    *(v0 + 1120) = v7;
    v8 = *(v0 + 1184);
    *(v0 + 1008) = *(v0 + 1168);
    *(v0 + 1024) = v8;
    v9 = *(v0 + 1216);
    *(v0 + 1040) = *(v0 + 1200);
    *(v0 + 1056) = v9;
    v10 = *(v0 + 1152);
    *(v0 + 976) = *(v0 + 1136);
    *(v0 + 992) = v10;
    if (sub_10002D650(v0 + 976) != 1)
    {
      v11 = *(v0 + 976);
      sub_100002CE0(v0 + 1136, &qword_1005A9328, &unk_1004C7F20);
    }
  }

  v12 = *(v0 + 1792);
  v13 = *(v0 + 1656);
  v14 = *(v0 + 1648);
  v15 = *(v0 + 1640);
  v16 = *(v0 + 1616);
  static Duration.seconds(_:)();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v18 = v17;
  (*(v14 + 8))(v13, v15);
  v19 = v18 - *(v12 + OBJC_IVAR____TtC13findmylocated11DataManager_lastSuccessfulResponseTimestamp);
  static Duration.seconds(_:)();
  *(v0 + 1944) = static Duration.- infix(_:_:)();
  *(v0 + 1952) = v20;

  return _swift_task_switch(sub_100035188, v16, 0);
}

uint64_t sub_100035188()
{
  v51 = v0;
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1944);
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v48 = *(v0 + 1896) == *(v0 + 1904);
    v6 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v6 = 136446722;
    *(v6 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v50);
    *(v6 + 12) = 2082;
    v7 = Duration.description.getter();
    v9 = v2;
    v10 = sub_10000D01C(v7, v8, &v50);

    *(v6 + 14) = v10;
    v2 = v9;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s scheduleInterval: %{public}s isHighPriority: %{BOOL}d", v6, 0x1Cu);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 1872);
  v12 = *(v0 + 1856);
  v13 = *(v0 + 1712);
  v14 = *(v0 + 1704);
  v15 = *(v0 + 1696);
  v16 = *(v0 + 1616);
  if (*(v0 + 1896) == *(v0 + 1904))
  {
    v17 = (v0 + 1984);
  }

  else
  {
    v17 = &enum case for LegacyRefreshSchedule.lowPriorityScheduled(_:);
  }

  (*(v0 + 1864))(*(v0 + 1712), *v17, *(v0 + 1696));
  swift_beginAccess();
  (*(v14 + 40))(v16 + v12, v13, v15);
  swift_endAccess();
  if (Duration.milliseconds.getter() < 1)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v50);
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s Refreshing legacy location now.", v40, 0xCu);
      sub_100004984(v41);
    }

    v42 = swift_task_alloc();
    *(v0 + 1960) = v42;
    *v42 = v0;
    v42[1] = sub_10007E2A0;
    v43 = *(v0 + 1616);

    return sub_100034580(0, v2, v1);
  }

  else
  {
    v47 = *(v0 + 1880);
    v49 = *(v0 + 1888);
    v18 = *(v0 + 1792);
    v46 = *(v0 + 1688);
    v44 = *(v0 + 1832);
    v45 = *(v0 + 1664);
    v19 = *(v0 + 1632);
    v20 = *(v0 + 1624);
    v21 = v2;
    v22 = *(v0 + 1616);
    v23 = *(v0 + 1896) == *(v0 + 1904);
    v24 = *(v22 + OBJC_IVAR____TtC13findmylocated14CommandManager_coalesceTaskList);
    type metadata accessor for WorkItemQueue.WorkItem();
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v1;
    *(v25 + 32) = v23;
    *(v25 + 40) = v18;
    *(v25 + 48) = v22;
    *(v25 + 56) = v20;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v26 = sub_1002087C4(_swiftEmptyArrayStorage);

    v47(v46, v45);
    v27 = *(v0 + 1744);
    v28 = *(v0 + 1736);
    v29 = *(v0 + 1728);
    v30 = *(v0 + 1720);
    v31 = *(v0 + 1712);
    v32 = *(v0 + 1688);
    v33 = *(v0 + 1680);
    v34 = *(v0 + 1656);
    v35 = *(v0 + 1632);

    v36 = *(v0 + 8);

    return v36(v26);
  }
}

uint64_t sub_100035700()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100035740()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[411] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[412] = v6;
  *v6 = v0;
  v6[1] = sub_10007E7F0;
  v7 = v0[408];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1000358A4()
{
  v51 = v0;
  v1 = v0[337];
  v2 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
  v0[410] = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    v3 = v0[408];
    v0[332] = &_swiftEmptySetSingleton;
    v0[333] = &_swiftEmptySetSingleton;

    return _swift_task_switch(sub_100035740, v3, 0);
  }

  else
  {
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v50 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD00000000000002FLL, 0x80000001004DED40, &v50);
      _os_log_impl(&_mh_execute_header, v5, v6, "CommandManager %{public}s no refresh request left in the coalescedCommands", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = v0[408];
    v49 = sub_1002087C4(_swiftEmptyArrayStorage);

    v10 = v0[402];
    v11 = v0[401];
    v12 = v0[400];
    v13 = v0[399];
    v14 = v0[396];
    v15 = v0[395];
    v16 = v0[394];
    v17 = v0[391];
    v18 = v0[390];
    v19 = v0[389];
    v22 = v0[388];
    v23 = v0[387];
    v24 = v0[384];
    v25 = v0[381];
    v26 = v0[378];
    v27 = v0[377];
    v28 = v0[376];
    v29 = v0[375];
    v30 = v0[372];
    v31 = v0[371];
    v32 = v0[370];
    v33 = v0[367];
    v34 = v0[366];
    v35 = v0[363];
    v36 = v0[361];
    v37 = v0[360];
    v38 = v0[359];
    v39 = v0[357];
    v40 = v0[354];
    v41 = v0[351];
    v42 = v0[350];
    v43 = v0[349];
    v44 = v0[346];
    v45 = v0[345];
    v46 = v0[342];
    v47 = v0[341];
    v48 = v0[340];

    v20 = v0[1];

    return v20(v49);
  }
}

uint64_t sub_100035CC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3240);
  v5 = *(*v2 + 2696);
  v6 = *v2;
  v3[408] = a1;
  v3[409] = v1;

  if (v1)
  {
    v7 = sub_100081FB4;
  }

  else
  {
    v8 = v3[404];

    v7 = sub_1000358A4;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100035E4C()
{
  v1 = *(*v0 + 1936);
  v2 = *(*v0 + 1792);
  v4 = *v0;

  return _swift_task_switch(sub_100034F9C, v2, 0);
}

uint64_t sub_100035F5C()
{
  v2 = *v1;
  v3 = *(*v1 + 1520);
  v8 = *v1;
  *(*v1 + 1528) = v0;

  if (v0)
  {
    v4 = v2[184];
    v5 = sub_1002461AC;
  }

  else
  {
    v6 = v2[184];
    memcpy(v2 + 122, v2 + 62, 0x1E0uLL);
    v5 = sub_100034E5C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10003608C()
{
  v1 = *(v0 + 520);
  memcpy(*(v0 + 496), (v0 + 16), 0x1E0uLL);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t type metadata accessor for LocationEndpoint()
{
  result = qword_1005AD1D8;
  if (!qword_1005AD1D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LegacyLocationServerRequestContext()
{
  result = qword_1005AD268;
  if (!qword_1005AD268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000361AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100036388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DisplayRepresentation();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100036434(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DisplayRepresentation();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100036540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DisplayRepresentation();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000365EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DisplayRepresentation();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003669C()
{
  v1 = v0[2];

  v2 = v0[4];
  if (v2 >> 60 != 15)
  {
    sub_1000049D0(v0[3], v2);
  }

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000366EC()
{
  v1 = type metadata accessor for FriendshipRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = (v0 + v5);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v5 + 24);

  v11 = *(v0 + v5 + 48);

  v12 = *(v0 + v5 + 64);

  v13 = *(v0 + v5 + 88);

  v14 = *(v0 + v5 + 96);

  if (*(v0 + v5 + 144))
  {
    v15 = v8[14];

    v16 = v8[16];

    v17 = v8[18];

    v18 = v8[20];

    v19 = v8[22];
  }

  v20 = v8[23];

  v21 = v8[24];

  v22 = v8[25];

  v23 = v8[26];

  v24 = v8[27];

  if (v8[28] != 1)
  {

    v25 = v8[29];

    v26 = v8[32];
  }

  v27 = v8[33];

  v28 = v8[34];

  if (v8[41])
  {
    v29 = v8[38];

    v30 = v8[41];

    v31 = v8[53];

    v32 = v8[55];
  }

  v33 = v8[74];

  v34 = v8[75];

  v35 = v8[76];

  v36 = v8[77];

  if (v8[79] != 1)
  {

    v37 = v8[81];

    v38 = v8[83];

    v39 = v8[85];

    v40 = v8[87];

    v41 = v8[89];

    v42 = v8[91];

    v43 = v8[93];

    v44 = v8[95];

    v45 = v8[99];
  }

  return _swift_deallocObject(v0, v5 + 800, v3 | 7);
}

uint64_t sub_100036920()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100036A18()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036A50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_100036A90()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10004B564(&qword_1005A94D8, &qword_1004C2988);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100036AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036B38(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100036BCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036C0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036C44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036C7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MotionActivityState();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100036F74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MotionActivityState();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000370D0()
{
  v1 = (type metadata accessor for SecureLocationsConfig() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v6 + 64);

  v8 = v1[21];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v6 + v1[22]);

  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000371E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003721C()
{
  sub_1000049D0(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003727C()
{
  v1 = v0[2];

  sub_1000049D0(v0[3], v0[4]);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000372FC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[16];

  v10 = v0[17];

  v11 = v0[18];

  v12 = v0[20];

  v13 = v0[22];

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_100037394()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000373E4()
{
  v1 = (type metadata accessor for Credentials(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 144) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  v10 = *(v0 + 12);

  v11 = *(v0 + 13);

  v12 = *(v0 + 15);

  v13 = *(v0 + 16);

  v14 = *(v0 + 17);

  v15 = *&v0[v3 + 8];

  v16 = *&v0[v3 + 24];

  v17 = *&v0[v3 + 40];

  v18 = v1[9];
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 8);
  v20(&v0[v3 + v18], v19);
  v21 = &v0[v3 + v1[10]];
  v22 = *(v21 + 1);

  v23 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v20(&v21[*(v23 + 20)], v19);
  v24 = *&v0[v3 + 8 + v1[11]];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100037580()
{
  v1 = type metadata accessor for Credentials(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);
  swift_unknownObjectRelease();
  v5 = *(v0 + 4);

  v6 = *(v0 + 5);

  v7 = *(v0 + 7);
  if (v7 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + 6), v7);
  }

  v8 = (v2 + 64) & ~v2;
  v9 = *&v0[v8 + 8];

  v10 = *&v0[v8 + 24];

  v11 = *&v0[v8 + 40];

  v12 = v1[7];
  v13 = type metadata accessor for URL();
  v14 = *(*(v13 - 8) + 8);
  v14(&v0[v8 + v12], v13);
  v15 = &v0[v8 + v1[8]];
  v16 = *(v15 + 1);

  v17 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v14(&v15[*(v17 + 20)], v13);
  v18 = *&v0[v8 + 8 + v1[9]];

  return _swift_deallocObject(v0, v8 + v3, v2 | 7);
}

uint64_t sub_100037704()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003774C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037784()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[18];

  v11 = v0[19];

  v12 = v0[20];

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_100037864()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000378B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000378F4()
{
  v1 = type metadata accessor for Credentials(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0[2];
  swift_unknownObjectRelease();
  v5 = v0[4];

  v6 = v0[5];

  v7 = v0[7];
  if (v7 >> 60 != 15)
  {
    sub_1000049D0(v0[6], v7);
  }

  v8 = (v2 + 64) & ~v2;
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v0 + v8;
  v13 = *(v0 + v8 + 8);

  v14 = *(v12 + 3);

  v15 = *(v12 + 5);

  v16 = v1[7];
  v17 = type metadata accessor for URL();
  v28 = v2;
  v18 = *(*(v17 - 8) + 8);
  v18(&v12[v16], v17);
  v19 = &v12[v1[8]];
  v20 = *(v19 + 1);

  v21 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v18(&v19[*(v21 + 20)], v17);
  v22 = *&v12[v1[9] + 8];

  v23 = *(v0 + v9);

  v24 = *(v0 + v11);

  v25 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + v25 + 8);

  return _swift_deallocObject(v0, v25 + 16, v28 | 7);
}

uint64_t sub_100037AD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100037B18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100037B70()
{
  v1 = type metadata accessor for Response();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = *(v0 + v7);

  v12 = *(v0 + v8);

  v13 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v3 | 7);
}

uint64_t sub_100037C60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100037CBC()
{
  v1 = type metadata accessor for Credentials(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0[2];
  swift_unknownObjectRelease();
  v5 = v0[4];

  v6 = v0[5];

  v7 = v0[7];
  if (v7 >> 60 != 15)
  {
    sub_1000049D0(v0[6], v7);
  }

  v8 = (v2 + 64) & ~v2;
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v0 + v8;
  v13 = *(v0 + v8 + 8);

  v14 = *(v12 + 3);

  v15 = *(v12 + 5);

  v16 = v1[7];
  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 8);
  v18(&v12[v16], v17);
  v19 = &v12[v1[8]];
  v20 = *(v19 + 1);

  v21 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v18(&v19[*(v21 + 20)], v17);
  v22 = *&v12[v1[9] + 8];

  v23 = *(v0 + v9);

  v24 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v2 | 7);
}

uint64_t sub_100037EB0()
{
  v1 = type metadata accessor for Response();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v7);

  v11 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

uint64_t sub_100037F90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037FC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100038008()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100038050()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000380B8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100038140()
{
  v1 = (type metadata accessor for SecureLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for Credentials(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v2 | v7;
  v11 = *(v0 + 2);

  v12 = *(v0 + 4);

  v13 = *(v0 + 5);

  v14 = *(v0 + 6);

  v15 = &v0[v3];
  v16 = *(v15 + 1);

  v17 = v1[15];
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 8))(&v15[v17], v18);
  v19 = v1[16];
  v20 = type metadata accessor for MotionActivityState();
  (*(*(v20 - 8) + 8))(&v15[v19], v20);
  v21 = *&v15[v1[18] + 8];

  v22 = *&v0[v4 + 8];

  v23 = *&v0[v5 + 8];

  v24 = *&v0[v8 + 8];

  v25 = *&v0[v8 + 24];

  v26 = *&v0[v8 + 40];

  v27 = v6[9];
  v28 = type metadata accessor for URL();
  v29 = *(*(v28 - 8) + 8);
  v29(&v0[v8 + v27], v28);
  v30 = &v0[v8 + v6[10]];
  v31 = *(v30 + 1);

  v32 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v29(&v30[*(v32 + 20)], v28);
  v33 = *&v0[v8 + 8 + v6[11]];

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1000383CC()
{
  v1 = type metadata accessor for Credentials(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for SecureLocation();
  v5 = *(*(v4 - 1) + 80);
  v6 = *(*(v4 - 1) + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  v10 = *(v0 + 7);
  if (v10 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + 6), v10);
  }

  v11 = (v2 + 64) & ~v2;
  v12 = (v11 + v3 + v5) & ~v5;
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v2 | v5;
  v14 = &v0[v11];
  v15 = *&v0[v11 + 8];

  v16 = *(v14 + 3);

  v17 = *(v14 + 5);

  v18 = v1[7];
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 8);
  v20(&v14[v18], v19);
  v21 = &v14[v1[8]];
  v22 = *(v21 + 1);

  v23 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v20(&v21[*(v23 + 20)], v19);
  v24 = *&v14[v1[9] + 8];

  v25 = *&v0[v12 + 8];

  v26 = v4[13];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(&v0[v12 + v26], v27);
  v28 = v4[14];
  v29 = type metadata accessor for MotionActivityState();
  (*(*(v29 - 8) + 8))(&v0[v12 + v28], v29);
  v30 = *&v0[v12 + 8 + v4[16]];

  v31 = *&v0[v13 + 8];

  v32 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = *&v0[v32];

  return _swift_deallocObject(v0, v32 + 8, v35 | 7);
}

uint64_t sub_100038678()
{
  v1 = type metadata accessor for Response();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100038728()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000387A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000387FC()
{
  v1 = sub_10004B564(&unk_1005A9938, &unk_1004C3080);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000388E0()
{
  v1 = v0[2];

  sub_1000049D0(v0[3], v0[4]);
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100038938()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

char *sub_100038C64()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100038C94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038CDC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100038D14()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100038D4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100038DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DiversifiedRootKeys();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100038E94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DiversifiedRootKeys();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100038F90()
{
  v1 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[5] + 8);

  v9 = v1[6];
  v10 = type metadata accessor for PrivateKey();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[7];
  v13 = type metadata accessor for HashedAdvertisement();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = v1[8];
  v16 = type metadata accessor for Destination();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = *(v6 + v1[9] + 8);

  v19 = v1[11];
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v6 + v19, 1, v20))
  {
    (*(v21 + 8))(v6 + v19, v20);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000392A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000392F0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10003932C()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000393F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039428()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100039538()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100039600()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039678()
{
  v1 = sub_10004B564(&qword_1005AAC70, &qword_1004D96D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Destination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_1000397E4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100039834()
{
  v1 = *(sub_10004B564(&qword_1005AABB0, &unk_1004C45F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = type metadata accessor for DiversifiedRootKeys();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 31) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v9);

  v13 = *(v0 + v11);

  v14 = *(v0 + v10);

  return _swift_deallocObject(v0, v10 + 8, v2 | 7);
}

uint64_t sub_100039990()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000399C8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100039A04()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039A44()
{
  v1 = type metadata accessor for PrivateKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100039B0C()
{
  v1 = type metadata accessor for DiversifiedRootKeys();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100039BE4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100039C2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_13;
  }

  v17 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v18 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[11];

  return v19(v20, a2, v18);
}

uint64_t sub_100039E64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v18 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[11];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_10003A104()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A13C()
{
  v1 = (type metadata accessor for SecureLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  v7 = *(v0 + v3 + 8);

  v8 = v1[15];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[16];
  v11 = type metadata accessor for MotionActivityState();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  v12 = *(v0 + v3 + v1[18] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003A288()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003A2DC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003A334()
{
  v1 = (type metadata accessor for SecureLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = v1[15];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = v1[16];
  v11 = type metadata accessor for MotionActivityState();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = *(v6 + v1[18] + 8);

  v13 = *(v0 + v4);

  v14 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_10003A49C()
{
  v1 = (type metadata accessor for SecureLocationsCachedPayload() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v6 + v1[7];
  v9 = *(v8 + 8);

  v10 = type metadata accessor for SecureLocation();
  v11 = v10[13];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = v10[14];
  v14 = type metadata accessor for MotionActivityState();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);
  v15 = *(v8 + v10[16] + 8);

  v16 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10003A63C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A674()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003A744()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SecureLocation();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10003A86C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SecureLocation();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10003A97C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003A9DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003AA1C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AA54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003AA8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AAE8()
{
  v1 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003ABE8()
{
  v1 = *(sub_10004B564(&unk_1005AB4C0, &qword_1004C3440) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_10003AD1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003AD54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003AD94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003ADDC()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AE34()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003AEC8()
{
  v1 = (type metadata accessor for SecureLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + v3 + 8);

  v7 = v1[15];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[16];
  v10 = type metadata accessor for MotionActivityState();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[18] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003B00C()
{
  v1 = (type metadata accessor for SecureLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + 24);

  v6 = *(v0 + v3 + 8);

  v7 = v1[15];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[16];
  v10 = type metadata accessor for MotionActivityState();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[18] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003B15C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for LocalUserNotificationCategory();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_10003B200(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = type metadata accessor for LocalUserNotificationCategory();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003B2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003B380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003B428()
{
  v1 = type metadata accessor for SessionMessagingInvite();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Destination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10003B578()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B5B0()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003B68C()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003B768()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003B7C0()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003B848()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  sub_1000049D0(*(v0 + 4), *(v0 + 5));
  v7 = *(v0 + 9);

  v8 = *(v0 + 10);

  v9 = *(v0 + 11);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5];

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003B940()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B980()
{
  v20 = type metadata accessor for PrivateKey();
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v19 = type metadata accessor for HashedAdvertisement();
  v5 = *(v19 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for MessageContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 24);

  v16 = *(v0 + 32);

  (*(v1 + 8))(v0 + v3, v20);
  (*(v5 + 8))(v0 + v7, v19);
  (*(v10 + 8))(v0 + v12, v9);
  v17 = *(v0 + v14);

  return _swift_deallocObject(v0, v14 + 8, v13 | 7);
}

uint64_t sub_10003BB70()
{
  v21 = type metadata accessor for HashedAdvertisement();
  v1 = *(v21 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v20 = type metadata accessor for PrivateKey();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for MessageContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v19 = v2 | v6 | v11;
  v13 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 24);

  (*(v1 + 8))(v0 + v3, v21);
  (*(v5 + 8))(v0 + v7, v20);
  (*(v10 + 8))(v0 + v12, v9);
  v16 = *(v0 + v13);

  v17 = *(v0 + v14);

  return _swift_deallocObject(v0, v14 + 8, v19 | 7);
}

uint64_t sub_10003BD70()
{
  v21 = type metadata accessor for HashedAdvertisement();
  v1 = *(v21 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v20 = type metadata accessor for PrivateKey();
  v5 = *(v20 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for MessageContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v19 = v2 | v6 | v11;
  v13 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 16);

  (*(v1 + 8))(v0 + v3, v21);
  (*(v5 + 8))(v0 + v7, v20);
  (*(v10 + 8))(v0 + v12, v9);
  v16 = *(v0 + v13);

  v17 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16, v19 | 7);
}

uint64_t sub_10003BF88()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003C068()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10003C0A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10003C0E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_10003C178()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_10003C1B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C200()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C238()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C298()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C2D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C324()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C35C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003C3AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003C3E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003C450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003C4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003C584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003C644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003C6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003C77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10003C848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_10003C904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003C970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003C9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003CAA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003CB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003CC38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003CCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003CD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003CDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003CE98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003CF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ClientContext();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10003D010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = type metadata accessor for ClientContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003D120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003D190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003D1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003D26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ClientContext();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10003D324(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = type metadata accessor for ClientContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003D434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003D4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ClientContext();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10003D55C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = type metadata accessor for ClientContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SystemInfo.DeviceLockState();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003D758(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SystemInfo.DeviceLockState();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D844(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003D8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003D938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004B564(&qword_1005A92D0, &qword_1004C2890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003D9F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10004B564(&qword_1005A92D0, &qword_1004C2890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003DE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003DF34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003E01C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003E05C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E094()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003E0D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[27];

  return _swift_deallocObject(v0, 224, 7);
}

uint64_t sub_10003E164()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E19C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[24];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_10003E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003E2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10003E3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003E41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003E48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003E54C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003E608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10003E6CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003E794()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003E7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RequestMethod();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003E890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RequestMethod();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003E98C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10003EB1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10003ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Fence.ID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Fence.TriggerID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for Fence.TriggerPosition();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10003EDEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Fence.ID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Fence.TriggerID();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for Fence.TriggerPosition();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10003EFBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_10003F140(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10003F2C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for SharedSecretKey();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_10003F434(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for SharedSecretKey();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_10003F5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003F674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_10003F73C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F774()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003F7B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003F7FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003F834()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003F904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    Properties = type metadata accessor for Credentials.FindMyLocateProperties(0);
    v9 = *(Properties - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = Properties;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Credentials.SecureLocationsProperties(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10003FA28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    Properties = type metadata accessor for Credentials.FindMyLocateProperties(0);
    v9 = *(Properties - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = Properties;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Credentials.SecureLocationsProperties(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10003FB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003FC00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003FCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003FD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003FD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003FDEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003FE5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FE94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003FF30()
{
  v1 = sub_10004B564(&qword_1005AFFB8, &qword_1004D14A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  sub_100004984(v0 + 2);
  sub_100004984(v0 + 7);
  v5 = v0[12];

  if (v0[16])
  {
    sub_100004984(v0 + 13);
  }

  v6 = (v3 + 144) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10004002C()
{
  v1 = type metadata accessor for Response();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100040114()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100040164()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004019C()
{
  v1 = *(type metadata accessor for AckAlertEndpoint() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_10004B564(&qword_1005B0138, &qword_1004D16C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  v10 = type metadata accessor for URLComponents();
  (*(*(v10 - 8) + 8))(v0 + v3, v10);
  v11 = *(v0 + v4);

  v12 = *(v0 + v4 + 16);
  if (v12 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + v4 + 8), v12);
  }

  v13 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v7 + 40) & ~v7;
  sub_100004984((v0 + v13));
  (*(v6 + 8))(v0 + v14, v5);

  return _swift_deallocObject(v0, ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v7 | 7);
}

uint64_t sub_100040358()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040394()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000403CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100040470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100040520()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040590()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100040654()
{
  v1 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1000407B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100040884()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000408BC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000408F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040934()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004096C()
{
  v1 = *(sub_10004B564(&qword_1005B0AE0, &qword_1004D2628) + 16);
  UnsafeMutablePointer.deinitialize(count:)();
  v2 = *(sub_10004B564(&qword_1005B0AE8, &qword_1004D2630) + 16);
  UnsafeMutablePointer.deinitialize(count:)();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000409E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100040AE4()
{
  v1 = (type metadata accessor for ShareInvitationRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_1000049D0(*(v7 + v1[7]), *(v7 + v1[7] + 8));
  v9 = *(v0 + v4);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100040BFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040C38()
{
  v1 = type metadata accessor for PersonHandle();
  v2 = *(v1 - 8);
  v33 = *(v2 + 80);
  v3 = (v33 + 32) & ~v33;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for FenceRecord();
  v6 = *(*(v5 - 1) + 80);
  v32 = *(*(v5 - 1) + 64);
  v35 = type metadata accessor for Fence();
  v7 = *(v35 - 8);
  v8 = *(v7 + 80);
  v31 = *(v7 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v0 + v4);

  v34 = (v4 + v6 + 8) & ~v6;
  v11 = v0 + v34;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(v0 + v34, v12);
  v13 = *(v0 + v34 + v5[5] + 8);

  v14 = v5[8];
  v15 = type metadata accessor for Fence.Schedule();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v34 + v14, 1, v15))
  {
    (*(v16 + 8))(v11 + v14, v15);
  }

  v17 = v5[9];
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v11 + v17, 1, v18))
  {
    (*(v19 + 8))(v11 + v17, v18);
  }

  v20 = (v32 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + v8 + 8) & ~v8;
  v22 = (v11 + v5[10]);
  v23 = v22[1];

  v24 = v22[3];

  v25 = v22[5];

  v26 = v22[7];

  v27 = v22[9];

  v28 = v22[11];

  v29 = *(v0 + v20);

  (*(v7 + 8))(v0 + v21, v35);

  return _swift_deallocObject(v0, ((v31 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v33 | v6 | v8 | 7);
}

uint64_t sub_100040FD8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100041010()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000410F0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = *&v0[v5];

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000411EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004122C()
{
  v1 = type metadata accessor for Fence.TriggerID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004130C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004134C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041384()
{
  v1 = type metadata accessor for Fence.ID();
  v2 = *(v1 - 8);
  v18 = *(v2 + 80);
  v3 = (v18 + 24) & ~v18;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Fence.TriggerPosition();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v17 = *(v10 + 64);
  v13 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v8, v5);
  v14 = type metadata accessor for Fence.AcceptanceStatus();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v12, 1, v14))
  {
    (*(v15 + 8))(v0 + v12, v14);
  }

  return _swift_deallocObject(v0, ((v17 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v18 | v7 | v11 | 7);
}

uint64_t sub_1000415CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100041614()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041658()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100041740()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100041778()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000417E4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100041834()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041884()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000418C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100041908()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000419C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000419FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100041A34()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041A98()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100041AD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100041B14()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100041B5C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041B94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100041BD8()
{
  sub_1000049D0(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100041C28()
{
  sub_1000049D0(v0[2], v0[3]);
  sub_1000049D0(v0[4], v0[5]);
  v1 = v0[6];

  v2 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100041CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100041DA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100041E4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Fence.ID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for Fence.TriggerID();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for Fence.TriggerPosition();
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = type metadata accessor for Date();
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8]);
          if (v17 >= 5)
          {
            return v17 - 4;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100041FE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Fence.ID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Fence.TriggerID();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for Fence.TriggerPosition();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for Date();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 4;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10004217C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Handle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100042234(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Handle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000422E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000423A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004246C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100042518(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000425C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000426E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100042800()
{
  v1 = type metadata accessor for SessionMessagingInvite();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100042888()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000428D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042908()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100042940()
{
  v18 = type metadata accessor for Account();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v16 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v17 = type metadata accessor for Destination();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (v16 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for MessageContext();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v15 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  (*(v1 + 8))(v0 + v16, v18);
  (*(v4 + 8))(v0 + v6, v17);
  v13 = *(v0 + v7);

  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v11 + v15, v12 | 7);
}

uint64_t sub_100042B30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v25 = type metadata accessor for Account();
  v3 = *(v25 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for Destination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v23 = (((v4 + 32) & ~v4) + v5 + v8) & ~v8;
  v24 = v6;
  v9 = v23 + *(v7 + 64);
  v22 = type metadata accessor for Message();
  v10 = *(v22 - 8);
  v11 = *(v10 + 80);
  v20 = (v9 + v11) & ~v11;
  v12 = (*(v10 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = type metadata accessor for MessageContext();
  v13 = *(v21 - 8);
  v14 = *(v13 + 80);
  v15 = (v12 + v14 + 8) & ~v14;
  v19 = *(v13 + 64);
  v16 = v4 | v8 | v14 | v11;
  (*(v3 + 8))(v0 + ((v4 + 32) & ~v4), v25);
  (*(v7 + 8))(v0 + v23, v24);
  (*(v10 + 8))(v0 + v20, v22);
  v17 = *(v0 + v12);

  (*(v13 + 8))(v0 + v15, v21);

  return _swift_deallocObject(v0, v15 + v19, v16 | 7);
}

uint64_t sub_100042DB0()
{
  v17 = type metadata accessor for Account();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v16 = type metadata accessor for UUID();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for Destination();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_100042F8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042FC4()
{
  v24 = type metadata accessor for Account();
  v1 = *(v24 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v23 = type metadata accessor for Destination();
  v4 = *(v23 - 8);
  v5 = *(v4 + 80);
  v6 = (((v2 + 72) & ~v2) + v3 + v5) & ~v5;
  v19 = v6;
  v7 = *(v4 + 64);
  v22 = sub_10004B564(&qword_1005B1888, &unk_1004D8870);
  v8 = *(v22 - 8);
  v9 = *(v8 + 80);
  v20 = (v6 + v7 + v9) & ~v9;
  v10 = (*(v8 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = type metadata accessor for MessageContext();
  v11 = *(v21 - 8);
  v12 = *(v11 + 80);
  v13 = (v10 + v12 + 8) & ~v12;
  v18 = *(v11 + 64);
  v14 = v2 | v5 | v12 | v9;
  v15 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100004984((v0 + 32));
  (*(v1 + 8))(v0 + ((v2 + 72) & ~v2), v24);
  (*(v4 + 8))(v0 + v19, v23);
  (*(v8 + 8))(v0 + v20, v22);
  v16 = *(v0 + v10);

  (*(v11 + 8))(v0 + v13, v21);

  return _swift_deallocObject(v0, v13 + v18, v14 | 7);
}

uint64_t sub_10004325C()
{
  v18 = type metadata accessor for Account();
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);
  v17 = type metadata accessor for UUID();
  v5 = *(v17 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = type metadata accessor for Destination();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v16 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100004984((v0 + 32));
  (*(v1 + 8))(v0 + v3, v18);
  (*(v5 + 8))(v0 + v7, v17);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v16, v13 | 7);
}

uint64_t sub_100043470()
{
  v1 = (type metadata accessor for FenceTriggerRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = *(v0 + 16);

  v12 = v0 + v3;
  v13 = type metadata accessor for Fence.ID();
  (*(*(v13 - 8) + 8))(v0 + v3, v13);
  v14 = v1[7];
  v15 = type metadata accessor for Fence.TriggerID();
  (*(*(v15 - 8) + 8))(v12 + v14, v15);
  v16 = v1[8];
  v17 = type metadata accessor for Fence.TriggerPosition();
  (*(*(v17 - 8) + 8))(v12 + v16, v17);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100043718()
{
  v1 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  v10 = *(v0 + 14);

  if (*(v0 + 20))
  {
    v11 = *(v0 + 17);

    v12 = *(v0 + 20);

    v13 = *(v0 + 32);

    v14 = *(v0 + 34);
  }

  if (*(v0 + 58))
  {
    v15 = *(v0 + 54);

    v16 = *(v0 + 56);

    v17 = *(v0 + 58);

    v18 = *(v0 + 60);

    v19 = *(v0 + 62);
  }

  v20 = (v3 + 504) & ~v3;
  v21 = (v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(&v0[v20], v1);

  return _swift_deallocObject(v0, v21 + 8, v3 | 7);
}

uint64_t sub_1000438B4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  sub_1000049D0(*(v0 + v5), *(v0 + v5 + 8));
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100043A28()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100043AB0()
{
  v1 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[5] + 8);

  v9 = v1[6];
  v10 = type metadata accessor for PrivateKey();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[7];
  v13 = type metadata accessor for HashedAdvertisement();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = v1[8];
  v16 = type metadata accessor for Destination();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = *(v6 + v1[9] + 8);

  v19 = v1[11];
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v6 + v19, 1, v20))
  {
    (*(v21 + 8))(v6 + v19, v20);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100043DE0()
{
  v1 = (type metadata accessor for OwnerSharedSecretsRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v0 + v3;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(v0 + v3, v12);
  v13 = v1[8];
  v14 = type metadata accessor for SharedSecretKey();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  v15 = v1[9];
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  v17 = *(v0 + v4);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_100043FEC()
{
  v1 = sub_10004B564(&qword_1005B1C90, &qword_1004D5E70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000440B0()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v18 = (v3 + 24) & ~v3;
  v19 = v1;
  v4 = v18 + *(v2 + 64);
  v5 = sub_10004B564(&qword_1005B1CA0, &qword_1004D5ED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = type metadata accessor for HandleType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v3 | v12 | v7;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + 16);

  (*(v2 + 8))(v0 + v18, v19);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return _swift_deallocObject(v0, v15 + 8, v14 | 7);
}

uint64_t sub_10004429C()
{
  v1 = (type metadata accessor for SecureLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = v1[15];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[16];
  v10 = type metadata accessor for MotionActivityState();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[18] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044428()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044640()
{
  v1 = type metadata accessor for ClientID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044720()
{
  Priority = type metadata accessor for LocatePriority();
  v2 = *(Priority - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], Priority);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044808()
{
  Priority = type metadata accessor for LocatePriority();
  v2 = *(Priority - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, Priority);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000448C4()
{
  Priority = type metadata accessor for LocatePriority();
  v2 = *(Priority - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, Priority);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100044980()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000449B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100044A08()
{
  v1 = sub_10004B564(&qword_1005B2490, &unk_1004D6A28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100044A9C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044B84()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  v10 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  v11 = *&v0[v5];

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100044C7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044CE0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100044DEC()
{
  v1 = type metadata accessor for LocationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100044EFC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100044F44()
{
  v1 = type metadata accessor for ClientID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100045024()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004505C()
{
  v1 = type metadata accessor for LocationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100045134()
{
  v1 = type metadata accessor for LocationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000452AC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100045304()
{
  v1 = v0[4];

  sub_1000049D0(v0[5], v0[6]);
  sub_1000049D0(v0[7], v0[8]);
  v2 = v0[9];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000453F4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045434()
{
  MyInterface = type metadata accessor for MicroFindMyInterface();
  v2 = *(MyInterface - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, MyInterface);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000454D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100045590(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004563C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045674()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_1000049D0(v0[5], v0[6]);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000456BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000456F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045734()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004576C()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_100045864()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004589C()
{
  v1 = *(v0 + 16);

  sub_1000049D0(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000458E4()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  sub_1000049D0(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000459B8()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045A88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045ACC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Handle();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100045BFC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Handle();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100045D2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045D64()
{
  v1 = *(v0 + 32);

  sub_1000049D0(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100045E24()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100045E78()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100045F60()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004602C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046064()
{
  v1 = *(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v20 = *(v1 + 64);
  v21 = type metadata accessor for UUID();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v19 = *(v4 + 64);
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v18 = *(v7 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = type metadata accessor for CloudKitChangeSet();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3, 1, v11))
  {
    (*(v12 + 8))(v0 + v3, v11);
  }

  v13 = (v3 + v20 + v5) & ~v5;
  v14 = (v13 + v19 + v8) & ~v8;
  v15 = (v18 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v13, v21);
  (*(v7 + 8))(v0 + v14, v6);
  v16 = *(v0 + v15);

  return _swift_deallocObject(v0, ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v5 | v8 | 7);
}

uint64_t sub_1000462E4()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10004638C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000463DC()
{
  v18 = sub_10004B564(&qword_1005B3990, &qword_1004D8940);
  v1 = *(v18 - 8);
  v2 = *(v1 + 80);
  v16 = (v2 + 16) & ~v2;
  v3 = *(v1 + 64);
  v17 = type metadata accessor for Handle();
  v4 = *(v17 - 8);
  v5 = *(v4 + 80);
  v6 = (v16 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v12 = v2 | v5 | v10;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v16, v18);
  (*(v4 + 8))(v0 + v6, v17);
  v14 = *(v0 + v7);

  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v13 + 8, v12 | 7);
}

uint64_t sub_1000465DC()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_10004B564(&qword_1005B3990, &qword_1004D8940);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_10004673C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100046778()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_10004B564(&qword_1005B0F30, &qword_1004D3308) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v11 = (v0 + v8);
  v12 = type metadata accessor for DiscoveryToken(0);
  if (!(*(*(v12 - 8) + 48))(v0 + v8, 1, v12))
  {

    v13 = v11 + *(v12 + 20);
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 8))(v13, v14);
    v15 = *(type metadata accessor for DiscoveryToken.Bucket(0) + 24);
    v16 = type metadata accessor for DateInterval();
    (*(*(v16 - 8) + 8))(&v13[v15], v16);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_10004698C()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100046A5C()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100046B10()
{
  v1 = (type metadata accessor for FindingTokenEnvelopeV1() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  sub_1000049D0(*(v0 + v3 + v1[8]), *(v0 + v3 + v1[8] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100046C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DateInterval();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100046D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DateInterval();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100046E1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DiscoveryToken.Bucket(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100046EC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DiscoveryToken.Bucket(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100046F6C()
{
  v1 = sub_10004B564(&qword_1005B3B60, &qword_1004D8B88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10004700C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047048()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100047098()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000470E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalUserNotificationCategory();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000471F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocalUserNotificationCategory();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UUID();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000472FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalUserNotificationCategory();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004740C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocalUserNotificationCategory();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UUID();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100047518(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for LocalUserNotificationCategory();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for UUID();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_100047620(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for LocalUserNotificationCategory();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for UUID();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_100047724(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for LocalUserNotificationCategory();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for UUID();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for Friend();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_100047898(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for LocalUserNotificationCategory();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for Friend();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[8];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_100047A2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100047A70()
{
  v23 = type metadata accessor for MessageContext();
  v1 = *(v23 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v22 = type metadata accessor for UUID();
  v4 = *(v22 - 8);
  v5 = *(v4 + 80);
  v19 = (((v2 + 24) & ~v2) + v3 + v5) & ~v5;
  v20 = (*(v4 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = type metadata accessor for PrivateKey();
  v6 = *(v21 - 8);
  v7 = *(v6 + 80);
  v8 = (((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  v18 = type metadata accessor for HashedAdvertisement();
  v10 = *(v18 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v17 = *(v10 + 64);
  v13 = v2 | v5 | v7 | v11;
  v14 = *(v0 + 16);

  (*(v1 + 8))(v0 + ((v2 + 24) & ~v2), v23);
  (*(v4 + 8))(v0 + v19, v22);
  v15 = *(v0 + v20 + 8);

  (*(v6 + 8))(v0 + v8, v21);
  (*(v10 + 8))(v0 + v12, v18);

  return _swift_deallocObject(v0, v12 + v17, v13 | 7);
}

uint64_t sub_100047D00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for PrivateKey();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = type metadata accessor for HashedAdvertisement();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100047E78(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for PrivateKey();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = type metadata accessor for HashedAdvertisement();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100047FF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Account();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Destination();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 12)
  {
    v16 = *(a1 + a3[7] + 8) >> 60;
    if (((4 * v16) & 0xC) != 0)
    {
      return 16 - ((4 * v16) & 0xC | (v16 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = type metadata accessor for MessageContext();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1000481D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Account();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Destination();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 12)
  {
    v17 = (a1 + a4[7]);
    *v17 = 0;
    v17[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v18 = type metadata accessor for MessageContext();
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[8];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_1000483A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Account();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for Destination();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000484E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Account();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for Destination();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100048630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MessagingCapability();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000486EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MessagingCapability();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000487A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 11)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v13 = type metadata accessor for MessagingOptions();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000488DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 11)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v12 = type metadata accessor for MessagingOptions();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_100048AC8()
{
  v1 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048BA4()
{
  v1 = type metadata accessor for MessageContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_100048D00()
{
  v1 = type metadata accessor for MessageContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100048E78()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10004B564(&qword_1005B4F58, &qword_1004DC018);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100048FEC()
{
  v1 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100049038()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004908C()
{
  v1 = sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004919C()
{
  v1 = type metadata accessor for PreferenceStreamChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049270()
{
  v1 = type metadata accessor for PreferenceStreamChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004933C()
{
  v1 = *(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = type metadata accessor for Device();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004946C()
{
  v1 = *(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = type metadata accessor for Device();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100049598()
{
  v1 = type metadata accessor for PreferenceStreamChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100049670()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for PreferenceStreamChange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000497D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049810()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100049874()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000498BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049934(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000499AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100049A3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049A74()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049ABC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049AF4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049BB8()
{
  v1 = sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100049D1C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049DFC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049EC0()
{
  v1 = sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004A024()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004A0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10004A218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10004A33C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004A37C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004A440()
{
  v1 = sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10004A5A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004A69C()
{
  v1 = (type metadata accessor for SecureLocationsConfig() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + v3 + 64);

  v7 = v1[21];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[22]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004A7A0()
{
  v1 = (type metadata accessor for SecureLocationsConfig() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 64);

  v7 = v1[21];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v5 + v1[22]);

  v10 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10004A8A8()
{
  sub_1000049D0(v0[3], v0[4]);
  v1 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004A914()
{
  v1 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[5] + 8);

  v9 = v1[6];
  v10 = type metadata accessor for PrivateKey();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[7];
  v13 = type metadata accessor for HashedAdvertisement();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = v1[8];
  v16 = type metadata accessor for Destination();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = *(v6 + v1[9] + 8);

  v19 = v1[11];
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v6 + v19, 1, v20))
  {
    (*(v21 + 8))(v6 + v19, v20);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AC2C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004AC64()
{
  v1 = (type metadata accessor for SecureLocationsCachedSharingKey(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  v8 = type metadata accessor for DiversifiedRootKeys();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AD84()
{
  v1 = (type metadata accessor for SecureLocationsCachedPayload() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[7];
  v8 = *(v7 + 8);

  v9 = type metadata accessor for SecureLocation();
  v10 = v9[13];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  v12 = v9[14];
  v13 = type metadata accessor for MotionActivityState();
  (*(*(v13 - 8) + 8))(v7 + v12, v13);
  v14 = *(v7 + v9[16] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AFD4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004B004(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

_OWORD *sub_10004B064(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10004B08C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10004B0C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10004B0D8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100010780(*a1);
  v5 = v4;
  if (v3 == sub_100010780(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10004B160()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100010780(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004B1C4()
{
  sub_100010780(*v0);
  String.hash(into:)();
}

Swift::Int sub_10004B218()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100010780(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004B278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10004C954();
  *a2 = result;
  return result;
}

unint64_t sub_10004B2A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100010780(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t variable initialization expression of CurrentLocationMonitor.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B518();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_10004BB2C(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10004B5AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_10004B518()
{
  result = qword_1005A96F0;
  if (!qword_1005A96F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005A96F0);
  }

  return result;
}

uint64_t sub_10004B564(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10004B5AC()
{
  result = qword_1005A8680;
  if (!qword_1005A8680)
  {
    sub_10004B610(&unk_1005AB400, &unk_1004C0BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8680);
  }

  return result;
}

uint64_t sub_10004B610(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of DarwinNotificationManager.serialQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B518();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_10004BB2C(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10004B5AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of DarwinNotificationManager.lock()
{
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_10004B920(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004B940(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_10004B990(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A8888, type metadata accessor for SecureLocationsError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004B9FC(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A8888, type metadata accessor for SecureLocationsError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004BA68(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

_DWORD *sub_10004BAD4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10004BB2C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004BB74(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88C8, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004BBE0(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88C8, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004BC4C(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10004BCB8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10004BD30(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10004BDB0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10004BDF4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10004BE30()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10004BE84()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

Swift::Int sub_10004BEF8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10004BF40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10004BF94(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10004C000(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10004C06C(void *a1, uint64_t a2)
{
  v4 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10004C0FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10004C188(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10004C1F4(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10004C260(void *a1, uint64_t a2)
{
  v4 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10004C2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10004C36C()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004C3CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10004C454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004BB2C(&qword_1005A8858, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10004C4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004BB2C(&qword_1005A88C0, type metadata accessor for SecureLocationsError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10004C55C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10004C5A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10004C5D0(uint64_t a1)
{
  v2 = sub_10004BB2C(&qword_1005A88F0, type metadata accessor for URLResourceKey);
  v3 = sub_10004BB2C(&qword_1005A88F8, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10004C68C(unsigned __int8 a1, uint64_t a2)
{
  v3._countAndFlagsBits = sub_100010CF4(a1);
  v37 = 0xD000000000000030;
  v38[0] = 0x80000001004DE5F0;
  String.append(_:)(v3);

  v4 = sub_100010EA8(&_swiftEmptyArrayStorage);
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v9 << 6);
    v14 = *(*(a2 + 48) + v13);
    sub_100011004(*(a2 + 56) + 40 * v13, v38);
    LOBYTE(v37) = v14;
    sub_100011068(&v37, v35);
    v15 = sub_100010780(v35[0]);
    v17 = v16;
    sub_100011068(&v37, v33);
    sub_100010BD4(&v34, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1000110D8(v15, v17);
    v21 = v4[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_23;
    }

    v25 = v20;
    if (v4[3] < v24)
    {
      sub_100011198(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1000110D8(v15, v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v25)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v30 = v19;
    sub_100202380();
    v19 = v30;
    if (v25)
    {
LABEL_4:
      v10 = v19;

      v11 = (v4[7] + 40 * v10);
      sub_100004984(v11);
      sub_100010BD4(v32, v11);
      sub_100011514(&v37);
      goto LABEL_5;
    }

LABEL_17:
    v4[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (v4[6] + 16 * v19);
    *v27 = v15;
    v27[1] = v17;
    sub_100010BD4(v32, v4[7] + 40 * v19);
    sub_100011514(&v37);
    v28 = v4[2];
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_24;
    }

    v4[2] = v29;
LABEL_5:
    v7 &= v7 - 1;
    sub_100004984(v36);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 0xD000000000000030;
    }

    v7 = *(a2 + 64 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004C954()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10004C9A8(uint64_t a1)
{
  if (!a1)
  {
    return 1701736270;
  }

  swift_errorRetain();
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v6 == v5)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      _StringGuts.grow(_:)(26);

      strcpy(v19, "Error Domain: ");
      HIBYTE(v19[1]) = -18;
      v9 = [v1 domain];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13._countAndFlagsBits = v10;
      v13._object = v12;
      String.append(_:)(v13);

      v14._countAndFlagsBits = 0x203A65646F43202ELL;
      v14._object = 0xE800000000000000;
      String.append(_:)(v14);
      [v1 code];
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      return v19[0];
    }
  }

  [v1 code];
  v17 = stringForCKErrorCode();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v18;
}

uint64_t sub_10004CBC0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 32) = 14;
  *(inited + 16) = xmmword_1004C0BB0;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = a1;
  *(inited + 80) = 13;
  *(inited + 112) = &type metadata for Bool;
  *(inited + 120) = &off_10058C3C8;
  *(inited + 88) = a2;
  *(inited + 128) = 15;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v8 = sub_10004C9A8(v14);
  v10 = v9;

  *(inited + 160) = &type metadata for String;
  *(inited + 168) = &off_10058C398;
  *(inited + 136) = v8;
  *(inited + 144) = v10;
  *(inited + 176) = 10;
  *(inited + 208) = &type metadata for Bool;
  *(inited + 216) = &off_10058C3C8;
  *(inited + 184) = (a4 & 1) == 0;
  v11 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v12 = sub_10004C68C(0, v11);

  return v12;
}

uint64_t sub_10004CD88()
{
  v0 = type metadata accessor for Fence.Variant();
  v21 = *(v0 - 8);
  v22 = v0;
  v1 = *(v21 + 64);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Fence.Participant();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BC0;
  *(inited + 32) = 2;
  v20 = inited + 32;
  Fence.createdBy.getter();
  v13 = Fence.Participant.valueForAnalytics.getter();
  v14 = *(v5 + 8);
  v14(v11, v4);
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v13;
  *(inited + 80) = 3;
  Fence.finder.getter();
  v15 = Fence.Participant.valueForAnalytics.getter();
  v14(v9, v4);
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v15;
  *(inited + 128) = 1;
  Fence.variant.getter();
  v16 = Fence.Variant.valueForAnalytics.getter();
  (*(v21 + 8))(v3, v22);
  *(inited + 160) = &type metadata for Int;
  *(inited + 168) = &off_10058C3A8;
  *(inited + 136) = v16;
  *(inited + 176) = 6;
  *(inited + 208) = &type metadata for String;
  *(inited + 216) = &off_10058C398;
  *(inited + 184) = 0xD000000000000014;
  *(inited + 192) = 0x80000001004DE630;
  *(inited + 224) = 17;
  *(inited + 256) = &type metadata for Bool;
  *(inited + 264) = &off_10058C3C8;
  *(inited + 232) = 0;
  v17 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v18 = sub_10004C68C(4u, v17);

  return v18;
}

uint64_t sub_10004D0C4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for Fence.Variant();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  *(inited + 32) = 19;
  v18[1] = a2;
  v19 = a3 & 1;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v11 = sub_10004C9A8(v18[0]);
  v13 = v12;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  *(inited + 80) = 1;
  Fence.variant.getter();
  v14 = Fence.Variant.valueForAnalytics.getter();
  (*(v6 + 8))(v9, v5);
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v14;
  *(inited + 128) = 18;
  *(inited + 160) = &type metadata for Bool;
  *(inited + 168) = &off_10058C3C8;
  *(inited + 136) = (a3 & 1) == 0;
  v15 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v16 = sub_10004C68C(5u, v15);

  return v16;
}

uint64_t sub_10004D318(uint64_t a1, uint64_t a2, char a3)
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  *(inited + 32) = 20;
  v5 = Fence.TriggerPosition.valueForAnalytics.getter();
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v5;
  *(inited + 80) = 4;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v6 = sub_10004C9A8(v12);
  v8 = v7;

  *(inited + 112) = &type metadata for String;
  *(inited + 120) = &off_10058C398;
  *(inited + 88) = v6;
  *(inited + 96) = v8;
  *(inited + 128) = 5;
  *(inited + 160) = &type metadata for Bool;
  *(inited + 168) = &off_10058C3C8;
  *(inited + 136) = (a3 & 1) == 0;
  v9 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v10 = sub_10004C68C(6u, v9);

  return v10;
}

uint64_t sub_10004D4D8()
{
  v22 = type metadata accessor for Fence.Participant();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Fence.Variant();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BB0;
  *(inited + 32) = 1;
  Fence.variant.getter();
  v13 = Fence.Variant.valueForAnalytics.getter();
  (*(v8 + 8))(v11, v7);
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v13;
  *(inited + 80) = 2;
  Fence.createdBy.getter();
  v14 = Fence.Participant.valueForAnalytics.getter();
  v15 = *(v0 + 8);
  v16 = v6;
  v17 = v22;
  v15(v16, v22);
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v14;
  *(inited + 128) = 3;
  Fence.finder.getter();
  v18 = Fence.Participant.valueForAnalytics.getter();
  v15(v4, v17);
  *(inited + 160) = &type metadata for Int;
  *(inited + 168) = &off_10058C3A8;
  *(inited + 136) = v18;
  *(inited + 176) = 16;
  *(inited + 208) = &type metadata for Bool;
  *(inited + 216) = &off_10058C3C8;
  *(inited + 184) = 1;
  v19 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v20 = sub_10004C68C(9u, v19);

  return v20;
}

uint64_t sub_10004D7D0(uint64_t a1, char a2, char a3, unsigned __int8 a4)
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  *(inited + 32) = 20;
  v8 = Fence.TriggerPosition.valueForAnalytics.getter();
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v8;
  *(inited + 80) = a2;
  *(inited + 112) = &type metadata for String;
  *(inited + 120) = &off_10058C398;
  strcpy((inited + 88), "NoFenceFound");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 128) = a3;
  *(inited + 160) = &type metadata for Bool;
  *(inited + 168) = &off_10058C3C8;
  *(inited + 136) = 0;
  v9 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v10 = sub_10004C68C(a4, v9);

  return v10;
}

uint64_t sub_10004D930(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v47 = a6;
  v48 = a7;
  v45 = a5;
  v46 = a4;
  v43 = a2;
  v44 = a3;
  v7 = type metadata accessor for Fence.AcceptanceStatus();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  __chkstk_darwin(v7);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Fence.Variant();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Fence.Participant();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v37 - v20;
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BE0;
  *(inited + 32) = 2;
  v40 = inited + 32;
  Fence.createdBy.getter();
  v23 = Fence.Participant.valueForAnalytics.getter();
  v24 = *(v15 + 8);
  v24(v21, v14);
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v23;
  *(inited + 80) = 3;
  Fence.finder.getter();
  v25 = Fence.Participant.valueForAnalytics.getter();
  v24(v19, v14);
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v25;
  *(inited + 128) = 1;
  Fence.variant.getter();
  v26 = Fence.Variant.valueForAnalytics.getter();
  (*(v37 + 8))(v13, v38);
  *(inited + 160) = &type metadata for Int;
  *(inited + 168) = &off_10058C3A8;
  *(inited + 136) = v26;
  *(inited + 176) = 21;
  v27 = v39;
  Fence.acceptanceStatus.getter();
  v28 = Fence.AcceptanceStatus.valueForAnalytics.getter();
  (*(v41 + 8))(v27, v42);
  *(inited + 208) = &type metadata for Int;
  *(inited + 216) = &off_10058C3A8;
  *(inited + 184) = v28;
  *(inited + 224) = 20;
  v29 = Fence.TriggerPosition.valueForAnalytics.getter();
  *(inited + 256) = &type metadata for Int;
  *(inited + 264) = &off_10058C3A8;
  *(inited + 232) = v29;
  v30 = v46;
  *(inited + 272) = v45;
  v50 = v44;
  v51 = v30 & 1;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v31 = sub_10004C9A8(v49);
  v33 = v32;

  *(inited + 304) = &type metadata for String;
  *(inited + 312) = &off_10058C398;
  *(inited + 280) = v31;
  *(inited + 288) = v33;
  *(inited + 320) = v47;
  *(inited + 352) = &type metadata for Bool;
  *(inited + 360) = &off_10058C3C8;
  *(inited + 328) = (v30 & 1) == 0;
  v34 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v35 = sub_10004C68C(v48, v34);

  return v35;
}

uint64_t sub_10004DD80(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v35 = a5;
  v36 = a6;
  v33 = a4;
  v34 = a3;
  v32 = a2;
  v6 = type metadata accessor for Fence.Variant();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Fence.Participant();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BC0;
  *(inited + 32) = 2;
  v31 = inited + 32;
  Fence.createdBy.getter();
  v19 = Fence.Participant.valueForAnalytics.getter();
  v20 = *(v11 + 8);
  v20(v17, v10);
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = &off_10058C3A8;
  *(inited + 40) = v19;
  *(inited + 80) = 3;
  Fence.finder.getter();
  v21 = Fence.Participant.valueForAnalytics.getter();
  v20(v15, v10);
  *(inited + 112) = &type metadata for Int;
  *(inited + 120) = &off_10058C3A8;
  *(inited + 88) = v21;
  *(inited + 128) = 1;
  Fence.variant.getter();
  v22 = Fence.Variant.valueForAnalytics.getter();
  (*(v29 + 8))(v9, v30);
  *(inited + 160) = &type metadata for Int;
  *(inited + 168) = &off_10058C3A8;
  *(inited + 136) = v22;
  LOBYTE(v10) = v34;
  *(inited + 176) = v33;
  v38 = v32;
  v39 = v10 & 1;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v23 = sub_10004C9A8(v37);
  v25 = v24;

  *(inited + 208) = &type metadata for String;
  *(inited + 216) = &off_10058C398;
  *(inited + 184) = v23;
  *(inited + 192) = v25;
  *(inited + 224) = v35;
  *(inited + 256) = &type metadata for Bool;
  *(inited + 264) = &off_10058C3C8;
  *(inited + 232) = (v10 & 1) == 0;
  v26 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v27 = sub_10004C68C(v36, v26);

  return v27;
}

__n128 sub_10004E140(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004E154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004E19C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FencesReliabilityMetric.Field(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FencesReliabilityMetric.Field(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004E358()
{
  result = qword_1005A8838;
  if (!qword_1005A8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8838);
  }

  return result;
}

void sub_10004E690(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_10004E724()
{
  result = qword_1005A88B0;
  if (!qword_1005A88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A88B0);
  }

  return result;
}

uint64_t sub_10004E9AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6567617373656DLL;
  }

  else
  {
    v4 = 0x7265646E65537369;
  }

  if (v3)
  {
    v5 = 0xED000064696C6156;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x6567617373656DLL;
  }

  else
  {
    v6 = 0x7265646E65537369;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xED000064696C6156;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10004EA60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004EAF0()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10004EB6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004EBF8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058A4F8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10004EC58(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E65537369;
  if (*v1)
  {
    v2 = 0x6567617373656DLL;
  }

  v3 = 0xED000064696C6156;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10004ECA4(uint64_t a1)
{
  v2 = sub_100010EA8(_swiftEmptyArrayStorage);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_11:
    v11 = __clz(__rbit64(v5)) | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100011004(*(a1 + 56) + 40 * v11, &v35);
    v34[0] = v12;
    sub_10004EF78(v34, v32);
    if (v32[0])
    {
      v13 = 0x6567617373656DLL;
    }

    else
    {
      v13 = 0x7265646E65537369;
    }

    if (v32[0])
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = 0xED000064696C6156;
    }

    sub_10004EF78(v34, v30);
    sub_100010BD4(&v31, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1000110D8(v13, v14);
    v18 = v2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_29;
    }

    v22 = v17;
    if (v2[3] < v21)
    {
      sub_100011198(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1000110D8(v13, v14);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_31;
      }

LABEL_22:
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v27 = v16;
    sub_100202380();
    v16 = v27;
    if (v22)
    {
LABEL_4:
      v8 = v16;

      v9 = (v2[7] + 40 * v8);
      sub_100004984(v9);
      sub_100010BD4(v29, v9);
      sub_10004EFE8(v34);
      goto LABEL_5;
    }

LABEL_23:
    v2[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v2[6] + 16 * v16);
    *v24 = v13;
    v24[1] = v14;
    sub_100010BD4(v29, v2[7] + 40 * v16);
    sub_10004EFE8(v34);
    v25 = v2[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_30;
    }

    v2[2] = v26;
LABEL_5:
    v5 &= v5 - 1;
    sub_100004984(v33);
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return 0xD000000000000030;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}