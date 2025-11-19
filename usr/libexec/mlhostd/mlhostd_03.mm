uint64_t sub_100048C18()
{
  v0 = sub_1000089AC(&qword_100085D18, &qword_1000694C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_1000089AC(&unk_100085CE8, &qword_100069498);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  TaskRequest.repeatingTask.getter();
  v8 = type metadata accessor for RepeatingTaskRequest();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_100009C94(v7, &unk_100085CE8, &qword_100069498);
  }

  else
  {
    RepeatingTaskRequest.interval.getter();
    v10 = v9;
    sub_100009C94(v7, &unk_100085CE8, &qword_100069498);
    if (v10 > 0.0)
    {
      goto LABEL_7;
    }
  }

  TaskRequest.nonRepeatingTask.getter();
  v11 = type metadata accessor for NonRepeatingTaskRequest();
  if (!(*(*(v11 - 8) + 48))(v3, 1, v11))
  {
    NonRepeatingTaskRequest.scheduleAfter.getter();
    v10 = v12;
    sub_100009C94(v3, &qword_100085D18, &qword_1000694C8);
    if (v10 <= 0.0)
    {
      goto LABEL_8;
    }

LABEL_7:
    *&result = v10 * 0.8;
    return result;
  }

  sub_100009C94(v3, &qword_100085D18, &qword_1000694C8);
LABEL_8:
  *&result = 0.0;
  return result;
}

id sub_100048E2C(void *a1, uint64_t a2)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000098DC(v4, qword_100087610);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100008A0C(0xD00000000000001DLL, 0x8000000100072EE0, v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "Daemon performing %s activity.", v7, 0xCu);
    sub_100009914(v8);
  }

  v16[4] = nullsub_1;
  v16[5] = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000658D0;
  v16[3] = &unk_100083040;
  v9 = _Block_copy(v16);
  [a1 setExpirationHandler:v9];
  _Block_release(v9);
  if (*(a2 + 16) == 1)
  {
    v10 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
    sub_10001802C();
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100008A0C(0xD00000000000001DLL, 0x8000000100072EE0, v16);
    _os_log_impl(&_mh_execute_header, v11, v12, "Daemon completed %s activity.", v13, 0xCu);
    sub_100009914(v14);
  }

  return [a1 setTaskCompleted];
}

id sub_1000490F0(void *a1, char *a2)
{
  v4 = type metadata accessor for CoreAnalyticsEvents();
  v97 = *(v4 - 8);
  v5 = *(v97 + 64);
  __chkstk_darwin(v4);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v105 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Date();
  v104 = *(v110 - 8);
  v12 = *(v104 + 64);
  v13 = __chkstk_darwin(v110);
  v109 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v103 = &v95 - v16;
  __chkstk_darwin(v15);
  v112 = &v95 - v17;
  v18 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v101 = &v95 - v20;
  v21 = sub_1000089AC(&qword_100085918, &qword_100069250);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v100 = &v95 - v23;
  v119 = nullsub_1;
  v120 = 0;
  aBlock = _NSConcreteStackBlock;
  v116 = 1107296256;
  v117 = sub_1000658D0;
  v118 = &unk_100082FC8;
  v24 = _Block_copy(&aBlock);
  [a1 setExpirationHandler:v24];
  _Block_release(v24);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000098DC(v25, qword_100087610);

  v114 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = os_log_type_enabled(v27, v28);
  v98 = v4;
  v99 = a1;
  v96 = v7;
  v106 = v9;
  v107 = v8;
  if (v29)
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    v31 = *&a2[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry];
    os_unfair_lock_lock((*(v31 + 56) + 16));
    swift_beginAccess();
    v32 = *(v31 + 56);
    v33 = *(*(v31 + 64) + 16);
    os_unfair_lock_unlock(v32 + 4);
    *(v30 + 4) = v33;

    _os_log_impl(&_mh_execute_header, v27, v28, "MLHostDaemon: TaskRegistry has %ld tasks before pruning.", v30, 0xCu);
  }

  else
  {
  }

  v102 = a2;
  v111 = *&a2[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry];
  v108 = sub_10001967C();
  v35 = v108[2];
  if (v35)
  {
    v36 = v108 + 5;
    *&v34 = 136315138;
    v113 = v34;
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock = v42;
        *v41 = v113;
        *(v41 + 4) = sub_100008A0C(v37, v38, &aBlock);
        _os_log_impl(&_mh_execute_header, v39, v40, "Unregistering task %s because it was pruned.", v41, 0xCu);
        sub_100009914(v42);
      }

      sub_100063BB0(v37, v38);

      v36 += 2;
      --v35;
    }

    while (v35);
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    v46 = v111;
    os_unfair_lock_lock((*(v111 + 56) + 16));
    swift_beginAccess();
    v47 = *(*(v46 + 64) + 16);
    os_unfair_lock_unlock((*(v46 + 56) + 16));
    *(v45 + 4) = v47;

    _os_log_impl(&_mh_execute_header, v43, v44, "MLHostDaemon: TaskRegistry has %ld tasks after pruning.", v45, 0xCu);
  }

  else
  {

    v46 = v111;
  }

  v49 = v100;
  v48 = v101;
  v50 = enum case for TaskType.dynamicTask(_:);
  v51 = type metadata accessor for TaskType();
  v52 = *(v51 - 8);
  (*(v52 + 104))(v49, v50, v51);
  (*(v52 + 56))(v49, 0, 1, v51);
  v53 = type metadata accessor for TaskCategory();
  (*(*(v53 - 8) + 56))(v48, 1, 1, v53);
  v54 = sub_10001BA90(v49, v48);
  sub_100009C94(v48, &qword_100085910, &unk_1000693B0);
  sub_100009C94(v49, &qword_100085918, &qword_100069250);
  v55 = sub_10004F764(v54);

  v56 = sub_100026CD4(v46, v55);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  v59 = os_log_type_enabled(v57, v58);
  v102 = v56;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v60 = 136315138;
    v62 = Array.description.getter();
    v64 = sub_100008A0C(v62, v63, &aBlock);

    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v57, v58, "MLHostDaemon: pruned orphaned taskFolders: %s", v60, 0xCu);
    sub_100009914(v61);
  }

  v66 = v105;
  v65 = v106;
  v68 = v103;
  v67 = v104;
  static Calendar.current.getter();
  static Date.now.getter();
  v69 = v112;
  Calendar.startOfDay(for:)();
  v70 = v110;
  *&v113 = *(v67 + 8);
  (v113)(v68, v110);
  (*(v65 + 8))(v66, v107);
  (*(v67 + 16))(v68, v69, v70);
  Date.init(timeInterval:since:)();
  sub_1000089AC(&qword_100085CB8, &qword_100069480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069310;
  *(inited + 32) = 0x49747865746E6F63;
  *(inited + 40) = 0xE900000000000064;
  sub_100009A48(0, &unk_100085CC0, NSString_ptr);
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0x756F43736B736174;
  *(inited + 64) = 0xEA0000000000746ELL;
  v72 = v111;
  os_unfair_lock_lock((*(v111 + 56) + 16));
  swift_beginAccess();
  v73 = *(v72 + 56);
  v74 = *(*(v72 + 64) + 16);
  os_unfair_lock_unlock(v73 + 4);
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x6E7552736B736174;
  *(inited + 88) = 0xE800000000000000;
  sub_100009A48(0, &unk_100085930, NSNumber_ptr);
  *(inited + 96) = NSNumber.init(integerLiteral:)(-1);
  strcpy((inited + 104), "tasksDeferred");
  *(inited + 118) = -4864;
  *(inited + 120) = NSNumber.init(integerLiteral:)(-1);
  *(inited + 128) = 0x696146736B736174;
  *(inited + 136) = 0xEB0000000064656CLL;
  *(inited + 144) = NSNumber.init(integerLiteral:)(-1);
  strcpy((inited + 152), "tasksCompleted");
  *(inited + 167) = -18;
  *(inited + 168) = NSNumber.init(integerLiteral:)(-1);
  *(inited + 176) = 0x745374656B637562;
  *(inited + 184) = 0xEB00000000747261;
  result = Date.timeIntervalSince1970.getter();
  if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v76 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v76 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v77 = [objc_allocWithZone(NSNumber) initWithLongLong:v76];
  result = [v77 stringValue];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v78 = result;

  *(inited + 192) = v78;
  *(inited + 200) = 0x6E4574656B637562;
  *(inited + 208) = 0xE900000000000064;
  result = Date.timeIntervalSince1970.getter();
  if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (v79 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v79 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v80 = [objc_allocWithZone(NSNumber) initWithLongLong:v79];
  result = [v80 stringValue];
  if (!result)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v81 = result;

  *(inited + 216) = v81;
  v82 = sub_100052A14(inited);
  swift_setDeallocating();
  sub_1000089AC(&qword_100085CD0, &qword_100069488);
  swift_arrayDestroy();
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.info.getter();
  v85 = os_log_type_enabled(v83, v84);
  v86 = v96;
  if (v85)
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "MLHostDaemon: sending device telemetry", v87, 2u);
  }

  v89 = v97;
  v88 = v98;
  (*(v97 + 104))(v86, enum case for CoreAnalyticsEvents.deviceStatusTelemetry(_:), v98);
  CoreAnalyticsEvents.rawValue.getter();
  (*(v89 + 8))(v86, v88);
  v90 = String._bridgeToObjectiveC()();

  v91 = swift_allocObject();
  *(v91 + 16) = v82;
  v119 = sub_1000645EC;
  v120 = v91;
  aBlock = _NSConcreteStackBlock;
  v116 = 1107296256;
  v117 = sub_100049F20;
  v118 = &unk_100083018;
  v92 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v92);

  [v99 setTaskCompleted];
  v93 = v110;
  v94 = v113;
  (v113)(v109, v110);
  return v94(v112, v93);
}

Class sub_100049F20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100009A48(0, &qword_100085CD8, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

id sub_100049FBC(void *a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085C50, &qword_100069400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = aBlock - v6;
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000658D0;
  aBlock[3] = &unk_100082F78;
  v8 = _Block_copy(aBlock);
  [a1 setExpirationHandler:v8];
  _Block_release(v8);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;

  sub_10002F68C(0, 0, v7, &unk_100069478, v10);

  return [a1 setTaskCompleted];
}

uint64_t sub_10004A180()
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000098DC(v1, qword_100087610);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MLHostDaemon: pruning KVDatastore expired keys.", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v0 + 24) = *(v5 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10004A304, v7, v6);
}

uint64_t sub_10004A304()
{
  v1 = *(v0 + 24);
  dispatch thunk of KVDatastore.pruneExpiredKeys()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004A364()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC7mlhostd12MLHostDaemon_config;
  v3 = type metadata accessor for MLHostConfig();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);

  v5 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);

  v6 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_notificationRegistry);

  v7 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry);

  v8 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry);

  v9 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);

  return v0;
}

uint64_t sub_10004A43C()
{
  sub_10004A364();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MLHostDaemon()
{
  result = qword_100085AB8;
  if (!qword_100085AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004A4E8()
{
  result = type metadata accessor for MLHostConfig();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_10004A5B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10004A618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004A694()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004A6CC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  return v6(*a1, a1[1], *a2, a2[1], *a3, a3[1], *a4, a4[1], *a5);
}

uint64_t sub_10004A728(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004A820;

  return v7(a1);
}

uint64_t sub_10004A820()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10004A918(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10004CD94(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10004AA68(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100051EE4(&qword_100085F80, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10004CF14(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10004AD48(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_100009A48(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_10004C334(v15, result + 1, a5, a6, a3, a4);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_10004CAF0(v29 + 1, a5, a6);
        }

        v30 = v16;
        sub_10004CD10(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    sub_100009A48(0, a3, a4);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v27 = a2;
      sub_10004D1B8(v27, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v38;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10004AFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_100010DF4(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = a3(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    sub_10004B980(v15, v18, a4);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a3(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

unint64_t sub_10004B168(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for RemoteHandler() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10004B4B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10004B660(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for DatastoreKey();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_100051EE4(&qword_100085D20, &type metadata accessor for DatastoreKey);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_10004B980(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10004BB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100010DF4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1000133CC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_100011970(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_100010DF4(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_100012E74(v13, a3, a4, a1, a2, v24);
  }
}

_OWORD *sub_10004BCDC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100010DF4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000137CC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100012004(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100010DF4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100009914(v23);

    return sub_100009B90(a1, v23);
  }

  else
  {
    sub_100012F7C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10004BE2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100010DF4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100013970();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000122BC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100010DF4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1000157D8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10004BF74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100010F08(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100013998();
      goto LABEL_7;
    }

    sub_1000122E4(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_100010F08(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100012FEC(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for RemoteHandler();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_10004C178(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_100010DF4(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = *v11;
    v33 = sub_100010DF4(a2, a3);
    if ((v22 & 1) == (v34 & 1))
    {
      v18 = v33;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);
}

Swift::Int sub_10004C334(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_1000089AC(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009A48(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_10004CAF0(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

uint64_t sub_10004C534(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000089AC(&unk_100085C30, &unk_1000693E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10004C794(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000089AC(&qword_100085F88, &qword_100069650);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_10004CAF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000089AC(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_10004CD10(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_10004CD94(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10004C534(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10004D348();
      goto LABEL_16;
    }

    sub_10004D81C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004CF14(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10004C794(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10004D4A4();
      goto LABEL_12;
    }

    sub_10004DA54(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100051EE4(&qword_100085F80, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10004D1B8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_10004CAF0(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10004D6DC(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_10004DD70(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_100009A48(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10004D348()
{
  v1 = v0;
  sub_1000089AC(&unk_100085C30, &unk_1000693E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10004D4A4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089AC(&qword_100085F88, &qword_100069650);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

id sub_10004D6DC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000089AC(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_10004D81C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000089AC(&unk_100085C30, &unk_1000693E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10004DA54(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000089AC(&qword_100085F88, &qword_100069650);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10004DD70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000089AC(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_10004DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_100051EE4(&qword_100085F80, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10004D4A4();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10004E360(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_10004E224(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10004D348();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10004E668(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_10004E360(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_100051EE4(&qword_100085F70, &type metadata accessor for UUID);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_10004E668(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10004E82C(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_100010DF4(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1000122BC(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_100010DF4(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_100013970();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000089AC(&qword_100085958, &unk_1000693F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x8000000100073310;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v40 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_100010DF4(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1000122BC(v31, 1);
        v32 = *a3;
        v27 = sub_100010DF4(v7, v6);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v7;
      v35[1] = v6;
      *(v34[7] + 8 * v27) = v8;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v37;
      v5 += 3;
      if (v40 == v25)
      {
      }
    }

    goto LABEL_25;
  }
}

void sub_10004EBC0(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100009A48(0, &qword_100085718, _EXExtensionIdentity_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100009A48(0, &qword_100085718, _EXExtensionIdentity_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10004EDE4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10004EE3C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000089AC(&qword_100086018, &qword_1000696C8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009A48(0, &qword_100085718, _EXExtensionIdentity_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009A48(0, &qword_100085718, _EXExtensionIdentity_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_10004F12C(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100085FF8, &qword_1000696A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000089AC(&qword_100086000, &qword_1000696B0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v10, v6, &qword_100085FF8, &qword_1000696A8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100010DF4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for MLHostTask();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004F318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&unk_100085D28, &unk_1000694D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009C2C(v4, &v11, &unk_1000859B0, &qword_100069278);
      v5 = v11;
      result = sub_100010D60(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100009B90(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10004F440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&qword_1000860D0, &qword_100069780);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10004F648(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&unk_1000860C0, &unk_100069770);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_100010DF4(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10004F764(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10004A918(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10004F7FC(uint64_t a1)
{
  v2 = sub_1000089AC(&unk_100086080, &unk_100069730);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000089AC(&qword_100085800, &qword_100069180);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v10, v6, &unk_100086080, &unk_100069730);
      result = sub_100010F08(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for RemoteHandler();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FA1C(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100086068, &qword_100069718);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000089AC(&unk_100086070, &unk_100069720);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v10, v6, &qword_100086068, &qword_100069718);
      result = sub_100010FDC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DatastoreKey();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FC04(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100086058, &qword_100069708);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000089AC(&qword_100086060, &qword_100069710);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v10, v6, &qword_100086058, &qword_100069708);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100010DF4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ContinuousClock.Instant();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10004FDF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_10004AD48(&v6, v4, &qword_100085718, _EXExtensionIdentity_ptr, &qword_100086018, &qword_1000696C8);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

unint64_t sub_10004FEFC(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100086008, &qword_1000696B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000089AC(&qword_100086010, &qword_1000696C0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v10, v6, &qword_100086008, &qword_1000696B8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100010DF4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for TaskDefinition();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000500E8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_10004A918(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_100050158(uint64_t a1)
{
  v2 = sub_1000089AC(&qword_100085FE8, &qword_100069698);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000089AC(&qword_100085FF0, &qword_1000696A0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100009C2C(v10, v6, &qword_100085FE8, &qword_100069698);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100010DF4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for TaskStatus();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100050344(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100050398()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedScheduler];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 taskRequestForIdentifier:v2];

  v4 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithIdentifier:v5];

  [v6 setInterval:3600.0];
  v7 = v6;
  [v7 setPriority:2];
  [v7 setRequiresExternalPower:0];
  v8 = String._bridgeToObjectiveC()();
  [v7 setGroupName:v8];

  [v7 setGroupConcurrencyLimit:1];
  v9 = [v0 sharedScheduler];
  v10 = v9;
  if (v3)
  {
    v37 = 0;
    v11 = [v9 updateTaskRequest:v7 error:&v37];

    v12 = v37;
    if (v11)
    {
LABEL_3:
      v13 = v12;
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000098DC(v14, qword_100087610);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "MLHostDaemon: scheduled periodic maintenance background activity.", v17, 2u);
      }

      return;
    }
  }

  else
  {
    v37 = 0;
    v18 = [v9 submitTaskRequest:v7 error:&v37];

    v12 = v37;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  v19 = v12;
  v20 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v37 = v20;
  swift_errorRetain();
  sub_1000089AC(&qword_100085958, &unk_1000693F0);
  type metadata accessor for BGSystemTaskSchedulerError(0);
  if (swift_dynamicCast())
  {

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000098DC(v21, qword_100087610);
    v22 = v36;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      sub_100051EE4(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError);
      _BridgedStoredNSError.code.getter();
      type metadata accessor for Code(0);
      v27 = String.init<A>(describing:)();
      v29 = sub_100008A0C(v27, v28, &v38);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Schedule request failed: %s", v25, 0xCu);
      sub_100009914(v26);
    }

    else
    {
    }
  }

  else
  {

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000098DC(v30, qword_100087610);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Schedule request failed: %@", v33, 0xCu);
      sub_100009C94(v34, &qword_100085970, &qword_100068F48);

      return;
    }
  }
}

uint64_t sub_1000509EC(uint64_t a1)
{
  v2 = type metadata accessor for MLHostTask();
  v178 = *(v2 - 8);
  v3 = *(v178 + 64);
  v4 = __chkstk_darwin(v2);
  v172 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v176 = &v166 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v166 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v166 - v12;
  v14 = __chkstk_darwin(v11);
  v175 = &v166 - v15;
  v16 = __chkstk_darwin(v14);
  v174 = &v166 - v17;
  v18 = __chkstk_darwin(v16);
  v173 = &v166 - v19;
  __chkstk_darwin(v18);
  v21 = &v166 - v20;
  v22 = type metadata accessor for TaskDefinition();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000089AC(&qword_1000859A0, &qword_100069268);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v166 - v29;
  v31 = MLHostTask.isBackgroundTask.getter();
  v177 = a1;
  if ((v31 & 1) == 0)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000098DC(v35, qword_100087610);
    v36 = v178;
    (*(v178 + 16))(v10, v177, v2);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {

      (*(v36 + 8))(v10, v2);
      return 0;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v184 = v40;
    *v39 = 136315138;
    v41 = MLHostTask.name.getter();
    v43 = v42;
    (*(v36 + 8))(v10, v2);
    v44 = sub_100008A0C(v41, v43, &v184);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "Skippping scheduling of task %s as it is not a background task", v39, 0xCu);
    sub_100009914(v40);

LABEL_15:

    return 0;
  }

  MLHostTask.taskDefinition.getter();
  TaskDefinition.taskRequest.getter();
  (*(v23 + 8))(v26, v22);
  v32 = type metadata accessor for TaskRequest();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    sub_100009C94(v30, &qword_1000859A0, &qword_100069268);
    v34 = v2;
LABEL_11:
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000098DC(v49, qword_100087610);
    v50 = v178;
    (*(v178 + 16))(v13, v177, v34);
    v37 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v51))
    {

      (*(v50 + 8))(v13, v34);
      return 0;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v184 = v53;
    *v52 = 136315138;
    sub_100051EE4(&unk_100085C40, &type metadata accessor for MLHostTask);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    (*(v50 + 8))(v13, v34);
    v57 = sub_100008A0C(v54, v56, &v184);

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v37, v51, "Failed at generating BGSystemTaskRequest from taskDefinition: %s", v52, 0xCu);
    sub_100009914(v53);

    goto LABEL_15;
  }

  MLHostTask.name.getter();
  v45 = TaskRequest.getSystemTaskRequest(identifier:)();

  (*(v33 + 8))(v30, v32);
  v34 = v2;
  if (!v45)
  {
    goto LABEL_11;
  }

  v46 = v45;
  v47 = [v45 groupName];
  if (v47)
  {

    v48 = v177;
  }

  else
  {
    v48 = v177;
    MLHostTask.bundleIdentifier.getter();
    v59 = String._bridgeToObjectiveC()();

    [v46 setGroupName:v59];

    [v46 setGroupConcurrencyLimit:1];
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1000098DC(v60, qword_100087610);
    v61 = v178;
    v62 = *(v178 + 16);
    v62(v21, v48, v34);
    v63 = v173;
    v62(v173, v48, v34);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v184 = v171;
      *v66 = 136315394;
      v67 = MLHostTask.name.getter();
      LODWORD(v170) = v65;
      v68 = v67;
      v70 = v69;
      v71 = *(v61 + 8);
      v71(v21, v34);
      v72 = sub_100008A0C(v68, v70, &v184);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2080;
      v73 = MLHostTask.bundleIdentifier.getter();
      v75 = v74;
      v71(v63, v34);
      v76 = sub_100008A0C(v73, v75, &v184);

      *(v66 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v64, v170, "Modified request for task %s: assigned group name: %s", v66, 0x16u);
      swift_arrayDestroy();

      v48 = v177;
    }

    else
    {

      v77 = *(v61 + 8);
      v77(v63, v34);
      v77(v21, v34);
    }
  }

  v173 = v34;
  v171 = objc_opt_self();
  v78 = [v171 sharedScheduler];
  MLHostTask.name.getter();
  v79 = String._bridgeToObjectiveC()();

  v80 = [v78 taskRequestForIdentifier:v79];

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  v82 = sub_1000098DC(v81, qword_100087610);
  v83 = v80;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.debug.getter();

  v86 = os_log_type_enabled(v84, v85);
  v87 = v178;
  v170 = v46;
  if (v86)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v184 = v89;
    *v88 = 136315138;
    if (v83)
    {
      v90 = [v83 description];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      v46 = v170;
    }

    else
    {
      v93 = 0xE300000000000000;
      v91 = 4271950;
    }

    v94 = sub_100008A0C(v91, v93, &v184);

    *(v88 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v84, v85, "Existing BGST.taskRequest: %s", v88, 0xCu);
    sub_100009914(v89);

    v48 = v177;
  }

  else
  {
  }

  v95 = v175;
  v96 = v87;
  v98 = v87 + 16;
  v97 = *(v87 + 16);
  v175 = v83;
  v169 = v97;
  if (v83)
  {
    v100 = v173;
    v99 = v174;
    v97(v174, v48, v173);
    v101 = v46;
    v102 = Logger.logObject.getter();
    v103 = v46;
    v104 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v102, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v167 = v98;
      v168 = v82;
      v108 = v107;
      v184 = v107;
      *v105 = 136315394;
      v109 = MLHostTask.name.getter();
      v110 = v99;
      v111 = v109;
      v113 = v112;
      v174 = *(v178 + 8);
      (v174)(v110, v100);
      v114 = sub_100008A0C(v111, v113, &v184);

      *(v105 + 4) = v114;
      *(v105 + 12) = 2112;
      *(v105 + 14) = v101;
      *v106 = v103;
      v115 = v101;
      _os_log_impl(&_mh_execute_header, v102, v104, "Task %s has existing request, updating request: %@.", v105, 0x16u);
      sub_100009C94(v106, &qword_100085970, &qword_100068F48);

      sub_100009914(v108);
    }

    else
    {

      v174 = *(v96 + 8);
      (v174)(v99, v100);
    }

    v131 = v176;
    v132 = [v171 sharedScheduler];
    v184 = 0;
    v133 = [v132 updateTaskRequest:v101 error:&v184];

    v134 = v184;
    if (v133)
    {
      v135 = v184;

      return 1;
    }

LABEL_43:
    v139 = v134;
    v140 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v184 = v140;
    swift_errorRetain();
    sub_1000089AC(&qword_100085958, &unk_1000693F0);
    type metadata accessor for BGSystemTaskSchedulerError(0);
    if (swift_dynamicCast())
    {

      v141 = v182;
      v169(v131, v177, v100);
      v142 = v141;
      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v183 = v178;
        *v145 = 136315394;
        v146 = MLHostTask.name.getter();
        v148 = v147;
        (v174)(v131, v100);
        v149 = sub_100008A0C(v146, v148, &v183);

        *(v145 + 4) = v149;
        *(v145 + 12) = 2080;
        v181 = v142;
        sub_100051EE4(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError);
        _BridgedStoredNSError.code.getter();
        v179 = v180;
        type metadata accessor for Code(0);
        v150 = String.init<A>(describing:)();
        v152 = sub_100008A0C(v150, v151, &v183);

        *(v145 + 14) = v152;
        _os_log_impl(&_mh_execute_header, v143, v144, "Task %s schedule request failed: %s", v145, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (v174)(v131, v100);
      }
    }

    else
    {

      v153 = v172;
      v169(v172, v177, v100);
      swift_errorRetain();
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v184 = v158;
        *v156 = 136315394;
        v159 = MLHostTask.name.getter();
        v160 = v153;
        v161 = v159;
        v163 = v162;
        (v174)(v160, v100);
        v164 = sub_100008A0C(v161, v163, &v184);

        *(v156 + 4) = v164;
        *(v156 + 12) = 2112;
        swift_errorRetain();
        v165 = _swift_stdlib_bridgeErrorToNSError();
        *(v156 + 14) = v165;
        *v157 = v165;
        _os_log_impl(&_mh_execute_header, v154, v155, "Task %s schedule request failed: %@", v156, 0x16u);
        sub_100009C94(v157, &qword_100085970, &qword_100068F48);

        sub_100009914(v158);
      }

      else
      {

        (v174)(v153, v100);
      }
    }

    return 0;
  }

  v100 = v173;
  v97(v95, v48, v173);
  v116 = v46;
  v117 = Logger.logObject.getter();
  v118 = v46;
  v119 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v117, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v167 = v98;
    v168 = v82;
    v123 = v122;
    v184 = v122;
    *v120 = 136315394;
    v124 = MLHostTask.name.getter();
    v125 = v95;
    v126 = v124;
    v128 = v127;
    v174 = *(v178 + 8);
    (v174)(v125, v100);
    v129 = sub_100008A0C(v126, v128, &v184);

    *(v120 + 4) = v129;
    *(v120 + 12) = 2112;
    *(v120 + 14) = v116;
    *v121 = v118;
    v130 = v116;
    _os_log_impl(&_mh_execute_header, v117, v119, "Task %s has no request, submitting request: %@", v120, 0x16u);
    sub_100009C94(v121, &qword_100085970, &qword_100068F48);

    sub_100009914(v123);
  }

  else
  {

    v174 = *(v96 + 8);
    (v174)(v95, v100);
  }

  v131 = v176;
  v136 = [v171 sharedScheduler];
  v184 = 0;
  v137 = [v136 submitTaskRequest:v116 error:&v184];

  v134 = v184;
  if (!v137)
  {
    goto LABEL_43;
  }

  v138 = v184;

  return 1;
}

Swift::Int sub_100051D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&unk_100085C30, &unk_1000693E0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100051EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100051F48()
{
  v1 = type metadata accessor for MLHostTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100052014(void *a1)
{
  v3 = *(type metadata accessor for MLHostTask() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v1 + ((*(v3 + 80) + 41) & ~*(v3 + 80));

  return sub_10002DA9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100052090()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000520DC()
{
  v1 = type metadata accessor for MLHostTask();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000521C4(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for MLHostTask() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100043800;

  return sub_10002DFFC(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_100052318(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10006591C;

  return sub_10004A728(a1, v5);
}

uint64_t sub_1000523D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100043800;

  return sub_10004A728(a1, v5);
}

unint64_t sub_10005249C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000089AC(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;

      result = sub_100010E6C(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100052588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&qword_100085808, &qword_100069188);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009C2C(v4, &v13, &unk_1000860B0, &unk_100069760);
      v5 = v13;
      v6 = v14;
      result = sub_100010DF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100009B90(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000526B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&qword_100086098, &qword_100069748);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009C2C(v4, v13, &unk_1000860A0, &unk_100069750);
      result = sub_1000110B0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100009B90(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005281C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000089AC(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100010DF4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100052918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&unk_100085FD8, &qword_100069688);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100010DF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100052A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000089AC(&qword_100085CE0, &qword_100069490);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100010DF4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100052B18(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_100009A48(0, &qword_100085C60, BGSystemTaskResult_ptr);
    sub_100063B48();
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10004AD48(&v9, v7, &qword_100085C60, BGSystemTaskResult_ptr, &unk_100085C70, &unk_100069440);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100052C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

BOOL sub_100052CC4()
{
  v0 = type metadata accessor for MLHostEnvironment();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    MLHostConfig.cloudEnvironment.getter();
    MLHostEnvironment.rawValue.getter();
    v8 = *(v1 + 8);
    v8(v4, v0);
    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();
    [v7 setObject:v9 forKey:v10];

    MLHostConfig.apsEnvironment.getter();
    MLHostEnvironment.rawValue.getter();
    v8(v4, v0);
    v11 = String._bridgeToObjectiveC()();

    v12 = String._bridgeToObjectiveC()();
    [v7 setObject:v11 forKey:v12];

    MLHostConfig.cloudContainer.getter();
    if (v13)
    {
      v14 = String._bridgeToObjectiveC()();

      v15 = String._bridgeToObjectiveC()();
      [v7 setObject:v14 forKey:v15];
    }

    MLHostConfig.apsChannel.getter();
    if (v16)
    {
      v17 = String._bridgeToObjectiveC()();

      v18 = String._bridgeToObjectiveC()();
      [v7 setObject:v17 forKey:v18];
    }
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000098DC(v19, qword_100087610);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_100008A0C(0xD000000000000010, 0x8000000100073280, &v26);
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed at reading UserDefaults(%s). Skipping saving config.", v22, 0xCu);
      sub_100009914(v23);
    }
  }

  return v7 != 0;
}

void sub_1000530BC(uint64_t a1)
{
  v2 = objc_allocWithZone(RBSTerminateContext);
  v3 = String._bridgeToObjectiveC()();
  v23 = [v2 initWithExplanation:v3];

  [v23 setReportType:0];
  [v23 setMaximumTerminationResistance:20];
  v4 = [objc_opt_self() identifierWithPid:a1];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() predicateMatchingIdentifier:v4];
    v7 = [objc_allocWithZone(RBSTerminateRequest) initWithPredicate:v6 context:v23];
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000098DC(v8, qword_100087610);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v9, v10, "RBS request termination for pid: %d", v11, 8u);
    }

    v24 = 0;
    if ([v7 execute:&v24])
    {
      v12 = v24;
    }

    else
    {
      v17 = v24;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v22;
        *v21 = v22;
        _os_log_impl(&_mh_execute_header, v18, v19, "RBS request failed: %@", v20, 0xCu);
        sub_100009C94(v21, &qword_100085970, &qword_100068F48);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000098DC(v13, qword_100087610);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v14, v15, "RBS failed at creating identifier for pid: %d", v16, 8u);
    }
  }
}

uint64_t sub_100053544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[84] = a5;
  v5[83] = a4;
  v5[82] = a3;
  v5[81] = a2;
  v5[80] = a1;
  v6 = type metadata accessor for ContinuousClock();
  v5[85] = v6;
  v7 = *(v6 - 8);
  v5[86] = v7;
  v8 = *(v7 + 64) + 15;
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock.Instant();
  v5[90] = v9;
  v10 = *(v9 - 8);
  v5[91] = v10;
  v11 = *(v10 + 64) + 15;
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v5[98] = v12;
  v13 = *(v12 - 8);
  v5[99] = v13;
  v14 = *(v13 + 64) + 15;
  v5[100] = swift_task_alloc();
  v15 = type metadata accessor for SandboxError();
  v5[101] = v15;
  v16 = *(v15 - 8);
  v5[102] = v16;
  v17 = *(v16 + 64) + 15;
  v5[103] = swift_task_alloc();
  v18 = type metadata accessor for URL.DirectoryHint();
  v5[104] = v18;
  v19 = *(v18 - 8);
  v5[105] = v19;
  v20 = *(v19 + 64) + 15;
  v5[106] = swift_task_alloc();
  v21 = *(*(sub_1000089AC(&qword_100085948, &qword_100069258) - 8) + 64) + 15;
  v5[107] = swift_task_alloc();
  v22 = type metadata accessor for URL();
  v5[108] = v22;
  v23 = *(v22 - 8);
  v5[109] = v23;
  v24 = *(v23 + 64) + 15;
  v5[110] = swift_task_alloc();
  v25 = *(*(sub_1000089AC(&qword_100085C80, &unk_100069450) - 8) + 64) + 15;
  v5[111] = swift_task_alloc();
  v26 = type metadata accessor for AppExtensionProcess();
  v5[112] = v26;
  v27 = *(v26 - 8);
  v5[113] = v27;
  v28 = *(v27 + 64) + 15;
  v5[114] = swift_task_alloc();
  v29 = *(*(sub_1000089AC(&qword_100085940, &unk_1000693D0) - 8) + 64) + 15;
  v5[115] = swift_task_alloc();
  v5[116] = swift_task_alloc();
  v5[117] = swift_task_alloc();
  v5[118] = swift_task_alloc();
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v30 = type metadata accessor for TaskStatus();
  v5[127] = v30;
  v31 = *(v30 - 8);
  v5[128] = v31;
  v32 = *(v31 + 64) + 15;
  v5[129] = swift_task_alloc();
  v5[130] = swift_task_alloc();
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v33 = type metadata accessor for MLHostTask();
  v5[142] = v33;
  v34 = *(v33 - 8);
  v5[143] = v34;
  v5[144] = *(v34 + 64);
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = swift_task_alloc();
  v5[150] = swift_task_alloc();
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v5[155] = swift_task_alloc();
  v5[156] = swift_task_alloc();
  v5[157] = swift_task_alloc();
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v5[160] = swift_task_alloc();
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v5[164] = swift_task_alloc();
  v5[165] = swift_task_alloc();
  v5[166] = swift_task_alloc();
  v5[167] = swift_task_alloc();
  v5[168] = swift_task_alloc();
  v5[169] = swift_task_alloc();
  v5[170] = swift_task_alloc();
  v5[171] = swift_task_alloc();
  v5[172] = swift_task_alloc();
  v5[173] = swift_task_alloc();
  v5[174] = swift_task_alloc();
  v5[175] = swift_task_alloc();
  v5[176] = swift_task_alloc();

  return (_swift_task_switch)(sub_100053C80, 0, 0);
}

uint64_t sub_100053C80()
{
  v1083 = v0;
  v1 = v0;
  v2 = *(v0 + 672);
  v3 = *(v1 + 664);
  v4 = *(v1 + 656);
  v5 = *(v1 + 640);
  strcpy(v1082, "transaction_");
  BYTE5(v1082[1]) = 0;
  HIWORD(v1082[1]) = -5120;
  v6._countAndFlagsBits = MLHostTask.name.getter();
  String.append(_:)(v6);

  String.utf8CString.getter();

  *(v1 + 1416) = os_transaction_create();

  v7 = *(v4 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  *(v1 + 1424) = v7;
  os_unfair_lock_lock((*(v7 + 56) + 16));
  swift_beginAccess();
  v8 = *(v7 + 72);

  LOBYTE(v2) = sub_1000292B0(v3, v2, v8);

  os_unfair_lock_unlock((*(v7 + 56) + 16));
  if (v2)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000098DC(v9, qword_100087610);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Task was deferred before acquiring process. Exiting early.", v12, 2u);
    }

    v13 = *(v1 + 1144);
    v14 = *(v1 + 1136);
    v15 = *(v1 + 1128);
    v16 = *(v1 + 1024);
    v17 = *(v1 + 1016);
    v18 = *(v1 + 1008);
    v19 = *(v1 + 648);
    v20 = *(v1 + 640);

    v21 = *(v19 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
    v22 = MLHostTask.name.getter();
    v24 = v23;
    (*(v16 + 104))(v15, enum case for TaskStatus.taskDeferred(_:), v17);
    sub_100019300(v22, v24, v18);

    if ((*(v13 + 48))(v18, 1, v14) == 1)
    {
      v25 = *(v1 + 1008);
      (*(*(v1 + 1024) + 8))(*(v1 + 1128), *(v1 + 1016));
      sub_100009C94(v25, &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v46 = *(v1 + 1400);
      v47 = *(v1 + 1144);
      v48 = *(v1 + 1136);
      v49 = *(v1 + 1128);
      v50 = *(v1 + 1120);
      v51 = *(v1 + 1024);
      v52 = *(v1 + 1016);
      (*(v47 + 32))(v46, *(v1 + 1008), v48);
      (*(v51 + 16))(v50, v49, v52);
      MLHostTask.status.setter();
      sub_10001C4DC(v46);
      (*(v47 + 8))(v46, v48);
      (*(v51 + 8))(v49, v52);
    }

    v53 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v1071 = MLHostResult.init(status:policy:)();
    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v26 = *(v1 + 1408);
  v27 = *(v1 + 1144);
  v28 = *(v1 + 1136);
  v29 = *(v1 + 640);
  v30 = type metadata accessor for Logger();
  *(v1 + 1432) = sub_1000098DC(v30, qword_100087610);
  v31 = *(v27 + 16);
  *(v1 + 1440) = v31;
  *(v1 + 1448) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v1032 = v31;
  v31(v26, v29, v28);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v1 + 1408);
  v36 = *(v1 + 1144);
  v37 = *(v1 + 1136);
  v1019 = v1;
  if (v34)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v1082[0] = v39;
    *v38 = 136315138;
    v40 = MLHostTask.bundleIdentifier.getter();
    v42 = v41;
    v43 = v37;
    v44 = *(v36 + 8);
    v44(v35, v43);
    v45 = sub_100008A0C(v40, v42, v1082);
    v1 = v1019;

    *(v38 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v32, v33, "Requesting process for extension: %s", v38, 0xCu);
    sub_100009914(v39);
  }

  else
  {

    v54 = v37;
    v44 = *(v36 + 8);
    v44(v35, v54);
  }

  v1072 = v44;
  *(v1 + 1456) = v44;
  v55 = *(v1 + 904);
  v56 = *(v1 + 896);
  v57 = *(v1 + 888);
  v58 = *(v1 + 640);
  v59 = *(*(v1 + 648) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);
  v60 = MLHostTask.bundleIdentifier.getter();
  v62 = v61;
  v63 = MLHostTask.name.getter();
  sub_10000EEF4(v60, v62, v63, v64, v57);

  v65 = (*(v55 + 48))(v57, 1, v56);
  v66 = *(v1 + 1136);
  if (v65 == 1)
  {
    v67 = *(v1 + 1384);
    v68 = *(v1 + 640);
    sub_100009C94(*(v1 + 888), &qword_100085C80, &unk_100069450);
    v1032(v67, v68, v66);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v1 + 1384);
    v73 = *(v1 + 1144);
    v74 = *(v1 + 1136);
    if (v71)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v1082[0] = v76;
      *v75 = 136315138;
      v77 = MLHostTask.bundleIdentifier.getter();
      v79 = v78;
      v1072(v72, v74);
      v80 = sub_100008A0C(v77, v79, v1082);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v69, v70, "Failed at starting process for extension: %s", v75, 0xCu);
      sub_100009914(v76);
    }

    else
    {

      v1072(v72, v74);
    }

    v99 = *(v1 + 1144);
    v100 = *(v1 + 1136);
    v101 = *(v1 + 1032);
    v102 = *(v1 + 1024);
    v103 = *(v1 + 1016);
    v104 = *(v1 + 920);
    v105 = *(v1 + 640);
    v106 = *(*(v1 + 648) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
    v107 = MLHostTask.name.getter();
    v109 = v108;
    (*(v102 + 104))(v101, enum case for TaskStatus.taskFailed(_:), v103);
    sub_100019300(v107, v109, v104);

    if ((*(v99 + 48))(v104, 1, v100) == 1)
    {
      v110 = *(v1 + 1032);
      v111 = *(v1 + 1024);
      v112 = *(v1 + 1016);
      v113 = *(v1 + 920);
      swift_unknownObjectRelease();
      (*(v111 + 8))(v110, v112);
      sub_100009C94(v113, &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v132 = *(v1 + 1160);
      v133 = *(v1 + 1136);
      v134 = *(v1 + 1120);
      v135 = *(v1 + 1032);
      v136 = *(v1 + 1024);
      v137 = *(v1 + 1016);
      (*(*(v1 + 1144) + 32))(v132, *(v1 + 920), v133);
      (*(v136 + 16))(v134, v135, v137);
      MLHostTask.status.setter();
      sub_10001C4DC(v132);
      swift_unknownObjectRelease();
      v1072(v132, v133);
      (*(v136 + 8))(v135, v137);
    }

    goto LABEL_47;
  }

  v81 = *(v1 + 1392);
  v82 = *(v1 + 640);
  (*(*(v1 + 904) + 32))(*(v1 + 912), *(v1 + 888), *(v1 + 896));
  v83 = v1032;
  v1032(v81, v82, v66);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.info.getter();
  v86 = os_log_type_enabled(v84, v85);
  v87 = *(v1 + 1392);
  v88 = *(v1 + 1144);
  v89 = *(v1 + 1136);
  if (v86)
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v1082[0] = v91;
    *v90 = 136315138;
    v92 = MLHostTask.bundleIdentifier.getter();
    v94 = v93;
    v95 = v89;
    v96 = v1072;
    v1072(v87, v95);
    v97 = v92;
    v83 = v1032;
    v98 = sub_100008A0C(v97, v94, v1082);
    v1 = v1019;

    *(v90 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v84, v85, "Acquired process for extension: %s", v90, 0xCu);
    sub_100009914(v91);
  }

  else
  {

    v114 = v89;
    v96 = v1072;
    v1072(v87, v114);
  }

  v115 = *(v1 + 672);
  v116 = *(v1 + 664);
  os_unfair_lock_lock((*(v7 + 56) + 16));
  v117 = *(v7 + 72);

  LOBYTE(v115) = sub_1000292B0(v116, v115, v117);

  os_unfair_lock_unlock((*(v7 + 56) + 16));
  v118 = *(v1 + 1136);
  v119 = *(v1 + 640);
  if (v115)
  {
    v83(*(v1 + 1376), v119, v118);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();
    v122 = os_log_type_enabled(v120, v121);
    v123 = *(v1 + 1376);
    v124 = *(v1 + 1144);
    v125 = *(v1 + 1136);
    if (v122)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v1082[0] = v127;
      *v126 = 136315138;
      v128 = MLHostTask.name.getter();
      v130 = v129;
      v1072(v123, v125);
      v131 = sub_100008A0C(v128, v130, v1082);

      *(v126 + 4) = v131;
      _os_log_impl(&_mh_execute_header, v120, v121, "Task %s was deferred while acquiring process. Exiting early.", v126, 0xCu);
      sub_100009914(v127);
    }

    else
    {

      v96(v123, v125);
    }

    v153 = *(v1 + 1144);
    v154 = *(v1 + 1136);
    v155 = *(v1 + 1112);
    v156 = *(v1 + 1024);
    v157 = *(v1 + 1016);
    v158 = *(v1 + 1000);
    v159 = *(v1 + 640);
    v160 = *(*(v1 + 648) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
    v161 = MLHostTask.name.getter();
    v163 = v162;
    (*(v156 + 104))(v155, enum case for TaskStatus.taskDeferred(_:), v157);
    sub_100019300(v161, v163, v158);

    if ((*(v153 + 48))(v158, 1, v154) == 1)
    {
      v164 = *(v1 + 1000);
      (*(*(v1 + 1024) + 8))(*(v1 + 1112), *(v1 + 1016));
      sub_100009C94(v164, &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v184 = *(v1 + 1360);
      v185 = *(v1 + 1136);
      v186 = *(v1 + 1120);
      v187 = *(v1 + 1112);
      v188 = *(v1 + 1024);
      v189 = *(v1 + 1016);
      (*(*(v1 + 1144) + 32))(v184, *(v1 + 1000), v185);
      (*(v188 + 16))(v186, v187, v189);
      MLHostTask.status.setter();
      sub_10001C4DC(v184);
      v1072(v184, v185);
      (*(v188 + 8))(v187, v189);
    }

    v190 = *(v1 + 912);
    v191 = *(v1 + 904);
    v192 = *(v1 + 896);
    v193 = *(v1 + 640);
    v194 = AppExtensionProcess._pid.getter();
    v1082[0] = 0;
    v1082[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v195._countAndFlagsBits = 0x206B736154;
    v195._object = 0xE500000000000000;
    String.append(_:)(v195);
    v196._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v196);

    v197._countAndFlagsBits = 0xD000000000000035;
    v197._object = 0x8000000100073100;
    String.append(_:)(v197);
    sub_1000530BC(v194);

LABEL_39:
    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v191 + 8))(v190, v192);
LABEL_47:
    v1071 = 0;
LABEL_48:
    v234 = *(v1 + 1408);
    v235 = v1;
    v236 = *(v1 + 1400);
    v237 = v235[174];
    v238 = v235[173];
    v239 = v235[172];
    v240 = v235[171];
    v241 = v235[170];
    v242 = v235[169];
    v243 = v235[168];
    v244 = v235[167];
    v912 = v235[166];
    v913 = v235[165];
    v914 = v235[164];
    v915 = v235[163];
    v916 = v235[162];
    v917 = v235[161];
    v918 = v235[160];
    v919 = v235[159];
    v920 = v235[158];
    v921 = v235[157];
    v922 = v235[156];
    v923 = v235[155];
    v924 = v235[154];
    v925 = v235[153];
    v926 = v235[152];
    v927 = v235[151];
    v928 = v235[150];
    v929 = v235[149];
    v930 = v235[148];
    v931 = v235[147];
    v932 = v235[146];
    v933 = v235[145];
    v934 = v235[141];
    v935 = v235[140];
    v936 = v235[139];
    v937 = v235[138];
    v938 = v235[137];
    v939 = v235[136];
    v940 = v235[135];
    v941 = v235[134];
    v942 = v235[133];
    v943 = v235[132];
    v944 = v235[131];
    v945 = v235[130];
    v946 = v235[129];
    v947 = v235[126];
    v948 = v235[125];
    v949 = v235[124];
    v950 = v235[123];
    v951 = v235[122];
    v952 = v235[121];
    v953 = v235[120];
    v954 = v235[119];
    v955 = v235[118];
    v956 = v235[117];
    v958 = v235[116];
    v960 = v235[115];
    v962 = v235[114];
    v964 = v235[111];
    v965 = v235[110];
    v968 = v235[107];
    v971 = v235[106];
    aBlocka = v235[103];
    v979 = v235[100];
    v984 = v235[97];
    v992 = v235[96];
    v999 = v235[95];
    v1009 = v235[94];
    v1020 = v235[93];
    v1024 = v235[92];
    v1033 = v235[89];
    v1042 = v235[88];
    v1054 = v235[87];

    v245 = v235[1];

    return v245(v1071);
  }

  v83(*(v1 + 1368), v119, v118);
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.info.getter();
  v140 = os_log_type_enabled(v138, v139);
  v141 = *(v1 + 1368);
  v142 = *(v1 + 1144);
  v143 = *(v1 + 1136);
  if (v140)
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v1082[0] = v145;
    *v144 = 136315138;
    v146 = MLHostTask.bundleIdentifier.getter();
    v148 = v147;
    v149 = v143;
    v150 = v1072;
    v1072(v141, v149);
    v151 = v146;
    v83 = v1032;
    v152 = sub_100008A0C(v151, v148, v1082);
    v1 = v1019;

    *(v144 + 4) = v152;
    _os_log_impl(&_mh_execute_header, v138, v139, "Creating XPCConnection for extension: %s", v144, 0xCu);
    sub_100009914(v145);
  }

  else
  {

    v165 = v143;
    v150 = v1072;
    v1072(v141, v165);
  }

  v166 = *(v1 + 912);
  v167.super.isa = AppExtensionProcess.makeXPCConnection()().super.isa;
  *(v1 + 1464) = v167;
  v168 = *(v1 + 1136);
  v169 = *(v1 + 640);
  if (v170)
  {
    v171 = *(v1 + 1344);

    v83(v171, v169, v168);
    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.error.getter();
    v174 = os_log_type_enabled(v172, v173);
    v175 = *(v1 + 1344);
    v176 = *(v1 + 1144);
    v177 = *(v1 + 1136);
    if (v174)
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v1082[0] = v179;
      *v178 = 136315138;
      v180 = MLHostTask.bundleIdentifier.getter();
      v182 = v181;
      v1072(v175, v177);
      v183 = sub_100008A0C(v180, v182, v1082);

      *(v178 + 4) = v183;
      _os_log_impl(&_mh_execute_header, v172, v173, "Failed at opening XPCConnection for extension: %s", v178, 0xCu);
      sub_100009914(v179);
    }

    else
    {

      v150(v175, v177);
    }

    v211 = *(v1 + 1144);
    v212 = *(v1 + 1136);
    v213 = *(v1 + 1040);
    v214 = *(v1 + 1024);
    v215 = *(v1 + 1016);
    v216 = *(v1 + 928);
    v217 = *(v1 + 640);
    v218 = *(*(v1 + 648) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
    v219 = MLHostTask.name.getter();
    v221 = v220;
    (*(v214 + 104))(v213, enum case for TaskStatus.taskFailed(_:), v215);
    sub_100019300(v219, v221, v216);
    if ((*(v211 + 48))(v216, 1, v212) == 1)
    {
      sub_100009C94(*(v1 + 928), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v222 = *(v1 + 1168);
      v223 = *(v1 + 1136);
      v224 = *(v1 + 1120);
      v225 = *(v1 + 1040);
      v226 = *(v1 + 1024);
      v227 = *(v1 + 1016);
      (*(*(v1 + 1144) + 32))(v222, *(v1 + 928), v223);
      (*(v226 + 16))(v224, v225, v227);
      MLHostTask.status.setter();
      sub_10001C4DC(v222);
      v1072(v222, v223);
    }

    v228 = *(v1 + 1040);
    v229 = *(v1 + 1024);
    v230 = *(v1 + 1016);
    v231 = *(v1 + 912);
    v232 = *(v1 + 904);
    v233 = *(v1 + 896);

    (*(v229 + 8))(v228, v230);
    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v232 + 8))(v231, v233);
    goto LABEL_47;
  }

  isa = v167.super.isa;
  v983 = (v1 + 64);
  aBlock = (v1 + 112);
  v83(*(v1 + 1352), v169, v168);
  v198 = Logger.logObject.getter();
  v199 = static os_log_type_t.info.getter();
  v200 = os_log_type_enabled(v198, v199);
  v201 = *(v1 + 1352);
  v202 = *(v1 + 1144);
  v203 = *(v1 + 1136);
  if (v200)
  {
    v204 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v1082[0] = v205;
    *v204 = 136315138;
    v206 = MLHostTask.bundleIdentifier.getter();
    v207 = v150;
    v209 = v208;
    v207(v201, v203);
    v210 = sub_100008A0C(v206, v209, v1082);

    *(v204 + 4) = v210;
    _os_log_impl(&_mh_execute_header, v198, v199, "Creating NSXPCInterface for extension: %s", v204, 0xCu);
    sub_100009914(v205);
  }

  else
  {

    v150(v201, v203);
  }

  v247 = *(v1019 + 1336);
  v248 = *(v1019 + 1152);
  v249 = *(v1019 + 1144);
  v250 = *(v1019 + 1136);
  v969 = *(v1019 + 664);
  v972 = *(v1019 + 672);
  v251 = *(v1019 + 640);
  v980 = v251;
  v252 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP20LighthouseBackground26MLHostExtensionXPCProtocol_];
  [(objc_class *)isa setRemoteObjectInterface:v252];

  v1032(v247, v251, v250);
  v253 = *(v249 + 80);
  *(v1019 + 476) = v253;
  v254 = (v253 + 16) & ~v253;
  v255 = (v254 + v248);
  v256 = swift_allocObject();
  v257 = *(v249 + 32);
  *(v1019 + 1472) = v257;
  *(v1019 + 1480) = (v249 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v257(v256 + v254, v247, v250);
  *(v1019 + 96) = sub_100064090;
  *(v1019 + 104) = v256;
  *(v1019 + 64) = _NSConcreteStackBlock;
  *(v1019 + 72) = 1107296256;
  *(v1019 + 80) = sub_1000658D0;
  *(v1019 + 88) = &unk_100082DC0;
  v258 = _Block_copy(v983);
  v259 = *(v1019 + 104);

  [(objc_class *)isa setInterruptionHandler:v258];
  _Block_release(v258);
  v1032(v247, v980, v250);
  v966 = v255;
  v260 = swift_allocObject();
  v985 = v254;
  v1 = v1019;
  v257(v260 + v254, v247, v250);
  *(v1019 + 144) = sub_100064124;
  *(v1019 + 152) = v260;
  *(v1019 + 112) = _NSConcreteStackBlock;
  *(v1019 + 120) = 1107296256;
  *(v1019 + 128) = sub_1000658D0;
  *(v1019 + 136) = &unk_100082E10;
  v261 = _Block_copy(aBlock);
  v262 = *(v1019 + 152);

  [(objc_class *)isa setInvalidationHandler:v261];
  _Block_release(v261);
  [(objc_class *)isa resume];
  os_unfair_lock_lock((*(v7 + 56) + 16));
  v263 = *(v7 + 72);

  LOBYTE(v258) = sub_1000292B0(v969, v972, v263);

  os_unfair_lock_unlock((*(v7 + 56) + 16));
  v993 = v257;
  if (v258)
  {
    v1032(*(v1019 + 1328), *(v1019 + 640), *(v1019 + 1136));
    v264 = Logger.logObject.getter();
    v265 = static os_log_type_t.error.getter();
    v266 = os_log_type_enabled(v264, v265);
    v267 = *(v1019 + 1328);
    v268 = *(v1019 + 1144);
    v269 = *(v1019 + 1136);
    if (v266)
    {
      v270 = swift_slowAlloc();
      v271 = swift_slowAlloc();
      v1082[0] = v271;
      *v270 = 136315138;
      v272 = MLHostTask.name.getter();
      v274 = v273;
      v1072(v267, v269);
      v275 = sub_100008A0C(v272, v274, v1082);

      *(v270 + 4) = v275;
      _os_log_impl(&_mh_execute_header, v264, v265, "Task %s was deferred while opening XPC connection to process. Exiting early.", v270, 0xCu);
      sub_100009914(v271);
    }

    else
    {

      v1072(v267, v269);
    }

    v297 = *(v1019 + 1144);
    v298 = *(v1019 + 1136);
    v299 = *(v1019 + 1104);
    v300 = *(v1019 + 1024);
    v301 = *(v1019 + 1016);
    v302 = *(v1019 + 992);
    v303 = *(v1019 + 640);
    v304 = *(*(v1019 + 648) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
    v305 = MLHostTask.name.getter();
    v307 = v306;
    (*(v300 + 104))(v299, enum case for TaskStatus.taskDeferred(_:), v301);
    sub_100019300(v305, v307, v302);
    if ((*(v297 + 48))(v302, 1, v298) == 1)
    {
      sub_100009C94(*(v1019 + 992), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v322 = *(v1019 + 1320);
      v323 = *(v1019 + 1144);
      v324 = *(v1019 + 1136);
      v325 = *(v1019 + 1120);
      v326 = *(v1019 + 1104);
      v327 = *(v1019 + 1024);
      v328 = *(v1019 + 1016);
      v993(v322, *(v1019 + 992), v324);
      (*(v327 + 16))(v325, v326, v328);
      MLHostTask.status.setter();
      sub_10001C4DC(v322);
      v1072(v322, v324);
    }

    v329 = *(v1019 + 1104);
    v330 = *(v1019 + 1024);
    v331 = *(v1019 + 1016);
    v190 = *(v1019 + 912);
    v191 = *(v1019 + 904);
    v192 = *(v1019 + 896);
    v332 = *(v1019 + 640);

    (*(v330 + 8))(v329, v331);
    v333 = [(objc_class *)isa processIdentifier];
    v1082[0] = 0;
    v1082[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(76);
    v334._countAndFlagsBits = 0x206B736154;
    v334._object = 0xE500000000000000;
    String.append(_:)(v334);
    v335._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v335);

    v336._countAndFlagsBits = 0xD000000000000045;
    v336._object = 0x80000001000730B0;
    String.append(_:)(v336);
    sub_1000530BC(v333);

    [(objc_class *)isa invalidate];

    goto LABEL_39;
  }

  v276 = *(v1019 + 1336);
  v277 = *(v1019 + 1136);
  v278 = *(v1019 + 1024);
  v279 = *(v1019 + 1016);
  v280 = *(v1019 + 640);
  v281 = swift_allocBox();
  v283 = v282;
  *(v1019 + 1488) = v281;
  *(v1019 + 1496) = v282;
  LODWORD(v282) = enum case for TaskStatus.taskRunning(_:);
  *(v1019 + 500) = enum case for TaskStatus.taskRunning(_:);
  v284 = *(v278 + 104);
  *(v1019 + 1504) = v284;
  *(v1019 + 1512) = (v278 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v963 = v282;
  v961 = v284;
  v284(v283);
  v1032(v276, v280, v277);
  v285 = swift_allocObject();
  v257(v285 + v985, v276, v277);
  v970 = (v966 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v285 + v970) = v281;
  *(v1019 + 192) = sub_100064230;
  *(v1019 + 200) = v285;
  *(v1019 + 160) = _NSConcreteStackBlock;
  *(v1019 + 168) = 1107296256;
  *(v1019 + 176) = sub_10002C55C;
  *(v1019 + 184) = &unk_100082E60;
  v286 = _Block_copy((v1019 + 160));
  v287 = *(v1019 + 200);

  v288 = [(objc_class *)isa remoteObjectProxyWithErrorHandler:v286];
  _Block_release(v286);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000089AC(&qword_100085C88, &qword_100069460);
  swift_dynamicCast();
  v973 = *(v1019 + 624);
  *(v1019 + 1520) = v973;
  v289 = MLHostTask.taskFolder.getter();
  v291 = v290;
  *(v1019 + 528) = MLHostTask.bundleIdentifier.getter();
  *(v1019 + 536) = v292;
  v293 = swift_task_alloc();
  *(v293 + 16) = v1019 + 528;
  v294 = sub_100029F60(sub_100065978, v293, &off_100082638);

  if (v294)
  {
    v295 = *(v1019 + 648);

    v296 = *(v295 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
    v291 = *(v296 + 48);
    v1010 = *(v296 + 40);
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v1010 = v289;
    if (!v291)
    {
      goto LABEL_68;
    }
  }

  v308 = v294 ^ 1;
  v1032(*(v1019 + 1312), *(v1019 + 640), *(v1019 + 1136));

  v309 = Logger.logObject.getter();
  v310 = static os_log_type_t.debug.getter();

  v311 = os_log_type_enabled(v309, v310);
  v312 = *(v1019 + 1312);
  v313 = *(v1019 + 1144);
  v314 = *(v1019 + 1136);
  if (v311)
  {
    v315 = v291;
    v316 = swift_slowAlloc();
    v1082[0] = swift_slowAlloc();
    *v316 = 67109634;
    *(v316 + 4) = v308 & 1;
    *(v316 + 8) = 2080;
    v317 = MLHostTask.name.getter();
    v319 = v318;
    v1072(v312, v314);
    v320 = v317;
    v1 = v1019;
    v321 = sub_100008A0C(v320, v319, v1082);

    *(v316 + 10) = v321;
    *(v316 + 18) = 2080;
    *(v316 + 20) = sub_100008A0C(v1010, v315, v1082);
    _os_log_impl(&_mh_execute_header, v309, v310, "Granting sandbox extension (ro: %{BOOL}d) to %s for taskFolder: %s", v316, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {

    v1072(v312, v314);
  }

  v337 = *(v1 + 912);
  v338 = *(v1 + 880);
  v339 = *(v1 + 872);
  v340 = *(v1 + 864);
  v341 = *(v1 + 856);
  v342 = *(v1 + 848);
  v343 = *(v1 + 840);
  v344 = *(v1 + 832);
  type metadata accessor for SandboxExtension();
  AppExtensionProcess._auditToken.getter();
  (*(v339 + 56))(v341, 1, 1, v340);
  (*(v343 + 104))(v342, enum case for URL.DirectoryHint.inferFromPath(_:), v344);
  URL.init(filePath:directoryHint:relativeTo:)();
  v1 = v1019;
  static SandboxExtension.issue(auditToken:url:readonly:)();
  (*(*(v1019 + 872) + 8))(*(v1019 + 880), *(v1019 + 864));
  SandboxExtension.token.getter();
  v345 = String._bridgeToObjectiveC()();

  [v973 consumeSandboxExtensionWithToken:v345];

LABEL_68:
  v967 = (v1 + 16);
  v346 = *(v1 + 1304);
  v347 = *(v1 + 1296);
  v348 = *(v1 + 1136);
  v349 = *(v1 + 800);
  v350 = *(v1 + 792);
  v351 = *(v1 + 784);
  v352 = *(v1 + 640);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v350 + 8))(v349, v351);
  MLHostTask.name.getter();
  v353 = objc_allocWithZone(type metadata accessor for MLHostExtensionContext());
  v1011 = MLHostExtensionContext.init(taskId:taskName:taskFolder:)();
  *(v1 + 1528) = v1011;
  v354 = swift_allocObject();
  *(v1 + 1536) = v354;
  v959 = v354;
  *(v354 + 16) = 0;
  v355 = swift_allocObject();
  *(v1 + 1544) = v355;
  v957 = v355;
  *(v355 + 16) = 2;
  v1032(v346, v352, v348);
  v1032(v347, v352, v348);
  v356 = Logger.logObject.getter();
  v357 = static os_log_type_t.info.getter();
  v358 = os_log_type_enabled(v356, v357);
  v359 = *(v1 + 1304);
  v360 = *(v1 + 1296);
  v361 = *(v1 + 1144);
  v362 = *(v1 + 1136);
  if (v358)
  {
    v363 = swift_slowAlloc();
    v1082[0] = swift_slowAlloc();
    *v363 = 136315394;
    v364 = MLHostTask.name.getter();
    v366 = v365;
    v1072(v359, v362);
    v367 = sub_100008A0C(v364, v366, v1082);
    v1 = v1019;

    *(v363 + 4) = v367;
    *(v363 + 12) = 2080;
    v368 = MLHostTask.bundleIdentifier.getter();
    v370 = v369;
    v1072(v360, v362);
    v371 = sub_100008A0C(v368, v370, v1082);

    *(v363 + 14) = v371;
    _os_log_impl(&_mh_execute_header, v356, v357, "Task %s starting with extension: %s", v363, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v1072(v360, v362);
    v1072(v359, v362);
  }

  v372 = *(v1 + 1144);
  v373 = *(v1 + 1136);
  v374 = *(v1 + 1096);
  v375 = *(v1 + 1016);
  v376 = *(v1 + 984);
  v377 = *(v1 + 640);
  *(v1 + 1552) = *(*(v1 + 648) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v378 = MLHostTask.name.getter();
  v380 = v379;
  v961(v374, v963, v375);
  sub_100019300(v378, v380, v376);
  v381 = *(v372 + 48);
  *(v1 + 1560) = v381;
  *(v1 + 1568) = (v372 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v381(v376, 1, v373) == 1)
  {
    sub_100009C94(*(v1 + 984), &qword_100085940, &unk_1000693D0);
  }

  else
  {
    v382 = *(v1 + 1288);
    v383 = *(v1 + 1144);
    v384 = *(v1 + 1136);
    v385 = *(v1 + 1120);
    v386 = *(v1 + 1096);
    v387 = *(v1 + 1024);
    v388 = *(v1 + 1016);
    v993(v382, *(v1 + 984), v384);
    (*(v387 + 16))(v385, v386, v388);
    MLHostTask.status.setter();
    sub_10001C4DC(v382);
    v1072(v382, v384);
  }

  v389 = *(v1 + 1336);
  v390 = *(v1 + 1136);
  v391 = *(v1 + 1096);
  v392 = *(v1 + 1024);
  v393 = *(v1 + 1016);
  v394 = *(v1 + 776);
  v395 = *(v1 + 648);
  v396 = *(v1 + 640);

  v397 = *(v392 + 8);
  *(v1 + 1576) = v397;
  *(v1 + 1584) = (v392 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v397(v391, v393);
  static ContinuousClock.now.getter();
  v1032(v389, v396, v390);
  v398 = (v970 + 15) & 0xFFFFFFFFFFFFFFF8;
  v399 = swift_allocObject();
  v993(v399 + v985, v389, v390);
  *(v399 + v970) = v959;
  *(v399 + v398) = v957;
  *(v399 + ((v398 + 15) & 0xFFFFFFFFFFFFFFF8)) = v395;
  *(v1 + 48) = sub_100064318;
  *(v1 + 56) = v399;
  *(v1 + 16) = _NSConcreteStackBlock;
  *(v1 + 24) = 1107296256;
  *(v1 + 32) = sub_100065970;
  *(v1 + 40) = &unk_100082F00;
  v400 = _Block_copy(v967);
  v401 = *(v1 + 56);

  [v973 shouldRunWithContext:v1011 reply:v400];
  _Block_release(v400);
  swift_beginAccess();
  *(v1 + 1592) = 0u;
  v402 = *(v1 + 1424);
  os_unfair_lock_lock((*(v402 + 56) + 16));
  v403 = *(v402 + 72);
  if (*(v403 + 16))
  {
    v404 = *(v1 + 672);
    v405 = *(v1 + 664);
    v406 = *(v403 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v407 = Hasher._finalize()();
    v408 = -1 << *(v403 + 32);
    v409 = v407 & ~v408;
    if ((*(v403 + 56 + ((v409 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v409))
    {
      v410 = ~v408;
      while (1)
      {
        v411 = (*(v403 + 48) + 16 * v409);
        v412 = *v411 == *(v1 + 664) && v411[1] == *(v1 + 672);
        if (v412 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v409 = (v409 + 1) & v410;
        if (((*(v403 + 56 + ((v409 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v409) & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      v428 = *(v1 + 1424);

      os_unfair_lock_unlock((*(v428 + 56) + 16));
      goto LABEL_91;
    }

LABEL_83:
  }

  v413 = *(v1 + 1544);
  os_unfair_lock_unlock((*(*(v1 + 1424) + 56) + 16));
  if (*(v413 + 16) == 2 && (static Duration.< infix(_:_:)() & 1) == 0)
  {
    v414 = *(v1 + 768);
    v415 = *(v1 + 736);
    v416 = *(v1 + 728);
    v417 = *(v1 + 720);
    v418 = *(v1 + 696);
    v419 = *(v1 + 680);
    static Clock<>.continuous.getter();
    *(v1 + 544) = xmmword_100069320;
    *(v1 + 456) = 0;
    *(v1 + 464) = 0;
    *(v1 + 472) = 1;
    v420 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v421 = *(v416 + 8);
    *(v1 + 1688) = v421;
    *(v1 + 1696) = (v416 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v421(v414, v417);
    v422 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v423 = swift_task_alloc();
    *(v1 + 1704) = v423;
    *v423 = v1;
    v423[1] = sub_10005E200;
    v424 = *(v1 + 736);
    v425 = *(v1 + 696);
    v426 = *(v1 + 680);
    v427 = v1 + 456;
    goto LABEL_87;
  }

LABEL_91:
  v429 = *(v1 + 1424);
  v430 = *(v1 + 672);
  v431 = *(v1 + 664);
  os_unfair_lock_lock((*(v429 + 56) + 16));
  v432 = *(v429 + 72);

  LOBYTE(v430) = sub_1000292B0(v431, v430, v432);

  os_unfair_lock_unlock((*(v429 + 56) + 16));
  if ((v430 & 1) == 0)
  {
    v433 = *(v1 + 1544);
    swift_beginAccess();
    if (*(v433 + 16) == 2)
    {
      v1043 = *(v1 + 1560);
      v1055 = *(v1 + 1568);
      v434 = *(v1 + 1552);
      v435 = *(v1 + 1512);
      v436 = *(v1 + 1504);
      v437 = *(v1 + 1136);
      v438 = *(v1 + 1048);
      v439 = *(v1 + 1016);
      v440 = *(v1 + 936);
      v441 = *(v1 + 640);
      v442 = MLHostTask.name.getter();
      v444 = v443;
      v436(v438, enum case for TaskStatus.taskFailed(_:), v439);
      sub_100019300(v442, v444, v440);
      if (v1043(v440, 1, v437) == 1)
      {
        sub_100009C94(*(v1 + 936), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v538 = *(v1 + 1552);
        v539 = *(v1 + 1480);
        v540 = *(v1 + 1456);
        v541 = *(v1 + 1184);
        v542 = *(v1 + 1144);
        v543 = *(v1 + 1136);
        v544 = *(v1 + 1120);
        v545 = *(v1 + 1048);
        v546 = *(v1 + 1024);
        v547 = *(v1 + 1016);
        (*(v1 + 1472))(v541, *(v1 + 936), v543);
        (*(v546 + 16))(v544, v545, v547);
        MLHostTask.status.setter();
        sub_10001C4DC(v541);
        v540(v541, v543);
      }

      v548 = *(v1 + 1584);
      v549 = *(v1 + 1576);
      v550 = *(v1 + 1448);
      v551 = *(v1 + 1440);
      v1061 = *(v1 + 1432);
      v552 = *(v1 + 1176);
      v553 = *(v1 + 1136);
      v554 = *(v1 + 1048);
      v555 = *(v1 + 1016);
      v556 = *(v1 + 640);

      v549(v554, v555);
      v551(v552, v556, v553);
      v557 = Logger.logObject.getter();
      v558 = static os_log_type_t.error.getter();
      v559 = os_log_type_enabled(v557, v558);
      v560 = *(v1 + 1456);
      v561 = *(v1 + 1176);
      v562 = *(v1 + 1144);
      v563 = *(v1 + 1136);
      if (v559)
      {
        v564 = v558;
        v565 = swift_slowAlloc();
        v566 = swift_slowAlloc();
        v1082[0] = v566;
        *v565 = 136315138;
        v567 = MLHostTask.name.getter();
        v569 = v568;
        v560(v561, v563);
        v570 = sub_100008A0C(v567, v569, v1082);

        *(v565 + 4) = v570;
        _os_log_impl(&_mh_execute_header, v557, v564, "Task %s has been in shouldRun for too long. Marking task as failed and terminating process.", v565, 0xCu);
        sub_100009914(v566);
      }

      else
      {

        v560(v561, v563);
      }

      v1 = v1019;
      v1027 = *(v1019 + 1544);
      v1036 = *(v1019 + 1536);
      v1001 = *(v1019 + 1528);
      v1012 = *(v1019 + 1520);
      v571 = *(v1019 + 1464);
      v1047 = *(v1019 + 1488);
      v1062 = *(v1019 + 1416);
      v572 = *(v1019 + 912);
      v573 = *(v1019 + 904);
      v1077 = *(v1019 + 896);
      v574 = *(v1019 + 776);
      v575 = *(v1019 + 728);
      v576 = *(v1019 + 720);
      v577 = *(v1019 + 640);
      v578 = [v571 processIdentifier];
      v1082[0] = 0;
      v1082[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v1082[0] = 0x206B736154;
      v1082[1] = 0xE500000000000000;
      v579._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v579);

      v580._countAndFlagsBits = 0xD000000000000024;
      v580._object = 0x8000000100073000;
      String.append(_:)(v580);
      sub_1000530BC(v578);

      swift_unknownObjectRelease();
      (*(v575 + 8))(v574, v576);

      [v571 invalidate];

      AppExtensionProcess.invalidate()();
      swift_unknownObjectRelease();
      (*(v573 + 8))(v572, v1077);
      goto LABEL_47;
    }
  }

  v445 = *(v1 + 1544);
  swift_beginAccess();
  v446 = *(v445 + 16);
  if (v446 == 2)
  {
    v447 = *(v1 + 1448);
    v448 = *(v1 + 1432);
    (*(v1 + 1440))(*(v1 + 1280), *(v1 + 640), *(v1 + 1136));
    v449 = Logger.logObject.getter();
    v450 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v449, v450))
    {
      v1044 = *(v1 + 1592);
      v1056 = *(v1 + 1600);
      v451 = *(v1 + 1456);
      v452 = *(v1 + 1424);
      v453 = *(v1 + 1280);
      v454 = *(v1 + 1144);
      v455 = *(v1019 + 1136);
      v1025 = *(v1019 + 664);
      v1034 = *(v1019 + 672);
      v456 = swift_slowAlloc();
      v1082[0] = swift_slowAlloc();
      *v456 = 136315650;
      v457 = MLHostTask.name.getter();
      v459 = v458;
      v460 = v455;
      v1 = v1019;
      v451(v453, v460);
      v461 = sub_100008A0C(v457, v459, v1082);

      *(v456 + 4) = v461;
      *(v456 + 12) = 1024;
      os_unfair_lock_lock((*(v452 + 56) + 16));
      v462 = *(v452 + 72);

      LOBYTE(v451) = sub_1000292B0(v1025, v1034, v462);

      os_unfair_lock_unlock((*(v452 + 56) + 16));
      *(v456 + 14) = v451 & 1;
      *(v456 + 18) = 2080;
      v463 = Duration.description.getter();
      v465 = sub_100008A0C(v463, v464, v1082);

      *(v456 + 20) = v465;
      _os_log_impl(&_mh_execute_header, v449, v450, "Task %s skipping execution, isDeferred = %{BOOL}d, after %s.", v456, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
      v486 = *(v1 + 1456);
      v487 = *(v1 + 1280);
      v488 = *(v1 + 1144);
      v489 = *(v1 + 1136);

      v486(v487, v489);
    }

    v1058 = *(v1 + 1560);
    v1074 = *(v1 + 1568);
    v490 = *(v1 + 1552);
    v491 = *(v1 + 1512);
    v492 = *(v1 + 1504);
    v493 = *(v1 + 1136);
    v494 = *(v1 + 1056);
    v495 = *(v1 + 1016);
    v496 = *(v1 + 944);
    v497 = *(v1 + 640);
    v498 = MLHostTask.name.getter();
    v500 = v499;
    v492(v494, enum case for TaskStatus.taskDeferred(_:), v495);
    sub_100019300(v498, v500, v496);
    if (v1058(v496, 1, v493) == 1)
    {
      sub_100009C94(*(v1 + 944), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v515 = *(v1 + 1552);
      v516 = *(v1 + 1480);
      v517 = *(v1 + 1456);
      v518 = *(v1 + 1192);
      v519 = *(v1 + 1144);
      v520 = *(v1 + 1136);
      v521 = *(v1 + 1120);
      v522 = *(v1 + 1056);
      v523 = *(v1 + 1024);
      v524 = *(v1 + 1016);
      (*(v1 + 1472))(v518, *(v1 + 944), v520);
      (*(v523 + 16))(v521, v522, v524);
      MLHostTask.status.setter();
      sub_10001C4DC(v518);
      v517(v518, v520);
    }

    v525 = *(v1019 + 1584);
    v526 = *(v1019 + 1576);
    v1026 = *(v1019 + 1544);
    v1035 = *(v1019 + 1536);
    v527 = *(v1019 + 1528);
    v1000 = *(v1019 + 1520);
    v528 = *(v1019 + 1464);
    v1046 = *(v1019 + 1488);
    v1060 = *(v1019 + 1416);
    v529 = *(v1019 + 1056);
    v530 = *(v1019 + 1016);
    v531 = *(v1019 + 912);
    v532 = *(v1019 + 904);
    v1076 = *(v1019 + 896);
    v533 = *(v1019 + 728);
    v986 = *(v1019 + 720);
    v994 = *(v1019 + 776);
    v534 = *(v1019 + 640);

    v526(v529, v530);
    v1 = v1019;
    v535 = [v528 processIdentifier];
    v1082[0] = 0;
    v1082[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v1082[0] = 0x206B736154;
    v1082[1] = 0xE500000000000000;
    v536._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v536);

    v537._countAndFlagsBits = 0xD00000000000001ELL;
    v537._object = 0x8000000100073030;
    String.append(_:)(v537);
    sub_1000530BC(v535);

    swift_unknownObjectRelease();
    (*(v533 + 8))(v994, v986);

    [v528 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v532 + 8))(v531, v1076);
    goto LABEL_47;
  }

  v466 = *(v1 + 1448);
  v467 = *(v1 + 1440);
  v468 = *(v1 + 1432);
  v469 = *(v1 + 1136);
  v470 = *(v1 + 640);
  if ((v446 & 1) == 0)
  {
    v467(*(v1 + 1264), v470, v469);
    v501 = Logger.logObject.getter();
    v502 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v501, v502))
    {
      v1059 = *(v1 + 1592);
      v1075 = *(v1 + 1600);
      v503 = *(v1 + 1456);
      v504 = *(v1 + 1264);
      v505 = *(v1 + 1144);
      v506 = *(v1 + 1136);
      v507 = swift_slowAlloc();
      v1082[0] = swift_slowAlloc();
      *v507 = 136315650;
      v508 = MLHostTask.name.getter();
      v510 = v509;
      v503(v504, v506);
      v511 = sub_100008A0C(v508, v510, v1082);
      v1 = v1019;

      *(v507 + 4) = v511;
      *(v507 + 12) = 1024;
      *(v507 + 14) = 0;
      *(v507 + 18) = 2080;
      v512 = Duration.description.getter();
      v514 = sub_100008A0C(v512, v513, v1082);

      *(v507 + 20) = v514;
      _os_log_impl(&_mh_execute_header, v501, v502, "Task %s skipping execution, shouldRun = %{BOOL}d, after %s.", v507, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
      v625 = *(v1 + 1456);
      v626 = *(v1 + 1264);
      v627 = *(v1 + 1144);
      v628 = *(v1 + 1136);

      v625(v626, v628);
    }

    v1064 = *(v1 + 1560);
    v1078 = *(v1 + 1568);
    v629 = *(v1 + 1552);
    v630 = *(v1 + 1512);
    v631 = *(v1 + 1504);
    v632 = *(v1 + 1136);
    v633 = *(v1 + 1064);
    v634 = *(v1 + 1016);
    v635 = *(v1 + 952);
    v636 = *(v1 + 640);
    v637 = MLHostTask.name.getter();
    v639 = v638;
    v631(v633, enum case for TaskStatus.taskFailed(_:), v634);
    sub_100019300(v637, v639, v635);
    if (v1064(v635, 1, v632) == 1)
    {
      sub_100009C94(*(v1 + 952), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v640 = *(v1 + 1552);
      v641 = *(v1 + 1480);
      v642 = *(v1 + 1456);
      v643 = *(v1 + 1200);
      v644 = *(v1 + 1144);
      v645 = *(v1 + 1136);
      v646 = *(v1 + 1120);
      v647 = *(v1 + 1064);
      v648 = *(v1 + 1024);
      v649 = *(v1 + 1016);
      (*(v1 + 1472))(v643, *(v1 + 952), v645);
      (*(v648 + 16))(v646, v647, v649);
      MLHostTask.status.setter();
      sub_10001C4DC(v643);
      v642(v643, v645);
    }

    v650 = *(v1 + 1584);
    v651 = *(v1 + 1576);
    v652 = *(v1 + 1552);
    v1014 = *(v1 + 1544);
    v653 = *(v1 + 1536);
    v988 = *(v1 + 1528);
    v654 = *(v1 + 1520);
    v655 = *(v1 + 1488);
    v656 = *(v1 + 1464);
    v1049 = *(v1 + 1416);
    v657 = *(v1 + 1064);
    v658 = *(v1019 + 1016);
    v1038 = *(v1019 + 912);
    v659 = *(v1019 + 904);
    v1065 = *(v1019 + 896);
    v660 = *(v1019 + 728);
    v996 = *(v1019 + 720);
    v1003 = *(v1019 + 776);
    v661 = *(v1019 + 640);

    v662 = v658;
    v1 = v1019;
    v651(v657, v662);
    v663 = MLHostTask.name.getter();
    sub_10001C1E4(v663, v664);

    v665 = [v656 processIdentifier];
    v1082[0] = 0;
    v1082[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v1082[0] = 0x206B736154;
    v1082[1] = 0xE500000000000000;
    v666._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v666);

    v667._countAndFlagsBits = 0xD000000000000014;
    v667._object = 0x8000000100073050;
    String.append(_:)(v667);
    sub_1000530BC(v665);

    swift_unknownObjectRelease();
    (*(v660 + 8))(v1003, v996);
    swift_beginAccess();
    v1071 = *(v653 + 16);
    v668 = v1071;

    [v656 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v659 + 8))(v1038, v1065);
    goto LABEL_48;
  }

  v1073 = (v1 + 208);
  v467(*(v1 + 1272), v470, v469);
  v471 = Logger.logObject.getter();
  v472 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v471, v472))
  {
    v1045 = *(v1 + 1592);
    v1057 = *(v1 + 1600);
    v473 = *(v1 + 1456);
    v474 = *(v1 + 1272);
    v475 = *(v1 + 1144);
    v476 = *(v1 + 1136);
    v477 = swift_slowAlloc();
    v1082[0] = swift_slowAlloc();
    *v477 = 136315650;
    v478 = MLHostTask.name.getter();
    v480 = v479;
    v473(v474, v476);
    v481 = v478;
    v1 = v1019;
    v482 = sub_100008A0C(v481, v480, v1082);

    *(v477 + 4) = v482;
    *(v477 + 12) = 1024;
    *(v477 + 14) = 1;
    *(v477 + 18) = 2080;
    v483 = Duration.description.getter();
    v485 = sub_100008A0C(v483, v484, v1082);

    *(v477 + 20) = v485;
    _os_log_impl(&_mh_execute_header, v471, v472, "Task %s continuing execution, shouldRun = %{BOOL}d, after %s.", v477, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v581 = *(v1 + 1456);
    v582 = *(v1 + 1272);
    v583 = *(v1 + 1144);
    v584 = *(v1 + 1136);

    v581(v582, v584);
  }

  v585 = *(v1 + 1536);
  v1048 = *(v1 + 1520);
  v1063 = *(v1 + 1528);
  v586 = *(v1 + 1512);
  v587 = *(v1 + 1504);
  v588 = *(v1 + 500);
  v589 = *(v1 + 1496);
  v1028 = *(v1 + 1480);
  v1037 = *(v1 + 1488);
  v1013 = *(v1 + 1472);
  v590 = *(v1 + 476);
  v987 = *(v1 + 1440);
  v995 = *(v1 + 1448);
  v981 = *(v1 + 1336);
  v591 = *(v1 + 1152);
  aBlockb = *(v1 + 1136);
  v592 = *(v1 + 1120);
  v593 = *(v1 + 1024);
  v594 = *(v1019 + 1016);
  v1002 = *(v1019 + 648);
  v974 = *(v1019 + 640);
  v595 = (v590 + 16) & ~v590;
  v596 = (v591 + v595 + 7) & 0xFFFFFFFFFFFFFFF8;
  v597 = (v596 + 15) & 0xFFFFFFFFFFFFFFF8;
  v587(v592, v588, v594);
  swift_beginAccess();
  v598 = v594;
  v1 = v1019;
  (*(v593 + 40))(v589, v592, v598);
  swift_beginAccess();
  v599 = *(v585 + 16);
  *(v585 + 16) = 0;

  v987(v981, v974, aBlockb);
  v600 = swift_allocObject();
  v1013(v600 + v595, v981, aBlockb);
  *(v600 + v596) = v585;
  *(v600 + v597) = v1037;
  *(v600 + ((v597 + 15) & 0xFFFFFFFFFFFFFFF8)) = v1002;
  *(v1019 + 240) = sub_1000643F4;
  *(v1019 + 248) = v600;
  *(v1019 + 208) = _NSConcreteStackBlock;
  *(v1019 + 216) = 1107296256;
  *(v1019 + 224) = sub_100065970;
  *(v1019 + 232) = &unk_100082F50;
  v601 = _Block_copy(v1073);
  v602 = *(v1019 + 248);

  [v1048 doWorkWithContext:v1063 reply:v601];
  _Block_release(v601);
  v603 = *(v1019 + 1424);
  os_unfair_lock_lock((*(v603 + 56) + 16));
  v604 = *(v603 + 72);
  if (!*(v604 + 16))
  {
LABEL_124:
    v614 = *(v1019 + 1536);
    os_unfair_lock_unlock((*(*(v1019 + 1424) + 56) + 16));
    if (!*(v614 + 16))
    {
      v615 = *(v1019 + 768);
      v616 = *(v1019 + 744);
      v617 = *(v1019 + 728);
      v618 = *(v1019 + 720);
      v619 = *(v1019 + 704);
      v620 = *(v1019 + 680);
      static Clock<>.continuous.getter();
      *(v1019 + 560) = xmmword_100069320;
      *(v1019 + 480) = 0;
      *(v1019 + 488) = 0;
      *(v1019 + 496) = 1;
      v420 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
      dispatch thunk of Clock.now.getter();
      sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
      dispatch thunk of InstantProtocol.advanced(by:)();
      v621 = *(v617 + 8);
      *(v1019 + 1656) = v621;
      *(v1019 + 1664) = (v617 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v621(v615, v618);
      v622 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
      v623 = swift_task_alloc();
      *(v1019 + 1672) = v623;
      *v623 = v1019;
      v623[1] = sub_10005B044;
      v424 = *(v1019 + 744);
      v624 = *(v1019 + 704);
      v426 = *(v1019 + 680);
      v427 = v1019 + 480;
      goto LABEL_87;
    }

    goto LABEL_132;
  }

  v605 = *(v1019 + 672);
  v606 = *(v1019 + 664);
  v607 = *(v604 + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v608 = Hasher._finalize()();
  v609 = -1 << *(v604 + 32);
  v610 = v608 & ~v609;
  if (((*(v604 + 56 + ((v610 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v610) & 1) == 0)
  {
LABEL_123:

    goto LABEL_124;
  }

  v611 = ~v609;
  while (1)
  {
    v612 = (*(v604 + 48) + 16 * v610);
    v613 = *v612 == *(v1019 + 664) && v612[1] == *(v1019 + 672);
    if (v613 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v610 = (v610 + 1) & v611;
    if (((*(v604 + 56 + ((v610 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v610) & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  v669 = *(v1019 + 1424);

  os_unfair_lock_unlock((*(v669 + 56) + 16));
LABEL_132:
  v670 = *(v1019 + 1536);
  v671 = *(v1019 + 776);
  v672 = *(v1019 + 768);
  v673 = *(v1019 + 728);
  v674 = *(v1019 + 720);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v675 = *(v673 + 8);
  *(v1019 + 1608) = v675;
  *(v1019 + 1616) = (v673 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v675(v672, v674);
  v676 = *(v670 + 16);
  v677 = *(v1019 + 1448);
  v678 = *(v1019 + 1440);
  v679 = *(v1019 + 1432);
  v680 = *(v1019 + 1136);
  v681 = *(v1019 + 640);
  if (v676)
  {
    v1039 = v675;
    v678(*(v1019 + 1256), v681, v680);
    v682 = v676;
    v683 = Logger.logObject.getter();
    v684 = static os_log_type_t.info.getter();

    v1004 = v684;
    v685 = os_log_type_enabled(v683, v684);
    v686 = *(v1019 + 1456);
    v687 = *(v1019 + 1256);
    v688 = *(v1019 + 1144);
    v689 = *(v1019 + 1136);
    v1071 = v676;
    if (v685)
    {
      v690 = swift_slowAlloc();
      v989 = swift_slowAlloc();
      v1082[0] = swift_slowAlloc();
      *v690 = 136315650;
      v691 = v682;
      v692 = MLHostTask.name.getter();
      v694 = v693;
      v686(v687, v689);
      v695 = sub_100008A0C(v692, v694, v1082);

      *(v690 + 4) = v695;
      *(v690 + 12) = 2080;
      v696 = Duration.description.getter();
      v698 = sub_100008A0C(v696, v697, v1082);

      *(v690 + 14) = v698;
      *(v690 + 22) = 2112;
      *(v690 + 24) = v691;
      *v989 = v676;
      v699 = v691;
      _os_log_impl(&_mh_execute_header, v683, v1004, "Task %s completed after %s. TaskResult: %@", v690, 0x20u);
      sub_100009C94(v989, &qword_100085970, &qword_100068F48);
      v1 = v1019;

      swift_arrayDestroy();
    }

    else
    {

      v686(v687, v689);
    }

    v1015 = *(v1 + 1560);
    v1021 = *(v1 + 1568);
    v715 = *(v1 + 1552);
    v716 = *(v1 + 1496);
    v717 = *(v1 + 1136);
    v718 = *(v1 + 1088);
    v719 = *(v1 + 1024);
    v720 = *(v1 + 1016);
    v721 = *(v1 + 976);
    v722 = *(v1 + 640);
    v723 = MLHostTask.name.getter();
    v725 = v724;
    v726 = v720;
    v727 = *(v719 + 16);
    v727(v718, v716, v726);
    sub_100019300(v723, v725, v721);
    v1005 = v727;
    if (v1015(v721, 1, v717) == 1)
    {
      sub_100009C94(*(v1 + 976), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v728 = *(v1 + 1552);
      v729 = *(v1 + 1480);
      v1022 = *(v1 + 1456);
      v730 = *(v1 + 1240);
      v731 = *(v1 + 1144);
      v732 = *(v1 + 1136);
      v733 = *(v1 + 1120);
      v734 = *(v1 + 1088);
      v735 = *(v1 + 1016);
      (*(v1 + 1472))(v730, *(v1 + 976), v732);
      v727(v733, v734, v735);
      MLHostTask.status.setter();
      sub_10001C4DC(v730);
      v1022(v730, v732);
    }

    v736 = *(v1 + 1584);
    v737 = *(v1 + 1576);
    v738 = *(v1 + 1552);
    v739 = *(v1 + 1088);
    v740 = *(v1 + 1016);
    v741 = *(v1 + 640);

    v737(v739, v740);
    v742 = MLHostTask.name.getter();
    sub_10001C1E4(v742, v743);

    MLHostResult.status.getter();
    v744 = MLHostResultStatus.rawValue.getter();
    if (v744 == MLHostResultStatus.rawValue.getter())
    {
      v745 = *(v1 + 1544);
      v746 = *(v1 + 1536);
      v747 = *(v1 + 1528);
      v748 = *(v1 + 1520);
      v1039(*(v1 + 776), *(v1 + 720));

      swift_unknownObjectRelease();
    }

    else
    {
      v990 = *(v1 + 1576);
      v997 = *(v1 + 1584);
      v749 = *(v1 + 1544);
      v750 = *(v1 + 1536);
      v1066 = *(v1 + 1520);
      v751 = *(v1 + 1496);
      v752 = *(v1 + 1120);
      v753 = *(v1 + 1016);
      v1029 = *(v1 + 776);
      v1016 = *(v1 + 1528);
      v1023 = *(v1 + 720);
      v754 = *(v1 + 640);
      v755 = [*(v1 + 1464) processIdentifier];
      v1082[0] = 0;
      v1082[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v756 = v1082[1];
      *(v1 + 608) = v1082[0];
      *(v1 + 616) = v756;
      v757._countAndFlagsBits = 0x206B736154;
      v757._object = 0xE500000000000000;
      String.append(_:)(v757);
      v758._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v758);

      v759._object = 0x8000000100073090;
      v759._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v759);
      v1005(v752, v751, v753);
      _print_unlocked<A, B>(_:_:)();
      v990(v752, v753);
      v760._countAndFlagsBits = 46;
      v760._object = 0xE100000000000000;
      String.append(_:)(v760);
      v761 = *(v1 + 608);
      v762 = *(v1 + 616);
      sub_1000530BC(v755);

      swift_unknownObjectRelease();
      v1039(v1029, v1023);
    }

    v763 = *(v1 + 1488);
    v764 = *(v1 + 1464);
    v765 = *(v1 + 1416);
    v766 = *(v1 + 912);
    v767 = *(v1 + 904);
    v768 = *(v1 + 896);

    [v764 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v767 + 8))(v766, v768);
    goto LABEL_48;
  }

  v678(*(v1019 + 1248), v681, v680);
  v700 = Logger.logObject.getter();
  v701 = static os_log_type_t.info.getter();
  v702 = os_log_type_enabled(v700, v701);
  v703 = *(v1019 + 1456);
  v704 = *(v1019 + 1248);
  v705 = *(v1019 + 1144);
  v706 = *(v1019 + 1136);
  if (v702)
  {
    v707 = swift_slowAlloc();
    v1082[0] = swift_slowAlloc();
    *v707 = 136315394;
    v708 = MLHostTask.name.getter();
    v710 = v709;
    v703(v704, v706);
    v711 = sub_100008A0C(v708, v710, v1082);

    *(v707 + 4) = v711;
    *(v707 + 12) = 2080;
    v712 = Duration.description.getter();
    v714 = sub_100008A0C(v712, v713, v1082);

    *(v707 + 14) = v714;
    _os_log_impl(&_mh_execute_header, v700, v701, "Task %s asked to terminate because of deferral after %s.", v707, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v703(v704, v706);
  }

  v1 = v1019;
  v769 = *(v1019 + 1536);
  v770 = *(v1019 + 1520);
  v771 = *(v1019 + 760);
  static ContinuousClock.now.getter();
  [v770 doStop];
  v772 = *(v769 + 16);
  if (v772)
  {
    goto LABEL_147;
  }

  *(v1019 + 1624) = 0u;
  if (static Duration.< infix(_:_:)())
  {
    v772 = *(*(v1019 + 1536) + 16);
    if (!v772)
    {
      v1053 = *(v1019 + 1560);
      v1069 = *(v1019 + 1568);
      v866 = *(v1019 + 1552);
      v867 = *(v1019 + 1512);
      v868 = *(v1019 + 1504);
      v869 = *(v1019 + 1136);
      v870 = *(v1019 + 1072);
      v871 = *(v1019 + 1016);
      v872 = *(v1019 + 960);
      v873 = *(v1019 + 640);
      v874 = MLHostTask.name.getter();
      v876 = v875;
      v868(v870, enum case for TaskStatus.taskDeferred(_:), v871);
      sub_100019300(v874, v876, v872);
      if (v1053(v872, 1, v869) == 1)
      {
        sub_100009C94(*(v1019 + 960), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v877 = *(v1019 + 1552);
        v878 = *(v1019 + 1480);
        v879 = *(v1019 + 1456);
        v880 = *(v1019 + 1224);
        v881 = *(v1019 + 1144);
        v882 = *(v1019 + 1136);
        v883 = *(v1019 + 1120);
        v884 = *(v1019 + 1072);
        v885 = *(v1019 + 1024);
        v886 = *(v1019 + 1016);
        (*(v1019 + 1472))(v880, *(v1019 + 960), v882);
        (*(v885 + 16))(v883, v884, v886);
        MLHostTask.status.setter();
        sub_10001C4DC(v880);
        v879(v880, v882);
      }

      v887 = *(v1019 + 1584);
      v888 = *(v1019 + 1576);
      v889 = *(v1019 + 1448);
      v890 = *(v1019 + 1440);
      v1070 = *(v1019 + 1432);
      v891 = *(v1019 + 1216);
      v892 = *(v1019 + 1136);
      v893 = *(v1019 + 1072);
      v894 = *(v1019 + 1016);
      v895 = *(v1019 + 640);

      v888(v893, v894);
      v890(v891, v895, v892);
      v896 = Logger.logObject.getter();
      v1081 = static os_log_type_t.error.getter();
      v897 = os_log_type_enabled(v896, v1081);
      v898 = *(v1019 + 1456);
      v899 = *(v1019 + 1216);
      v900 = *(v1019 + 1144);
      v901 = *(v1019 + 1136);
      if (v897)
      {
        v902 = swift_slowAlloc();
        v903 = swift_slowAlloc();
        v1082[0] = v903;
        *v902 = 136315138;
        v904 = MLHostTask.name.getter();
        v906 = v905;
        v898(v899, v901);
        v907 = sub_100008A0C(v904, v906, v1082);

        *(v902 + 4) = v907;
        _os_log_impl(&_mh_execute_header, v896, v1081, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v902, 0xCu);
        sub_100009914(v903);
      }

      else
      {

        v898(v899, v901);
      }

      v1 = v1019;
      v908 = *(v1019 + 640);
      v909 = [*(v1019 + 1464) processIdentifier];
      v1082[0] = 0;
      v1082[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v1082[0] = 0x206B736154;
      v1082[1] = 0xE500000000000000;
      v910._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v910);

      v911._countAndFlagsBits = 0xD00000000000001FLL;
      v911._object = 0x8000000100073070;
      String.append(_:)(v911);
      sub_1000530BC(v909);

      v1031 = *(v1019 + 1632);
      v1018 = *(v1019 + 1624);
      goto LABEL_156;
    }

    v1030 = *(v1019 + 1632);
    v1017 = *(v1019 + 1624);
LABEL_147:
    v1040 = *(v1019 + 1560);
    v1050 = *(v1019 + 1568);
    v773 = *(v1019 + 1552);
    v774 = *(v1019 + 1496);
    v775 = *(v1019 + 1136);
    v776 = *(v1019 + 1080);
    v777 = *(v1019 + 1024);
    v778 = *(v1019 + 1016);
    v779 = *(v1019 + 968);
    v780 = *(v1019 + 640);
    v1079 = v772;
    v781 = MLHostTask.name.getter();
    v783 = v782;
    v784 = v774;
    v785 = *(v777 + 16);
    v785(v776, v784, v778);
    sub_100019300(v781, v783, v779);
    v1006 = v785;
    if (v1040(v779, 1, v775) == 1)
    {
      sub_100009C94(*(v1019 + 968), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v786 = *(v1019 + 1552);
      v787 = *(v1019 + 1480);
      v1051 = *(v1019 + 1456);
      v788 = v785;
      v789 = *(v1019 + 1232);
      v790 = *(v1019 + 1144);
      v791 = *(v1019 + 1136);
      v792 = *(v1019 + 1120);
      v793 = *(v1019 + 1080);
      v794 = *(v1019 + 1016);
      (*(v1019 + 1472))(v789, *(v1019 + 968), v791);
      v788(v792, v793, v794);
      MLHostTask.status.setter();
      sub_10001C4DC(v789);
      v1051(v789, v791);
    }

    v795 = *(v1019 + 1584);
    v796 = *(v1019 + 1576);
    v797 = *(v1019 + 1552);
    v798 = *(v1019 + 1080);
    v799 = *(v1019 + 1016);
    v800 = *(v1019 + 640);

    v796(v798, v799);
    v801 = MLHostTask.name.getter();
    sub_10001C1E4(v801, v802);

    MLHostResult.status.getter();
    v803 = MLHostResultStatus.rawValue.getter();
    if (v803 == MLHostResultStatus.rawValue.getter())
    {
    }

    else
    {
      v1067 = *(v1019 + 1584);
      v804 = *(v1019 + 1576);
      v805 = *(v1019 + 1496);
      v806 = *(v1019 + 1120);
      v807 = *(v1019 + 1016);
      v808 = *(v1019 + 640);
      v809 = [*(v1019 + 1464) processIdentifier];
      v1082[0] = 0;
      v1082[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v810 = v1082[1];
      *(v1019 + 592) = v1082[0];
      *(v1019 + 600) = v810;
      v811._countAndFlagsBits = 0x206B736154;
      v811._object = 0xE500000000000000;
      String.append(_:)(v811);
      v812._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v812);

      v813._object = 0x8000000100073090;
      v813._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v813);
      v1006(v806, v805, v807);
      _print_unlocked<A, B>(_:_:)();
      v804(v806, v807);
      v814._countAndFlagsBits = 46;
      v814._object = 0xE100000000000000;
      String.append(_:)(v814);
      v815 = *(v1019 + 592);
      v816 = *(v1019 + 600);
      sub_1000530BC(v809);
    }

LABEL_156:
    v817 = *(v1 + 1536);
    v818 = *(v1 + 1448);
    v819 = *(v1 + 1432);
    (*(v1 + 1440))(*(v1 + 1208), *(v1 + 640), *(v1 + 1136));

    v820 = Logger.logObject.getter();
    v821 = static os_log_type_t.info.getter();

    v822 = os_log_type_enabled(v820, v821);
    v1068 = *(v1 + 1608);
    v1080 = *(v1 + 1616);
    if (v822)
    {
      v982 = *(v1 + 1536);
      v991 = *(v1 + 1528);
      v1041 = *(v1 + 1520);
      aBlockc = *(v1 + 1456);
      v823 = *(v1 + 1208);
      v824 = *(v1 + 1144);
      v825 = *(v1 + 1136);
      v1052 = *(v1 + 776);
      v998 = *(v1 + 720);
      v1007 = *(v1 + 760);
      v826 = swift_slowAlloc();
      v827 = swift_slowAlloc();
      v1082[0] = swift_slowAlloc();
      *v826 = 136315650;
      v828 = MLHostTask.name.getter();
      v830 = v829;
      aBlockc(v823, v825);
      v831 = sub_100008A0C(v828, v830, v1082);

      *(v826 + 4) = v831;
      *(v826 + 12) = 2080;
      v832 = Duration.description.getter();
      v834 = sub_100008A0C(v832, v833, v1082);

      *(v826 + 14) = v834;
      *(v826 + 22) = 2112;
      v835 = *(v982 + 16);
      *(v826 + 24) = v835;
      *v827 = v835;
      v836 = v835;
      _os_log_impl(&_mh_execute_header, v820, v821, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v826, 0x20u);
      sub_100009C94(v827, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();

      v1 = v1019;

      swift_unknownObjectRelease();
      v837 = v1068;
      v1068(v1007, v998);
      v838 = v1052;
      v839 = v998;
    }

    else
    {
      v840 = *(v1 + 1520);
      v841 = *(v1 + 1456);
      v842 = *(v1 + 1208);
      v843 = *(v1 + 1144);
      v844 = *(v1 + 1136);
      v845 = *(v1 + 776);
      v846 = *(v1 + 760);
      v847 = *(v1 + 720);

      swift_unknownObjectRelease();
      v841(v842, v844);
      v837 = v1068;
      v1068(v846, v847);
      v838 = v845;
      v839 = v847;
    }

    v837(v838, v839);
    v848 = *(v1 + 1544);
    v849 = *(v1 + 1488);
    v850 = *(v1 + 1464);
    v851 = *(v1 + 1416);
    v852 = *(v1 + 912);
    v853 = *(v1 + 904);
    v854 = *(v1 + 896);
    v1071 = *(*(v1 + 1536) + 16);
    v855 = v1071;

    [v850 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v853 + 8))(v852, v854);
    goto LABEL_48;
  }

  v856 = *(v1019 + 1616);
  v857 = *(v1019 + 1608);
  v858 = *(v1019 + 768);
  v859 = *(v1019 + 752);
  v860 = *(v1019 + 720);
  v861 = *(v1019 + 712);
  v862 = *(v1019 + 680);
  static Clock<>.continuous.getter();
  *(v1019 + 576) = xmmword_100069320;
  *(v1019 + 504) = 0;
  *(v1019 + 512) = 0;
  *(v1019 + 520) = 1;
  v420 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v857(v858, v860);
  v863 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v864 = swift_task_alloc();
  *(v1019 + 1640) = v864;
  *v864 = v1019;
  v864[1] = sub_100059124;
  v424 = *(v1019 + 752);
  v865 = *(v1019 + 712);
  v426 = *(v1019 + 680);
  v427 = v1019 + 504;
LABEL_87:

  return dispatch thunk of Clock.sleep(until:tolerance:)(v424, v427, v426, v420);
}

uint64_t sub_100059124()
{
  v2 = *v1;
  v3 = *(*v1 + 1640);
  v13 = *v1;
  *(*v1 + 1648) = v0;

  v4 = *(v2 + 1616);
  if (v0)
  {
    (*(v2 + 1608))(*(v2 + 752), *(v2 + 720));
    v5 = sub_10005A210;
  }

  else
  {
    v6 = *(v2 + 1608);
    v7 = *(v2 + 752);
    v8 = *(v2 + 720);
    v9 = *(v2 + 712);
    v10 = *(v2 + 688);
    v11 = *(v2 + 680);
    v6(v7, v8);
    (*(v10 + 8))(v9, v11);
    v5 = sub_10005928C;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_10005928C()
{
  v255 = v0;
  v1 = *(v0 + 1616);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 720);
  static ContinuousClock.now.getter();
  v7 = ContinuousClock.Instant.duration(to:)();
  v9 = v8;
  v2(v4, v6);
  v10 = *(v3 + 16);
  if (v10)
  {
    goto LABEL_2;
  }

  *(v0 + 1632) = v7;
  *(v0 + 1624) = v9;
  if (static Duration.< infix(_:_:)())
  {
    v10 = *(*(v0 + 1536) + 16);
    if (!v10)
    {
      v244 = *(v0 + 1560);
      v247 = *(v0 + 1568);
      v118 = *(v0 + 1552);
      v119 = *(v0 + 1512);
      v120 = *(v0 + 1504);
      v121 = *(v0 + 1136);
      v122 = *(v0 + 1072);
      v123 = *(v0 + 1016);
      v124 = *(v0 + 960);
      v125 = *(v0 + 640);
      v126 = MLHostTask.name.getter();
      v128 = v127;
      v120(v122, enum case for TaskStatus.taskDeferred(_:), v123);
      sub_100019300(v126, v128, v124);
      if (v244(v124, 1, v121) == 1)
      {
        sub_100009C94(*(v0 + 960), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v129 = *(v0 + 1552);
        v130 = *(v0 + 1480);
        v131 = *(v0 + 1456);
        v132 = *(v0 + 1224);
        v133 = *(v0 + 1144);
        v134 = *(v0 + 1136);
        v135 = *(v0 + 1120);
        v136 = *(v0 + 1072);
        v137 = *(v0 + 1024);
        v138 = *(v0 + 1016);
        (*(v0 + 1472))(v132, *(v0 + 960), v134);
        (*(v137 + 16))(v135, v136, v138);
        MLHostTask.status.setter();
        sub_10001C4DC(v132);
        v131(v132, v134);
      }

      v139 = *(v0 + 1584);
      v140 = *(v0 + 1576);
      v141 = *(v0 + 1448);
      v142 = *(v0 + 1440);
      v248 = *(v0 + 1432);
      v143 = *(v0 + 1216);
      v144 = *(v0 + 1136);
      v145 = *(v0 + 1072);
      v146 = *(v0 + 1016);
      v147 = *(v0 + 640);

      v140(v145, v146);
      v142(v143, v147, v144);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.error.getter();
      v150 = os_log_type_enabled(v148, v149);
      v151 = *(v0 + 1456);
      v152 = *(v0 + 1216);
      v153 = *(v0 + 1144);
      v154 = *(v0 + 1136);
      if (v150)
      {
        v252 = v149;
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v253 = v156;
        *v155 = 136315138;
        v157 = MLHostTask.name.getter();
        v159 = v158;
        v151(v152, v154);
        v160 = sub_100008A0C(v157, v159, &v253);

        *(v155 + 4) = v160;
        _os_log_impl(&_mh_execute_header, v148, v252, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v155, 0xCu);
        sub_100009914(v156);
      }

      else
      {

        v151(v152, v154);
      }

      v161 = *(v0 + 640);
      v162 = [*(v0 + 1464) processIdentifier];
      v253 = 0;
      v254 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v253 = 0x206B736154;
      v254 = 0xE500000000000000;
      v163._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v163);

      v164._countAndFlagsBits = 0xD00000000000001FLL;
      v164._object = 0x8000000100073070;
      String.append(_:)(v164);
      sub_1000530BC(v162);

      v231 = *(v0 + 1624);
      v234 = *(v0 + 1632);
      goto LABEL_11;
    }

    v229 = *(v0 + 1624);
    v232 = *(v0 + 1632);
LABEL_2:
    v235 = *(v0 + 1560);
    v239 = *(v0 + 1568);
    v11 = *(v0 + 1552);
    v12 = *(v0 + 1496);
    v13 = *(v0 + 1136);
    v14 = *(v0 + 1080);
    v15 = *(v0 + 1024);
    v16 = *(v0 + 1016);
    v17 = *(v0 + 968);
    v18 = *(v0 + 640);
    v249 = v10;
    v19 = MLHostTask.name.getter();
    v21 = v20;
    v22 = v12;
    v23 = *(v15 + 16);
    v23(v14, v22, v16);
    sub_100019300(v19, v21, v17);
    if (v235(v17, 1, v13) == 1)
    {
      sub_100009C94(*(v0 + 968), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v24 = *(v0 + 1552);
      v25 = *(v0 + 1480);
      v240 = *(v0 + 1456);
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1144);
      v28 = *(v0 + 1136);
      v29 = *(v0 + 1120);
      v30 = v23;
      v31 = *(v0 + 1080);
      v32 = *(v0 + 1016);
      (*(v0 + 1472))(v26, *(v0 + 968), v28);
      v33 = v31;
      v23 = v30;
      v30(v29, v33, v32);
      MLHostTask.status.setter();
      sub_10001C4DC(v26);
      v240(v26, v28);
    }

    v34 = *(v0 + 1584);
    v35 = *(v0 + 1576);
    v36 = *(v0 + 1552);
    v37 = *(v0 + 1080);
    v38 = *(v0 + 1016);
    v39 = *(v0 + 640);

    v35(v37, v38);
    v40 = MLHostTask.name.getter();
    sub_10001C1E4(v40, v41);

    MLHostResult.status.getter();
    v42 = MLHostResultStatus.rawValue.getter();
    if (v42 == MLHostResultStatus.rawValue.getter())
    {
    }

    else
    {
      v236 = *(v0 + 1584);
      v43 = *(v0 + 1576);
      v44 = *(v0 + 1496);
      v45 = *(v0 + 1120);
      v46 = v23;
      v47 = *(v0 + 1016);
      v48 = *(v0 + 640);
      v241 = [*(v0 + 1464) processIdentifier];
      v253 = 0;
      v254 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      *(v0 + 592) = 0;
      *(v0 + 600) = 0xE000000000000000;
      v49._countAndFlagsBits = 0x206B736154;
      v49._object = 0xE500000000000000;
      String.append(_:)(v49);
      v50._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v50);

      v51._object = 0x8000000100073090;
      v51._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v51);
      v46(v45, v44, v47);
      _print_unlocked<A, B>(_:_:)();
      v43(v45, v47);
      v52._countAndFlagsBits = 46;
      v52._object = 0xE100000000000000;
      String.append(_:)(v52);
      v53 = *(v0 + 592);
      v54 = *(v0 + 600);
      sub_1000530BC(v241);
    }

LABEL_11:
    v55 = *(v0 + 1536);
    v56 = *(v0 + 1448);
    v57 = *(v0 + 1432);
    (*(v0 + 1440))(*(v0 + 1208), *(v0 + 640), *(v0 + 1136));

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();

    v60 = os_log_type_enabled(v58, v59);
    v245 = *(v0 + 1608);
    v250 = *(v0 + 1616);
    if (v60)
    {
      v221 = *(v0 + 1536);
      v223 = *(v0 + 1528);
      v61 = *(v0 + 1208);
      v62 = *(v0 + 1144);
      v217 = *(v0 + 1136);
      v219 = *(v0 + 1456);
      v237 = *(v0 + 1520);
      v242 = *(v0 + 776);
      v225 = *(v0 + 720);
      v227 = *(v0 + 760);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      *v63 = 136315650;
      v65 = MLHostTask.name.getter();
      v67 = v66;
      v219(v61, v217);
      v68 = sub_100008A0C(v65, v67, &v253);

      *(v63 + 4) = v68;
      *(v63 + 12) = 2080;
      v69 = Duration.description.getter();
      v71 = sub_100008A0C(v69, v70, &v253);

      *(v63 + 14) = v71;
      *(v63 + 22) = 2112;
      v72 = *(v221 + 16);
      *(v63 + 24) = v72;
      *v64 = v72;
      v73 = v72;
      _os_log_impl(&_mh_execute_header, v58, v59, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v63, 0x20u);
      sub_100009C94(v64, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();

      swift_unknownObjectRelease();
      v74 = v245;
      v245(v227, v225);
      v75 = v242;
      v76 = v225;
    }

    else
    {
      v77 = *(v0 + 1520);
      v78 = *(v0 + 1456);
      v79 = *(v0 + 1208);
      v80 = *(v0 + 1144);
      v81 = *(v0 + 1136);
      v82 = *(v0 + 776);
      v83 = *(v0 + 760);
      v84 = *(v0 + 720);

      swift_unknownObjectRelease();
      v78(v79, v81);
      v74 = v245;
      v245(v83, v84);
      v75 = v82;
      v76 = v84;
    }

    v74(v75, v76);
    v85 = *(v0 + 1544);
    v86 = *(v0 + 1488);
    v87 = *(v0 + 1464);
    v88 = *(v0 + 1416);
    v89 = *(v0 + 912);
    v90 = *(v0 + 904);
    v91 = *(v0 + 896);
    v251 = *(*(v0 + 1536) + 16);
    v92 = v251;

    [v87 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v90 + 8))(v89, v91);
    v93 = *(v0 + 1408);
    v94 = *(v0 + 1400);
    v95 = *(v0 + 1392);
    v96 = *(v0 + 1384);
    v97 = *(v0 + 1376);
    v98 = *(v0 + 1368);
    v99 = *(v0 + 1360);
    v100 = *(v0 + 1352);
    v101 = *(v0 + 1344);
    v102 = *(v0 + 1336);
    v165 = *(v0 + 1328);
    v166 = *(v0 + 1320);
    v167 = *(v0 + 1312);
    v168 = *(v0 + 1304);
    v169 = *(v0 + 1296);
    v170 = *(v0 + 1288);
    v171 = *(v0 + 1280);
    v172 = *(v0 + 1272);
    v173 = *(v0 + 1264);
    v174 = *(v0 + 1256);
    v175 = *(v0 + 1248);
    v176 = *(v0 + 1240);
    v177 = *(v0 + 1232);
    v178 = *(v0 + 1224);
    v179 = *(v0 + 1216);
    v180 = *(v0 + 1208);
    v181 = *(v0 + 1200);
    v182 = *(v0 + 1192);
    v183 = *(v0 + 1184);
    v184 = *(v0 + 1176);
    v185 = *(v0 + 1168);
    v186 = *(v0 + 1160);
    v187 = *(v0 + 1128);
    v188 = *(v0 + 1120);
    v189 = *(v0 + 1112);
    v190 = *(v0 + 1104);
    v191 = *(v0 + 1096);
    v192 = *(v0 + 1088);
    v193 = *(v0 + 1080);
    v194 = *(v0 + 1072);
    v195 = *(v0 + 1064);
    v196 = *(v0 + 1056);
    v197 = *(v0 + 1048);
    v198 = *(v0 + 1040);
    v199 = *(v0 + 1032);
    v200 = *(v0 + 1008);
    v201 = *(v0 + 1000);
    v202 = *(v0 + 992);
    v203 = *(v0 + 984);
    v204 = *(v0 + 976);
    v205 = *(v0 + 968);
    v206 = *(v0 + 960);
    v207 = *(v0 + 952);
    v208 = *(v0 + 944);
    v209 = *(v0 + 936);
    v210 = *(v0 + 928);
    v211 = *(v0 + 920);
    v212 = *(v0 + 912);
    v213 = *(v0 + 888);
    v214 = *(v0 + 880);
    v215 = *(v0 + 856);
    v216 = *(v0 + 848);
    v218 = *(v0 + 824);
    v220 = *(v0 + 800);
    v222 = *(v0 + 776);
    v224 = *(v0 + 768);
    v226 = *(v0 + 760);
    v228 = *(v0 + 752);
    v230 = *(v0 + 744);
    v233 = *(v0 + 736);
    v238 = *(v0 + 712);
    v243 = *(v0 + 704);
    v246 = *(v0 + 696);

    v103 = *(v0 + 8);

    return v103(v251);
  }

  v105 = *(v0 + 1616);
  v106 = *(v0 + 1608);
  v107 = *(v0 + 768);
  v108 = *(v0 + 752);
  v109 = *(v0 + 720);
  v110 = *(v0 + 712);
  v111 = *(v0 + 680);
  static Clock<>.continuous.getter();
  *(v0 + 576) = xmmword_100069320;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  *(v0 + 520) = 1;
  v112 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v106(v107, v109);
  v113 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v114 = swift_task_alloc();
  *(v0 + 1640) = v114;
  *v114 = v0;
  v114[1] = sub_100059124;
  v115 = *(v0 + 752);
  v116 = *(v0 + 712);
  v117 = *(v0 + 680);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v115, v0 + 504, v117, v112);
}

uint64_t sub_10005A210()
{
  v237 = v0;
  v1 = *(v0 + 1432);
  (*(*(v0 + 688) + 8))(*(v0 + 712), *(v0 + 680));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Task.sleep interrupted, skipping waiting for extension termination.", v4, 2u);
  }

  v5 = *(v0 + 1648);

  v6 = *(*(v0 + 1536) + 16);
  if (v6)
  {
    v219 = *(v0 + 1624);
    v222 = *(v0 + 1632);
    v211 = *(v0 + 1560);
    v214 = *(v0 + 1568);
    v7 = *(v0 + 1552);
    v8 = *(v0 + 1496);
    v9 = *(v0 + 1136);
    v10 = *(v0 + 1080);
    v11 = *(v0 + 1024);
    v12 = *(v0 + 1016);
    v13 = *(v0 + 968);
    v14 = *(v0 + 640);
    v231 = v6;
    v15 = MLHostTask.name.getter();
    v17 = v16;
    v18 = v12;
    v19 = *(v11 + 16);
    v19(v10, v8, v18);
    sub_100019300(v15, v17, v13);
    if (v211(v13, 1, v9) == 1)
    {
      sub_100009C94(*(v0 + 968), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v31 = *(v0 + 1552);
      v32 = *(v0 + 1480);
      v215 = *(v0 + 1456);
      v33 = *(v0 + 1232);
      v34 = *(v0 + 1144);
      v35 = *(v0 + 1136);
      v36 = *(v0 + 1120);
      v37 = *(v0 + 1080);
      v38 = v19;
      v39 = *(v0 + 1016);
      (*(v0 + 1472))(v33, *(v0 + 968), v35);
      v40 = v39;
      v19 = v38;
      v38(v36, v37, v40);
      MLHostTask.status.setter();
      sub_10001C4DC(v33);
      v215(v33, v35);
    }

    v41 = *(v0 + 1584);
    v42 = *(v0 + 1576);
    v43 = *(v0 + 1552);
    v44 = *(v0 + 1080);
    v45 = *(v0 + 1016);
    v46 = *(v0 + 640);

    v42(v44, v45);
    v47 = MLHostTask.name.getter();
    sub_10001C1E4(v47, v48);

    MLHostResult.status.getter();
    v49 = MLHostResultStatus.rawValue.getter();
    if (v49 == MLHostResultStatus.rawValue.getter())
    {
    }

    else
    {
      v216 = *(v0 + 1584);
      v50 = *(v0 + 1576);
      v51 = *(v0 + 1496);
      v52 = *(v0 + 1120);
      v53 = *(v0 + 1016);
      v54 = *(v0 + 640);
      v227 = [*(v0 + 1464) processIdentifier];
      v235 = 0;
      v236 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      *(v0 + 592) = 0;
      *(v0 + 600) = 0xE000000000000000;
      v55._countAndFlagsBits = 0x206B736154;
      v55._object = 0xE500000000000000;
      String.append(_:)(v55);
      v56._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v56);

      v57._object = 0x8000000100073090;
      v57._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v57);
      v19(v52, v51, v53);
      _print_unlocked<A, B>(_:_:)();
      v50(v52, v53);
      v58._countAndFlagsBits = 46;
      v58._object = 0xE100000000000000;
      String.append(_:)(v58);
      v59 = *(v0 + 592);
      v60 = *(v0 + 600);
      sub_1000530BC(v227);
    }
  }

  else
  {
    v223 = *(v0 + 1560);
    v226 = *(v0 + 1568);
    v20 = *(v0 + 1552);
    v21 = *(v0 + 1512);
    v22 = *(v0 + 1504);
    v23 = *(v0 + 1136);
    v24 = *(v0 + 1072);
    v25 = *(v0 + 1016);
    v26 = *(v0 + 960);
    v27 = *(v0 + 640);
    v28 = MLHostTask.name.getter();
    v30 = v29;
    v22(v24, enum case for TaskStatus.taskDeferred(_:), v25);
    sub_100019300(v28, v30, v26);
    if (v223(v26, 1, v23) == 1)
    {
      sub_100009C94(*(v0 + 960), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v61 = *(v0 + 1552);
      v62 = *(v0 + 1480);
      v63 = *(v0 + 1456);
      v64 = *(v0 + 1224);
      v65 = *(v0 + 1144);
      v66 = *(v0 + 1136);
      v67 = *(v0 + 1120);
      v68 = *(v0 + 1072);
      v69 = *(v0 + 1024);
      v70 = *(v0 + 1016);
      (*(v0 + 1472))(v64, *(v0 + 960), v66);
      (*(v69 + 16))(v67, v68, v70);
      MLHostTask.status.setter();
      sub_10001C4DC(v64);
      v63(v64, v66);
    }

    v71 = *(v0 + 1584);
    v72 = *(v0 + 1576);
    v73 = *(v0 + 1448);
    v74 = *(v0 + 1440);
    v228 = *(v0 + 1432);
    v75 = *(v0 + 1216);
    v76 = *(v0 + 1136);
    v77 = *(v0 + 1072);
    v78 = *(v0 + 1016);
    v79 = *(v0 + 640);

    v72(v77, v78);
    v74(v75, v79, v76);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 1456);
    v84 = *(v0 + 1216);
    v85 = *(v0 + 1144);
    v86 = *(v0 + 1136);
    if (v82)
    {
      v232 = v81;
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v235 = v88;
      *v87 = 136315138;
      v89 = MLHostTask.name.getter();
      v91 = v90;
      v83(v84, v86);
      v92 = sub_100008A0C(v89, v91, &v235);

      *(v87 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v80, v232, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v87, 0xCu);
      sub_100009914(v88);
    }

    else
    {

      v83(v84, v86);
    }

    v93 = *(v0 + 640);
    v94 = [*(v0 + 1464) processIdentifier];
    v235 = 0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v235 = 0x206B736154;
    v236 = 0xE500000000000000;
    v95._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v95);

    v96._countAndFlagsBits = 0xD00000000000001FLL;
    v96._object = 0x8000000100073070;
    String.append(_:)(v96);
    sub_1000530BC(v94);

    v220 = *(v0 + 1624);
    v224 = *(v0 + 1632);
  }

  v97 = *(v0 + 1536);
  v98 = *(v0 + 1448);
  v99 = *(v0 + 1432);
  (*(v0 + 1440))(*(v0 + 1208), *(v0 + 640), *(v0 + 1136));

  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.info.getter();

  v102 = os_log_type_enabled(v100, v101);
  v229 = *(v0 + 1608);
  v233 = *(v0 + 1616);
  if (v102)
  {
    v203 = *(v0 + 1536);
    v205 = *(v0 + 1528);
    v103 = *(v0 + 1208);
    v104 = *(v0 + 1144);
    v199 = *(v0 + 1136);
    v201 = *(v0 + 1456);
    v212 = *(v0 + 1520);
    v217 = *(v0 + 776);
    v207 = *(v0 + 720);
    v209 = *(v0 + 760);
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    *v105 = 136315650;
    v107 = MLHostTask.name.getter();
    v109 = v108;
    v201(v103, v199);
    v110 = sub_100008A0C(v107, v109, &v235);

    *(v105 + 4) = v110;
    *(v105 + 12) = 2080;
    v111 = Duration.description.getter();
    v113 = sub_100008A0C(v111, v112, &v235);

    *(v105 + 14) = v113;
    *(v105 + 22) = 2112;
    v114 = *(v203 + 16);
    *(v105 + 24) = v114;
    *v106 = v114;
    v115 = v114;
    _os_log_impl(&_mh_execute_header, v100, v101, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v105, 0x20u);
    sub_100009C94(v106, &qword_100085970, &qword_100068F48);

    swift_arrayDestroy();

    swift_unknownObjectRelease();
    v116 = v229;
    v229(v209, v207);
    v117 = v217;
    v118 = v207;
  }

  else
  {
    v119 = *(v0 + 1520);
    v120 = *(v0 + 1456);
    v121 = *(v0 + 1208);
    v122 = *(v0 + 1144);
    v123 = *(v0 + 1136);
    v124 = *(v0 + 776);
    v125 = *(v0 + 760);
    v126 = *(v0 + 720);

    swift_unknownObjectRelease();
    v120(v121, v123);
    v116 = v229;
    v229(v125, v126);
    v117 = v124;
    v118 = v126;
  }

  v116(v117, v118);
  v127 = *(v0 + 1544);
  v128 = *(v0 + 1488);
  v129 = *(v0 + 1464);
  v130 = *(v0 + 1416);
  v131 = *(v0 + 912);
  v132 = *(v0 + 904);
  v133 = *(v0 + 896);
  v234 = *(*(v0 + 1536) + 16);
  v134 = v234;

  [v129 invalidate];

  AppExtensionProcess.invalidate()();
  swift_unknownObjectRelease();
  (*(v132 + 8))(v131, v133);
  v135 = *(v0 + 1408);
  v136 = *(v0 + 1400);
  v137 = *(v0 + 1392);
  v138 = *(v0 + 1384);
  v139 = *(v0 + 1376);
  v140 = *(v0 + 1368);
  v141 = *(v0 + 1360);
  v142 = *(v0 + 1352);
  v143 = *(v0 + 1344);
  v144 = *(v0 + 1336);
  v147 = *(v0 + 1328);
  v148 = *(v0 + 1320);
  v149 = *(v0 + 1312);
  v150 = *(v0 + 1304);
  v151 = *(v0 + 1296);
  v152 = *(v0 + 1288);
  v153 = *(v0 + 1280);
  v154 = *(v0 + 1272);
  v155 = *(v0 + 1264);
  v156 = *(v0 + 1256);
  v157 = *(v0 + 1248);
  v158 = *(v0 + 1240);
  v159 = *(v0 + 1232);
  v160 = *(v0 + 1224);
  v161 = *(v0 + 1216);
  v162 = *(v0 + 1208);
  v163 = *(v0 + 1200);
  v164 = *(v0 + 1192);
  v165 = *(v0 + 1184);
  v166 = *(v0 + 1176);
  v167 = *(v0 + 1168);
  v168 = *(v0 + 1160);
  v169 = *(v0 + 1128);
  v170 = *(v0 + 1120);
  v171 = *(v0 + 1112);
  v172 = *(v0 + 1104);
  v173 = *(v0 + 1096);
  v174 = *(v0 + 1088);
  v175 = *(v0 + 1080);
  v176 = *(v0 + 1072);
  v177 = *(v0 + 1064);
  v178 = *(v0 + 1056);
  v179 = *(v0 + 1048);
  v180 = *(v0 + 1040);
  v181 = *(v0 + 1032);
  v182 = *(v0 + 1008);
  v183 = *(v0 + 1000);
  v184 = *(v0 + 992);
  v185 = *(v0 + 984);
  v186 = *(v0 + 976);
  v187 = *(v0 + 968);
  v188 = *(v0 + 960);
  v189 = *(v0 + 952);
  v190 = *(v0 + 944);
  v191 = *(v0 + 936);
  v192 = *(v0 + 928);
  v193 = *(v0 + 920);
  v194 = *(v0 + 912);
  v195 = *(v0 + 888);
  v196 = *(v0 + 880);
  v197 = *(v0 + 856);
  v198 = *(v0 + 848);
  v200 = *(v0 + 824);
  v202 = *(v0 + 800);
  v204 = *(v0 + 776);
  v206 = *(v0 + 768);
  v208 = *(v0 + 760);
  v210 = *(v0 + 752);
  v213 = *(v0 + 744);
  v218 = *(v0 + 736);
  v221 = *(v0 + 712);
  v225 = *(v0 + 704);
  v230 = *(v0 + 696);

  v145 = *(v0 + 8);

  return v145(v234);
}

uint64_t sub_10005B044()
{
  v2 = *v1;
  v3 = *(*v1 + 1672);
  v13 = *v1;
  *(*v1 + 1680) = v0;

  v4 = *(v2 + 1664);
  if (v0)
  {
    (*(v2 + 1656))(*(v2 + 744), *(v2 + 720));
    v5 = sub_10005CAB0;
  }

  else
  {
    v6 = *(v2 + 1656);
    v7 = *(v2 + 744);
    v8 = *(v2 + 720);
    v9 = *(v2 + 704);
    v10 = *(v2 + 688);
    v11 = *(v2 + 680);
    v6(v7, v8);
    (*(v10 + 8))(v9, v11);
    v5 = sub_10005B1AC;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_10005B1AC()
{
  v387 = v0;
  v1 = *(v0 + 1424);
  os_unfair_lock_lock((*(v1 + 56) + 16));
  v2 = *(v1 + 72);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 672);
    v4 = *(v0 + 664);
    v5 = *(v2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v6 = Hasher._finalize()();
    v7 = -1 << *(v2 + 32);
    v8 = v6 & ~v7;
    if ((*(v2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      while (1)
      {
        v10 = (*(v2 + 48) + 16 * v8);
        v11 = *v10 == *(v0 + 664) && v10[1] == *(v0 + 672);
        if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
        if (((*(v2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v27 = *(v0 + 1424);

      os_unfair_lock_unlock((*(v27 + 56) + 16));
      goto LABEL_17;
    }

LABEL_10:
  }

  v12 = *(v0 + 1536);
  os_unfair_lock_unlock((*(*(v0 + 1424) + 56) + 16));
  if (!*(v12 + 16))
  {
    v13 = *(v0 + 768);
    v14 = *(v0 + 744);
    v15 = *(v0 + 728);
    v16 = *(v0 + 720);
    v17 = *(v0 + 704);
    v18 = *(v0 + 680);
    static Clock<>.continuous.getter();
    *(v0 + 560) = xmmword_100069320;
    *(v0 + 480) = 0;
    *(v0 + 488) = 0;
    *(v0 + 496) = 1;
    v19 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v20 = *(v15 + 8);
    *(v0 + 1656) = v20;
    *(v0 + 1664) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v13, v16);
    v21 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v22 = swift_task_alloc();
    *(v0 + 1672) = v22;
    *v22 = v0;
    v22[1] = sub_10005B044;
    v23 = *(v0 + 744);
    v24 = *(v0 + 704);
    v25 = *(v0 + 680);
    v26 = v0 + 480;
    goto LABEL_13;
  }

LABEL_17:
  v28 = *(v0 + 1536);
  v29 = *(v0 + 776);
  v30 = *(v0 + 768);
  v31 = *(v0 + 728);
  v32 = *(v0 + 720);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v33 = *(v31 + 8);
  *(v0 + 1608) = v33;
  *(v0 + 1616) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v30, v32);
  v34 = *(v28 + 16);
  v35 = *(v0 + 1448);
  v36 = *(v0 + 1440);
  v37 = *(v0 + 1432);
  v38 = *(v0 + 1136);
  v39 = *(v0 + 640);
  if (!v34)
  {
    v36(*(v0 + 1248), v39, v38);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 1456);
    v62 = *(v0 + 1248);
    v63 = *(v0 + 1144);
    v64 = *(v0 + 1136);
    if (v60)
    {
      v65 = swift_slowAlloc();
      v385 = swift_slowAlloc();
      *v65 = 136315394;
      v66 = MLHostTask.name.getter();
      v68 = v67;
      v61(v62, v64);
      v69 = sub_100008A0C(v66, v68, &v385);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = Duration.description.getter();
      v72 = sub_100008A0C(v70, v71, &v385);

      *(v65 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v58, v59, "Task %s asked to terminate because of deferral after %s.", v65, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v61(v62, v64);
    }

    v128 = *(v0 + 1536);
    v129 = *(v0 + 1520);
    v130 = *(v0 + 760);
    static ContinuousClock.now.getter();
    [v129 doStop];
    v131 = *(v128 + 16);
    if (v131)
    {
      goto LABEL_32;
    }

    *(v0 + 1624) = 0u;
    if (static Duration.< infix(_:_:)())
    {
      v131 = *(*(v0 + 1536) + 16);
      if (!v131)
      {
        v374 = *(v0 + 1560);
        v379 = *(v0 + 1568);
        v235 = *(v0 + 1552);
        v236 = *(v0 + 1512);
        v237 = *(v0 + 1504);
        v238 = *(v0 + 1136);
        v239 = *(v0 + 1072);
        v240 = *(v0 + 1016);
        v241 = *(v0 + 960);
        v242 = *(v0 + 640);
        v243 = MLHostTask.name.getter();
        v245 = v244;
        v237(v239, enum case for TaskStatus.taskDeferred(_:), v240);
        sub_100019300(v243, v245, v241);
        if (v374(v241, 1, v238) == 1)
        {
          sub_100009C94(*(v0 + 960), &qword_100085940, &unk_1000693D0);
        }

        else
        {
          v246 = *(v0 + 1552);
          v247 = *(v0 + 1480);
          v248 = *(v0 + 1456);
          v249 = *(v0 + 1224);
          v250 = *(v0 + 1144);
          v251 = *(v0 + 1136);
          v252 = *(v0 + 1120);
          v253 = *(v0 + 1072);
          v254 = *(v0 + 1024);
          v255 = *(v0 + 1016);
          (*(v0 + 1472))(v249, *(v0 + 960), v251);
          (*(v254 + 16))(v252, v253, v255);
          MLHostTask.status.setter();
          sub_10001C4DC(v249);
          v248(v249, v251);
        }

        v256 = *(v0 + 1584);
        v257 = *(v0 + 1576);
        v258 = *(v0 + 1448);
        v259 = *(v0 + 1440);
        v380 = *(v0 + 1432);
        v260 = *(v0 + 1216);
        v261 = *(v0 + 1136);
        v262 = *(v0 + 1072);
        v263 = *(v0 + 1016);
        v264 = *(v0 + 640);

        v257(v262, v263);
        v259(v260, v264, v261);
        v265 = Logger.logObject.getter();
        v266 = static os_log_type_t.error.getter();
        v267 = os_log_type_enabled(v265, v266);
        v268 = *(v0 + 1456);
        v269 = *(v0 + 1216);
        v270 = *(v0 + 1144);
        v271 = *(v0 + 1136);
        if (v267)
        {
          v384 = v266;
          v272 = swift_slowAlloc();
          v273 = swift_slowAlloc();
          v385 = v273;
          *v272 = 136315138;
          v274 = MLHostTask.name.getter();
          v276 = v275;
          v268(v269, v271);
          v277 = sub_100008A0C(v274, v276, &v385);

          *(v272 + 4) = v277;
          _os_log_impl(&_mh_execute_header, v265, v384, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v272, 0xCu);
          sub_100009914(v273);
        }

        else
        {

          v268(v269, v271);
        }

        v278 = *(v0 + 640);
        v279 = [*(v0 + 1464) processIdentifier];
        v385 = 0;
        v386 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        v385 = 0x206B736154;
        v386 = 0xE500000000000000;
        v280._countAndFlagsBits = MLHostTask.name.getter();
        String.append(_:)(v280);

        v281._countAndFlagsBits = 0xD00000000000001FLL;
        v281._object = 0x8000000100073070;
        String.append(_:)(v281);
        sub_1000530BC(v279);

        v358 = *(v0 + 1624);
        v362 = *(v0 + 1632);
        goto LABEL_41;
      }

      v356 = *(v0 + 1624);
      v360 = *(v0 + 1632);
LABEL_32:
      v363 = *(v0 + 1560);
      v369 = *(v0 + 1568);
      v132 = *(v0 + 1552);
      v133 = *(v0 + 1496);
      v134 = *(v0 + 1136);
      v135 = *(v0 + 1080);
      v136 = *(v0 + 1024);
      v137 = *(v0 + 1016);
      v138 = *(v0 + 968);
      v139 = *(v0 + 640);
      v382 = v131;
      v140 = MLHostTask.name.getter();
      v142 = v141;
      v143 = v137;
      v144 = *(v136 + 16);
      v144(v135, v133, v143);
      sub_100019300(v140, v142, v138);
      if (v363(v138, 1, v134) == 1)
      {
        sub_100009C94(*(v0 + 968), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v145 = *(v0 + 1552);
        v146 = *(v0 + 1480);
        v370 = *(v0 + 1456);
        v147 = *(v0 + 1232);
        v148 = *(v0 + 1144);
        v149 = *(v0 + 1136);
        v150 = *(v0 + 1120);
        v151 = *(v0 + 1080);
        v152 = v144;
        v153 = *(v0 + 1016);
        (*(v0 + 1472))(v147, *(v0 + 968), v149);
        v154 = v153;
        v144 = v152;
        v152(v150, v151, v154);
        MLHostTask.status.setter();
        sub_10001C4DC(v147);
        v370(v147, v149);
      }

      v155 = *(v0 + 1584);
      v156 = *(v0 + 1576);
      v157 = *(v0 + 1552);
      v158 = *(v0 + 1080);
      v159 = *(v0 + 1016);
      v160 = *(v0 + 640);

      v156(v158, v159);
      v161 = MLHostTask.name.getter();
      sub_10001C1E4(v161, v162);

      MLHostResult.status.getter();
      v163 = MLHostResultStatus.rawValue.getter();
      if (v163 == MLHostResultStatus.rawValue.getter())
      {
      }

      else
      {
        v371 = *(v0 + 1584);
        v164 = *(v0 + 1576);
        v165 = *(v0 + 1496);
        v166 = *(v0 + 1120);
        v167 = *(v0 + 1016);
        v168 = *(v0 + 640);
        v376 = [*(v0 + 1464) processIdentifier];
        v385 = 0;
        v386 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v169 = v386;
        *(v0 + 592) = v385;
        *(v0 + 600) = v169;
        v170._countAndFlagsBits = 0x206B736154;
        v170._object = 0xE500000000000000;
        String.append(_:)(v170);
        v171._countAndFlagsBits = MLHostTask.name.getter();
        String.append(_:)(v171);

        v172._object = 0x8000000100073090;
        v172._countAndFlagsBits = 0xD00000000000001CLL;
        String.append(_:)(v172);
        v144(v166, v165, v167);
        _print_unlocked<A, B>(_:_:)();
        v164(v166, v167);
        v173._countAndFlagsBits = 46;
        v173._object = 0xE100000000000000;
        String.append(_:)(v173);
        v174 = *(v0 + 592);
        v175 = *(v0 + 600);
        sub_1000530BC(v376);
      }

LABEL_41:
      v176 = *(v0 + 1536);
      v177 = *(v0 + 1448);
      v178 = *(v0 + 1432);
      (*(v0 + 1440))(*(v0 + 1208), *(v0 + 640), *(v0 + 1136));

      v179 = Logger.logObject.getter();
      v180 = static os_log_type_t.info.getter();

      v181 = os_log_type_enabled(v179, v180);
      v377 = *(v0 + 1608);
      v383 = *(v0 + 1616);
      if (v181)
      {
        v341 = *(v0 + 1536);
        v345 = *(v0 + 1528);
        v182 = *(v0 + 1208);
        v183 = *(v0 + 1144);
        v335 = *(v0 + 1136);
        v337 = *(v0 + 1456);
        v364 = *(v0 + 1520);
        v372 = *(v0 + 776);
        v349 = *(v0 + 720);
        v353 = *(v0 + 760);
        v184 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v385 = swift_slowAlloc();
        *v184 = 136315650;
        v186 = MLHostTask.name.getter();
        v188 = v187;
        v337(v182, v335);
        v189 = sub_100008A0C(v186, v188, &v385);

        *(v184 + 4) = v189;
        *(v184 + 12) = 2080;
        v190 = Duration.description.getter();
        v192 = sub_100008A0C(v190, v191, &v385);

        *(v184 + 14) = v192;
        *(v184 + 22) = 2112;
        v193 = *(v341 + 16);
        *(v184 + 24) = v193;
        *v185 = v193;
        v194 = v193;
        _os_log_impl(&_mh_execute_header, v179, v180, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v184, 0x20u);
        sub_100009C94(v185, &qword_100085970, &qword_100068F48);

        swift_arrayDestroy();

        swift_unknownObjectRelease();
        v195 = v377;
        v377(v353, v349);
        v196 = v372;
        v197 = v349;
      }

      else
      {
        v198 = *(v0 + 1520);
        v199 = *(v0 + 1456);
        v200 = *(v0 + 1208);
        v201 = *(v0 + 1144);
        v202 = *(v0 + 1136);
        v203 = *(v0 + 776);
        v204 = *(v0 + 760);
        v205 = *(v0 + 720);

        swift_unknownObjectRelease();
        v199(v200, v202);
        v195 = v377;
        v377(v204, v205);
        v196 = v203;
        v197 = v205;
      }

      v195(v196, v197);
      v206 = *(v0 + 1544);
      v207 = *(v0 + 1488);
      v208 = *(v0 + 1464);
      v209 = *(v0 + 1416);
      v210 = *(v0 + 912);
      v211 = *(v0 + 904);
      v212 = *(v0 + 896);
      v381 = *(*(v0 + 1536) + 16);
      v213 = v381;

      [v208 invalidate];

      AppExtensionProcess.invalidate()();
      swift_unknownObjectRelease();
      (*(v211 + 8))(v210, v212);
      goto LABEL_45;
    }

    v225 = *(v0 + 1616);
    v226 = *(v0 + 1608);
    v227 = *(v0 + 768);
    v228 = *(v0 + 752);
    v229 = *(v0 + 720);
    v230 = *(v0 + 712);
    v231 = *(v0 + 680);
    static Clock<>.continuous.getter();
    *(v0 + 576) = xmmword_100069320;
    *(v0 + 504) = 0;
    *(v0 + 512) = 0;
    *(v0 + 520) = 1;
    v19 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v226(v227, v229);
    v232 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v233 = swift_task_alloc();
    *(v0 + 1640) = v233;
    *v233 = v0;
    v233[1] = sub_100059124;
    v23 = *(v0 + 752);
    v234 = *(v0 + 712);
    v25 = *(v0 + 680);
    v26 = v0 + 504;
LABEL_13:

    return dispatch thunk of Clock.sleep(until:tolerance:)(v23, v26, v25, v19);
  }

  v36(*(v0 + 1256), v39, v38);
  v40 = v34;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();

  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 1456);
  v45 = *(v0 + 1256);
  v46 = *(v0 + 1144);
  v47 = *(v0 + 1136);
  v381 = v34;
  v359 = v33;
  if (v43)
  {
    v48 = swift_slowAlloc();
    v347 = swift_slowAlloc();
    v385 = swift_slowAlloc();
    *v48 = 136315650;
    v343 = v41;
    v49 = MLHostTask.name.getter();
    v339 = v42;
    v50 = v40;
    v52 = v51;
    v44(v45, v47);
    v53 = sub_100008A0C(v49, v52, &v385);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    v54 = Duration.description.getter();
    v56 = sub_100008A0C(v54, v55, &v385);

    *(v48 + 14) = v56;
    *(v48 + 22) = 2112;
    *(v48 + 24) = v50;
    *v347 = v34;
    v57 = v50;
    _os_log_impl(&_mh_execute_header, v343, v339, "Task %s completed after %s. TaskResult: %@", v48, 0x20u);
    sub_100009C94(v347, &qword_100085970, &qword_100068F48);

    swift_arrayDestroy();
  }

  else
  {

    v44(v45, v47);
  }

  v366 = *(v0 + 1568);
  v351 = *(v0 + 1560);
  v73 = *(v0 + 1552);
  v74 = *(v0 + 1496);
  v75 = *(v0 + 1136);
  v76 = *(v0 + 1088);
  v77 = *(v0 + 1024);
  v78 = *(v0 + 1016);
  v79 = *(v0 + 976);
  v80 = *(v0 + 640);
  v81 = MLHostTask.name.getter();
  v83 = v82;
  v84 = v78;
  v85 = *(v77 + 16);
  v85(v76, v74, v84);
  sub_100019300(v81, v83, v79);
  if (v351(v79, 1, v75) == 1)
  {
    sub_100009C94(*(v0 + 976), &qword_100085940, &unk_1000693D0);
  }

  else
  {
    v86 = *(v0 + 1552);
    v87 = *(v0 + 1480);
    v367 = *(v0 + 1456);
    v88 = *(v0 + 1240);
    v89 = *(v0 + 1144);
    v90 = *(v0 + 1136);
    v91 = *(v0 + 1120);
    v92 = *(v0 + 1088);
    v93 = v85;
    v94 = *(v0 + 1016);
    (*(v0 + 1472))(v88, *(v0 + 976), v90);
    v95 = v94;
    v85 = v93;
    v93(v91, v92, v95);
    MLHostTask.status.setter();
    sub_10001C4DC(v88);
    v367(v88, v90);
  }

  v96 = *(v0 + 1584);
  v97 = *(v0 + 1576);
  v98 = *(v0 + 1552);
  v99 = *(v0 + 1088);
  v100 = *(v0 + 1016);
  v101 = *(v0 + 640);

  v97(v99, v100);
  v102 = MLHostTask.name.getter();
  sub_10001C1E4(v102, v103);

  MLHostResult.status.getter();
  v104 = MLHostResultStatus.rawValue.getter();
  if (v104 == MLHostResultStatus.rawValue.getter())
  {
    v105 = *(v0 + 1544);
    v106 = *(v0 + 1536);
    v107 = *(v0 + 1528);
    v108 = *(v0 + 1520);
    v359(*(v0 + 776), *(v0 + 720));

    swift_unknownObjectRelease();
  }

  else
  {
    v344 = *(v0 + 1576);
    v348 = *(v0 + 1584);
    v109 = *(v0 + 1544);
    v110 = *(v0 + 1536);
    v111 = *(v0 + 1496);
    v112 = *(v0 + 1120);
    v113 = *(v0 + 1016);
    v368 = *(v0 + 776);
    v375 = *(v0 + 1520);
    v352 = *(v0 + 1528);
    v355 = *(v0 + 720);
    v114 = *(v0 + 640);
    v340 = [*(v0 + 1464) processIdentifier];
    v385 = 0;
    v386 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v115 = v386;
    *(v0 + 608) = v385;
    *(v0 + 616) = v115;
    v116._countAndFlagsBits = 0x206B736154;
    v116._object = 0xE500000000000000;
    String.append(_:)(v116);
    v117._countAndFlagsBits = MLHostTask.name.getter();
    String.append(_:)(v117);

    v118._object = 0x8000000100073090;
    v118._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v118);
    v85(v112, v111, v113);
    _print_unlocked<A, B>(_:_:)();
    v344(v112, v113);
    v119._countAndFlagsBits = 46;
    v119._object = 0xE100000000000000;
    String.append(_:)(v119);
    v120 = *(v0 + 608);
    v121 = *(v0 + 616);
    sub_1000530BC(v340);

    swift_unknownObjectRelease();
    v359(v368, v355);
  }

  v122 = *(v0 + 1488);
  v123 = *(v0 + 1464);
  v124 = *(v0 + 1416);
  v125 = *(v0 + 912);
  v126 = *(v0 + 904);
  v127 = *(v0 + 896);

  [v123 invalidate];

  AppExtensionProcess.invalidate()();
  swift_unknownObjectRelease();
  (*(v126 + 8))(v125, v127);
LABEL_45:
  v214 = *(v0 + 1408);
  v215 = *(v0 + 1400);
  v216 = *(v0 + 1392);
  v217 = *(v0 + 1384);
  v218 = *(v0 + 1376);
  v219 = *(v0 + 1368);
  v220 = *(v0 + 1360);
  v221 = *(v0 + 1352);
  v222 = *(v0 + 1344);
  v223 = *(v0 + 1336);
  v283 = *(v0 + 1328);
  v284 = *(v0 + 1320);
  v285 = *(v0 + 1312);
  v286 = *(v0 + 1304);
  v287 = *(v0 + 1296);
  v288 = *(v0 + 1288);
  v289 = *(v0 + 1280);
  v290 = *(v0 + 1272);
  v291 = *(v0 + 1264);
  v292 = *(v0 + 1256);
  v293 = *(v0 + 1248);
  v294 = *(v0 + 1240);
  v295 = *(v0 + 1232);
  v296 = *(v0 + 1224);
  v297 = *(v0 + 1216);
  v298 = *(v0 + 1208);
  v299 = *(v0 + 1200);
  v300 = *(v0 + 1192);
  v301 = *(v0 + 1184);
  v302 = *(v0 + 1176);
  v303 = *(v0 + 1168);
  v304 = *(v0 + 1160);
  v305 = *(v0 + 1128);
  v306 = *(v0 + 1120);
  v307 = *(v0 + 1112);
  v308 = *(v0 + 1104);
  v309 = *(v0 + 1096);
  v310 = *(v0 + 1088);
  v311 = *(v0 + 1080);
  v312 = *(v0 + 1072);
  v313 = *(v0 + 1064);
  v314 = *(v0 + 1056);
  v315 = *(v0 + 1048);
  v316 = *(v0 + 1040);
  v317 = *(v0 + 1032);
  v318 = *(v0 + 1008);
  v319 = *(v0 + 1000);
  v320 = *(v0 + 992);
  v321 = *(v0 + 984);
  v322 = *(v0 + 976);
  v323 = *(v0 + 968);
  v324 = *(v0 + 960);
  v325 = *(v0 + 952);
  v326 = *(v0 + 944);
  v327 = *(v0 + 936);
  v328 = *(v0 + 928);
  v329 = *(v0 + 920);
  v330 = *(v0 + 912);
  v331 = *(v0 + 888);
  v332 = *(v0 + 880);
  v333 = *(v0 + 856);
  v334 = *(v0 + 848);
  v336 = *(v0 + 824);
  v338 = *(v0 + 800);
  v342 = *(v0 + 776);
  v346 = *(v0 + 768);
  v350 = *(v0 + 760);
  v354 = *(v0 + 752);
  v357 = *(v0 + 744);
  v361 = *(v0 + 736);
  v365 = *(v0 + 712);
  v373 = *(v0 + 704);
  v378 = *(v0 + 696);

  v224 = *(v0 + 8);

  return v224(v381);
}

uint64_t sub_10005CAB0()
{
  v369 = v0;
  v1 = *(v0 + 1432);
  (*(*(v0 + 688) + 8))(*(v0 + 704), *(v0 + 680));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1680);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Task.sleep interrupted, skipping waiting for extension completion.", v6, 2u);
  }

  v7 = *(v0 + 1536);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 728);
  v11 = *(v0 + 720);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v12 = *(v10 + 8);
  *(v0 + 1608) = v12;
  *(v0 + 1616) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v11);
  v13 = *(v7 + 16);
  v14 = *(v0 + 1448);
  v15 = *(v0 + 1440);
  v16 = *(v0 + 1432);
  v17 = *(v0 + 1136);
  v18 = *(v0 + 640);
  if (v13)
  {
    v15(*(v0 + 1256), v18, v17);
    v19 = v13;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 1456);
    v24 = *(v0 + 1256);
    v25 = *(v0 + 1144);
    v26 = *(v0 + 1136);
    v363 = v13;
    v341 = v12;
    if (v22)
    {
      v27 = swift_slowAlloc();
      v329 = swift_slowAlloc();
      v367 = swift_slowAlloc();
      *v27 = 136315650;
      v325 = v20;
      v28 = MLHostTask.name.getter();
      v321 = v21;
      v29 = v19;
      v31 = v30;
      v23(v24, v26);
      v32 = sub_100008A0C(v28, v31, &v367);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v33 = Duration.description.getter();
      v35 = sub_100008A0C(v33, v34, &v367);

      *(v27 + 14) = v35;
      *(v27 + 22) = 2112;
      *(v27 + 24) = v29;
      *v329 = v13;
      v36 = v29;
      _os_log_impl(&_mh_execute_header, v325, v321, "Task %s completed after %s. TaskResult: %@", v27, 0x20u);
      sub_100009C94(v329, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();
    }

    else
    {

      v23(v24, v26);
    }

    v348 = *(v0 + 1568);
    v333 = *(v0 + 1560);
    v52 = *(v0 + 1552);
    v53 = *(v0 + 1496);
    v54 = *(v0 + 1136);
    v55 = *(v0 + 1088);
    v56 = *(v0 + 1024);
    v57 = *(v0 + 1016);
    v58 = *(v0 + 976);
    v59 = *(v0 + 640);
    v60 = MLHostTask.name.getter();
    v62 = v61;
    v63 = v57;
    v64 = *(v56 + 16);
    v64(v55, v53, v63);
    sub_100019300(v60, v62, v58);
    if (v333(v58, 1, v54) == 1)
    {
      sub_100009C94(*(v0 + 976), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v65 = *(v0 + 1552);
      v66 = *(v0 + 1480);
      v349 = *(v0 + 1456);
      v67 = *(v0 + 1240);
      v68 = *(v0 + 1144);
      v69 = *(v0 + 1136);
      v70 = *(v0 + 1120);
      v71 = *(v0 + 1088);
      v72 = v64;
      v73 = *(v0 + 1016);
      (*(v0 + 1472))(v67, *(v0 + 976), v69);
      v74 = v73;
      v64 = v72;
      v72(v70, v71, v74);
      MLHostTask.status.setter();
      sub_10001C4DC(v67);
      v349(v67, v69);
    }

    v75 = *(v0 + 1584);
    v76 = *(v0 + 1576);
    v77 = *(v0 + 1552);
    v78 = *(v0 + 1088);
    v79 = *(v0 + 1016);
    v80 = *(v0 + 640);

    v76(v78, v79);
    v81 = MLHostTask.name.getter();
    sub_10001C1E4(v81, v82);

    MLHostResult.status.getter();
    v83 = MLHostResultStatus.rawValue.getter();
    if (v83 == MLHostResultStatus.rawValue.getter())
    {
      v84 = *(v0 + 1544);
      v85 = *(v0 + 1536);
      v86 = *(v0 + 1528);
      v87 = *(v0 + 1520);
      v341(*(v0 + 776), *(v0 + 720));

      swift_unknownObjectRelease();
    }

    else
    {
      v326 = *(v0 + 1576);
      v330 = *(v0 + 1584);
      v88 = *(v0 + 1544);
      v89 = *(v0 + 1536);
      v90 = *(v0 + 1496);
      v91 = *(v0 + 1120);
      v92 = *(v0 + 1016);
      v350 = *(v0 + 776);
      v357 = *(v0 + 1520);
      v334 = *(v0 + 1528);
      v337 = *(v0 + 720);
      v93 = *(v0 + 640);
      v322 = [*(v0 + 1464) processIdentifier];
      v367 = 0;
      v368 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v94 = v368;
      *(v0 + 608) = v367;
      *(v0 + 616) = v94;
      v95._countAndFlagsBits = 0x206B736154;
      v95._object = 0xE500000000000000;
      String.append(_:)(v95);
      v96._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v96);

      v97._object = 0x8000000100073090;
      v97._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v97);
      v64(v91, v90, v92);
      _print_unlocked<A, B>(_:_:)();
      v326(v91, v92);
      v98._countAndFlagsBits = 46;
      v98._object = 0xE100000000000000;
      String.append(_:)(v98);
      v99 = *(v0 + 608);
      v100 = *(v0 + 616);
      sub_1000530BC(v322);

      swift_unknownObjectRelease();
      v341(v350, v337);
    }

    v101 = *(v0 + 1488);
    v102 = *(v0 + 1464);
    v103 = *(v0 + 1416);
    v104 = *(v0 + 912);
    v105 = *(v0 + 904);
    v106 = *(v0 + 896);

    [v102 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v105 + 8))(v104, v106);
LABEL_31:
    v193 = *(v0 + 1408);
    v194 = *(v0 + 1400);
    v195 = *(v0 + 1392);
    v196 = *(v0 + 1384);
    v197 = *(v0 + 1376);
    v198 = *(v0 + 1368);
    v199 = *(v0 + 1360);
    v200 = *(v0 + 1352);
    v201 = *(v0 + 1344);
    v202 = *(v0 + 1336);
    v265 = *(v0 + 1328);
    v266 = *(v0 + 1320);
    v267 = *(v0 + 1312);
    v268 = *(v0 + 1304);
    v269 = *(v0 + 1296);
    v270 = *(v0 + 1288);
    v271 = *(v0 + 1280);
    v272 = *(v0 + 1272);
    v273 = *(v0 + 1264);
    v274 = *(v0 + 1256);
    v275 = *(v0 + 1248);
    v276 = *(v0 + 1240);
    v277 = *(v0 + 1232);
    v278 = *(v0 + 1224);
    v279 = *(v0 + 1216);
    v280 = *(v0 + 1208);
    v281 = *(v0 + 1200);
    v282 = *(v0 + 1192);
    v283 = *(v0 + 1184);
    v284 = *(v0 + 1176);
    v285 = *(v0 + 1168);
    v286 = *(v0 + 1160);
    v287 = *(v0 + 1128);
    v288 = *(v0 + 1120);
    v289 = *(v0 + 1112);
    v290 = *(v0 + 1104);
    v291 = *(v0 + 1096);
    v292 = *(v0 + 1088);
    v293 = *(v0 + 1080);
    v294 = *(v0 + 1072);
    v295 = *(v0 + 1064);
    v296 = *(v0 + 1056);
    v297 = *(v0 + 1048);
    v298 = *(v0 + 1040);
    v299 = *(v0 + 1032);
    v300 = *(v0 + 1008);
    v301 = *(v0 + 1000);
    v302 = *(v0 + 992);
    v303 = *(v0 + 984);
    v304 = *(v0 + 976);
    v305 = *(v0 + 968);
    v306 = *(v0 + 960);
    v307 = *(v0 + 952);
    v308 = *(v0 + 944);
    v309 = *(v0 + 936);
    v310 = *(v0 + 928);
    v311 = *(v0 + 920);
    v312 = *(v0 + 912);
    v313 = *(v0 + 888);
    v314 = *(v0 + 880);
    v315 = *(v0 + 856);
    v316 = *(v0 + 848);
    v318 = *(v0 + 824);
    v320 = *(v0 + 800);
    v324 = *(v0 + 776);
    v328 = *(v0 + 768);
    v332 = *(v0 + 760);
    v336 = *(v0 + 752);
    v339 = *(v0 + 744);
    v343 = *(v0 + 736);
    v347 = *(v0 + 712);
    v355 = *(v0 + 704);
    v360 = *(v0 + 696);

    v203 = *(v0 + 8);

    return v203(v363);
  }

  v15(*(v0 + 1248), v18, v17);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 1456);
  v41 = *(v0 + 1248);
  v42 = *(v0 + 1144);
  v43 = *(v0 + 1136);
  if (v39)
  {
    v44 = swift_slowAlloc();
    v367 = swift_slowAlloc();
    *v44 = 136315394;
    v45 = MLHostTask.name.getter();
    v47 = v46;
    v40(v41, v43);
    v48 = sub_100008A0C(v45, v47, &v367);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = Duration.description.getter();
    v51 = sub_100008A0C(v49, v50, &v367);

    *(v44 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v37, v38, "Task %s asked to terminate because of deferral after %s.", v44, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v40(v41, v43);
  }

  v107 = *(v0 + 1536);
  v108 = *(v0 + 1520);
  v109 = *(v0 + 760);
  static ContinuousClock.now.getter();
  [v108 doStop];
  v110 = *(v107 + 16);
  if (v110)
  {
    goto LABEL_18;
  }

  *(v0 + 1624) = 0u;
  if (static Duration.< infix(_:_:)())
  {
    v110 = *(*(v0 + 1536) + 16);
    if (!v110)
    {
      v356 = *(v0 + 1560);
      v361 = *(v0 + 1568);
      v218 = *(v0 + 1552);
      v219 = *(v0 + 1512);
      v220 = *(v0 + 1504);
      v221 = *(v0 + 1136);
      v222 = *(v0 + 1072);
      v223 = *(v0 + 1016);
      v224 = *(v0 + 960);
      v225 = *(v0 + 640);
      v226 = MLHostTask.name.getter();
      v228 = v227;
      v220(v222, enum case for TaskStatus.taskDeferred(_:), v223);
      sub_100019300(v226, v228, v224);
      if (v356(v224, 1, v221) == 1)
      {
        sub_100009C94(*(v0 + 960), &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v229 = *(v0 + 1552);
        v230 = *(v0 + 1480);
        v231 = *(v0 + 1456);
        v232 = *(v0 + 1224);
        v233 = *(v0 + 1144);
        v234 = *(v0 + 1136);
        v235 = *(v0 + 1120);
        v236 = *(v0 + 1072);
        v237 = *(v0 + 1024);
        v238 = *(v0 + 1016);
        (*(v0 + 1472))(v232, *(v0 + 960), v234);
        (*(v237 + 16))(v235, v236, v238);
        MLHostTask.status.setter();
        sub_10001C4DC(v232);
        v231(v232, v234);
      }

      v239 = *(v0 + 1584);
      v240 = *(v0 + 1576);
      v241 = *(v0 + 1448);
      v242 = *(v0 + 1440);
      v362 = *(v0 + 1432);
      v243 = *(v0 + 1216);
      v244 = *(v0 + 1136);
      v245 = *(v0 + 1072);
      v246 = *(v0 + 1016);
      v247 = *(v0 + 640);

      v240(v245, v246);
      v242(v243, v247, v244);
      v248 = Logger.logObject.getter();
      v249 = static os_log_type_t.error.getter();
      v250 = os_log_type_enabled(v248, v249);
      v251 = *(v0 + 1456);
      v252 = *(v0 + 1216);
      v253 = *(v0 + 1144);
      v254 = *(v0 + 1136);
      if (v250)
      {
        v366 = v249;
        v255 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v367 = v256;
        *v255 = 136315138;
        v257 = MLHostTask.name.getter();
        v259 = v258;
        v251(v252, v254);
        v260 = sub_100008A0C(v257, v259, &v367);

        *(v255 + 4) = v260;
        _os_log_impl(&_mh_execute_header, v248, v366, "Task %s has not responded to deferral. Marking task as deferred and terminating process.", v255, 0xCu);
        sub_100009914(v256);
      }

      else
      {

        v251(v252, v254);
      }

      v261 = *(v0 + 640);
      v262 = [*(v0 + 1464) processIdentifier];
      v367 = 0;
      v368 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v367 = 0x206B736154;
      v368 = 0xE500000000000000;
      v263._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v263);

      v264._countAndFlagsBits = 0xD00000000000001FLL;
      v264._object = 0x8000000100073070;
      String.append(_:)(v264);
      sub_1000530BC(v262);

      v340 = *(v0 + 1624);
      v344 = *(v0 + 1632);
      goto LABEL_27;
    }

    v338 = *(v0 + 1624);
    v342 = *(v0 + 1632);
LABEL_18:
    v345 = *(v0 + 1560);
    v351 = *(v0 + 1568);
    v111 = *(v0 + 1552);
    v112 = *(v0 + 1496);
    v113 = *(v0 + 1136);
    v114 = *(v0 + 1080);
    v115 = *(v0 + 1024);
    v116 = *(v0 + 1016);
    v117 = *(v0 + 968);
    v118 = *(v0 + 640);
    v364 = v110;
    v119 = MLHostTask.name.getter();
    v121 = v120;
    v122 = v116;
    v123 = *(v115 + 16);
    v123(v114, v112, v122);
    sub_100019300(v119, v121, v117);
    if (v345(v117, 1, v113) == 1)
    {
      sub_100009C94(*(v0 + 968), &qword_100085940, &unk_1000693D0);
    }

    else
    {
      v124 = *(v0 + 1552);
      v125 = *(v0 + 1480);
      v352 = *(v0 + 1456);
      v126 = *(v0 + 1232);
      v127 = *(v0 + 1144);
      v128 = *(v0 + 1136);
      v129 = *(v0 + 1120);
      v130 = *(v0 + 1080);
      v131 = v123;
      v132 = *(v0 + 1016);
      (*(v0 + 1472))(v126, *(v0 + 968), v128);
      v133 = v132;
      v123 = v131;
      v131(v129, v130, v133);
      MLHostTask.status.setter();
      sub_10001C4DC(v126);
      v352(v126, v128);
    }

    v134 = *(v0 + 1584);
    v135 = *(v0 + 1576);
    v136 = *(v0 + 1552);
    v137 = *(v0 + 1080);
    v138 = *(v0 + 1016);
    v139 = *(v0 + 640);

    v135(v137, v138);
    v140 = MLHostTask.name.getter();
    sub_10001C1E4(v140, v141);

    MLHostResult.status.getter();
    v142 = MLHostResultStatus.rawValue.getter();
    if (v142 == MLHostResultStatus.rawValue.getter())
    {
    }

    else
    {
      v353 = *(v0 + 1584);
      v143 = *(v0 + 1576);
      v144 = *(v0 + 1496);
      v145 = *(v0 + 1120);
      v146 = *(v0 + 1016);
      v147 = *(v0 + 640);
      v358 = [*(v0 + 1464) processIdentifier];
      v367 = 0;
      v368 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      v148 = v368;
      *(v0 + 592) = v367;
      *(v0 + 600) = v148;
      v149._countAndFlagsBits = 0x206B736154;
      v149._object = 0xE500000000000000;
      String.append(_:)(v149);
      v150._countAndFlagsBits = MLHostTask.name.getter();
      String.append(_:)(v150);

      v151._object = 0x8000000100073090;
      v151._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v151);
      v123(v145, v144, v146);
      _print_unlocked<A, B>(_:_:)();
      v143(v145, v146);
      v152._countAndFlagsBits = 46;
      v152._object = 0xE100000000000000;
      String.append(_:)(v152);
      v153 = *(v0 + 592);
      v154 = *(v0 + 600);
      sub_1000530BC(v358);
    }

LABEL_27:
    v155 = *(v0 + 1536);
    v156 = *(v0 + 1448);
    v157 = *(v0 + 1432);
    (*(v0 + 1440))(*(v0 + 1208), *(v0 + 640), *(v0 + 1136));

    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.info.getter();

    v160 = os_log_type_enabled(v158, v159);
    v359 = *(v0 + 1608);
    v365 = *(v0 + 1616);
    if (v160)
    {
      v323 = *(v0 + 1536);
      v327 = *(v0 + 1528);
      v161 = *(v0 + 1208);
      v162 = *(v0 + 1144);
      v317 = *(v0 + 1136);
      v319 = *(v0 + 1456);
      v346 = *(v0 + 1520);
      v354 = *(v0 + 776);
      v331 = *(v0 + 720);
      v335 = *(v0 + 760);
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v367 = swift_slowAlloc();
      *v163 = 136315650;
      v165 = MLHostTask.name.getter();
      v167 = v166;
      v319(v161, v317);
      v168 = sub_100008A0C(v165, v167, &v367);

      *(v163 + 4) = v168;
      *(v163 + 12) = 2080;
      v169 = Duration.description.getter();
      v171 = sub_100008A0C(v169, v170, &v367);

      *(v163 + 14) = v171;
      *(v163 + 22) = 2112;
      v172 = *(v323 + 16);
      *(v163 + 24) = v172;
      *v164 = v172;
      v173 = v172;
      _os_log_impl(&_mh_execute_header, v158, v159, "Task %s deferred after awaiting %s for its cooperative termination. TaskResult: %@", v163, 0x20u);
      sub_100009C94(v164, &qword_100085970, &qword_100068F48);

      swift_arrayDestroy();

      swift_unknownObjectRelease();
      v174 = v359;
      v359(v335, v331);
      v175 = v354;
      v176 = v331;
    }

    else
    {
      v177 = *(v0 + 1520);
      v178 = *(v0 + 1456);
      v179 = *(v0 + 1208);
      v180 = *(v0 + 1144);
      v181 = *(v0 + 1136);
      v182 = *(v0 + 776);
      v183 = *(v0 + 760);
      v184 = *(v0 + 720);

      swift_unknownObjectRelease();
      v178(v179, v181);
      v174 = v359;
      v359(v183, v184);
      v175 = v182;
      v176 = v184;
    }

    v174(v175, v176);
    v185 = *(v0 + 1544);
    v186 = *(v0 + 1488);
    v187 = *(v0 + 1464);
    v188 = *(v0 + 1416);
    v189 = *(v0 + 912);
    v190 = *(v0 + 904);
    v191 = *(v0 + 896);
    v363 = *(*(v0 + 1536) + 16);
    v192 = v363;

    [v187 invalidate];

    AppExtensionProcess.invalidate()();
    swift_unknownObjectRelease();
    (*(v190 + 8))(v189, v191);
    goto LABEL_31;
  }

  v205 = *(v0 + 1616);
  v206 = *(v0 + 1608);
  v207 = *(v0 + 768);
  v208 = *(v0 + 752);
  v209 = *(v0 + 720);
  v210 = *(v0 + 712);
  v211 = *(v0 + 680);
  static Clock<>.continuous.getter();
  *(v0 + 576) = xmmword_100069320;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  *(v0 + 520) = 1;
  v212 = sub_100051EE4(&qword_100085C90, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100051EE4(&qword_100085C98, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v206(v207, v209);
  v213 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v214 = swift_task_alloc();
  *(v0 + 1640) = v214;
  *v214 = v0;
  v214[1] = sub_100059124;
  v215 = *(v0 + 752);
  v216 = *(v0 + 712);
  v217 = *(v0 + 680);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v215, v0 + 504, v217, v212);
}