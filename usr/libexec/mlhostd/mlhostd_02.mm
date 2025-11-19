uint64_t sub_100029F60(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10002A00C()
{
  v0 = type metadata accessor for Logger();
  sub_10004A5B4(v0, qword_100087610);
  sub_1000098DC(v0, qword_100087610);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002A084()
{
  v0 = sub_100052918(&off_100082678);
  sub_1000089AC(&qword_100085FD0, &qword_100069680);
  result = swift_arrayDestroy();
  off_100085A50 = v0;
  return result;
}

BOOL sub_10002A130(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10002A160@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10002A18C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10002A278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100052C8C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10002A2B8()
{
  v0 = type metadata accessor for MLHostDaemon();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10002A2F8();
  qword_100087628 = result;
  return result;
}

uint64_t sub_10002A2F8()
{
  v1 = v0;
  v114 = *v0;
  v2 = sub_1000089AC(&qword_1000854B0, &qword_100068F50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v110 = v101 - v4;
  v116 = type metadata accessor for MLHostEnvironment();
  v108 = *(v116 - 8);
  v5 = *(v108 + 64);
  v6 = __chkstk_darwin(v116);
  v107 = v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v106 = v101 - v8;
  v117 = type metadata accessor for MLHostConfig();
  v105 = *(v117 - 8);
  v9 = *(v105 + 64);
  v10 = __chkstk_darwin(v117);
  v103 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = v101 - v12;
  v115 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v115 - 1);
  v14 = *(v13 + 64);
  __chkstk_darwin(v115);
  v109 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v113 = type metadata accessor for URL();
  v112 = *(v113 - 8);
  v20 = *(v112 + 64);
  __chkstk_darwin(v113);
  v22 = v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[16] = os_variant_has_internal_diagnostics();
  v23 = [objc_opt_self() defaultManager];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 containerURLForSecurityApplicationGroupIdentifier:v24];

  if (!v25)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v111 = v22;
  *(v1 + 24) = URL.path(percentEncoded:)(0);
  v104 = sub_100009A48(0, &qword_1000854B8, OS_dispatch_queue_ptr);
  v26 = v1;
  v102 = "tainer: group.com.apple.mlhost";
  static DispatchQoS.unspecified.getter();
  v121[0] = _swiftEmptyArrayStorage;
  v101[3] = sub_100051EE4(&qword_1000854C0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v101[2] = sub_1000089AC(&qword_1000854C8, &qword_100068F58);
  v101[1] = sub_1000656B8(&unk_1000854D0, &qword_1000854C8, &qword_100068F58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v28 = *(v13 + 104);
  v29 = v109;
  v28(v109, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v115);
  *(v1 + 5) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v102 = "d.xpc.listener-queue";
  static DispatchQoS.background.getter();
  v121[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28(v29, v27, v115);
  *(v1 + 6) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v30 = v118;
  sub_10002B530(v1[16], v118);
  v31 = OBJC_IVAR____TtC7mlhostd12MLHostDaemon_config;
  v32 = v105;
  v33 = v30;
  v34 = v117;
  (*(v105 + 32))(&v26[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_config], v33, v117);
  v35 = *(v32 + 16);
  v109 = v26;
  v104 = v31;
  v36 = &v26[v31];
  v37 = v103;
  v114 = v35;
  v35(v103, v36, v34);
  v38 = v106;
  MLHostConfig.apsEnvironment.getter();
  v115 = *(v32 + 8);
  v115(v37, v34);
  v39 = v108;
  v40 = v107;
  v41 = v116;
  (*(v108 + 104))(v107, enum case for MLHostEnvironment.development(_:), v116);
  sub_100051EE4(&qword_100086028, &type metadata accessor for MLHostEnvironment);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v121[0] == v119 && v121[1] == v120)
  {
    v42 = *(v39 + 8);
    v42(v40, v41);
    v42(v38, v41);
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v44 = *(v39 + 8);
    v44(v40, v41);
    v44(v38, v41);

    if ((v43 & 1) == 0)
    {
      sub_1000089AC(&qword_100086030, &qword_1000696E0);
      inited = swift_initStackObject();
      *(inited + 32) = 0xD000000000000016;
      v46 = inited + 32;
      *(inited + 16) = xmmword_1000691A0;
      *(inited + 40) = 0x8000000100072EC0;
      sub_1000089AC(&qword_100086038, &qword_1000696E8);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_100069300;
      *(v49 + 32) = 0;
      v50 = &off_100081EA8;
      v48 = v109;
      v51 = v109[16];
      if (v109[16])
      {
        v50 = &off_100081DE8;
      }

      *(v49 + 40) = v50;
      *(v49 + 48) = 1;
      v52 = &off_10007E588;
      if (v51)
      {
        v52 = &off_10007DFC8;
      }

      *(v49 + 56) = v52;
      v53 = sub_10005249C(v49, &qword_1000860E0, &qword_100069790);
      swift_setDeallocating();
      sub_1000089AC(&qword_100086040, &qword_1000696F0);
      swift_arrayDestroy();
      *(inited + 48) = v53;
      goto LABEL_12;
    }
  }

  sub_1000089AC(&qword_100086030, &qword_1000696E0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000016;
  v46 = inited + 32;
  *(inited + 16) = xmmword_1000691A0;
  *(inited + 40) = 0x8000000100072EC0;
  v47 = sub_10005249C(&off_1000825F8, &qword_1000860E0, &qword_100069790);
  sub_1000089AC(&qword_100086040, &qword_1000696F0);
  swift_arrayDestroy();
  *(inited + 48) = v47;
  v48 = v109;
LABEL_12:
  v54 = sub_10005281C(inited, &qword_1000860D8, &qword_100069788);
  swift_setDeallocating();
  sub_100009C94(v46, &unk_100086048, &unk_1000696F8);
  type metadata accessor for ExtensionKitRegistry();
  swift_allocObject();
  *&v48[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry] = sub_10000E8DC(&off_100082508);
  v55 = *(v48 + 3);
  v56 = *(v48 + 4);
  type metadata accessor for TaskRegistry();
  swift_allocObject();

  *&v48[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry] = sub_10001589C(v55, v56, &off_100082548);
  v57 = v118;
  v58 = v117;
  v114(v118, &v48[v104], v117);
  v59 = v110;
  MLHostConfig.apsEnvironment.getter();
  v115(v57, v58);
  (*(v39 + 56))(v59, 0, 1, v116);
  type metadata accessor for NotificationRegistry();
  swift_allocObject();
  *&v48[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_notificationRegistry] = sub_100003778(v54, v59, 0);
  type metadata accessor for PubSubRegistry();
  v60 = swift_allocObject();
  v60[3] = sub_10005281C(_swiftEmptyArrayStorage, &qword_100086090, &qword_100069740);
  v60[4] = sub_10005281C(_swiftEmptyArrayStorage, &qword_100086090, &qword_100069740);
  v60[5] = sub_10004F7FC(_swiftEmptyArrayStorage);
  v60[6] = sub_10004F7FC(_swiftEmptyArrayStorage);
  sub_1000089AC(&qword_100085A40, &unk_100068F60);
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  v60[2] = v61;
  *&v48[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry] = v60;
  type metadata accessor for TriggerRegistry();
  v62 = swift_allocObject();
  v62[3] = sub_10005281C(_swiftEmptyArrayStorage, &qword_1000857E8, &qword_100069178);
  v62[4] = sub_10004FA1C(_swiftEmptyArrayStorage);
  v62[5] = sub_10004FC04(_swiftEmptyArrayStorage);
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  v62[2] = v63;
  *&v48[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry] = v62;
  type metadata accessor for KVDatastore();
  *&v48[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore] = KVDatastore.__allocating_init(maxCount:maxSize:)();
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  v65 = sub_1000098DC(v64, qword_100087610);

  v116 = v65;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = v57;
    v70 = swift_slowAlloc();
    v121[0] = v70;
    *v68 = 136315138;
    v114(v69, &v48[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_config], v58);
    sub_100051EE4(&unk_100085E40, &type metadata accessor for MLHostConfig);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v115(v69, v58);
    v74 = sub_100008A0C(v71, v73, v121);

    *(v68 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v66, v67, "MLHostDaemon config: %s", v68, 0xCu);
    sub_100009914(v70);
  }

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v121[0] = v78;
    *v77 = 136315138;
    v79 = *(v48 + 3);
    v80 = *(v48 + 4);

    v81 = sub_100008A0C(v79, v80, v121);

    *(v77 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v75, v76, "MLHostDaemon baseFolder: %s", v77, 0xCu);
    sub_100009914(v78);
  }

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v121[0] = v85;
    *v84 = 136315138;
    v86 = *&v48[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry];

    v87 = sub_100016CA0();
    v89 = v88;

    v90 = sub_100008A0C(v87, v89, v121);

    *(v84 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v82, v83, "MLHostDaemon taskRegistry: %s", v84, 0xCu);
    sub_100009914(v85);
  }

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v121[0] = v94;
    *v93 = 136315138;
    v95 = *&v48[OBJC_IVAR____TtC7mlhostd12MLHostDaemon_notificationRegistry];

    v96 = sub_100006E80();
    v98 = v97;

    v99 = sub_100008A0C(v96, v98, v121);

    *(v93 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v91, v92, "MLHostDaemon notificationRegistry: %s", v93, 0xCu);
    sub_100009914(v94);
  }

  (*(v112 + 8))(v111, v113);
  return v48;
}

uint64_t sub_10002B530@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v59 = a2;
  v2 = sub_1000089AC(&qword_1000854B0, &qword_100068F50);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  v9 = type metadata accessor for MLHostEnvironment();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v57 = &v49 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v49 - v17;
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  v21 = objc_allocWithZone(NSUserDefaults);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 initWithSuiteName:v22];

  if (v23)
  {
    v24 = enum case for MLHostEnvironment.production(_:);
    v25 = *(v10 + 104);
    v25(v20, enum case for MLHostEnvironment.production(_:), v9);
    v50 = v25;
    v51 = v10 + 104;
    v25(v18, v24, v9);
    v26 = String._bridgeToObjectiveC()();
    v56 = v23;
    v27 = [v23 stringForKey:v26];

    v54 = v18;
    if (v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      MLHostEnvironment.init(rawValue:)();
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_100009C94(v8, &qword_1000854B0, &qword_100068F50);
      }

      else
      {
        (*(v10 + 8))(v20, v9);
        (*(v10 + 32))(v20, v8, v9);
      }
    }

    v36 = String._bridgeToObjectiveC()();
    v37 = v56;
    v38 = [v56 stringForKey:v36];

    if (v38)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      MLHostEnvironment.init(rawValue:)();
      if ((*(v10 + 48))(v6, 1, v9) == 1)
      {
        sub_100009C94(v6, &qword_1000854B0, &qword_100068F50);
      }

      else
      {
        v39 = v54;
        (*(v10 + 8))(v54, v9);
        (*(v10 + 32))(v39, v6, v9);
      }
    }

    v40 = String._bridgeToObjectiveC()();
    v41 = [v37 stringForKey:v40];

    if (v41)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v42 = String._bridgeToObjectiveC()();
    v43 = [v37 stringForKey:v42];

    if (v43)
    {
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v45;
      v53 = v44;

      if ((v55 & 1) == 0)
      {
LABEL_21:
        v46 = *(v10 + 16);
        v46(v57, v20, v9);
        v47 = v54;
        v46(v58, v54, v9);
        MLHostConfig.init(cloudEnvironment:apsEnvironment:cloudContainer:apsChannel:)();

        v48 = *(v10 + 8);
        v48(v47, v9);
        return (v48)(v20, v9);
      }
    }

    else
    {
      v52 = 0;
      v53 = 0;
      if ((v55 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    (*(v10 + 8))(v20, v9);

    v50(v20, enum case for MLHostEnvironment.development(_:), v9);
    goto LABEL_21;
  }

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000098DC(v28, qword_100087610);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100008A0C(0xD000000000000010, 0x8000000100073280, &v60);
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed at reading UserDefaults(%s). Using default config.", v31, 0xCu);
    sub_100009914(v32);
  }

  v33 = enum case for MLHostEnvironment.production(_:);
  v34 = *(v10 + 104);
  v34(v57, enum case for MLHostEnvironment.production(_:), v9);
  v34(v58, v33, v9);
  return MLHostConfig.init(cloudEnvironment:apsEnvironment:cloudContainer:apsChannel:)();
}

uint64_t sub_10002BCC4()
{
  v1 = v0;
  os_transaction_create();
  v2 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);
  os_unfair_lock_lock((*(v2 + 16) + 16));
  sub_10000E968();
  v3 = *(v2 + 24);
  *(v2 + 24) = v4;

  os_unfair_lock_unlock((*(v2 + 16) + 16));
  os_unfair_lock_lock((*(v2 + 16) + 16));
  v5 = *(v2 + 24);

  sub_1000297E0(v6);
  v8 = v7;

  os_unfair_lock_unlock((*(v2 + 16) + 16));
  v9 = sub_10004F764(v8);

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v15 = Set.description.getter();
    v17 = sub_100008A0C(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Discovered extensions identifiers: %s", v13, 0xCu);
    sub_100009914(v14);
  }

  v18 = *(v1 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  sub_1000212BC(v9);

  v19 = sub_10001D78C(v18);
  v20 = *(v18 + 56);
  v23 = __chkstk_darwin(v19);
  __chkstk_darwin(v23);
  os_unfair_lock_lock(v20 + 4);
  sub_100065994(v21);
  os_unfair_lock_unlock(v20 + 4);

  return swift_unknownObjectRelease();
}

void sub_10002BF80(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for MLHostTask();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000098DC(v9, qword_100087610);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = MLHostTask.bundleIdentifier.getter();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_100008A0C(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 0xCu);
    sub_100009914(v13);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10002C1B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TaskStatus();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLHostTask();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_projectBox();
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000098DC(v13, qword_100087610);
  (*(v9 + 16))(v12, a2, v8);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v7;
    v17 = v16;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v17 = 136315394;
    v18 = MLHostTask.bundleIdentifier.getter();
    v29 = v14;
    v19 = v4;
    v20 = v3;
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = sub_100008A0C(v18, v22, &v34);
    v3 = v20;
    v4 = v19;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    v25 = v29;
    v26 = v30;
    *v30 = v24;
    _os_log_impl(&_mh_execute_header, v25, v15, "Error for XPCConnection with %s: %@", v17, 0x16u);
    sub_100009C94(v26, &qword_100085970, &qword_100068F48);

    sub_100009914(v31);

    v7 = v32;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  (*(v4 + 104))(v7, enum case for TaskStatus.taskFailed(_:), v3);
  v27 = v33;
  swift_beginAccess();
  return (*(v4 + 40))(v27, v7, v3);
}

uint64_t sub_10002C564(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v63 = a3;
  v8 = type metadata accessor for MLHostTask();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_1000098DC(v16, qword_100087610);
  v58 = v9[2];
  v59 = v9 + 2;
  v58(v15, a2, v8);
  v18 = a1;
  v60 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  v21 = os_log_type_enabled(v19, v20);
  v61 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v55 = a4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v56 = v8;
    v53 = v24;
    v54 = swift_slowAlloc();
    v65 = v54;
    *v23 = 136315394;
    v25 = MLHostTask.name.getter();
    v26 = v13;
    v27 = a2;
    v29 = v28;
    v57 = v9[1];
    v57(v15, v56);
    v30 = sub_100008A0C(v25, v29, &v65);
    a2 = v27;
    v13 = v26;

    *(v23 + 4) = v30;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v18;
    v31 = v53;
    *v53 = v18;
    v32 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Task %s completed shouldRun with result %@.", v23, 0x16u);
    sub_100009C94(v31, &qword_100085970, &qword_100068F48);
    v8 = v56;

    sub_100009914(v54);

    a4 = v55;
  }

  else
  {

    v57 = v9[1];
    v57(v15, v8);
  }

  v33 = v63;
  swift_beginAccess();
  v34 = *(v33 + 16);
  *(v33 + 16) = v18;

  v35 = v18;
  MLHostResult.status.getter();
  v36 = MLHostResultStatus.rawValue.getter();
  v38 = 0;
  if (v36 == MLHostResultStatus.rawValue.getter())
  {
    MLHostResult.policy.getter();
    v37 = MLHostResultPolicy.rawValue.getter();
    if (v37 == MLHostResultPolicy.rawValue.getter())
    {
      v38 = 1;
    }
  }

  swift_beginAccess();
  *(a4 + 16) = v38;
  result = MLHostResult.errorString.getter();
  if (v40)
  {
    v41 = result;
    v42 = v40;
    v58(v13, a2, v8);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v45 = 136315394;
      v46 = MLHostTask.name.getter();
      v48 = v47;
      v57(v13, v8);
      v49 = sub_100008A0C(v46, v48, &v64);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_100008A0C(v41, v42, &v64);
      _os_log_impl(&_mh_execute_header, v43, v44, "Task %s returned error in shouldRun: %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v57(v13, v8);
    }

    v50 = *(v62 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
    v51 = MLHostTask.name.getter();
    sub_10001CA2C(v51, v52, v41, v42);
  }

  return result;
}

uint64_t sub_10002CAA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v70 = a3;
  v7 = type metadata accessor for TaskStatus();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  __chkstk_darwin(v7);
  v73 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLHostTask();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v71 = swift_projectBox();
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_1000098DC(v18, qword_100087610);
  v65 = v11[2];
  v66 = v11 + 2;
  v65(v17, a2, v10);
  v20 = a1;
  v67 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v68 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v63 = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v62 = v15;
    v27 = v26;
    v28 = swift_slowAlloc();
    v61 = v7;
    v29 = v28;
    v75[0] = v28;
    *v25 = 136315394;
    v30 = MLHostTask.name.getter();
    v31 = v11;
    v32 = v10;
    v34 = v33;
    v64 = v31[1];
    v64(v17, v32);
    v35 = sub_100008A0C(v30, v34, v75);
    v10 = v32;

    *(v25 + 4) = v35;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v20;
    *v27 = v20;
    v36 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Task %s completed doWork with result %@.", v25, 0x16u);
    sub_100009C94(v27, &qword_100085970, &qword_100068F48);
    v15 = v62;

    sub_100009914(v29);
    v7 = v61;

    a2 = v63;
  }

  else
  {

    v64 = v11[1];
    v64(v17, v10);
  }

  v37 = v70;
  swift_beginAccess();
  v38 = *(v37 + 16);
  *(v37 + 16) = v20;

  v39 = v20;
  v40 = MLHostResult.status.getter();
  v41 = v73;
  v42 = (v72 + 40);
  if (v40 == 2)
  {
    v43 = &enum case for TaskStatus.taskCompleted(_:);
  }

  else
  {
    v43 = &enum case for TaskStatus.taskFailed(_:);
  }

  (*(v72 + 104))(v73, *v43, v7);
  v44 = v71;
  swift_beginAccess();
  (*v42)(v44, v41, v7);
  result = MLHostResult.errorString.getter();
  if (v46)
  {
    v47 = result;
    v48 = v46;
    v65(v15, a2, v10);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v51 = 136315394;
      v52 = MLHostTask.name.getter();
      v53 = v10;
      v55 = v54;
      v64(v15, v53);
      v56 = sub_100008A0C(v52, v55, &v74);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_100008A0C(v47, v48, &v74);
      _os_log_impl(&_mh_execute_header, v49, v50, "Task %s returned error: %s", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v64(v15, v10);
    }

    v57 = *(v69 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
    v58 = MLHostTask.name.getter();
    sub_10001CA2C(v58, v59, v47, v48);
  }

  return result;
}

uint64_t sub_10002D080(void *a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for MLHostTask();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v98 = &v90 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v90 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v90 - v17;
  __chkstk_darwin(v16);
  v20 = &v90 - v19;
  if ((MLHostTask.isBackgroundTask.getter() & 1) == 0 && (a2 & 1) == 0)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000098DC(v21, qword_100087610);
    (*(v7 + 16))(v10, a1, v6);
    v22 = v7;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315138;
      v27 = MLHostTask.name.getter();
      v29 = v28;
      (*(v22 + 8))(v10, v6);
      v30 = sub_100008A0C(v27, v29, &aBlock);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Skipping registration for non-background task: %s", v25, 0xCu);
      sub_100009914(v26);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return 0;
  }

  v96 = a2;
  v99 = v7;
  v100 = v6;
  v95 = v3;
  v31 = *(v3 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);
  v97 = a1;
  v32 = MLHostTask.bundleIdentifier.getter();
  v34 = v33;
  os_unfair_lock_lock((*(v31 + 16) + 16));
  v35 = *(v31 + 24);

  sub_1000297E0(v36);
  v38 = v37;

  aBlock = v32;
  v102 = v34;
  __chkstk_darwin(v39);
  *(&v90 - 2) = &aBlock;
  LOBYTE(v32) = sub_100029F60(sub_100065978, (&v90 - 4), v38);

  os_unfair_lock_unlock((*(v31 + 16) + 16));
  if ((v32 & 1) == 0)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000098DC(v45, qword_100087610);
    v46 = v99;
    v47 = v100;
    v48 = *(v99 + 16);
    v49 = v97;
    v48(v20, v97, v100);
    v48(v18, v49, v47);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v52 = 136315394;
      v53 = MLHostTask.bundleIdentifier.getter();
      LODWORD(v98) = v51;
      v54 = v53;
      v56 = v55;
      v57 = *(v46 + 8);
      v57(v20, v47);
      v58 = sub_100008A0C(v54, v56, &aBlock);

      *(v52 + 4) = v58;
      *(v52 + 12) = 2080;
      v59 = MLHostTask.name.getter();
      v61 = v60;
      v57(v18, v47);
      v62 = sub_100008A0C(v59, v61, &aBlock);

      *(v52 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v50, v98, "Invalid extension name: %s for task: %s. Skipping registration.", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v75 = *(v46 + 8);
      v75(v18, v47);
      v75(v20, v47);
    }

    return 0;
  }

  v40 = v97;
  if (v96)
  {
    aBlock = MLHostTask.name.getter();
    v102 = v41;
    v42._countAndFlagsBits = 0x6E616D65646E6F2ELL;
    v42._object = 0xE900000000000064;
    String.append(_:)(v42);
    v43 = aBlock;
    v44 = v102;
  }

  else
  {
    v43 = MLHostTask.name.getter();
    v44 = v63;
  }

  v64 = v99;
  v94 = v43;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  v66 = sub_1000098DC(v65, qword_100087610);
  v92 = *(v64 + 16);
  v92(v15, v40, v100);

  v93 = v66;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    aBlock = v91;
    *v69 = 136315394;
    v70 = v94;
    *(v69 + 4) = sub_100008A0C(v94, v44, &aBlock);
    *(v69 + 12) = 2080;
    v71 = MLHostTask.bundleIdentifier.getter();
    v73 = v72;
    (*(v99 + 8))(v15, v100);
    v74 = sub_100008A0C(v71, v73, &aBlock);

    *(v69 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v67, v68, "Registering task %s with bundleIdentifier %s.", v69, 0x16u);
    swift_arrayDestroy();

    v64 = v99;
    v40 = v97;
  }

  else
  {

    (*(v64 + 8))(v15, v100);
    v70 = v94;
  }

  v97 = [objc_opt_self() sharedScheduler];
  v76 = String._bridgeToObjectiveC()();
  v77 = v95;
  v91 = *(v95 + 48);
  v78 = v98;
  v79 = v100;
  v92(v98, v40, v100);
  v80 = (*(v64 + 80) + 41) & ~*(v64 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v77;
  *(v81 + 24) = v70;
  *(v81 + 32) = v44;
  *(v81 + 40) = v96 & 1;
  (*(v64 + 32))(v81 + v80, v78, v79);
  v105 = sub_100052014;
  v106 = v81;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_100065970;
  v104 = &unk_100082CA8;
  v82 = _Block_copy(&aBlock);

  v83 = v97;
  v84 = [v97 registerForTaskWithIdentifier:v76 usingQueue:v91 launchHandler:v82];
  _Block_release(v82);

  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    aBlock = v88;
    *v87 = 136315394;
    *(v87 + 4) = sub_100008A0C(v70, v44, &aBlock);
    *(v87 + 12) = 1024;
    *(v87 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v85, v86, "Task %s registration info: %{BOOL}d", v87, 0x12u);
    sub_100009914(v88);
  }

  return v70;
}

uint64_t sub_10002DA9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v31 = a6;
  v32 = a5;
  v28 = a3;
  v29 = a1;
  v30 = type metadata accessor for MLHostTask();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v30);
  v11 = sub_1000089AC(&qword_100085C50, &qword_100069400);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v27 - v13;
  v15 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  os_unfair_lock_lock((*(v15 + 56) + 16));
  swift_beginAccess();
  sub_10004E224(a3, a4);
  swift_endAccess();

  os_unfair_lock_unlock((*(v15 + 56) + 16));
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a2;
  aBlock[4] = sub_1000520D0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002DFA8;
  aBlock[3] = &unk_100082CF8;
  v17 = _Block_copy(aBlock);

  v18 = v29;
  [v29 setExpirationHandlerWithReason:v17];
  _Block_release(v17);
  v19 = type metadata accessor for TaskPriority();
  v20 = v14;
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v21 = v30;
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v30);
  v22 = (*(v9 + 80) + 57) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v28;
  *(v23 + 32) = a2;
  *(v23 + 40) = v24;
  *(v23 + 48) = a4;
  *(v23 + 56) = v32;
  (*(v9 + 32))(v23 + v22, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  *(v23 + ((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;

  v25 = v18;
  sub_10002F68C(0, 0, v20, &unk_100069410, v23);
}

void sub_10002DDE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
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
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100008A0C(a2, a3, &v14);
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Task %s expired with reason: %lu", v11, 0x16u);
    sub_100009914(v12);
  }

  v13 = *(a4 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  os_unfair_lock_lock((*(v13 + 56) + 16));
  swift_beginAccess();

  sub_10004A918(&v15, a2, a3);
  swift_endAccess();

  os_unfair_lock_unlock((*(v13 + 56) + 16));
}

uint64_t sub_10002DFA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10002DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 160) = a8;
  *(v8 + 168) = v19;
  *(v8 + 272) = a7;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 136) = a4;
  v9 = type metadata accessor for TaskDefinition();
  *(v8 + 176) = v9;
  v10 = *(v9 - 8);
  *(v8 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v12 = *(*(sub_1000089AC(&qword_1000859A0, &qword_100069268) - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v13 = *(*(sub_1000089AC(&qword_100085C58, &qword_100069430) - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v14 = type metadata accessor for ContinuousClock.Instant();
  *(v8 + 232) = v14;
  v15 = *(v14 - 8);
  *(v8 + 240) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();

  return (_swift_task_switch)(sub_10002E1E0, 0, 0);
}

uint64_t sub_10002E1E0()
{
  if (*(v0 + 272) == 1)
  {
    v2 = *(v0 + 240);
    v1 = *(v0 + 248);
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(*(v0 + 136) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry);
    static ContinuousClock.Instant.now.getter();
    os_unfair_lock_lock((*(v7 + 16) + 16));
    (*(v2 + 16))(v4, v1, v3);
    (*(v2 + 56))(v4, 0, 1, v3);
    swift_beginAccess();

    sub_100028DE8(v4, v6, v5);
    swift_endAccess();
    os_unfair_lock_unlock((*(v7 + 16) + 16));
    (*(v2 + 8))(v1, v3);
  }

  v8 = *(v0 + 152);
  v9 = *(v0 + 136);

  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_10002E3BC;
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);

  return sub_100053544(v12, v13, v13, v14, v11);
}

uint64_t sub_10002E3BC(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 264) = a1;

  return (_swift_task_switch)(sub_10002E52C, 0, 0);
}

uint64_t sub_10002E52C()
{
  v133 = v0;
  v1 = *(v0 + 264);
  if (!v1)
  {
    if (qword_1000850B8 == -1)
    {
LABEL_13:
      v26 = *(v0 + 152);
      v27 = type metadata accessor for Logger();
      sub_1000098DC(v27, qword_100087610);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v31 = *(v0 + 144);
        v30 = *(v0 + 152);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v132[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100008A0C(v31, v30, v132);
        _os_log_impl(&_mh_execute_header, v28, v29, "Task %s returned nil, marking DAS task as completed.", v32, 0xCu);
        sub_100009914(v33);
      }

      v34 = *(v0 + 272);
      v36 = *(v0 + 144);
      v35 = *(v0 + 152);
      v37 = *(v0 + 136);
      [*(v0 + 168) setTaskCompleted];
      sub_10002F308(v34, v37, v36, v35);
      v38 = *(v37 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
      goto LABEL_31;
    }

LABEL_61:
    swift_once();
    goto LABEL_13;
  }

  v2 = v1;
  MLHostResult.status.getter();
  v3 = MLHostResultStatus.rawValue.getter();
  if (v3 == MLHostResultStatus.rawValue.getter())
  {
    MLHostResult.policy.getter();
    v4 = MLHostResultPolicy.rawValue.getter();
    if (v4 == MLHostResultPolicy.rawValue.getter())
    {

      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 152);
      v6 = type metadata accessor for Logger();
      sub_1000098DC(v6, qword_100087610);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v10 = *(v0 + 144);
        v9 = *(v0 + 152);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v132[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_100008A0C(v10, v9, v132);
        _os_log_impl(&_mh_execute_header, v7, v8, "Task %s has reschedule policy, passing retry to DAS.", v11, 0xCu);
        sub_100009914(v12);
      }

      v13 = *(v0 + 168);
      *(v0 + 128) = 0;
      v14 = [v13 setTaskExpiredWithRetryAfter:v0 + 128 error:300.0];
      v15 = *(v0 + 128);
      if (v14)
      {
        v16 = v15;
      }

      else
      {
        v56 = v15;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "Task setTaskExpiredWithRetryAfter failed. Fallback to default strategy.", v59, 2u);
        }

        v60 = *(v0 + 168);

        [v60 setTaskCompleted];
      }

      v36 = *(v0 + 144);
      v35 = *(v0 + 152);
      v61 = *(v0 + 136);
      sub_10002F308(*(v0 + 272), v61, v36, v35);
      v38 = *(v61 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
LABEL_31:
      v63 = *(v38 + 56);
      v62 = (v38 + 56);
      os_unfair_lock_lock(v63 + 4);
      swift_beginAccess();
      v64 = v36;
      v65 = v35;
      goto LABEL_56;
    }
  }

  v17 = *(v0 + 216);
  v18 = *(v0 + 200);
  v19 = *(v0 + 176);
  v20 = *(v0 + 184);
  v21 = *(v0 + 160);
  MLHostTask.taskDefinition.getter();
  TaskDefinition.taskRequest.getter();
  v130 = *(v20 + 8);
  v130(v18, v19);
  v22 = type metadata accessor for TaskRequest();
  v23 = *(v22 - 8);
  v129 = *(v23 + 48);
  v24 = v129(v17, 1, v22);
  v25 = *(v0 + 216);
  v128 = v23;
  if (v24 != 1)
  {
    v39 = TaskRequest.dependencies.getter();
    (*(v23 + 8))(v25, v22);
    if (!v39)
    {
      goto LABEL_37;
    }

    v40 = 0;
    v125 = _swiftEmptyArrayStorage;
    v132[0] = _swiftEmptyArrayStorage;
    v41 = *(v39 + 16);
    v42 = v39 + 40;
LABEL_18:
    v43 = (v42 + 16 * v40);
    while (1)
    {
      if (v41 == v40)
      {
        v51 = *(v0 + 168);

        sub_100052B18(v125);

        sub_100009A48(0, &qword_100085C60, BGSystemTaskResult_ptr);
        sub_100063B48();
        isa = Set._bridgeToObjectiveC()().super.isa;

        *(v0 + 120) = 0;
        v53 = [v51 consumedResults:isa error:v0 + 120];

        v54 = *(v0 + 120);
        if (v53)
        {
          v55 = v54;
        }

        else
        {
          v66 = v54;
          v67 = _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1000850B8 != -1)
          {
            swift_once();
          }

          v68 = *(v0 + 152);
          v69 = type metadata accessor for Logger();
          sub_1000098DC(v69, qword_100087610);

          swift_errorRetain();
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();

          v123 = v67;
          if (os_log_type_enabled(v70, v71))
          {
            v126 = *(v0 + 152);
            v124 = *(v0 + 144);
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v132[0] = v74;
            *v72 = 136315394;
            *(v72 + 4) = sub_100008A0C(v124, v126, v132);
            *(v72 + 12) = 2112;
            swift_errorRetain();
            v75 = _swift_stdlib_bridgeErrorToNSError();
            *(v72 + 14) = v75;
            *v73 = v75;
            _os_log_impl(&_mh_execute_header, v70, v71, "Failed at consuming results for task: %s. Error: %@", v72, 0x16u);
            sub_100009C94(v73, &qword_100085970, &qword_100068F48);

            sub_100009914(v74);
          }

          else
          {
          }
        }

        goto LABEL_37;
      }

      if (v40 >= *(v39 + 16))
      {
        break;
      }

      v44 = v43 + 2;
      ++v40;
      v46 = *(v43 - 1);
      v45 = *v43;
      v47 = objc_allocWithZone(BGSystemTaskResult);

      v48 = String._bridgeToObjectiveC()();

      v49 = [v47 initWithIdentifier:v48 consumptionCount:1];

      v43 = v44;
      if (v49)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v50 = *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v125 = v132[0];
        v42 = v39 + 40;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  sub_100009C94(v25, &qword_1000859A0, &qword_100069268);
LABEL_37:
  v76 = *(v0 + 208);
  v77 = *(v0 + 192);
  v78 = *(v0 + 176);
  v79 = *(v0 + 160);
  MLHostTask.taskDefinition.getter();
  TaskDefinition.taskRequest.getter();
  v130(v77, v78);
  v80 = v129(v76, 1, v22);
  v81 = *(v0 + 208);
  if (v80 == 1)
  {
    sub_100009C94(*(v0 + 208), &qword_1000859A0, &qword_100069268);
  }

  else
  {
    v82 = TaskRequest.producedResultIdentifiers.getter();
    (*(v128 + 8))(v81, v22);
    if (v82)
    {
      v127 = v2;
      v83 = 0;
      v131 = _swiftEmptyArrayStorage;
      v132[0] = _swiftEmptyArrayStorage;
      v84 = *(v82 + 16);
      v85 = v82 + 40;
LABEL_41:
      v86 = (v85 + 16 * v83);
      while (v84 != v83)
      {
        if (v83 >= *(v82 + 16))
        {
          goto LABEL_60;
        }

        v87 = v86 + 2;
        ++v83;
        v89 = *(v86 - 1);
        v88 = *v86;
        v90 = objc_allocWithZone(BGSystemTaskResult);

        v91 = String._bridgeToObjectiveC()();

        v92 = [v90 initWithIdentifier:v91 cumulativeProductionCount:1];

        v86 = v87;
        if (v92)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v93 = *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v131 = v132[0];
          v85 = v82 + 40;
          goto LABEL_41;
        }
      }

      v94 = *(v0 + 168);

      sub_100052B18(v131);

      sub_100009A48(0, &qword_100085C60, BGSystemTaskResult_ptr);
      sub_100063B48();
      v95 = Set._bridgeToObjectiveC()().super.isa;

      *(v0 + 112) = 0;
      LOBYTE(v94) = [v94 producedCumulativeResults:v95 error:v0 + 112];

      v96 = *(v0 + 112);
      if (v94)
      {
        v97 = v96;
        v2 = v127;
      }

      else
      {
        v98 = v96;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v2 = v127;
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v99 = *(v0 + 152);
        v100 = type metadata accessor for Logger();
        sub_1000098DC(v100, qword_100087610);

        swift_errorRetain();
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v101, v102))
        {
          v104 = *(v0 + 144);
          v103 = *(v0 + 152);
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v132[0] = v107;
          *v105 = 136315394;
          *(v105 + 4) = sub_100008A0C(v104, v103, v132);
          *(v105 + 12) = 2112;
          swift_errorRetain();
          v108 = _swift_stdlib_bridgeErrorToNSError();
          *(v105 + 14) = v108;
          *v106 = v108;
          _os_log_impl(&_mh_execute_header, v101, v102, "Failed at generating results for task: %s. Error: %@", v105, 0x16u);
          sub_100009C94(v106, &qword_100085970, &qword_100068F48);

          sub_100009914(v107);
        }

        else
        {
        }
      }
    }
  }

  v109 = *(v0 + 272);
  v111 = *(v0 + 144);
  v110 = *(v0 + 152);
  v112 = *(v0 + 136);
  [*(v0 + 168) setTaskCompleted];

  sub_10002F308(v109, v112, v111, v110);
  v113 = *(v112 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v114 = *(v113 + 56);
  v62 = (v113 + 56);
  os_unfair_lock_lock(v114 + 4);
  swift_beginAccess();
  v64 = v111;
  v65 = v110;
LABEL_56:
  sub_10004E224(v64, v65);
  swift_endAccess();
  v115 = *(v0 + 248);
  v117 = *(v0 + 216);
  v116 = *(v0 + 224);
  v119 = *(v0 + 200);
  v118 = *(v0 + 208);
  v120 = *(v0 + 192);

  os_unfair_lock_unlock(*v62 + 4);

  v121 = *(v0 + 8);

  return v121();
}

uint64_t sub_10002F308(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1000089AC(&qword_100085C58, &qword_100069430);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for ContinuousClock.Instant();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v20 = &v32 - v19;
  if (a1)
  {
    sub_100063BB0(a3, a4);
    v21 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry);
    sub_100010B74(a3, a4, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      return sub_100009C94(v11, &qword_100085C58, &qword_100069430);
    }

    else
    {
      (*(v13 + 32))(v20, v11, v12);
      static ContinuousClock.Instant.now.getter();
      ContinuousClock.Instant.duration(to:)();
      v34 = v22;
      v23 = *(v13 + 8);
      v23(v17, v12);
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000098DC(v24, qword_100087610);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33 = v23;
        v35 = v28;
        *v27 = 136315394;
        *(v27 + 4) = sub_100008A0C(a3, a4, &v35);
        *(v27 + 12) = 2080;
        v29 = Duration.description.getter();
        v31 = sub_100008A0C(v29, v30, &v35);

        *(v27 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "On-demand task %s terminated after: %s", v27, 0x16u);
        swift_arrayDestroy();

        return v33(v20, v12);
      }

      else
      {

        return (v23)(v20, v12);
      }
    }
  }

  return result;
}

uint64_t sub_10002F68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000089AC(&qword_100085C50, &qword_100069400);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100009C2C(a3, v27 - v11, &qword_100085C50, &qword_100069400);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100009C94(v12, &qword_100085C50, &qword_100069400);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100009C94(a3, &qword_100085C50, &qword_100069400);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009C94(a3, &qword_100085C50, &qword_100069400);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_10002F98C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10002F9F8()
{
  v1 = v0;
  v2 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v73 - v4;
  v92 = type metadata accessor for MLHostTask();
  v78 = *(v92 - 8);
  v6 = *(v78 + 64);
  v7 = __chkstk_darwin(v92);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v73 - v9;
  v10 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v73 - v12;
  v14 = sub_1000089AC(&qword_100085918, &qword_100069250);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v73 - v16;
  v73 = os_transaction_create();
  v18 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v19 = type metadata accessor for TaskType();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = enum case for TaskCategory.backgroundTask(_:);
  v21 = type metadata accessor for TaskCategory();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v13, v20, v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  v23 = v18;
  v24 = sub_10001BA90(v17, v13);
  sub_100009C94(v13, &qword_100085910, &unk_1000693B0);
  v25 = v17;
  v26 = v5;
  sub_100009C94(v25, &qword_100085918, &qword_100069250);
  v74 = v24;
  v28 = v24[2];
  if (v28)
  {
    v91 = (v78 + 56);
    v85 = (v78 + 16);
    v89 = 0;
    v90 = (v78 + 48);
    v80 = (v78 + 32);
    v81 = OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry;
    v79 = (v78 + 8);
    v29 = v74 + 5;
    *&v27 = 136315138;
    v76 = v27;
    *&v27 = 136315394;
    v75 = v27;
    v83 = v1;
    v84 = v26;
    v82 = v23;
    do
    {
      v34 = *(v29 - 1);
      v35 = *v29;
      v36 = *(v23 + 56);

      os_unfair_lock_lock(v36 + 4);
      swift_beginAccess();
      v37 = *(v23 + 64);
      if (*(v37 + 16))
      {
        v38 = sub_100010DF4(v34, v35);
        v39 = v92;
        if (v40)
        {
          (*(v78 + 16))(v26, *(v37 + 56) + *(v78 + 72) * v38, v92);
          v41 = 0;
        }

        else
        {
          v41 = 1;
        }
      }

      else
      {
        v41 = 1;
        v39 = v92;
      }

      (*v91)(v26, v41, 1, v39);
      swift_endAccess();
      os_unfair_lock_unlock((*(v23 + 56) + 16));
      if ((*v90)(v26, 1, v39) == 1)
      {
        sub_100009C94(v26, &qword_100085940, &unk_1000693D0);
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_1000098DC(v42, qword_100087610);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v30 = swift_slowAlloc();
          v31 = v28;
          v32 = swift_slowAlloc();
          v93[0] = v32;
          *v30 = v76;
          v33 = sub_100008A0C(v34, v35, v93);

          *(v30 + 4) = v33;
          _os_log_impl(&_mh_execute_header, v43, v44, "Skipping %s because is not available in TaskRegistry", v30, 0xCu);
          sub_100009914(v32);
          v28 = v31;
          v1 = v83;
        }

        else
        {
        }
      }

      else
      {
        v86 = v34;
        v88 = v28;
        v45 = v87;
        (*v80)(v87, v26, v39);
        v46 = v1;
        v47 = *(v1 + v81);
        v48 = MLHostTask.bundleIdentifier.getter();
        v50 = v49;
        os_unfair_lock_lock((*(v47 + 16) + 16));
        v51 = *(v47 + 24);

        v53 = v89;
        sub_1000297E0(v52);
        v55 = v54;

        v93[0] = v48;
        v93[1] = v50;
        __chkstk_darwin(v56);
        *(&v73 - 2) = v93;
        LOBYTE(v48) = sub_100029F60(sub_100051F2C, (&v73 - 4), v55);
        v89 = v53;

        os_unfair_lock_unlock((*(v47 + 16) + 16));
        if (v48)
        {

          sub_10002D080(v45, 0);

          (*v79)(v45, v92);
          v1 = v46;
        }

        else
        {
          if (qword_1000850B8 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          sub_1000098DC(v57, qword_100087610);
          v58 = v77;
          v59 = v87;
          v60 = v92;
          (*v85)(v77, v87, v92);

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v93[0] = swift_slowAlloc();
            *v63 = v75;
            v64 = sub_100008A0C(v86, v35, v93);

            *(v63 + 4) = v64;
            *(v63 + 12) = 2080;
            v65 = MLHostTask.bundleIdentifier.getter();
            v66 = v58;
            v68 = v67;
            v69 = *v79;
            (*v79)(v66, v60);
            v70 = sub_100008A0C(v65, v68, v93);

            *(v63 + 14) = v70;
            _os_log_impl(&_mh_execute_header, v61, v62, "Skipping %s because invalid extension: %s", v63, 0x16u);
            swift_arrayDestroy();

            v69(v87, v60);
          }

          else
          {

            v71 = *v79;
            (*v79)(v58, v60);
            v71(v59, v60);
          }

          v1 = v83;
        }

        v26 = v84;
        v23 = v82;
        v28 = v88;
      }

      v29 += 2;
      --v28;
    }

    while (v28);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100030304()
{
  v1 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v43 - v3;
  v5 = type metadata accessor for MLHostTask();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  __chkstk_darwin(v5);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v12 = sub_1000089AC(&qword_100085918, &qword_100069250);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v43 - v14;
  v43 = os_transaction_create();
  v16 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v17 = type metadata accessor for TaskType();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = enum case for TaskCategory.backgroundTask(_:);
  v19 = type metadata accessor for TaskCategory();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v11, v18, v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  v21 = sub_10001BA90(v15, v11);
  sub_100009C94(v11, &qword_100085910, &unk_1000693B0);
  sub_100009C94(v15, &qword_100085918, &qword_100069250);
  v44 = v21;
  v23 = v21[2];
  if (v23)
  {
    v24 = (v49 + 56);
    v48 = v49 + 16;
    v25 = (v49 + 48);
    v50 = (v49 + 8);
    v51 = (v49 + 32);
    v26 = v44 + 5;
    *&v22 = 136315138;
    v45 = v22;
    v46 = (v49 + 56);
    v47 = v5;
    v52 = (v49 + 48);
    do
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      v30 = *(v16 + 56);

      os_unfair_lock_lock(v30 + 4);
      swift_beginAccess();
      v31 = *(v16 + 64);
      if (*(v31 + 16) && (v32 = sub_100010DF4(v29, v28), (v33 & 1) != 0))
      {
        (*(v49 + 16))(v4, *(v31 + 56) + *(v49 + 72) * v32, v5);
        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      (*v24)(v4, v34, 1, v5);
      swift_endAccess();
      os_unfair_lock_unlock((*(v16 + 56) + 16));
      if ((*v25)(v4, 1, v5) == 1)
      {
        sub_100009C94(v4, &qword_100085940, &unk_1000693D0);
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_1000098DC(v35, qword_100087610);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = v4;
          v40 = swift_slowAlloc();
          v54 = v40;
          *v38 = v45;
          v41 = sub_100008A0C(v29, v28, &v54);

          *(v38 + 4) = v41;
          _os_log_impl(&_mh_execute_header, v36, v37, "Skipping %s because is not available in TaskRegistry", v38, 0xCu);
          sub_100009914(v40);
          v4 = v39;
          v5 = v47;

          v24 = v46;
        }

        else
        {
        }

        v25 = v52;
      }

      else
      {

        v27 = v53;
        (*v51)(v53, v4, v5);
        sub_1000509EC(v27);
        (*v50)(v27, v5);
      }

      v26 += 2;
      --v23;
    }

    while (v23);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1000308A4()
{
  v1 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v20 - v3;
  v5 = sub_1000089AC(&qword_100085918, &qword_100069250);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v20 - v7;
  os_transaction_create();
  v9 = *(v0 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v10 = type metadata accessor for TaskType();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = enum case for TaskCategory.backgroundTask(_:);
  v12 = type metadata accessor for TaskCategory();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v4, v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  v14 = sub_10001BA90(v8, v4);
  sub_100009C94(v4, &qword_100085910, &unk_1000693B0);
  sub_100009C94(v8, &qword_100085918, &qword_100069250);
  v15 = v14[2];
  if (v15)
  {
    v16 = v14 + 5;
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      sub_100063BB0(v17, v18);

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100030AE0(void *a1, uint64_t a2, uint64_t a3)
{
  v94 = a3;
  v92 = a2;
  v4 = type metadata accessor for MLHostTask();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000089AC(&qword_1000859A0, &qword_100069268);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v90 = &v81 - v11;
  v12 = type metadata accessor for TaskDefinition();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  __chkstk_darwin(v12);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TaskRequest();
  v88 = *(v16 - 8);
  v89 = v16;
  v17 = *(v88 + 64);
  __chkstk_darwin(v16);
  v85 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000089AC(&qword_100085E50, &qword_1000695A8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v81 - v21;
  v23 = type metadata accessor for OnDemandTaskRequest();
  v91 = *(v23 - 8);
  v24 = *(v91 + 64);
  __chkstk_darwin(v23);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a1;
  v27 = sub_10002D080(a1, 1);
  if (v28)
  {
    v84 = v15;
    v29 = v27;
    v30 = v28;
    v31 = objc_opt_self();
    v32 = [v31 sharedScheduler];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 taskRequestForIdentifier:v33];

    if (v34)
    {

      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000098DC(v35, qword_100087610);
      v36 = v34;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v36;
        *v40 = v34;
        v41 = v36;
        _os_log_impl(&_mh_execute_header, v37, v38, "Found existing taskRequest: %@", v39, 0xCu);
        sub_100009C94(v40, &qword_100085970, &qword_100068F48);
      }

      v42 = enum case for OnDemandError.taskPending(_:);
      v43 = type metadata accessor for OnDemandError();
      (*(*(v43 - 8) + 104))(v94, v42, v43);
      sub_100051EE4(&qword_100085E60, &type metadata accessor for OnDemandError);
      swift_willThrowTypedImpl();
    }

    else
    {
      v83 = v31;
      v53 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
      v82 = v29;
      v54 = v30;
      v55 = String._bridgeToObjectiveC()();
      v56 = [v53 initWithIdentifier:v55];

      v96 = v56;
      [v56 setScheduleAfter:1.0];
      sub_100009C2C(v92, v22, &qword_100085E50, &qword_1000695A8);
      v57 = v91;
      if ((*(v91 + 48))(v22, 1, v23) == 1)
      {
        sub_100009C94(v22, &qword_100085E50, &qword_1000695A8);
        v58 = v84;
      }

      else
      {
        (*(v57 + 32))(v26, v22, v23);
        OnDemandTaskRequest.scheduleAfter.getter();
        v62 = Duration.components.getter();
        v58 = v84;
        if (v62 >= 0x15181)
        {

          v63 = enum case for OnDemandError.invalidRequest(_:);
          v64 = type metadata accessor for OnDemandError();
          (*(*(v64 - 8) + 104))(v94, v63, v64);
          sub_100051EE4(&qword_100085E60, &type metadata accessor for OnDemandError);
          swift_willThrowTypedImpl();
          (*(v57 + 8))(v26, v23);

          return 1;
        }

        [v56 setScheduleAfter:v62];
        (*(v57 + 8))(v26, v23);
      }

      [v56 scheduleAfter];
      [v56 setTrySchedulingBefore:?];
      MLHostTask.taskDefinition.getter();
      v65 = v90;
      TaskDefinition.taskRequest.getter();
      (*(v86 + 8))(v58, v87);
      v67 = v88;
      v66 = v89;
      if ((*(v88 + 48))(v65, 1, v89) == 1)
      {
        sub_100009C94(v65, &qword_1000859A0, &qword_100069268);
      }

      else
      {
        v68 = v85;
        (*(v67 + 32))(v85, v65, v66);
        sub_100009A48(0, &qword_100085E68, BGNonRepeatingSystemTaskRequest_ptr);
        TaskRequest.asSystemRequest<A>(request:)();
        (*(v67 + 8))(v68, v66);
      }

      v69 = [v83 sharedScheduler];
      v36 = v96;
      v95 = 0;
      v70 = [v69 submitTaskRequest:v96 error:&v95];

      if (v70)
      {
        v71 = v95;

        return 1;
      }

      v72 = v95;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_1000098DC(v73, qword_100087610);

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v95 = v77;
        *v76 = 136315138;
        v78 = v82;
        *(v76 + 4) = sub_100008A0C(v82, v54, &v95);
        _os_log_impl(&_mh_execute_header, v74, v75, "Failed at scheduling ondemand task: %s", v76, 0xCu);
        sub_100009914(v77);
      }

      else
      {

        v78 = v82;
      }

      sub_100063BB0(v78, v54);

      v79 = enum case for OnDemandError.schedulingError(_:);
      v80 = type metadata accessor for OnDemandError();
      (*(*(v80 - 8) + 104))(v94, v79, v80);
      sub_100051EE4(&qword_100085E60, &type metadata accessor for OnDemandError);
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000098DC(v44, qword_100087610);
    (*(v5 + 16))(v8, v93, v4);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v96 = v48;
      *v47 = 136315138;
      sub_100051EE4(&unk_100085C40, &type metadata accessor for MLHostTask);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v5 + 8))(v8, v4);
      v52 = sub_100008A0C(v49, v51, &v96);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed at registering activity for task: %s", v47, 0xCu);
      sub_100009914(v48);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v59 = enum case for OnDemandError.taskInvalid(_:);
    v60 = type metadata accessor for OnDemandError();
    (*(*(v60 - 8) + 104))(v94, v59, v60);
    sub_100051EE4(&qword_100085E60, &type metadata accessor for OnDemandError);
    swift_willThrowTypedImpl();
  }

  return 1;
}

uint64_t sub_100031790(NSObject *a1, unint64_t a2)
{
  v5 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v106 = &v102[-v7];
  v8 = type metadata accessor for DatastoreKey();
  v108 = *(v8 - 8);
  v109 = v8;
  v9 = *(v108 + 64);
  v10 = __chkstk_darwin(v8);
  v107 = &v102[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v105 = &v102[-v13];
  __chkstk_darwin(v12);
  v112 = &v102[-v14];
  v15 = sub_1000089AC(&qword_100085C28, &qword_1000693C8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v102[-v17];
  v19 = type metadata accessor for TaskDefinition();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v102[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for TaskTriggerRequest();
  v25 = *(v24 - 8);
  v113 = v24;
  v114 = v25;
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v111 = &v102[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v102[-v30];
  v32 = type metadata accessor for MLHostTask();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v102[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = v2;
  v37 = *(v2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v115 = a1;
  v38 = a1;
  v40 = v39;
  sub_100019300(v38, a2, v31);
  if ((*(v33 + 48))(v31, 1, v40) == 1)
  {
    sub_100009C94(v31, &qword_100085940, &unk_1000693D0);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000098DC(v41, qword_100087610);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v117[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_100008A0C(v115, a2, v117);
      _os_log_impl(&_mh_execute_header, v42, v43, "Skipping %s because is not available in TaskRegistry", v44, 0xCu);
      sub_100009914(v45);
    }

    return 0;
  }

  (*(v33 + 32))(v36, v31, v40);
  if ((MLHostTask.isTriggerTask.getter() & 1) == 0)
  {
LABEL_10:
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000098DC(v48, qword_100087610);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v117[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_100008A0C(v115, a2, v117);
      _os_log_impl(&_mh_execute_header, v49, v50, "Skipping %s because is not a subscription task", v51, 0xCu);
      sub_100009914(v52);
    }

    (*(v33 + 8))(v36, v40);
    return 0;
  }

  MLHostTask.taskDefinition.getter();
  TaskDefinition.triggerRequest.getter();
  (*(v20 + 8))(v23, v19);
  v47 = v113;
  v46 = v114;
  if ((*(v114 + 48))(v18, 1, v113) == 1)
  {
    sub_100009C94(v18, &qword_100085C28, &qword_1000693C8);
    goto LABEL_10;
  }

  v104 = v36;
  v54 = *(v46 + 32);
  v55 = v111;
  v54(v111, v18, v47);
  v56 = TaskTriggerRequest.subscriptionTriggerTopic.getter();
  v58 = v112;
  if (v57)
  {
    v59 = v56;
    v60 = v57;
    sub_1000089AC(&qword_100085900, &qword_100069240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000691A0;
    v62 = v59;
    *(inited + 32) = v59;
    *(inited + 40) = v60;

    v63 = sub_100051D7C(inited);
    swift_setDeallocating();
    sub_100014C04(inited + 32);
    v117[0] = v63;
    v64 = TaskTriggerRequest.subscriptionTopics.getter();
    if (v64)
    {
      sub_1000500E8(v64);
    }

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000098DC(v65, qword_100087610);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v68 = 136315394;
      *(v68 + 4) = sub_100008A0C(v115, a2, &v116);
      *(v68 + 12) = 2080;
      v69 = sub_100008A0C(v62, v60, &v116);

      *(v68 + 14) = v69;
      v47 = v113;
      _os_log_impl(&_mh_execute_header, v66, v67, "Enabling trigger task: %s with triggerTopic: %s", v68, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v70 = *(v110 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry);
    v71 = MLHostTask.name.getter();
    sub_100010088(v71, v72, v117[0]);

    v55 = v111;
    v58 = v112;
  }

  v73 = v106;
  TaskTriggerRequest.datastoreTriggerKey.getter();
  v75 = v108;
  v74 = v109;
  if ((*(v108 + 48))(v73, 1, v109) == 1)
  {
    (*(v114 + 8))(v55, v47);
    (*(v33 + 8))(v104, v40);
    sub_100009C94(v73, &qword_100085C20, &qword_1000693C0);
    return 1;
  }

  else
  {
    (*(v75 + 32))(v58, v73, v74);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_1000098DC(v76, qword_100087610);
    v77 = *(v75 + 16);
    v78 = v105;
    v77(v105, v58, v74);
    v77(v107, v58, v74);

    v79 = v74;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v103 = v81;
      v83 = v82;
      v106 = swift_slowAlloc();
      v117[0] = v106;
      *v83 = 136315650;
      *(v83 + 4) = sub_100008A0C(v115, a2, v117);
      *(v83 + 12) = 2080;
      v115 = v80;
      v84 = DatastoreKey.group.getter();
      v86 = v85;
      v87 = *(v75 + 8);
      v87(v78, v74);
      v88 = sub_100008A0C(v84, v86, v117);

      *(v83 + 14) = v88;
      *(v83 + 22) = 2080;
      v89 = v107;
      v90 = DatastoreKey.key.getter();
      v92 = v91;
      v87(v89, v79);
      v93 = v87;
      v94 = sub_100008A0C(v90, v92, v117);

      *(v83 + 24) = v94;
      v95 = v115;
      _os_log_impl(&_mh_execute_header, v115, v103, "Enabling trigger task: %s with triggerKey: %s, %s", v83, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v96 = *(v75 + 8);
      v96(v107, v74);
      v96(v78, v74);
      v93 = v96;
    }

    v97 = v104;
    v98 = *(v110 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry);
    v99 = MLHostTask.name.getter();
    v100 = v112;
    sub_100010374(v99, v101, v112);

    v93(v100, v79);
    (*(v114 + 8))(v111, v113);
    (*(v33 + 8))(v97, v40);
    return 1;
  }
}

uint64_t sub_10003240C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v112 = &v106 - v7;
  v115 = type metadata accessor for DatastoreKey();
  v113 = *(v115 - 8);
  v8 = *(v113 + 64);
  v9 = __chkstk_darwin(v115);
  v111 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v110 = &v106 - v12;
  __chkstk_darwin(v11);
  v114 = &v106 - v13;
  v14 = sub_1000089AC(&qword_100085C28, &qword_1000693C8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v106 - v16;
  v18 = type metadata accessor for TaskDefinition();
  v119 = *(v18 - 8);
  v19 = *(v119 + 64);
  __chkstk_darwin(v18);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TaskTriggerRequest();
  v120 = *(v22 - 8);
  v121 = v22;
  v23 = *(v120 + 64);
  __chkstk_darwin(v22);
  v117 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v106 - v27;
  v29 = type metadata accessor for MLHostTask();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v2;
  v33 = *(v2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v122 = a1;
  v34 = a1;
  v36 = v35;
  sub_100019300(v34, a2, v28);
  if ((*(v36 + 48))(v28, 1, v29) == 1)
  {
    sub_100009C94(v28, &qword_100085940, &unk_1000693D0);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000098DC(v37, qword_100087610);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v122;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v124[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_100008A0C(v41, a2, v124);
      _os_log_impl(&_mh_execute_header, v38, v39, "Skipping %s because is not available in TaskRegistry", v42, 0xCu);
      sub_100009914(v43);
    }

    return 0;
  }

  (*(v36 + 32))(v32, v28, v29);
  v118 = v32;
  v44 = v29;
  v45 = a2;
  if ((MLHostTask.isTriggerTask.getter() & 1) == 0)
  {
LABEL_10:
    v49 = v36;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000098DC(v50, qword_100087610);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v122;
    v55 = v118;
    if (v53)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v124[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_100008A0C(v54, v45, v124);
      _os_log_impl(&_mh_execute_header, v51, v52, "Skipping %s because is not a subscription task", v56, 0xCu);
      sub_100009914(v57);
    }

    (*(v49 + 8))(v55, v44);
    return 0;
  }

  v46 = v118;
  MLHostTask.taskDefinition.getter();
  TaskDefinition.triggerRequest.getter();
  (*(v119 + 8))(v21, v18);
  v48 = v120;
  v47 = v121;
  if ((*(v120 + 48))(v17, 1, v121) == 1)
  {
    sub_100009C94(v17, &qword_100085C28, &qword_1000693C8);
    goto LABEL_10;
  }

  v59 = v117;
  (*(v48 + 32))(v117, v17, v47);
  v60 = v122;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  v62 = sub_1000098DC(v61, qword_100087610);

  v119 = v62;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v124[0] = v66;
    *v65 = 136315138;
    *(v65 + 4) = sub_100008A0C(v60, v45, v124);
    _os_log_impl(&_mh_execute_header, v63, v64, "Disabling subscription task: %s", v65, 0xCu);
    sub_100009914(v66);
  }

  v67 = TaskTriggerRequest.subscriptionTriggerTopic.getter();
  if (v68)
  {
    v69 = v67;
    v70 = v68;
    sub_1000089AC(&qword_100085900, &qword_100069240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000691A0;
    v109 = v69;
    *(inited + 32) = v69;
    *(inited + 40) = v70;

    v72 = sub_100051D7C(inited);
    swift_setDeallocating();
    sub_100014C04(inited + 32);
    v124[0] = v72;
    v73 = TaskTriggerRequest.subscriptionTopics.getter();
    if (v73)
    {
      sub_1000500E8(v73);
    }

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v76 = 136315394;
      *(v76 + 4) = sub_100008A0C(v60, v45, &v123);
      *(v76 + 12) = 2080;
      v77 = v44;
      v78 = sub_100008A0C(v109, v70, &v123);

      *(v76 + 14) = v78;
      v44 = v77;
      v59 = v117;
      _os_log_impl(&_mh_execute_header, v74, v75, "Disable trigger task: %s with triggerTopic: %s", v76, 0x16u);
      swift_arrayDestroy();
      v46 = v118;
    }

    else
    {
    }

    v79 = *(v116 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry);
    sub_100010580(v60, v45, v124[0]);
  }

  v80 = v112;
  v81 = v59;
  TaskTriggerRequest.datastoreTriggerKey.getter();
  v82 = v113;
  v83 = v115;
  if ((*(v113 + 48))(v80, 1, v115) == 1)
  {
    (*(v120 + 8))(v81, v121);
    (*(v36 + 8))(v46, v44);
    sub_100009C94(v80, &qword_100085C20, &qword_1000693C0);
    return 1;
  }

  else
  {
    v109 = v36;
    v84 = v114;
    (*(v82 + 32))(v114, v80, v83);
    v85 = *(v82 + 16);
    v86 = v110;
    v85(v110, v84, v83);
    v87 = v111;
    v85(v111, v84, v83);

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v108 = v89;
      v91 = v90;
      v112 = swift_slowAlloc();
      v124[0] = v112;
      *v91 = 136315650;
      *(v91 + 4) = sub_100008A0C(v60, v45, v124);
      *(v91 + 12) = 2080;
      v107 = v88;
      v92 = DatastoreKey.group.getter();
      v119 = v44;
      v94 = v93;
      v95 = *(v82 + 8);
      v95(v86, v83);
      v96 = sub_100008A0C(v92, v94, v124);

      *(v91 + 14) = v96;
      *(v91 + 22) = 2080;
      v97 = DatastoreKey.key.getter();
      v99 = v98;
      v95(v87, v83);
      v100 = sub_100008A0C(v97, v99, v124);
      v44 = v119;

      *(v91 + 24) = v100;
      v101 = v107;
      _os_log_impl(&_mh_execute_header, v107, v108, "Disable trigger task: %s with triggerKey: %s, %s", v91, 0x20u);
      swift_arrayDestroy();

      v102 = v122;
    }

    else
    {

      v102 = v60;
      v95 = *(v82 + 8);
      v95(v87, v83);
      v95(v86, v83);
    }

    v103 = *(v116 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry);
    v104 = v45;
    v105 = v114;
    sub_100010728(v102, v104, v114);
    v95(v105, v83);
    (*(v120 + 8))(v117, v121);
    (*(v109 + 8))(v118, v44);
    return 1;
  }
}

uint64_t sub_100033164(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_1000089AC(&qword_100085910, &unk_1000693B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_1000089AC(&qword_100085918, &qword_100069250);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  os_transaction_create();
  v12 = *(v2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v13 = type metadata accessor for TaskType();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = enum case for TaskCategory.triggerTask(_:);
  v15 = type metadata accessor for TaskCategory();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v7, v14, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  v17 = sub_10001BA90(v11, v7);
  sub_100009C94(v7, &qword_100085910, &unk_1000693B0);
  sub_100009C94(v11, &qword_100085918, &qword_100069250);
  v18 = v17[2];
  if (v18)
  {
    v19 = (v17 + 5);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;

      a2(v20, v21);

      v19 += 2;
      --v18;
    }

    while (v18);
  }

  swift_unknownObjectRelease();
}

void sub_1000333B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000089AC(&qword_100085E50, &qword_1000695A8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v115[-v10];
  v126 = type metadata accessor for OnDemandError();
  v12 = *(v126 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v126);
  v125 = &v115[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v115[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v115[-v20];
  __chkstk_darwin(v19);
  v124 = &v115[-v22];
  v134 = type metadata accessor for TaskStatus();
  v23 = *(v134 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v134);
  v133 = &v115[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v132 = &v115[-v27];
  v28 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v141 = &v115[-v30];
  v140 = type metadata accessor for MLHostTask();
  v31 = *(v140 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v140);
  v148 = &v115[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 || (v34 = type metadata accessor for DatastoreKey(), (*(*(v34 - 8) + 48))(a3, 1, v34) != 1))
  {
    v122 = v21;
    v127 = v18;
    v123 = v11;
    v39 = *(v4 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_triggerRegistry);
    v40 = sub_1000108C8(a1, a2, a3);
    v42 = 0;
    v128 = 0;
    v44 = v40 + 7;
    v43 = v40[7];
    v147 = v40;
    v45 = 1 << *(v40 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & v43;
    v145 = OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry;
    v48 = (v45 + 63) >> 6;
    v135 = v31 + 16;
    v136 = v31;
    v142 = (v31 + 48);
    v143 = (v31 + 56);
    v139 = (v31 + 32);
    v137 = (v31 + 8);
    v131 = enum case for TaskStatus.taskRunning(_:);
    v130 = (v23 + 104);
    v129 = (v23 + 8);
    v120 = (v12 + 32);
    v121 = (v12 + 16);
    v119 = (v12 + 8);
    *&v41 = 136315138;
    v138 = v41;
    *&v41 = 136315394;
    v118 = v41;
    v50 = v140;
    v49 = v141;
    v51 = v148;
    v144 = v48;
    v146 = v4;
    if ((v46 & v43) != 0)
    {
      goto LABEL_15;
    }

    do
    {
LABEL_16:
      v52 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      if (v52 >= v48)
      {

        return;
      }

      v47 = v44[v52];
      ++v42;
    }

    while (!v47);
    while (1)
    {
      v53 = v147[6] + ((v52 << 10) | (16 * __clz(__rbit64(v47))));
      v54 = *v53;
      v55 = *(v53 + 8);
      v56 = *(v4 + v145);
      v57 = *(v56 + 56);

      os_unfair_lock_lock(v57 + 4);
      swift_beginAccess();
      v58 = *(v56 + 64);
      v59 = *(v58 + 16);
      v149 = v54;
      if (v59 && (v60 = sub_100010DF4(v54, v55), (v61 & 1) != 0))
      {
        (*(v136 + 16))(v49, *(v58 + 56) + *(v136 + 72) * v60, v50);
        v62 = 0;
      }

      else
      {
        v62 = 1;
      }

      v47 &= v47 - 1;
      (*v143)(v49, v62, 1, v50);
      swift_endAccess();
      os_unfair_lock_unlock((*(v56 + 56) + 16));
      if ((*v142)(v49, 1, v50) == 1)
      {
        sub_100009C94(v49, &qword_100085940, &unk_1000693D0);
      }

      else
      {
        (*v139)(v51, v49, v50);
        if (MLHostTask.isTriggerTask.getter())
        {
          v63 = v132;
          MLHostTask.status.getter();
          v64 = v133;
          v65 = v134;
          (*v130)(v133, v131, v134);
          sub_100051EE4(&qword_100085E58, &type metadata accessor for TaskStatus);
          v66 = dispatch thunk of static Equatable.== infix(_:_:)();
          v67 = *v129;
          (*v129)(v64, v65);
          v67(v63, v65);
          if (v66)
          {
            v68 = v149;
            if (qword_1000850B8 != -1)
            {
              swift_once();
            }

            v69 = type metadata accessor for Logger();
            sub_1000098DC(v69, qword_100087610);

            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              v150 = v73;
              *v72 = v138;
              v74 = sub_100008A0C(v68, v55, &v150);

              *(v72 + 4) = v74;
              _os_log_impl(&_mh_execute_header, v70, v71, "Task %s is already running. Skipping activation.", v72, 0xCu);
              sub_100009914(v73);
            }

            else
            {
            }

            v51 = v148;
            v50 = v140;
            (*v137)(v148, v140);
LABEL_48:
            v42 = v52;
            v4 = v146;
          }

          else
          {
            v81 = v149;
            if (qword_1000850B8 != -1)
            {
              swift_once();
            }

            v82 = type metadata accessor for Logger();
            v83 = sub_1000098DC(v82, qword_100087610);

            v117 = v83;
            v84 = Logger.logObject.getter();
            v85 = static os_log_type_t.info.getter();

            v86 = os_log_type_enabled(v84, v85);
            v87 = v128;
            if (v86)
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v150 = v89;
              *v88 = v138;
              *(v88 + 4) = sub_100008A0C(v81, v55, &v150);
              _os_log_impl(&_mh_execute_header, v84, v85, "Requesting activation of task %s", v88, 0xCu);
              sub_100009914(v89);
            }

            v4 = v146;
            v90 = type metadata accessor for OnDemandTaskRequest();
            v91 = v123;
            (*(*(v90 - 8) + 56))(v123, 1, 1, v90);
            v92 = v148;
            v93 = v122;
            sub_100030AE0(v148, v91, v122);
            if (v87)
            {
              sub_100009C94(v91, &qword_100085E50, &qword_1000695A8);
              v94 = *v120;
              v95 = v124;
              v96 = v126;
              (*v120)(v124, v93, v126);
              v97 = v127;
              v94(v127, v95, v96);
              v98 = *v121;
              v99 = v125;
              (*v121)(v125, v97, v96);

              v100 = Logger.logObject.getter();
              v101 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v100, v101))
              {
                v102 = swift_slowAlloc();
                v116 = v101;
                v103 = v99;
                v104 = v102;
                v117 = swift_slowAlloc();
                v128 = swift_slowAlloc();
                v150 = v128;
                *v104 = v118;
                v105 = v98;
                v106 = sub_100008A0C(v149, v55, &v150);

                *(v104 + 4) = v106;
                *(v104 + 12) = 2112;
                sub_100051EE4(&qword_100085E60, &type metadata accessor for OnDemandError);
                swift_allocError();
                v105(v107, v103, v96);
                v108 = _swift_stdlib_bridgeErrorToNSError();
                v109 = v100;
                v110 = *v119;
                v111 = v103;
                v112 = v96;
                (*v119)(v111, v96);
                *(v104 + 14) = v108;
                v113 = v117;
                *v117 = v108;
                _os_log_impl(&_mh_execute_header, v109, v116, "Failed to activate task %s: %@", v104, 0x16u);
                sub_100009C94(v113, &qword_100085970, &qword_100068F48);

                sub_100009914(v128);

                v110(v127, v112);
              }

              else
              {

                v114 = *v119;
                (*v119)(v99, v96);
                v114(v127, v96);
              }

              v51 = v148;
              v50 = v140;
              (*v137)(v148, v140);
              v128 = 0;
              goto LABEL_48;
            }

            v128 = 0;

            sub_100009C94(v91, &qword_100085E50, &qword_1000695A8);
            v51 = v92;
            v50 = v140;
            (*v137)(v92, v140);
            v42 = v52;
          }

          v49 = v141;
          v48 = v144;
          if (!v47)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        (*v137)(v51, v50);
      }

      if (qword_1000850B8 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_1000098DC(v75, qword_100087610);

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v150 = v79;
        *v78 = v138;
        v80 = sub_100008A0C(v149, v55, &v150);

        *(v78 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v76, v77, "Task %s not found in task registry or is not a trigger task. Skipping activation.", v78, 0xCu);
        sub_100009914(v79);
        v50 = v140;
        v49 = v141;
      }

      else
      {
      }

      v42 = v52;
      v4 = v146;
      v51 = v148;
      v48 = v144;
      if (!v47)
      {
        goto LABEL_16;
      }

LABEL_15:
      v52 = v42;
    }
  }

  if (qword_1000850B8 != -1)
  {
LABEL_53:
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000098DC(v35, qword_100087610);
  v149 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v149, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v149, v36, "No topic or key provided. Skipping activation of trigger tasks.", v37, 2u);
  }

  v38 = v149;
}

void sub_100034304(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v89 = a2;
  v80 = a3;
  v6 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v79 = &v78 - v8;
  v9 = type metadata accessor for MLHostTask();
  v83 = *(v9 - 8);
  v84 = v9;
  v10 = *(v83 + 64);
  __chkstk_darwin(v9);
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TaskValidationError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v3;
  v17 = *(v3 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);
  v85 = a1;
  v18 = TaskDefinition.bundleIdentifier.getter();
  v20 = v19;
  os_unfair_lock_lock((*(v17 + 16) + 16));
  v21 = *(v17 + 24);

  sub_1000297E0(v22);
  v24 = v23;

  v88[0] = v18;
  v88[1] = v20;
  v87 = v88;
  LOBYTE(v18) = sub_100029F60(sub_100065978, v86, v24);

  os_unfair_lock_unlock((*(v17 + 16) + 16));
  if ((v18 & 1) == 0)
  {
    (*(v13 + 104))(v89, enum case for TaskValidationError.invalidBundleIdentifier(_:), v12);
    sub_100051EE4(&unk_100085990, &type metadata accessor for TaskValidationError);
    swift_willThrowTypedImpl();
    return;
  }

  v25 = v89;
  v26 = v85;
  _s20LighthouseBackground22validateTaskDefinitionyyAA0dE0VAA0D15ValidationErrorOYKF();
  if (v4)
  {
    (*(v13 + 32))(v25, v16, v12);
    return;
  }

  v27 = TaskDefinition.name.getter();
  v29 = v28;
  v30 = *(v82 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v31 = *(v30 + 56);
  v32 = __chkstk_darwin(v27);
  *(&v78 - 4) = v30;
  *(&v78 - 3) = v32;
  *(&v78 - 2) = v33;
  __chkstk_darwin(v32);
  *(&v78 - 2) = sub_10006464C;
  *(&v78 - 1) = v34;
  os_unfair_lock_lock(v31 + 4);
  sub_10006466C(v88);
  v89 = 0;
  os_unfair_lock_unlock(v31 + 4);
  v35 = LOBYTE(v88[0]);
  v36 = v79;
  sub_10001E8E8(v26, v79);
  v38 = v83;
  v37 = v84;
  if ((*(v83 + 48))(v36, 1, v84) == 1)
  {
    sub_100009C94(v36, &qword_100085940, &unk_1000693D0);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000098DC(v39, qword_100087610);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v88[0] = v43;
      *v42 = 136315138;
      v44 = sub_100008A0C(v27, v29, v88);

      *(v42 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to add task %s to TaskRegistry.", v42, 0xCu);
      sub_100009914(v43);
      v38 = v83;

      v37 = v84;
    }

    else
    {
    }

    goto LABEL_38;
  }

  v85 = v27;
  v45 = *(v38 + 32);
  v46 = v36;
  v47 = v81;
  v45(v81, v46, v37);
  if ((MLHostTask.isBackgroundTask.getter() & 1) == 0)
  {
LABEL_19:
    v56 = v47;
    if (MLHostTask.isTriggerTask.getter())
    {
      if (v35)
      {
        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_1000098DC(v57, qword_100087610);

        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v88[0] = v61;
          *v60 = 136315138;
          v62 = sub_100008A0C(v85, v29, v88);

          *(v60 + 4) = v62;
          _os_log_impl(&_mh_execute_header, v58, v59, "Task %s is replacing an existing task, disabling subscriptions.", v60, 0xCu);
          sub_100009914(v61);
          v38 = v83;

          v37 = v84;
        }

        else
        {
        }

        v74 = MLHostTask.name.getter();
        sub_10003240C(v74, v75);
      }

      v76 = MLHostTask.name.getter();
      sub_100031790(v76, v77);
    }

    v73 = v80;

    v45(v73, v56, v37);
    v72 = 0;
    goto LABEL_43;
  }

  if (v35)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000098DC(v48, qword_100087610);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v88[0] = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_100008A0C(v85, v29, v88);
      _os_log_impl(&_mh_execute_header, v49, v50, "Task %s is replacing an existing task, unregistering its existing activity.", v51, 0xCu);
      sub_100009914(v52);
      v38 = v83;

      v37 = v84;
    }

    v53 = MLHostTask.name.getter();
    sub_100063BB0(v53, v54);
  }

  v47 = v81;
  sub_10002D080(v81, 0);
  if (!v55)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_1000098DC(v63, qword_100087610);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    v66 = os_log_type_enabled(v64, v65);
    v67 = v85;
    if (!v66)
    {
      goto LABEL_37;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v88[0] = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_100008A0C(v67, v29, v88);
    v70 = "Task %s failed registration with DAS.";
    goto LABEL_36;
  }

  if (sub_1000509EC(v47))
  {
    goto LABEL_19;
  }

  v67 = v85;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_1000098DC(v71, qword_100087610);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v88[0] = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_100008A0C(v67, v29, v88);
    v70 = "Task %s failed scheduling with DAS.";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v64, v65, v70, v68, 0xCu);
    sub_100009914(v69);
    v38 = v83;

    v37 = v84;
  }

LABEL_37:

  sub_100018354(v67, v29);

  (*(v38 + 8))(v81, v37);
LABEL_38:
  v72 = 1;
  v73 = v80;
LABEL_43:
  (*(v38 + 56))(v73, v72, 1, v37);
}

uint64_t sub_100034DB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ListKeysDictionaryRequest();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for KVDatastoreError();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return (_swift_task_switch)(sub_100034EF8, 0, 0);
}

uint64_t sub_100034EF8()
{
  v1 = v0[3];
  if (ListKeysDictionaryRequest.group.getter() == 42 && v2 == 0xE100000000000000)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = v0[3];
      v6 = ListKeysDictionaryRequest.group.getter();
      goto LABEL_9;
    }
  }

  v6 = 0;
  v7 = 0;
LABEL_9:
  v0[14] = v6;
  v0[15] = v7;
  v0[16] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10003501C, v9, v8);
}

uint64_t sub_10003501C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  v0[17] = _s20LighthouseBackground11KVDatastoreC8listKeys5groupSaySSGSSSg_tAA0C5ErrorOYKFTj();
  v5 = v0[15];

  return (_swift_task_switch)(sub_1000350B8, 0, 0);
}

uint64_t sub_1000350B8()
{
  v1 = v0[17];
  v2 = v0[2];
  ListKeysDictionaryResponse.init(keys:)();
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100035154()
{
  v34 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = *(v0[9] + 32);
  v4(v1, v0[12], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[3];
  v9 = type metadata accessor for Logger();
  sub_1000098DC(v9, qword_100087610);
  (*(v6 + 16))(v5, v8, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136315138;
    v18 = ListKeysDictionaryRequest.group.getter();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_100008A0C(v18, v20, &v33);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed at listing keys: %s", v16, 0xCu);
    sub_100009914(v17);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v22 = v0[11];
  v23 = v0[8];
  v24 = v0[9];
  v25 = v0[2];
  (*(v24 + 16))(v0[10], v22, v23);
  ListKeysDictionaryResponse.init(error:)();
  (*(v24 + 8))(v22, v23);
  v27 = v0[12];
  v26 = v0[13];
  v29 = v0[10];
  v28 = v0[11];
  v30 = v0[7];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100035408(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  KeyTypeRequest = type metadata accessor for GetKeyTypeRequest();
  v3[5] = KeyTypeRequest;
  v5 = *(KeyTypeRequest - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(sub_1000089AC(&qword_100085EF0, &qword_1000695F8) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for KVDatastoreError();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000355A8, 0, 0);
}

uint64_t sub_1000355A8()
{
  v1 = v0[3];
  v0[18] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[19] = GetKeyTypeRequest.group.getter();
  v0[20] = v2;
  v0[21] = GetKeyTypeRequest.key.getter();
  v0[22] = v3;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10003568C, v5, v4);
}

uint64_t sub_10003568C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[10];
  _s20LighthouseBackground11KVDatastoreC10getKeyType5group3keyAC0e8CategoryF0OSgSS_SStAA0C5ErrorOYKFTj();
  v8 = v0[22];
  v9 = v0[20];

  return (_swift_task_switch)(sub_100035738, 0, 0);
}

uint64_t sub_100035738()
{
  v1 = v0[10];
  v2 = v0[2];
  sub_100009C2C(v1, v0[9], &qword_100085EF0, &qword_1000695F8);
  GetKeyTypeResponse.init(keyType:)();
  sub_100009C94(v1, &qword_100085EF0, &qword_1000695F8);
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[7];
  v10 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100035848()
{
  v62 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[11];
  v4 = *(v0[12] + 32);
  v4(v1, v0[16], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v58 = v0[14];
  v60 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[3];
  v12 = type metadata accessor for Logger();
  sub_1000098DC(v12, qword_100087610);
  v13 = *(v10 + 16);
  v13(v7, v11, v9);
  v13(v8, v11, v9);
  v14 = *(v5 + 16);
  v14(v58, v60, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[11];
  v19 = v0[12];
  v57 = v18;
  v59 = v0[14];
  v21 = v0[7];
  v20 = v0[8];
  v23 = v0[5];
  v22 = v0[6];
  if (v17)
  {
    log = v15;
    v24 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v24 = 136315650;
    KeyType = GetKeyTypeRequest.group.getter();
    v53 = v14;
    v27 = v26;
    v54 = v16;
    v28 = *(v22 + 8);
    v28(v20, v23);
    v29 = sub_100008A0C(KeyType, v27, &v61);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = GetKeyTypeRequest.key.getter();
    v32 = v31;
    v28(v21, v23);
    v33 = sub_100008A0C(v30, v32, &v61);

    *(v24 + 14) = v33;
    *(v24 + 22) = 2112;
    sub_100051EE4(&qword_100085EB8, &type metadata accessor for KVDatastoreError);
    swift_allocError();
    v53(v34, v59, v57);
    v35 = _swift_stdlib_bridgeErrorToNSError();
    v36 = *(v19 + 8);
    v36(v59, v57);
    *(v24 + 24) = v35;
    *v55 = v35;
    _os_log_impl(&_mh_execute_header, log, v54, "Failed at getting key type: %s, %s, %@", v24, 0x20u);
    sub_100009C94(v55, &qword_100085970, &qword_100068F48);

    swift_arrayDestroy();

    v37 = v53;
  }

  else
  {

    v36 = *(v19 + 8);
    v36(v59, v57);
    v38 = *(v22 + 8);
    v38(v21, v23);
    v38(v20, v23);
    v37 = v14;
  }

  v39 = v0[15];
  v40 = v0[11];
  v41 = v0[2];
  v37(v0[13], v39, v40);
  GetKeyTypeResponse.init(error:)();
  v36(v39, v40);
  v43 = v0[16];
  v42 = v0[17];
  v45 = v0[14];
  v44 = v0[15];
  v46 = v0[13];
  v48 = v0[9];
  v47 = v0[10];
  v50 = v0[7];
  v49 = v0[8];

  v51 = v0[1];

  return v51();
}

uint64_t sub_100035CFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  KeyExpirationRequest = type metadata accessor for GetKeyExpirationRequest();
  v3[5] = KeyExpirationRequest;
  v5 = *(KeyExpirationRequest - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(sub_1000089AC(&qword_100085ED0, &qword_1000695E0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = *(*(sub_1000089AC(&qword_100085ED8, &qword_1000695E8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v9 = type metadata accessor for KVDatastoreError();
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return (_swift_task_switch)(sub_100035EE0, 0, 0);
}

uint64_t sub_100035EE0()
{
  v1 = v0[3];
  v0[20] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[21] = GetKeyExpirationRequest.group.getter();
  v0[22] = v2;
  v0[23] = GetKeyExpirationRequest.key.getter();
  v0[24] = v3;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100035FC4, v5, v4);
}

uint64_t sub_100035FC4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[12];
  _s20LighthouseBackground11KVDatastoreC14getKeyMetadata5group3keyAC0F4TypeVSgSS_SStAA0C5ErrorOYKFTj();
  v8 = v0[24];
  v9 = v0[22];

  return (_swift_task_switch)(sub_100036070, 0, 0);
}

uint64_t sub_100036070()
{
  v1 = v0[11];
  sub_100009C2C(v0[12], v1, &qword_100085ED8, &qword_1000695E8);
  v2 = type metadata accessor for KVDatastore.MetadataType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[11];
  if (v5 == 1)
  {
    sub_100009C94(v0[11], &qword_100085ED8, &qword_1000695E8);
    v7 = 1;
  }

  else
  {
    v8 = v0[9];
    KVDatastore.MetadataType.expirationDate.getter();
    (*(v3 + 8))(v6, v2);
    v7 = 0;
  }

  v9 = v0[12];
  v11 = v0[9];
  v10 = v0[10];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v11, v7, 1, v12);
  sub_100009C2C(v9, v10, &qword_100085ED8, &qword_1000695E8);
  LODWORD(v9) = v4(v10, 1, v2);
  v13 = v0[10];
  if (v9 == 1)
  {
    sub_100009C94(v0[10], &qword_100085ED8, &qword_1000695E8);
  }

  else
  {
    v14 = v0[10];
    KVDatastore.MetadataType.timeToLive.getter();
    (*(v3 + 8))(v13, v2);
  }

  v15 = v0[12];
  v16 = v0[9];
  v17 = v0[2];
  GetKeyExpirationResponse.init(expirationDate:timeToLive:)();
  sub_100009C94(v15, &qword_100085ED8, &qword_1000695E8);
  v19 = v0[18];
  v18 = v0[19];
  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[15];
  v24 = v0[11];
  v23 = v0[12];
  v26 = v0[9];
  v25 = v0[10];
  v27 = v0[8];
  v30 = v0[7];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10003632C()
{
  v64 = v0;
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[13];
  v4 = *(v0[14] + 32);
  v4(v1, v0[18], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v59 = v0[16];
  v61 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[3];
  v12 = type metadata accessor for Logger();
  sub_1000098DC(v12, qword_100087610);
  v13 = *(v10 + 16);
  v13(v7, v11, v9);
  v13(v8, v11, v9);
  v14 = *(v5 + 16);
  v14(v59, v61, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[13];
  v19 = v0[14];
  v58 = v18;
  v60 = v0[16];
  v21 = v0[7];
  v20 = v0[8];
  v23 = v0[5];
  v22 = v0[6];
  if (v17)
  {
    log = v15;
    v24 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v24 = 136315650;
    KeyExpiration = GetKeyExpirationRequest.group.getter();
    v54 = v14;
    v27 = v26;
    v55 = v16;
    v28 = *(v22 + 8);
    v28(v20, v23);
    v29 = sub_100008A0C(KeyExpiration, v27, &v63);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = GetKeyExpirationRequest.key.getter();
    v32 = v31;
    v28(v21, v23);
    v33 = sub_100008A0C(v30, v32, &v63);

    *(v24 + 14) = v33;
    *(v24 + 22) = 2112;
    sub_100051EE4(&qword_100085EB8, &type metadata accessor for KVDatastoreError);
    swift_allocError();
    v54(v34, v60, v58);
    v35 = _swift_stdlib_bridgeErrorToNSError();
    v36 = *(v19 + 8);
    v36(v60, v58);
    *(v24 + 24) = v35;
    *v56 = v35;
    _os_log_impl(&_mh_execute_header, log, v55, "Failed at getting key expiration date: %s, %s, %@", v24, 0x20u);
    sub_100009C94(v56, &qword_100085970, &qword_100068F48);

    swift_arrayDestroy();

    v37 = v54;
  }

  else
  {

    v36 = *(v19 + 8);
    v36(v60, v58);
    v38 = *(v22 + 8);
    v38(v21, v23);
    v38(v20, v23);
    v37 = v14;
  }

  v39 = v0[17];
  v40 = v0[13];
  v41 = v0[2];
  v37(v0[15], v39, v40);
  GetKeyExpirationResponse.init(error:)();
  v36(v39, v40);
  v43 = v0[18];
  v42 = v0[19];
  v45 = v0[16];
  v44 = v0[17];
  v46 = v0[15];
  v48 = v0[11];
  v47 = v0[12];
  v50 = v0[9];
  v49 = v0[10];
  v51 = v0[8];
  v62 = v0[7];

  v52 = v0[1];

  return v52();
}

uint64_t sub_1000367F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for KVDatastoreError();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000368E0, 0, 0);
}

uint64_t sub_1000368E0()
{
  v1 = v0[3];
  if (ClearDictionaryRequest.group.getter() == 42 && v2 == 0xE100000000000000)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = v0[3];
      v6 = ClearDictionaryRequest.group.getter();
      v8 = v7;
      goto LABEL_9;
    }
  }

  v6 = 0;
  v8 = 0;
LABEL_9:
  v0[11] = v6;
  v0[12] = v8;
  v9 = v0[3];
  v0[13] = ClearDictionaryRequest.key.getter();
  v0[14] = v10;
  if (v10)
  {
    if (!v8)
    {
      v16 = v0[8];
      v17 = v0[5];
      v18 = v0[6];
      v19 = v0[2];

      (*(v18 + 104))(v16, enum case for KVDatastoreError.invalidGroup(_:), v17);
      ClearDictionaryResponse.init(error:)();
      v21 = v0[9];
      v20 = v0[10];
      v23 = v0[7];
      v22 = v0[8];

      v24 = v0[1];

      __asm { BRAA            X1, X16 }
    }

    v0[15] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
    type metadata accessor for KVDatastore();
    sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v14 = sub_100036C68;
  }

  else if (v8)
  {
    v0[16] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
    type metadata accessor for KVDatastore();
    sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v15;
    v14 = sub_100036DA8;
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000098DC(v25, qword_100087610);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Clearing all dictionary.", v28, 2u);
    }

    v29 = v0[4];

    v0[17] = *(v29 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
    type metadata accessor for KVDatastore();
    sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v30;
    v14 = sub_100036EB0;
  }

  return (_swift_task_switch)(v14, v11, v13);
}

uint64_t sub_100036C68()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  *(v0 + 144) = _s20LighthouseBackground11KVDatastoreC8clearKey5group3keySbSS_SStAA0C5ErrorOYKFTj() & 1;
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);

  return (_swift_task_switch)(sub_100036D18, 0, 0);
}

uint64_t sub_100036D18()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 16);
  ClearDictionaryResponse.init(result:)();
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100036DA8()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  dispatch thunk of KVDatastore.clearGroup(group:)();

  return (_swift_task_switch)(sub_100036E20, 0, 0);
}

uint64_t sub_100036E20()
{
  v1 = v0[2];
  ClearDictionaryResponse.init(result:)();
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100036EB0()
{
  v1 = *(v0 + 136);
  dispatch thunk of KVDatastore.clear()();

  return (_swift_task_switch)(sub_1000658C4, 0, 0);
}

uint64_t sub_100036F18()
{
  v30 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];
  v4 = *(v0[6] + 32);
  v4(v1, v0[9], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[14];
  v6 = v0[12];
  v7 = type metadata accessor for Logger();
  sub_1000098DC(v7, qword_100087610);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  if (v10)
  {
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_100008A0C(v14, v13, &v29);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    v17 = sub_100008A0C(v12, v11, &v29);

    *(v15 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed at clearing key: %s/%s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[12];
  }

  v19 = v0[7];
  v20 = v0[5];
  v21 = v0[6];
  v22 = v0[2];
  (*(v21 + 16))(v0[8], v19, v20);
  ClearDictionaryResponse.init(error:)();
  (*(v21 + 8))(v19, v20);
  v24 = v0[9];
  v23 = v0[10];
  v26 = v0[7];
  v25 = v0[8];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000371D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for KVDatastoreInfo() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return (_swift_task_switch)(sub_100037264, 0, 0);
}

uint64_t sub_100037264()
{
  v1 = v0[3];
  if (GetInfoDictionaryRequest.estimated.getter())
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000098DC(v2, qword_100087610);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Not calculating store size and keys size", v5, 2u);
    }
  }

  v0[6] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_1000373F4, v7, v6);
}

uint64_t sub_1000373F4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  dispatch thunk of KVDatastore.getInfo()();

  return (_swift_task_switch)(sub_10003745C, 0, 0);
}

uint64_t sub_10003745C()
{
  v1 = v0[5];
  v2 = v0[2];
  GetInfoDictionaryResponse.init(info:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000374CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  KeyDictionaryRequest = type metadata accessor for GetKeyDictionaryRequest();
  v3[5] = KeyDictionaryRequest;
  v5 = *(KeyDictionaryRequest - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for KVDatastoreError();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return (_swift_task_switch)(sub_100037628, 0, 0);
}

uint64_t sub_100037628()
{
  v1 = *(v0 + 24);
  *(v0 + 128) = *(*(v0 + 32) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  *(v0 + 136) = GetKeyDictionaryRequest.group.getter();
  *(v0 + 144) = v2;
  *(v0 + 152) = GetKeyDictionaryRequest.key.getter();
  *(v0 + 160) = v3;
  *(v0 + 184) = GetKeyDictionaryRequest.deleteOnAccess.getter() & 1;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100037718, v5, v4);
}

uint64_t sub_100037718()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = _s20LighthouseBackground11KVDatastoreC6getKey5group3key14deleteOnAccess10Foundation4DataVSgSS_SSSbtAA0C5ErrorOYKFTj();
  v10 = v9;
  v11 = *(v0 + 160);
  v12 = *(v0 + 144);

  *(v0 + 168) = v10;
  *(v0 + 176) = v8;

  return (_swift_task_switch)(sub_1000377D8, 0, 0);
}

uint64_t sub_1000377D8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[2];
  GetKeyDictionaryResponse.init(value:)();
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  v10 = v0[7];
  v9 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100037890()
{
  v60 = v0;
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  v4(v1, v0[14], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v56 = v0[12];
  v58 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[3];
  v12 = type metadata accessor for Logger();
  sub_1000098DC(v12, qword_100087610);
  v13 = *(v10 + 16);
  v13(v7, v11, v9);
  v13(v8, v11, v9);
  v14 = *(v5 + 16);
  v14(v56, v58, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[9];
  v19 = v0[10];
  v55 = v18;
  v57 = v0[12];
  v21 = v0[7];
  v20 = v0[8];
  v23 = v0[5];
  v22 = v0[6];
  if (v17)
  {
    log = v15;
    v24 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v24 = 136315650;
    KeyDictionary = GetKeyDictionaryRequest.group.getter();
    v51 = v14;
    v27 = v26;
    v52 = v16;
    v28 = *(v22 + 8);
    v28(v20, v23);
    v29 = sub_100008A0C(KeyDictionary, v27, &v59);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v30 = GetKeyDictionaryRequest.key.getter();
    v32 = v31;
    v28(v21, v23);
    v33 = sub_100008A0C(v30, v32, &v59);

    *(v24 + 14) = v33;
    *(v24 + 22) = 2112;
    sub_100051EE4(&qword_100085EB8, &type metadata accessor for KVDatastoreError);
    swift_allocError();
    v51(v34, v57, v55);
    v35 = _swift_stdlib_bridgeErrorToNSError();
    v36 = *(v19 + 8);
    v36(v57, v55);
    *(v24 + 24) = v35;
    *v53 = v35;
    _os_log_impl(&_mh_execute_header, log, v52, "Failed at getting key: %s, %s, %@", v24, 0x20u);
    sub_100009C94(v53, &qword_100085970, &qword_100068F48);

    swift_arrayDestroy();

    v37 = v51;
  }

  else
  {

    v36 = *(v19 + 8);
    v36(v57, v55);
    v38 = *(v22 + 8);
    v38(v21, v23);
    v38(v20, v23);
    v37 = v14;
  }

  v39 = v0[13];
  v40 = v0[9];
  v41 = v0[2];
  v37(v0[11], v39, v40);
  GetKeyDictionaryResponse.init(error:)();
  v36(v39, v40);
  v43 = v0[14];
  v42 = v0[15];
  v45 = v0[12];
  v44 = v0[13];
  v46 = v0[11];
  v48 = v0[7];
  v47 = v0[8];

  v49 = v0[1];

  return v49();
}

uint64_t sub_100037D30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SetKeyDictionaryRequest();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for KVDatastoreError();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_100037E80, 0, 0);
}

uint64_t sub_100037E80()
{
  v1 = *(v0 + 24);
  *(v0 + 120) = *(*(v0 + 32) + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  *(v0 + 128) = SetKeyDictionaryRequest.group.getter();
  *(v0 + 136) = v2;
  *(v0 + 144) = SetKeyDictionaryRequest.key.getter();
  *(v0 + 152) = v3;
  *(v0 + 160) = SetKeyDictionaryRequest.value.getter();
  *(v0 + 168) = v4;
  *(v0 + 176) = SetKeyDictionaryRequest.timeToLive.getter();
  *(v0 + 184) = v5;
  *(v0 + 192) = v6;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100037F78, v8, v7);
}

uint64_t sub_100037F78()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v14 = *(v0 + 104);
  v13 = *(v0 + 192) & 1;
  _s20LighthouseBackground11KVDatastoreC6setKey5group3key5value10timeToLiveySS_SS10Foundation4DataVs8DurationVSgtAA0C5ErrorOYKFTj();
  v10 = *(v0 + 152);
  v11 = *(v0 + 136);
  sub_1000099D4(*(v0 + 160), *(v0 + 168));

  return (_swift_task_switch)(sub_100038044, 0, 0);
}

uint64_t sub_100038044()
{
  v1 = v0[2];
  SetKeyDictionaryResponse.init(result:)();
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[7];
  v6 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000380F0()
{
  v43 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  v4(v1, v0[13], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v11(v5, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[7];
  v15 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = SetKeyDictionaryRequest.group.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100008A0C(v20, v22, &v42);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = SetKeyDictionaryRequest.key.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_100008A0C(v25, v27, &v42);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed at setting key: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v16, v18);
    v29(v15, v18);
  }

  v30 = v0[12];
  v31 = v0[9];
  v32 = v0[10];
  v33 = v0[2];
  (*(v32 + 16))(v0[11], v30, v31);
  SetKeyDictionaryResponse.init(error:)();
  (*(v32 + 8))(v30, v31);
  v35 = v0[13];
  v34 = v0[14];
  v37 = v0[11];
  v36 = v0[12];
  v39 = v0[7];
  v38 = v0[8];

  v40 = v0[1];

  return v40();
}

uint64_t sub_10003843C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ListLengthDictionaryRequest();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for KVDatastoreError();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_10003858C, 0, 0);
}

uint64_t sub_10003858C()
{
  v1 = v0[3];
  v0[15] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[16] = ListLengthDictionaryRequest.group.getter();
  v0[17] = v2;
  v0[18] = ListLengthDictionaryRequest.key.getter();
  v0[19] = v3;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100038670, v5, v4);
}

uint64_t sub_100038670()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = _s20LighthouseBackground11KVDatastoreC10listLength5group3keySiSgSS_SStAA0C5ErrorOYKFTj();
  v9 = v8;
  v10 = *(v0 + 152);
  v11 = *(v0 + 136);

  *(v0 + 168) = v9;
  *(v0 + 160) = v7;

  return (_swift_task_switch)(sub_100038730, 0, 0);
}

uint64_t sub_100038730()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 16);
  v3 = *(v0 + 168) & 1;
  ListLengthDictionaryResponse.init(length:)();
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000387E4()
{
  v43 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  v4(v1, v0[13], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v11(v5, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[7];
  v15 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = ListLengthDictionaryRequest.group.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100008A0C(v20, v22, &v42);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = ListLengthDictionaryRequest.key.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_100008A0C(v25, v27, &v42);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed at calling list length: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v16, v18);
    v29(v15, v18);
  }

  v30 = v0[12];
  v31 = v0[9];
  v32 = v0[10];
  v33 = v0[2];
  (*(v32 + 16))(v0[11], v30, v31);
  ListLengthDictionaryResponse.init(error:)();
  (*(v32 + 8))(v30, v31);
  v35 = v0[13];
  v34 = v0[14];
  v37 = v0[11];
  v36 = v0[12];
  v39 = v0[7];
  v38 = v0[8];

  v40 = v0[1];

  return v40();
}

uint64_t sub_100038B30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ListIndexDictionaryRequest();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v10 = type metadata accessor for KVDatastoreError();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return (_swift_task_switch)(sub_100038CF4, 0, 0);
}

uint64_t sub_100038CF4()
{
  v1 = v0[13];
  v2 = v0[3];
  v0[20] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[21] = ListIndexDictionaryRequest.group.getter();
  v0[22] = v3;
  v0[23] = ListIndexDictionaryRequest.key.getter();
  v0[24] = v4;
  ListIndexDictionaryRequest.date.getter();
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100038DE4, v6, v5);
}

uint64_t sub_100038DE4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 104);
  v8 = _s20LighthouseBackground11KVDatastoreC9listIndex5group3key9timestampSiSgSS_SS10Foundation4DateVtAA0C5ErrorOYKFTj();
  v10 = v9;
  v11 = *(v0 + 192);
  v12 = *(v0 + 176);
  v13 = *(v0 + 104);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  *(v0 + 224) = v10;
  *(v0 + 200) = v8;
  (*(v15 + 8))(v13, v14);

  return (_swift_task_switch)(sub_100038EE8, 0, 0);
}

uint64_t sub_100038EE8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 16);
  v3 = *(v0 + 224) & 1;
  ListIndexDictionaryResponse.init(index:)();
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100038FC4()
{
  v62 = v0;
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  v4 = *(v0[15] + 32);
  v4(v1, v0[18], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  v10 = v0[3];
  v11 = type metadata accessor for Logger();
  sub_1000098DC(v11, qword_100087610);
  v12 = *(v8 + 16);
  v12(v6, v10, v9);
  v12(v5, v10, v9);
  v12(v7, v10, v9);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v58 = v0[26];
    v59 = v0[27];
    v60 = v14;
    v15 = v0[9];
    v16 = v0[10];
    v17 = v0[8];
    v55 = v0[7];
    v56 = v0[12];
    log = v13;
    v18 = v0[5];
    v19 = v0[6];
    v20 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v20 = 136315650;
    v21 = ListIndexDictionaryRequest.group.getter();
    v23 = v22;
    v24 = *(v19 + 8);
    v24(v15, v18);
    v25 = sub_100008A0C(v21, v23, &v61);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = ListIndexDictionaryRequest.key.getter();
    v28 = v27;
    v24(v17, v18);
    v29 = sub_100008A0C(v26, v28, &v61);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2080;
    ListIndexDictionaryRequest.date.getter();
    sub_100051EE4(&unk_100085980, &type metadata accessor for Date);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v58(v56, v16);
    v24(v55, v18);
    v33 = sub_100008A0C(v30, v32, &v61);

    *(v20 + 24) = v33;
    _os_log_impl(&_mh_execute_header, log, v60, "Failed at calling list index: %s, %s, %s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v35 = v0[8];
    v34 = v0[9];
    v37 = v0[6];
    v36 = v0[7];
    v38 = v0[5];

    v39 = *(v37 + 8);
    v39(v36, v38);
    v39(v35, v38);
    v39(v34, v38);
  }

  v40 = v0[17];
  v41 = v0[14];
  v42 = v0[15];
  v43 = v0[2];
  (*(v42 + 16))(v0[16], v40, v41);
  ListIndexDictionaryResponse.init(error:)();
  (*(v42 + 8))(v40, v41);
  v45 = v0[18];
  v44 = v0[19];
  v47 = v0[16];
  v46 = v0[17];
  v49 = v0[12];
  v48 = v0[13];
  v51 = v0[8];
  v50 = v0[9];
  v52 = v0[7];

  v53 = v0[1];

  return v53();
}

uint64_t sub_100039430(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  DictionaryRequest = type metadata accessor for ListGetDictionaryRequest();
  v3[5] = DictionaryRequest;
  v5 = *(DictionaryRequest - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for KVDatastoreError();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_100039580, 0, 0);
}

uint64_t sub_100039580()
{
  v1 = v0[3];
  v0[15] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[16] = ListGetDictionaryRequest.group.getter();
  v0[17] = v2;
  v0[18] = ListGetDictionaryRequest.key.getter();
  v0[19] = v3;
  v0[20] = ListGetDictionaryRequest.index.getter();
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10003966C, v5, v4);
}

uint64_t sub_10003966C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = _s20LighthouseBackground11KVDatastoreC7listGet5group3key5index10Foundation4DataVSgSS_SSSitAA0C5ErrorOYKFTj();
  v10 = v9;
  v11 = v0[19];
  v12 = v0[17];

  v0[21] = v10;
  v0[22] = v8;

  return (_swift_task_switch)(sub_100039728, 0, 0);
}

uint64_t sub_100039728()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[2];
  ListGetDictionaryResponse.init(value:)();
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[7];
  v8 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000397D4()
{
  v43 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  v4(v1, v0[13], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v11(v5, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[7];
  v15 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v19 = 136315394;
    Dictionary = ListGetDictionaryRequest.group.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100008A0C(Dictionary, v22, &v42);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = ListGetDictionaryRequest.key.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_100008A0C(v25, v27, &v42);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed at calling list get: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v16, v18);
    v29(v15, v18);
  }

  v30 = v0[12];
  v31 = v0[9];
  v32 = v0[10];
  v33 = v0[2];
  (*(v32 + 16))(v0[11], v30, v31);
  ListGetDictionaryResponse.init(error:)();
  (*(v32 + 8))(v30, v31);
  v35 = v0[13];
  v34 = v0[14];
  v37 = v0[11];
  v36 = v0[12];
  v39 = v0[7];
  v38 = v0[8];

  v40 = v0[1];

  return v40();
}

uint64_t sub_100039B20(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = type metadata accessor for ListPushDictionaryRequest();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v3[19] = v10;
  v11 = *(v10 - 8);
  v3[20] = v11;
  v12 = *(v11 + 64) + 15;
  v3[21] = swift_task_alloc();
  v13 = type metadata accessor for KVDatastoreError();
  v3[22] = v13;
  v14 = *(v13 - 8);
  v3[23] = v14;
  v15 = *(v14 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return (_swift_task_switch)(sub_100039D28, 0, 0);
}

uint64_t sub_100039D28()
{
  v1 = v0[10];
  v0[28] = *(v0[11] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[29] = ListPushDictionaryRequest.group.getter();
  v0[30] = v2;
  v0[31] = ListPushDictionaryRequest.key.getter();
  v0[32] = v3;
  v0[33] = ListPushDictionaryRequest.value.getter();
  v0[34] = v4;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100039E14, v6, v5);
}

uint64_t sub_100039E14()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[28];
  v11 = v0[26];
  _s20LighthouseBackground11KVDatastoreC8listPush5group3key5value10timeToLiveySS_SS10Foundation4DataVs8DurationVSgtAA0C5ErrorOYKFTj();
  v8 = v0[32];
  v9 = v0[30];
  sub_1000099D4(v0[33], v0[34]);

  return (_swift_task_switch)(sub_100039EE0, 0, 0);
}

uint64_t sub_100039EE0()
{
  v1 = v0[21];
  v27 = v0[20];
  v28 = v0[19];
  v2 = v0[16];
  v26 = v0[17];
  v3 = v0[10];
  v29 = v0[9];
  v24 = v0[18];
  v25 = *(v0[11] + 40);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = ListPushDictionaryRequest.group.getter();
  v7 = v6;
  v8 = ListPushDictionaryRequest.key.getter();
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = v10;
  v0[6] = sub_1000654F4;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000658D0;
  v0[5] = &unk_1000833D8;
  v12 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_100051EE4(&qword_100085F28, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000089AC(&qword_100085F30, &qword_100069618);
  sub_1000656B8(&qword_100085F38, &qword_100085F30, &qword_100069618);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v26 + 8))(v24, v2);
  (*(v27 + 8))(v1, v28);
  v13 = v0[7];

  ListPushDictionaryResponse.init(result:)();
  v15 = v0[26];
  v14 = v0[27];
  v17 = v0[24];
  v16 = v0[25];
  v18 = v0[21];
  v19 = v0[18];
  v21 = v0[14];
  v20 = v0[15];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10003A1B4()
{
  v45 = v0;
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v4 = *(v0[23] + 32);
  v4(v1, v0[26], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[10];
  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v11(v5, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = ListPushDictionaryRequest.group.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100008A0C(v20, v22, &v44);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = ListPushDictionaryRequest.key.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_100008A0C(v25, v27, &v44);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed at calling list push: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v16, v18);
    v29(v15, v18);
  }

  v30 = v0[25];
  v31 = v0[22];
  v32 = v0[23];
  v33 = v0[9];
  (*(v32 + 16))(v0[24], v30, v31);
  ListPushDictionaryResponse.init(error:)();
  (*(v32 + 8))(v30, v31);
  v35 = v0[26];
  v34 = v0[27];
  v37 = v0[24];
  v36 = v0[25];
  v38 = v0[21];
  v39 = v0[18];
  v41 = v0[14];
  v40 = v0[15];

  v42 = v0[1];

  return v42();
}

uint64_t sub_10003A518()
{
  v0 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    DatastoreKey.init(group:key:)();
    v5 = type metadata accessor for DatastoreKey();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    sub_1000333B0(0, 0, v3);

    return sub_100009C94(v3, &qword_100085C20, &qword_1000693C0);
  }

  return result;
}

uint64_t sub_10003A66C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10003A6B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ListPopDictionaryRequest();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for KVDatastoreError();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_10003A800, 0, 0);
}

uint64_t sub_10003A800()
{
  v1 = v0[3];
  v0[15] = *(v0[4] + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
  v0[16] = ListPopDictionaryRequest.group.getter();
  v0[17] = v2;
  v0[18] = ListPopDictionaryRequest.key.getter();
  v0[19] = v3;
  type metadata accessor for KVDatastore();
  sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10003A8E4, v5, v4);
}

uint64_t sub_10003A8E4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[13];
  v7 = _s20LighthouseBackground11KVDatastoreC7listPop5group3key10Foundation4DataVSgSS_SStAA0C5ErrorOYKFTj();
  v9 = v8;
  v10 = v0[19];
  v11 = v0[17];

  v0[20] = v9;
  v0[21] = v7;

  return (_swift_task_switch)(sub_10003A9A0, 0, 0);
}

uint64_t sub_10003A9A0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[2];
  ListPopDictionaryResponse.init(value:)();
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[7];
  v8 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003AA4C()
{
  v43 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = *(v0[10] + 32);
  v4(v1, v0[13], v3);
  v4(v2, v1, v3);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = type metadata accessor for Logger();
  sub_1000098DC(v10, qword_100087610);
  v11 = *(v8 + 16);
  v11(v6, v9, v7);
  v11(v5, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[7];
  v15 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = ListPopDictionaryRequest.group.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v15, v18);
    v24 = sub_100008A0C(v20, v22, &v42);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = ListPopDictionaryRequest.key.getter();
    v27 = v26;
    v23(v16, v18);
    v28 = sub_100008A0C(v25, v27, &v42);

    *(v19 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed at calling list pop: %s, %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v29 = *(v17 + 8);
    v29(v16, v18);
    v29(v15, v18);
  }

  v30 = v0[12];
  v31 = v0[9];
  v32 = v0[10];
  v33 = v0[2];
  (*(v32 + 16))(v0[11], v30, v31);
  ListPopDictionaryResponse.init(error:)();
  (*(v32 + 8))(v30, v31);
  v35 = v0[13];
  v34 = v0[14];
  v37 = v0[11];
  v36 = v0[12];
  v39 = v0[7];
  v38 = v0[8];

  v40 = v0[1];

  return v40();
}

uint64_t sub_10003AD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v69 = a3;
  v73 = type metadata accessor for RemoteHandler();
  v61 = *(v73 - 8);
  v7 = *(v61 + 8);
  __chkstk_darwin(v73);
  v72 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000089AC(&qword_100085F98, &unk_100069660);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v59 - v14;
  v16 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v59 - v18;
  v20 = type metadata accessor for StreamMessage();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v20);
  v68 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v59 - v25;
  sub_100051EE4(&unk_100085FA8, &type metadata accessor for StreamMessage);
  v70 = a1;
  v27 = dispatch thunk of StreamMessageWithTopic.topic.getter();
  v28 = a2;
  LOBYTE(a2) = sub_1000292B0(v27, v29, a2);

  if (a2 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v28))
  {
    v67 = v20;
    v59 = a4;
    v30 = *(v71 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry);
    v31 = StreamMessage.topic.getter();
    v33 = v32;
    v34 = type metadata accessor for UUID();
    a4 = v61;
    v35 = *(v34 - 8);
    (*(v35 + 16))(v19, v69, v34);
    v36 = *(v35 + 56);
    v65 = v34;
    v36(v19, 0, 1, v34);
    v37 = sub_10000A764(v31, v33, v19);

    sub_100009C94(v19, &qword_100085FA0, &qword_1000690F8);
    v20 = 0;
    v26 = v37[2];
    v62 = (v21 + 1);
    v63 = (a4 + 32);
    v60 = (v35 + 8);
    v61 = a4 + 8;
    v21 = &qword_100085A00;
    v66 = v15;
    v64 = v13;
    if (v26)
    {
      goto LABEL_5;
    }

LABEL_4:
    v38 = sub_1000089AC(&qword_100085A00, &unk_100069670);
    (*(*(v38 - 8) + 56))(v13, 1, 1, v38);
    v39 = v26;
    while (1)
    {
      sub_100009CF4(v13, v15, &qword_100085F98, &unk_100069660);
      v42 = sub_1000089AC(&qword_100085A00, &unk_100069670);
      if ((*(*(v42 - 8) + 48))(v15, 1, v42) == 1)
      {

        a4 = v59;
        goto LABEL_12;
      }

      (*v63)(v72, &v15[*(v42 + 48)], v73);
      mach_absolute_time();
      UUID.uuidString.getter();
      StreamMessage.topic.getter();
      a4 = v26;
      StreamMessage.data.getter();
      v71 = v39;
      v43 = v68;
      v21 = &qword_100085A00;
      StreamMessage.init(timestamp:sourceId:topic:data:)();
      sub_100051EE4(&qword_100085D70, &type metadata accessor for StreamMessage);
      v44 = v67;
      v45 = v72;
      RemoteHandler.sendNoReply<A>(_:)();
      v46 = v43;
      v20 = v71;
      (*v62)(v46, v44);
      v13 = v64;
      v15 = v66;
      (*v61)(v45, v73);
      (*v60)(v15, v65);
      if (v20 == v26)
      {
        goto LABEL_4;
      }

LABEL_5:
      if ((v20 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v20 >= v37[2])
      {
        goto LABEL_18;
      }

      v40 = sub_1000089AC(&qword_100085A00, &unk_100069670);
      v41 = *(v40 - 8);
      sub_100009C2C(v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v20, v13, &qword_100085A00, &unk_100069670);
      v39 = (v20 + 1);
      (*(v41 + 56))(v13, 0, 1, v40);
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else if (qword_1000850B8 == -1)
  {
    goto LABEL_14;
  }

  swift_once();
LABEL_14:
  v49 = type metadata accessor for Logger();
  sub_1000098DC(v49, qword_100087610);
  (v21[2])(v26, v70, v20);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = v20;
    v54 = swift_slowAlloc();
    v74 = v54;
    *v52 = 136315138;
    v55 = StreamMessage.topic.getter();
    v57 = v56;
    (v21[1])(v26, v53);
    v58 = sub_100008A0C(v55, v57, &v74);

    *(v52 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "Dropping message for topic %s because it is not allowed.", v52, 0xCu);
    sub_100009914(v54);
  }

  else
  {

    (v21[1])(v26, v20);
  }

LABEL_12:
  v47 = type metadata accessor for EmptyMessage();
  return (*(*(v47 - 8) + 56))(a4, 1, 1, v47);
}

uint64_t sub_10003B5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v56 = a3;
  v57 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StreamError();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  __chkstk_darwin(v16);
  v49 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StreamPublisherRequest();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051EE4(&qword_100085F78, &type metadata accessor for StreamPublisherRequest);
  v24 = dispatch thunk of StreamMessageWithTopic.topic.getter();
  v26 = sub_1000292B0(v24, v25, a2);

  if (v26 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, a2))
  {
    v27 = *(v4 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry);
    v28 = StreamPublisherRequest.topic.getter();
    v30 = sub_10000BB60(v56, v28, v29);

    if (v30)
    {
      v31 = *(v5 + 40);
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = StreamPublisherRequest.topic.getter();
      v35 = v34;
      v36 = swift_allocObject();
      v36[2] = v32;
      v36[3] = v33;
      v36[4] = v35;
      aBlock[4] = sub_100065588;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000658D0;
      aBlock[3] = &unk_100083428;
      v37 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v58 = &_swiftEmptyArrayStorage;
      sub_100051EE4(&qword_100085F28, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000089AC(&qword_100085F30, &qword_100069618);
      sub_1000656B8(&qword_100085F38, &qword_100085F30, &qword_100069618);
      v38 = v55;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);
      (*(v54 + 8))(v11, v38);
      (*(v52 + 8))(v15, v53);

      UUID.uuidString.getter();
      return StreamPublisherResponse.init(result:publisherId:)();
    }

    else
    {
      UUID.uuidString.getter();

      return StreamPublisherResponse.init(result:publisherId:)();
    }
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000098DC(v40, qword_100087610);
    (*(v20 + 16))(v23, a1, v19);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136315138;
      v45 = StreamPublisherRequest.topic.getter();
      v47 = v46;
      (*(v20 + 8))(v23, v19);
      v48 = sub_100008A0C(v45, v47, aBlock);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Dropping request for topic %s because it is not allowed.", v43, 0xCu);
      sub_100009914(v44);
    }

    else
    {

      (*(v20 + 8))(v23, v19);
    }

    (*(v50 + 104))(v49, enum case for StreamError.invalidTopic(_:), v51);
    return StreamPublisherResponse.init(error:)();
  }
}

uint64_t sub_10003BC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = type metadata accessor for DatastoreKey();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    sub_1000333B0(a2, a3, v8);

    return sub_100009C94(v8, &qword_100085C20, &qword_1000693C0);
  }

  return result;
}

void sub_10003BDB8()
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000098DC(v0, qword_100087610);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received SIGTERM, shutting down daemon", v3, 2u);
  }

  exit(0);
}

uint64_t sub_10003BE88()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100051EE4(&qword_100085F28, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000089AC(&qword_100085F30, &qword_100069618);
  sub_1000656B8(&qword_100085F38, &qword_100085F30, &qword_100069618);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10003BF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085C50, &qword_100069400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000098DC(v13, qword_100087610);
  swift_unknownObjectRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28 = v7;
    v19 = v18;
    v30 = v18;
    *v17 = 136315138;
    swift_getObjectType();
    OS_dispatch_source_memorypressure.data.getter();
    v20 = OS_dispatch_source.MemoryPressureEvent.description.getter();
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = sub_100008A0C(v20, v22, &v30);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received memory pressure warning (event: %s)", v17, 0xCu);
    sub_100009914(v19);
    v7 = v28;

    a2 = v29;
  }

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a1;
  v25[5] = a2;
  swift_unknownObjectRetain();

  sub_10002F68C(0, 0, v7, &unk_1000696D8, v25);
}

uint64_t sub_10003C270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return (_swift_task_switch)(sub_10003C33C, 0, 0);
}

uint64_t sub_10003C33C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  swift_getObjectType();
  OS_dispatch_source_memorypressure.data.getter();
  static OS_dispatch_source.MemoryPressureEvent.critical.getter();
  sub_100051EE4(&qword_100086020, &type metadata accessor for OS_dispatch_source.MemoryPressureEvent);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v0[2] == v0[3])
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000098DC(v7, qword_100087610);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Reducing memory usage in KV store due to pressure.", v10, 2u);
    }

    v11 = v0[5];

    v0[10] = *(v11 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
    type metadata accessor for KVDatastore();
    sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    v15 = sub_10003C6A8;
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000098DC(v16, qword_100087610);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Pruning KV store for expired keys due to memory pressure.", v19, 2u);
    }

    v20 = v0[5];

    v0[11] = *(v20 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_keyValueStore);
    type metadata accessor for KVDatastore();
    sub_100051EE4(&qword_100085CB0, &type metadata accessor for KVDatastore);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v21;
    v15 = sub_10003C718;
  }

  return (_swift_task_switch)(v15, v12, v14);
}

uint64_t sub_10003C6A8()
{
  v1 = v0[10];
  dispatch thunk of KVDatastore.reduceMemoryUsage()();
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10003C718()
{
  v1 = v0[11];
  dispatch thunk of KVDatastore.pruneExpiredKeys()();
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

id sub_10003C788(void *a1)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000098DC(v2, qword_100087610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100008A0C(0xD000000000000019, 0x8000000100072E40, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "Daemon performing %s activity.", v5, 0xCu);
    sub_100009914(v6);
  }

  return [a1 setTaskCompleted];
}

uint64_t sub_10003C8E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v67 = a3;
  v4 = type metadata accessor for RemoteProcessInfo();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v60 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v17 = (&v60 - v16);
  v68 = a1;
  XPCListener.IncomingSessionRequest.withUnsafeAuditToken<A>(_:)();
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_1000098DC(v18, qword_100087610);
  v63 = v5[2];
  v63(v15, v17, v4);
  v64 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v62 = v17;
    v23 = v22;
    v24 = swift_slowAlloc();
    v65 = v4;
    v60 = v24;
    v70[0] = v24;
    *v23 = 136315138;
    sub_100051EE4(&qword_100085D38, &type metadata accessor for RemoteProcessInfo);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v12;
    v27 = v9;
    v28 = v5;
    v30 = v29;
    v66 = v28[1];
    v66(v15, v65);
    v31 = sub_100008A0C(v25, v30, v70);
    v5 = v28;
    v9 = v27;
    v12 = v26;

    *(v23 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received incoming request from: %s", v23, 0xCu);
    sub_100009914(v60);
    v4 = v65;

    v17 = v62;
  }

  else
  {

    v66 = v5[1];
    v66(v15, v4);
  }

  v32 = sub_10003D084();
  if (v33)
  {
    v63(v12, v17, v4);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v17;
      v37 = swift_slowAlloc();
      v38 = v12;
      v39 = swift_slowAlloc();
      v70[0] = v39;
      *v37 = 136315138;
      sub_100051EE4(&qword_100085D38, &type metadata accessor for RemoteProcessInfo);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v43 = v38;
      v44 = v66;
      v66(v43, v4);
      v45 = sub_100008A0C(v40, v42, v70);

      *(v37 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "Invalid entitlements. Dropping connection from: %s", v37, 0xCu);
      sub_100009914(v39);

      v17 = v36;
    }

    else
    {

      v44 = v66;
      v66(v12, v4);
    }

    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }

  else
  {
    v46 = v32;
    v65 = v5;
    v63(v9, v17, v4);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v62 = v17;
      v69 = v46;
      v70[0] = v50;
      *v49 = 136315394;
      sub_1000646BC();
      v51 = String.init<A>(_:radix:uppercase:)();
      v53 = sub_100008A0C(v51, v52, v70);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      sub_100051EE4(&qword_100085D38, &type metadata accessor for RemoteProcessInfo);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v44 = v66;
      v66(v9, v4);
      v57 = sub_100008A0C(v54, v56, v70);

      *(v49 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v47, v48, "Accepting connection with entitlements %s from: %s ", v49, 0x16u);
      swift_arrayDestroy();
      v17 = v62;
    }

    else
    {

      v44 = v66;
      v58 = v66(v9, v4);
    }

    __chkstk_darwin(v58);
    *(&v60 - 4) = v61;
    *(&v60 - 3) = v46;
    *(&v60 - 2) = v17;
    type metadata accessor for RemoteHandler();
    sub_100051EE4(&qword_100085D40, &type metadata accessor for RemoteHandler);
    dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  }

  return v44(v17, v4);
}

uint64_t sub_10003D084()
{
  if (qword_1000850C0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v0 = off_100085A50;
  v1 = off_100085A50 + 64;
  v2 = 1 << *(off_100085A50 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(off_100085A50 + 8);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v18 = 0;
  if (!v4)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_5:
    while (1)
    {
      v7 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v8 = v7 | (v6 << 6);
      v9 = (v0[6] + 16 * v8);
      v10 = *v9;
      v11 = v9[1];
      v12 = *(v0[7] + 8 * v8);

      v13._countAndFlagsBits = v10;
      v13._object = v11;
      v14.value = RemoteProcessInfo.valueBool(forEntitlement:)(v13).value;

      if (v14.value != 2)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_7;
      }
    }

    if (v14.value && (v12 & ~v18) != 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    v18 |= v16;
  }

  while (v4);
  while (1)
  {
LABEL_7:
    v15 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v15 >= v5)
    {
      break;
    }

    v4 = *&v1[8 * v15];
    ++v6;
    if (v4)
    {
      v6 = v15;
      goto LABEL_5;
    }
  }

  return v18;
}

uint64_t sub_10003D1FC@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, char *, uint64_t)@<X2>, char *a3@<X8>)
{
  v108 = type metadata accessor for UUID();
  v112 = *(v108 - 8);
  v6 = *(v112 + 64);
  v7 = __chkstk_darwin(v108);
  v105 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v103 - v10;
  v110 = v12;
  __chkstk_darwin(v9);
  v14 = &v103 - v13;
  v15 = *(a1 + 40);

  v16 = v15;
  RemoteHandler.init(session:handoffQueue:)();
  v113 = a2;
  v111 = v14;
  if ((a2 & 0x30) != 0)
  {
    v17._object = 0x80000001000731A0;
    v17._countAndFlagsBits = 0xD000000000000025;
    v18 = RemoteProcessInfo.valueStringArray(forEntitlement:)(v17);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    v20 = sub_10004F764(v19);

    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000098DC(v21, qword_100087610);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v109 = v11;
      v25 = v24;
      v26 = swift_slowAlloc();
      v114 = v26;
      *v25 = 136315138;
      v27 = Set.description.getter();
      v29 = sub_100008A0C(v27, v28, &v114);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Accepted connection with allowedTasks: %s", v25, 0xCu);
      sub_100009914(v26);

      v11 = v109;
      v14 = v111;
    }

    if ((v113 & 4) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = &_swiftEmptySetSingleton;
    if ((v113 & 4) != 0)
    {
LABEL_10:
      type metadata accessor for ListTasksRequest();
      sub_100051EE4(&qword_100085E30, &type metadata accessor for ListTasksRequest);

      RemoteHandler.handle<A>(_:handler:)();

      type metadata accessor for GetTaskRequest();
      sub_100051EE4(&qword_100085E38, &type metadata accessor for GetTaskRequest);

      RemoteHandler.handle<A>(_:handler:)();
    }
  }

  type metadata accessor for ListExtensionsRequest();
  sub_100051EE4(&qword_100085D50, &type metadata accessor for ListExtensionsRequest);

  RemoteHandler.handle<A>(_:handler:)();

  type metadata accessor for GetExtensionRequest();
  sub_100051EE4(&qword_100085D58, &type metadata accessor for GetExtensionRequest);

  RemoteHandler.handle<A>(_:handler:)();

  if ((v113 & 8) != 0)
  {
    type metadata accessor for AddTaskRequest();
    v31 = swift_allocObject();
    *(v31 + 16) = v20;
    *(v31 + 24) = a1;
    sub_100051EE4(&qword_100085E28, &type metadata accessor for AddTaskRequest);

    RemoteHandler.handle<A>(_:handler:)();

    if ((v113 & 0x10) == 0)
    {
LABEL_13:
      if ((v113 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((v113 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for RemoveTaskRequest();
  v32 = swift_allocObject();
  *(v32 + 16) = v20;
  *(v32 + 24) = a1;
  sub_100051EE4(&qword_100085E10, &type metadata accessor for RemoveTaskRequest);

  RemoteHandler.handle<A>(_:handler:)();

  type metadata accessor for ResetTasksRequest();
  sub_100051EE4(&qword_100085E18, &type metadata accessor for ResetTasksRequest);

  RemoteHandler.handle<A>(_:handler:)();

  type metadata accessor for CleanTasksRequest();
  sub_100051EE4(&qword_100085E20, &type metadata accessor for CleanTasksRequest);

  RemoteHandler.handle<A>(_:handler:)();

  if ((v113 & 1) == 0)
  {
LABEL_14:
    if ((v113 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  type metadata accessor for GetHostConfigurationRequest();
  sub_100051EE4(&qword_100085E08, &type metadata accessor for GetHostConfigurationRequest);

  RemoteHandler.handle<A>(_:handler:)();

  if ((v113 & 2) == 0)
  {
LABEL_15:
    if ((v113 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_22:
  type metadata accessor for SetHostConfigurationRequest();
  sub_100051EE4(&qword_100085E00, &type metadata accessor for SetHostConfigurationRequest);
  RemoteHandler.handle<A>(_:handler:)();
  if ((v113 & 1) == 0)
  {
LABEL_16:
    if ((v113 & 2) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    type metadata accessor for ResetNotificationsRequest();
    sub_100051EE4(&qword_100085DF0, &type metadata accessor for ResetNotificationsRequest);

    RemoteHandler.handle<A>(_:handler:)();

    if ((v113 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_23:
  type metadata accessor for GetNotificationsConfigRequest();
  sub_100051EE4(&qword_100085DF8, &type metadata accessor for GetNotificationsConfigRequest);

  RemoteHandler.handle<A>(_:handler:)();

  if ((v113 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if ((v113 & 0x20) == 0)
  {
LABEL_18:

    goto LABEL_26;
  }

LABEL_25:
  type metadata accessor for GetOnDemandTaskRequest();
  v33 = swift_allocObject();
  *(v33 + 16) = v20;
  *(v33 + 24) = a1;
  sub_100051EE4(&qword_100085DE8, &type metadata accessor for GetOnDemandTaskRequest);

  RemoteHandler.handle<A>(_:handler:)();

LABEL_26:
  v34 = _swiftEmptyArrayStorage;
  if ((v113 & 0x1C0) == 0)
  {
    goto LABEL_43;
  }

  v35._countAndFlagsBits = 0xD000000000000030;
  v35._object = 0x80000001000731D0;
  v36 = RemoteProcessInfo.valueStringArray(forEntitlement:)(v35);
  if (v36)
  {
    v34 = v36;
  }

  v37 = sub_10004F764(v34);

  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1000098DC(v38, qword_100087610);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v109 = v11;
    v42 = v41;
    v43 = swift_slowAlloc();
    v114 = v43;
    *v42 = 136315138;
    v44 = Set.description.getter();
    v46 = sub_100008A0C(v44, v45, &v114);

    *(v42 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "Accepted connection with allowedGroups: %s", v42, 0xCu);
    sub_100009914(v43);

    v11 = v109;
    v14 = v111;
  }

  if ((v113 & 0x40) == 0)
  {
    if ((v113 & 0x80) == 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    type metadata accessor for SetKeyDictionaryRequest();
    v54 = swift_allocObject();
    *(v54 + 16) = a1;
    *(v54 + 24) = v37;
    sub_100051EE4(&qword_100085D90, &type metadata accessor for SetKeyDictionaryRequest);

    RemoteHandler.handleAsync<A>(_:handler:)();

    type metadata accessor for ListPushDictionaryRequest();
    v55 = swift_allocObject();
    *(v55 + 16) = a1;
    *(v55 + 24) = v37;
    sub_100051EE4(&qword_100085D98, &type metadata accessor for ListPushDictionaryRequest);

    RemoteHandler.handleAsync<A>(_:handler:)();

    type metadata accessor for ListPopDictionaryRequest();
    v56 = swift_allocObject();
    *(v56 + 16) = a1;
    *(v56 + 24) = v37;
    sub_100051EE4(&qword_100085DA0, &type metadata accessor for ListPopDictionaryRequest);

    RemoteHandler.handleAsync<A>(_:handler:)();

    if ((v113 & 0x100) == 0)
    {
      goto LABEL_36;
    }

LABEL_41:
    type metadata accessor for ClearDictionaryRequest();
    v57 = swift_allocObject();
    *(v57 + 16) = a1;
    *(v57 + 24) = v37;
    sub_100051EE4(&qword_100085D88, &type metadata accessor for ClearDictionaryRequest);

    RemoteHandler.handleAsync<A>(_:handler:)();

    goto LABEL_42;
  }

  type metadata accessor for ListKeysDictionaryRequest();
  v47 = swift_allocObject();
  *(v47 + 16) = a1;
  *(v47 + 24) = v37;
  sub_100051EE4(&qword_100085DA8, &type metadata accessor for ListKeysDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for GetKeyTypeRequest();
  v48 = swift_allocObject();
  *(v48 + 16) = a1;
  *(v48 + 24) = v37;
  sub_100051EE4(&qword_100085DB0, &type metadata accessor for GetKeyTypeRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for GetKeyExpirationRequest();
  v49 = swift_allocObject();
  *(v49 + 16) = a1;
  *(v49 + 24) = v37;
  sub_100051EE4(&qword_100085DB8, &type metadata accessor for GetKeyExpirationRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for GetKeyDictionaryRequest();
  v50 = swift_allocObject();
  *(v50 + 16) = a1;
  *(v50 + 24) = v37;
  sub_100051EE4(&qword_100085DC0, &type metadata accessor for GetKeyDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for ListLengthDictionaryRequest();
  v51 = swift_allocObject();
  *(v51 + 16) = a1;
  *(v51 + 24) = v37;
  sub_100051EE4(&qword_100085DC8, &type metadata accessor for ListLengthDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for ListIndexDictionaryRequest();
  v52 = swift_allocObject();
  *(v52 + 16) = a1;
  *(v52 + 24) = v37;
  sub_100051EE4(&qword_100085DD0, &type metadata accessor for ListIndexDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for ListGetDictionaryRequest();
  v53 = swift_allocObject();
  *(v53 + 16) = a1;
  *(v53 + 24) = v37;
  sub_100051EE4(&qword_100085DD8, &type metadata accessor for ListGetDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  type metadata accessor for GetInfoDictionaryRequest();
  sub_100051EE4(&qword_100085DE0, &type metadata accessor for GetInfoDictionaryRequest);

  RemoteHandler.handleAsync<A>(_:handler:)();

  if ((v113 & 0x80) != 0)
  {
    goto LABEL_40;
  }

LABEL_35:
  if ((v113 & 0x100) != 0)
  {
    goto LABEL_41;
  }

LABEL_36:

LABEL_42:
  v34 = _swiftEmptyArrayStorage;
LABEL_43:
  if ((v113 & 0xE00) == 0)
  {
    return result;
  }

  v58._countAndFlagsBits = 0xD000000000000026;
  v58._object = 0x8000000100073210;
  v59 = RemoteProcessInfo.valueStringArray(forEntitlement:)(v58);
  if (v59)
  {
    v34 = v59;
  }

  v60 = sub_10004F764(v34);

  v109 = a3;
  RemoteHandler.sessionId.getter();
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_1000098DC(v61, qword_100087610);
  v62 = *(v112 + 16);
  v63 = v108;
  v106 = v112 + 16;
  v107 = v62;
  (v62)(v11, v14);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();

  v66 = os_log_type_enabled(v64, v65);
  v104 = v60;
  if (!v66)
  {

    v103 = *(v112 + 8);
    v103(v11, v63);
    if ((v113 & 0x200) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v67 = swift_slowAlloc();
  v114 = swift_slowAlloc();
  *v67 = 136315394;
  v68 = UUID.uuidString.getter();
  v70 = v69;
  v103 = *(v112 + 8);
  v103(v11, v63);
  v71 = sub_100008A0C(v68, v70, &v114);

  *(v67 + 4) = v71;
  *(v67 + 12) = 2080;
  v72 = Set.description.getter();
  v74 = sub_100008A0C(v72, v73, &v114);

  *(v67 + 14) = v74;
  _os_log_impl(&_mh_execute_header, v64, v65, "Accepted connection %s with allowedTopics: %s", v67, 0x16u);
  swift_arrayDestroy();

  v14 = v111;

  if ((v113 & 0x200) != 0)
  {
LABEL_52:
    type metadata accessor for StreamListRequest();
    sub_100051EE4(&qword_100085D80, &type metadata accessor for StreamListRequest);

    RemoteHandler.handle<A>(_:handler:)();
  }

LABEL_53:
  if ((v113 & 0x800) != 0)
  {
    v75 = swift_allocObject();
    swift_weakInit();
    v76 = v105;
    v107(v105, v14, v63);
    v77 = v112;
    v78 = *(v112 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = v75;
    v80 = *(v77 + 32);
    v80(v79 + ((v78 + 24) & ~v78), v76, v63);

    RemoteHandler.onCancellation(_:)();

    type metadata accessor for StreamMessage();
    v107(v76, v111, v63);
    v81 = (v78 + 32) & ~v78;
    v82 = swift_allocObject();
    v83 = v104;
    *(v82 + 16) = a1;
    *(v82 + 24) = v83;
    v80(v82 + v81, v76, v108);
    sub_100051EE4(&qword_100085D70, &type metadata accessor for StreamMessage);

    RemoteHandler.handle<A>(_:handler:)();

    type metadata accessor for StreamPublisherRequest();
    v107(v76, v111, v108);
    v84 = swift_allocObject();
    *(v84 + 16) = a1;
    *(v84 + 24) = v83;
    v85 = v84 + v81;
    v63 = v108;
    (v80)(v85, v76);
    v86 = v111;
    sub_100051EE4(&qword_100085D78, &type metadata accessor for StreamPublisherRequest);

    v87 = v109;
    RemoteHandler.handle<A>(_:handler:)();

    v88 = *(a1 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry);
    v14 = v86;
    sub_10000AFC0(v86, v87);
    if ((v113 & 0x400) == 0)
    {
      goto LABEL_55;
    }
  }

  else if ((v113 & 0x400) == 0)
  {
LABEL_55:
    v103(v14, v63);
  }

  v89 = swift_allocObject();
  swift_weakInit();
  v90 = v105;
  v91 = v14;
  v107(v105, v14, v63);
  v92 = v112;
  v93 = *(v112 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = v89;
  v95 = *(v92 + 32);
  v95(v94 + ((v93 + 24) & ~v93), v90, v63);
  v113 = v95;

  RemoteHandler.onCancellation(_:)();

  type metadata accessor for StreamSubscribeRequest();
  v107(v90, v91, v63);
  v112 = v92 + 32;
  v96 = (v93 + 32) & ~v93;
  v97 = swift_allocObject();
  v98 = v104;
  *(v97 + 16) = a1;
  *(v97 + 24) = v98;
  v95(v97 + v96, v90, v63);
  sub_100051EE4(&qword_100085D60, &type metadata accessor for StreamSubscribeRequest);

  RemoteHandler.handle<A>(_:handler:)();

  type metadata accessor for StreamUnsubscribeRequest();
  v99 = v111;
  v107(v90, v111, v63);
  v100 = swift_allocObject();
  *(v100 + 16) = a1;
  *(v100 + 24) = v98;
  v113(v100 + v96, v90, v63);
  sub_100051EE4(&qword_100085D68, &type metadata accessor for StreamUnsubscribeRequest);

  v101 = v109;
  RemoteHandler.handle<A>(_:handler:)();

  v102 = *(a1 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry);
  sub_10000B660(v99, v101);
  return (v103)(v99, v63);
}

uint64_t sub_10003EE24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v35 - v6;
  v8 = type metadata accessor for MLHostTask();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v10 = __chkstk_darwin(v8);
  v42 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = v35 - v12;
  v13 = *(a1 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  os_unfair_lock_lock((*(v13 + 56) + 16));
  swift_beginAccess();
  v14 = *(v13 + 64);
  v15 = *(v14 + 16);
  v35[1] = a2;
  if (v15)
  {
    v16 = sub_100024920(v15, 0);
    v17 = sub_100025B0C(v43, v16 + 4, v15, v14);
    v39 = v43[3];
    v40 = v43[2];
    v37 = v43[4];

    sub_100009A28();
    if (v17 == v15)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_5:
  os_unfair_lock_unlock((*(v13 + 56) + 16));
  v18 = v16[2];
  v35[0] = v16;
  if (v18)
  {
    v19 = (v38 + 56);
    v37 = (v38 + 16);
    v39 = (v38 + 32);
    v40 = (v38 + 48);
    v35[2] = v38 + 8;
    v20 = v16 + 5;
    v21 = _swiftEmptyArrayStorage;
    v36 = (v38 + 56);
    do
    {
      v23 = *(v20 - 1);
      v22 = *v20;
      v24 = *(v13 + 56);

      os_unfair_lock_lock(v24 + 4);
      swift_beginAccess();
      v25 = *(v13 + 64);
      if (*(v25 + 16) && (v26 = sub_100010DF4(v23, v22), (v27 & 1) != 0))
      {
        (*(v38 + 16))(v7, *(v25 + 56) + *(v38 + 72) * v26, v8);
        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      (*v19)(v7, v28, 1, v8);
      swift_endAccess();

      os_unfair_lock_unlock((*(v13 + 56) + 16));
      if ((*v40)(v7, 1, v8) == 1)
      {
        sub_100009C94(v7, &qword_100085940, &unk_1000693D0);
      }

      else
      {
        v29 = *v39;
        v30 = v41;
        (*v39)(v41, v7, v8);
        (*v37)(v42, v30, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10002471C(0, *(v21 + 2) + 1, 1, v21);
        }

        v32 = *(v21 + 2);
        v31 = *(v21 + 3);
        if (v32 >= v31 >> 1)
        {
          v21 = sub_10002471C(v31 > 1, v32 + 1, 1, v21);
        }

        v33 = v38;
        (*(v38 + 8))(v41, v8);
        *(v21 + 2) = v32 + 1;
        v29(&v21[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32], v42, v8);
        v19 = v36;
      }

      v20 += 2;
      --v18;
    }

    while (v18);
  }

  return ListTasksResponse.init(tasks:)();
}

uint64_t sub_10003F270(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for MLHostTask();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  Task = GetTaskRequest.name.getter();
  sub_100019300(Task, v17, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100009C94(v9, &qword_100085940, &unk_1000693D0);
    (*(v11 + 56))(v7, 1, 1, v10);
    return GetTaskResponse.init(task:)();
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    (*(v11 + 16))(v7, v14, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    GetTaskResponse.init(task:)();
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10003F4C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);
  os_unfair_lock_lock((*(v2 + 16) + 16));
  v3 = *(v2 + 24);

  v5 = sub_10000E2B0(v4);

  os_unfair_lock_unlock((*(v2 + 16) + 16));

  return ListExtensionsResponse.init(extensions:)(v5);
}

uint64_t sub_10003F550(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000089AC(&qword_100085728, &qword_100069140);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ExtensionRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_extensionRegistry);
  Extension = GetExtensionRequest.bundleIdentifier.getter();
  sub_10000EC54(Extension, v17, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100009C94(v9, &qword_100085728, &qword_100069140);
    (*(v11 + 56))(v7, 1, 1, v10);
    return GetExtensionResponse.init(extensionRecord:)();
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    (*(v11 + 16))(v7, v14, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    GetExtensionResponse.init(extensionRecord:)();
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10003F7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v67 = a2;
  v70 = a4;
  v5 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v54 - v7;
  v9 = type metadata accessor for TaskValidationError();
  v69 = *(v9 - 8);
  v10 = *(v69 + 64);
  v11 = __chkstk_darwin(v9);
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v56 = &v54 - v14;
  v15 = __chkstk_darwin(v13);
  v59 = &v54 - v16;
  v17 = __chkstk_darwin(v15);
  v61 = &v54 - v18;
  __chkstk_darwin(v17);
  v64 = &v54 - v19;
  v20 = type metadata accessor for TaskDefinition();
  v66 = *(v20 - 8);
  v21 = *(v66 + 64);
  v22 = __chkstk_darwin(v20);
  v60 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v54 - v24;
  v26 = type metadata accessor for AddTaskRequest();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v63 = v8;
  v31 = type metadata accessor for Logger();
  v32 = sub_1000098DC(v31, qword_100087610);
  v33 = *(v27 + 16);
  v68 = a1;
  v33(v30, a1, v26);
  v57 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v36 = os_log_type_enabled(v34, v35);
  v65 = v9;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v54 = v37;
    v55 = swift_slowAlloc();
    v71 = v55;
    *v37 = 136315138;
    AddTaskRequest.taskDefinition.getter();
    v38 = TaskDefinition.name.getter();
    v40 = v39;
    v41 = v66;
    (*(v66 + 8))(v25, v20);
    (*(v27 + 8))(v30, v26);
    v42 = sub_100008A0C(v38, v40, &v71);

    v43 = v54;
    *(v54 + 1) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Processing AddTaskRequest for task: %s", v43, 0xCu);
    sub_100009914(v55);
  }

  else
  {

    (*(v27 + 8))(v30, v26);
    v41 = v66;
  }

  AddTaskRequest.taskDefinition.getter();
  v44 = TaskDefinition.name.getter();
  v46 = v45;
  v47 = *(v41 + 8);
  v47(v25, v20);
  v48 = v67;
  LOBYTE(v44) = sub_1000292B0(v44, v46, v67);

  v49 = v69;
  if (v44 & 1) != 0 && (sub_1000292B0(42, 0xE100000000000000, v48))
  {
    v50 = v60;
    AddTaskRequest.taskDefinition.getter();
    v51 = v63;
    sub_100034304(v50, v61, v63);
    v47(v50, v20);
    v53 = type metadata accessor for MLHostTask();
    if ((*(*(v53 - 8) + 48))(v51, 1, v53) == 1)
    {
      AddTaskResponse.init(result:)();
      return sub_100009C94(v51, &qword_100085940, &unk_1000693D0);
    }

    else
    {
      sub_100009C94(v51, &qword_100085940, &unk_1000693D0);
      return AddTaskResponse.init(result:)();
    }
  }

  else
  {
    (*(v49 + 104))(v64, enum case for TaskValidationError.invalidName(_:), v65);
    return AddTaskResponse.init(error:)();
  }
}

uint64_t sub_100040148@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v58 - v7;
  v9 = type metadata accessor for MLHostTask();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  v11 = __chkstk_darwin(v9);
  v61 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v58 - v14;
  __chkstk_darwin(v13);
  v62 = v58 - v16;
  v17 = type metadata accessor for TaskValidationError();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = RemoveTaskRequest.name.getter();
  v24 = sub_1000292B0(v22, v23, a1);

  if ((v24 & 1) == 0 || (sub_1000292B0(42, 0xE100000000000000, a1) & 1) == 0)
  {
    goto LABEL_5;
  }

  v25 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v26 = RemoveTaskRequest.name.getter();
  v60 = v25;
  sub_100019300(v26, v27, v8);

  v29 = v63;
  v28 = v64;
  if ((*(v63 + 48))(v8, 1, v64) == 1)
  {
    sub_100009C94(v8, &qword_100085940, &unk_1000693D0);
LABEL_5:
    (*(v18 + 104))(v21, enum case for TaskValidationError.invalidName(_:), v17);
    return RemoveTaskResponse.init(error:)();
  }

  v31 = v62;
  (*(v29 + 32))(v62, v8, v28);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_1000098DC(v32, qword_100087610);
  v59 = *(v29 + 16);
  v59(v15, v31, v28);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v66 = v37;
    *v36 = 136315138;
    v38 = MLHostTask.name.getter();
    v58[1] = v33;
    v40 = v39;
    v41 = *(v29 + 8);
    v41(v15, v64);
    v42 = sub_100008A0C(v38, v40, &v66);

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Processing RemoveTaskRequest for task: %s", v36, 0xCu);
    sub_100009914(v37);
    v28 = v64;

    v31 = v62;
  }

  else
  {

    v41 = *(v29 + 8);
    v41(v15, v28);
  }

  v43 = MLHostTask.name.getter();
  v45 = sub_100018354(v43, v44);

  if (v45)
  {
    if (MLHostTask.isBackgroundTask.getter())
    {
      v46 = RemoveTaskRequest.name.getter();
      sub_100063BB0(v46, v47);
    }

    RemoveTaskResponse.init(result:)();
    return (v41)(v31, v28);
  }

  else
  {
    v48 = v61;
    v59(v61, v31, v28);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v66 = v52;
      *v51 = 136315138;
      v53 = MLHostTask.name.getter();
      v54 = v48;
      v56 = v55;
      v41(v54, v64);
      v57 = sub_100008A0C(v53, v56, &v66);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed at removing task: %s.", v51, 0xCu);
      sub_100009914(v52);
      v28 = v64;
    }

    else
    {

      v41(v48, v28);
    }

    RemoveTaskResponse.init(result:)();
    return (v41)(v62, v28);
  }
}

uint64_t sub_10004078C(uint64_t a1, uint64_t a2)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000098DC(v3, qword_100087610);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resetting tasks in mlhostd.", v6, 2u);
  }

  sub_1000308A4();
  v7 = sub_100033164("disableTriggerTasks", sub_10003240C);
  v8 = *(*(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry) + 56);
  __chkstk_darwin(v7);
  os_unfair_lock_lock(v8 + 4);
  sub_100065490(v9);
  os_unfair_lock_unlock(v8 + 4);
  sub_10001802C();
  if (ResetTasksRequest.reload.getter())
  {
    sub_10002BCC4();
    sub_10002F9F8();
    sub_100030304();
    sub_100033164("enableTriggerTasks", sub_100031790);
  }

  return ResetTasksResponse.init(reloaded:)();
}

uint64_t sub_100040968(uint64_t a1, uint64_t a2)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_1000098DC(v3, qword_100087610);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cleaning dynamicTasks", v7, 2u);
  }

  v8 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v9 = sub_1000171C0();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    v12 = _swiftEmptyArrayStorage;
    do
    {
      v18 = *(v11 - 1);
      v17 = *v11;

      sub_100063BB0(v18, v17);
      if (sub_100018354(v18, v17))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1000243B8(0, *(v12 + 2) + 1, 1, v12);
        }

        v20 = *(v12 + 2);
        v19 = *(v12 + 3);
        if (v20 >= v19 >> 1)
        {
          v12 = sub_1000243B8((v19 > 1), v20 + 1, 1, v12);
        }

        *(v12 + 2) = v20 + 1;
        v21 = &v12[16 * v20];
        *(v21 + 4) = v18;
        *(v21 + 5) = v17;
      }

      else
      {

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v13 = v4;
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v25 = v15;
          *v14 = 136315138;
          v16 = sub_100008A0C(v18, v17, &v25);

          *(v14 + 4) = v16;
          _os_log_impl(&_mh_execute_header, v22, v23, "Failed at removing task: %s", v14, 0xCu);
          sub_100009914(v15);

          v4 = v13;
        }

        else
        {
        }
      }

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  return CleanTasksResponse.init(tasks:)(v12);
}

uint64_t sub_100040C60(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MLHostConfig();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_config);
  return GetHostConfigurationResponse.init(config:)();
}

uint64_t sub_100040D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SetHostConfigurationRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLHostConfig();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  SetHostConfigurationRequest.config.getter();
  v14 = sub_100052CC4();
  v15 = *(v10 + 8);
  v15(v13, v9);
  if (v14)
  {
    v33 = a2;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000098DC(v16, qword_100087610);
    (*(v5 + 16))(v8, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = v14;
      v20 = v19;
      v32 = swift_slowAlloc();
      v34 = v32;
      *v20 = 136315138;
      v30 = v18;
      SetHostConfigurationRequest.config.getter();
      sub_100051EE4(&unk_100085E40, &type metadata accessor for MLHostConfig);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v17;
      v23 = v22;
      v15(v13, v9);
      (*(v5 + 8))(v8, v4);
      v24 = sub_100008A0C(v21, v23, &v34);

      v25 = v30;
      *(v20 + 4) = v24;
      v26 = v29;
      _os_log_impl(&_mh_execute_header, v29, v25, "Updated MLHost config: %s", v20, 0xCu);
      sub_100009914(v32);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  return SetHostConfigurationResponse.init(success:error:)();
}

uint64_t sub_1000410A8(uint64_t a1, uint64_t a2)
{
  NotificationsConfig = GetNotificationsConfigRequest.registeredOnly.getter();
  v4 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_notificationRegistry);
  if (NotificationsConfig)
  {
    v5 = sub_100007650();
  }

  else
  {
    v5 = sub_100007018();
  }

  return GetNotificationsConfigResponse.init(channelsByTopic:)(v5);
}

uint64_t sub_10004110C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_notificationRegistry);
  sub_100006504();
  if (ResetNotificationsRequest.reload.getter())
  {
    sub_100004F58();
  }

  ResetNotificationsRequest.reload.getter();

  return ResetTasksResponse.init(reloaded:)();
}

uint64_t sub_100041180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v123 = a3;
  v7 = type metadata accessor for GetOnDemandTaskRequest();
  v121 = *(v7 - 8);
  v122 = v7;
  v8 = *(v121 + 64);
  __chkstk_darwin(v7);
  v120 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OnDemandResult();
  v112 = *(v10 - 8);
  v113 = v10;
  v11 = *(v112 + 64);
  __chkstk_darwin(v10);
  v111 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OnDemandError();
  v14 = *(v13 - 8);
  v125 = v13;
  v126 = v14;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v114 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v109 = &v106 - v19;
  v20 = __chkstk_darwin(v18);
  v124 = &v106 - v21;
  __chkstk_darwin(v20);
  v117 = &v106 - v22;
  v23 = sub_1000089AC(&qword_100085E50, &qword_1000695A8);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v115 = &v106 - v25;
  v26 = type metadata accessor for TaskStatus();
  v118 = *(v26 - 8);
  v27 = *(v118 + 64);
  v28 = __chkstk_darwin(v26);
  v30 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v106 - v31;
  v33 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v106 - v35;
  v37 = type metadata accessor for MLHostTask();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v116 = &v106 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v110 = &v106 - v43;
  __chkstk_darwin(v42);
  v119 = &v106 - v44;
  v45 = GetOnDemandTaskRequest.taskName.getter();
  LOBYTE(a2) = sub_1000292B0(v45, v46, a2);

  if ((a2 & 1) == 0)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000098DC(v50, qword_100087610);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v125;
    if (v53)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Client not authorized for onDemand requests.", v55, 2u);
    }

    (*(v126 + 104))(v124, enum case for OnDemandError.clientUnauthorized(_:), v54);
    return GetOnDemandTaskRequestResponse.init(error:)();
  }

  v108 = a4;
  v47 = *(v123 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry);
  v107 = a1;
  v48 = GetOnDemandTaskRequest.taskName.getter();
  sub_100019300(v48, v49, v36);

  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_100009C94(v36, &qword_100085940, &unk_1000693D0);
LABEL_16:
    v76 = v107;
    v78 = v120;
    v77 = v121;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_1000098DC(v79, qword_100087610);
    v80 = v76;
    v81 = v122;
    (*(v77 + 16))(v78, v80, v122);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v127[0] = v85;
      *v84 = 136315138;
      v86 = GetOnDemandTaskRequest.taskName.getter();
      v88 = v87;
      (*(v77 + 8))(v78, v81);
      v89 = sub_100008A0C(v86, v88, v127);

      *(v84 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v82, v83, "Invalid taskName for onDemand request: %s", v84, 0xCu);
      sub_100009914(v85);
    }

    else
    {

      (*(v77 + 8))(v78, v81);
    }

    (*(v126 + 104))(v124, enum case for OnDemandError.taskInvalid(_:), v125);
    return GetOnDemandTaskRequestResponse.init(error:)();
  }

  v56 = v37;
  v57 = v38;
  v58 = v119;
  (*(v38 + 32))(v119, v36, v56);
  if ((MLHostTask.isBackgroundTask.getter() & 1) == 0)
  {
    (*(v38 + 8))(v58, v56);
    goto LABEL_16;
  }

  MLHostTask.status.getter();
  v59 = v118;
  (*(v118 + 104))(v30, enum case for TaskStatus.taskRunning(_:), v26);
  sub_100051EE4(&qword_100085E58, &type metadata accessor for TaskStatus);
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v59 + 8);
  v61(v30, v26);
  v61(v32, v26);
  if (v60)
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1000098DC(v62, qword_100087610);
    v63 = v116;
    (*(v57 + 16))(v116, v58, v56);
    v64 = Logger.logObject.getter();
    v65 = v57;
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v66))
    {
      v67 = swift_slowAlloc();
      v123 = v56;
      v68 = v67;
      v69 = swift_slowAlloc();
      v127[0] = v69;
      *v68 = 136315138;
      sub_100051EE4(&unk_100085C40, &type metadata accessor for MLHostTask);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v63;
      v73 = v72;
      v74 = *(v65 + 8);
      v74(v71, v123);
      v75 = sub_100008A0C(v70, v73, v127);

      *(v68 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v64, v66, "Found existing running task: %s", v68, 0xCu);
      sub_100009914(v69);

      v56 = v123;
    }

    else
    {

      v74 = *(v65 + 8);
      v74(v63, v56);
    }

    (*(v126 + 104))(v124, enum case for OnDemandError.taskRunning(_:), v125);
    GetOnDemandTaskRequestResponse.init(error:)();
    return (v74)(v58, v56);
  }

  else
  {
    v91 = v56;
    v92 = v115;
    GetOnDemandTaskRequest.onDemandRequest.getter();
    sub_100030AE0(v58, v92, v117);
    sub_100009C94(v92, &qword_100085E50, &qword_1000695A8);
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_1000098DC(v93, qword_100087610);
    v94 = v110;
    (*(v57 + 16))(v110, v58, v56);
    v95 = Logger.logObject.getter();
    v96 = v57;
    v97 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v95, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v127[0] = v99;
      *v98 = 136315138;
      sub_100051EE4(&unk_100085C40, &type metadata accessor for MLHostTask);
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v94;
      v103 = v102;
      v104 = *(v96 + 8);
      v104(v101, v91);
      v105 = sub_100008A0C(v100, v103, v127);

      *(v98 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v95, v97, "Task %s scheduled for onDemand execution.", v98, 0xCu);
      sub_100009914(v99);
      v58 = v119;

      v56 = v91;
    }

    else
    {

      v104 = *(v96 + 8);
      v104(v94, v56);
    }

    (*(v112 + 104))(v111, enum case for OnDemandResult.taskScheduled(_:), v113);
    GetOnDemandTaskRequestResponse.init(result:)();
    return (v104)(v58, v56);
  }
}

uint64_t sub_100042144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100042208, 0, 0);
}

uint64_t sub_100042208()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for ListKeysDictionaryRequest();
  sub_100051EE4(&qword_100085EF8, &type metadata accessor for ListKeysDictionaryRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100042414;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_100034DB4(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for ListKeysDictionaryResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&qword_100085F00, &type metadata accessor for ListKeysDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100042414()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return (_swift_task_switch)(sub_100065920, 0, 0);
}

uint64_t sub_100042510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000425D4, 0, 0);
}

uint64_t sub_1000425D4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for GetKeyTypeRequest();
  sub_100051EE4(&qword_100085EE0, &type metadata accessor for GetKeyTypeRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_1000427E0;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_100035408(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for GetKeyTypeResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&qword_100085EE8, &type metadata accessor for GetKeyTypeResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1000427E0()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return (_swift_task_switch)(sub_1000428DC, 0, 0);
}

uint64_t sub_1000428DC()
{
  v1 = v0[4];

  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100042944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100042A08, 0, 0);
}

uint64_t sub_100042A08()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for GetKeyExpirationRequest();
  sub_100051EE4(&qword_100085EC0, &type metadata accessor for GetKeyExpirationRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100042414;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_100035CFC(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for GetKeyExpirationResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&qword_100085EC8, &type metadata accessor for GetKeyExpirationResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100042C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100042CD8, 0, 0);
}

uint64_t sub_100042CD8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for GetKeyDictionaryRequest();
  sub_100051EE4(&qword_100085EA8, &type metadata accessor for GetKeyDictionaryRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100042414;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_1000374CC(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for GetKeyDictionaryResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&qword_100085EB0, &type metadata accessor for GetKeyDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100042EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100042FA8, 0, 0);
}

uint64_t sub_100042FA8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for ListLengthDictionaryRequest();
  sub_100051EE4(&qword_100085E98, &type metadata accessor for ListLengthDictionaryRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100042414;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_10003843C(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for ListLengthDictionaryResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&qword_100085EA0, &type metadata accessor for ListLengthDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1000431B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100043278, 0, 0);
}

uint64_t sub_100043278()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for ListIndexDictionaryRequest();
  sub_100051EE4(&qword_100085E80, &type metadata accessor for ListIndexDictionaryRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100042414;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_100038B30(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for ListIndexDictionaryResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&unk_100085E88, &type metadata accessor for ListIndexDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100043484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100043548, 0, 0);
}

uint64_t sub_100043548()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for ListGetDictionaryRequest();
  sub_100051EE4(&qword_100085E70, &type metadata accessor for ListGetDictionaryRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100042414;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_100039430(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for ListGetDictionaryResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&qword_100085E78, &type metadata accessor for ListGetDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100043754(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100043800;

  return sub_1000371D0(a1, a2);
}

uint64_t sub_100043800()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000438F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000439B8, 0, 0);
}

uint64_t sub_1000439B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for SetKeyDictionaryRequest();
  sub_100051EE4(&qword_100085F40, &type metadata accessor for SetKeyDictionaryRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100042414;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_100037D30(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for SetKeyDictionaryResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&qword_100085F48, &type metadata accessor for SetKeyDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100043BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100043C88, 0, 0);
}

uint64_t sub_100043C88()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for ListPushDictionaryRequest();
  sub_100051EE4(&qword_100085F18, &type metadata accessor for ListPushDictionaryRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100042414;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_100039B20(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for ListPushDictionaryResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&qword_100085F20, &type metadata accessor for ListPushDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100043E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100043F58, 0, 0);
}

uint64_t sub_100043F58()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for ListPopDictionaryRequest();
  sub_100051EE4(&qword_100085F08, &type metadata accessor for ListPopDictionaryRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100042414;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_10003A6B0(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for ListPopDictionaryResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&qword_100085F10, &type metadata accessor for ListPopDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100044164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for KVDatastoreError();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_100044228, 0, 0);
}

uint64_t sub_100044228()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for ClearDictionaryRequest();
  sub_100051EE4(&qword_100085F50, &type metadata accessor for ClearDictionaryRequest);

  v4 = dispatch thunk of DictionaryRequestWithGroup.group.getter();
  LOBYTE(v1) = sub_1000292B0(v4, v5, v1);

  if (v1 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, v0[5]))
  {
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100042414;
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return sub_1000367F8(v9, v7);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = v0[4];
    v15 = v0[2];
    type metadata accessor for ClearDictionaryResponse();
    (*(v12 + 104))(v11, enum case for KVDatastoreError.invalidGroup(_:), v13);
    sub_100051EE4(&qword_100085F58, &type metadata accessor for ClearDictionaryResponse);
    dispatch thunk of DictionaryResponseWithError.init(error:)();

    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100044434(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StreamServiceInfo();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry);
  v6 = sub_10000A044();
  v7 = sub_100029B48(v6);

  v8 = sub_10000A3D4();
  v9 = sub_100029B48(v8);

  v10 = sub_10004461C(v7);

  if (v10[2])
  {
    sub_1000089AC(&qword_1000857F8, &qword_1000695A0);
    v11 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v11 = &_swiftEmptyDictionarySingleton;
  }

  v17[0] = v11;

  sub_10004E82C(v12, 1, v17);

  v13 = sub_10004461C(v9);

  if (v13[2])
  {
    sub_1000089AC(&qword_1000857F8, &qword_1000695A0);
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = &_swiftEmptyDictionarySingleton;
  }

  v17[0] = v14;

  sub_10004E82C(v15, 1, v17);

  StreamServiceInfo.init(publishers:subscribers:)();
  return StreamListResponse.init(info:)();
}

void *sub_10004461C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024A04(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      v11 = *v3;

      sub_1000089AC(&qword_1000859F0, &unk_100069630);
      sub_1000089AC(&qword_1000859E0, &qword_100069290);
      swift_dynamicCast();
      v4 = v13;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_100024A04((v5 > 1), v6 + 1, 1);
        v4 = v13;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[3 * v6];
      *(v7 + 4) = v12;
      *(v7 + 40) = v4;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10004476C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1000089AC(&qword_100085F90, &qword_100069658);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  sub_10003AD98(a1, a2, a3, &v16 - v10);
  v12 = type metadata accessor for EmptyMessage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) != 1)
  {
    return (*(v13 + 32))(a4, v11, v12);
  }

  EmptyMessage.init()();
  result = (v14)(v11, 1, v12);
  if (result != 1)
  {
    return sub_100009C94(v11, &qword_100085F90, &qword_100069658);
  }

  return result;
}

uint64_t sub_1000448D0(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(void))
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000098DC(v14, qword_100087610);
    (*(v8 + 16))(v11, a2, v7);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v29 = a4;
      v30 = v19;
      v20 = v19;
      *v18 = 136315138;
      v21 = UUID.uuidString.getter();
      v28 = a2;
      v23 = v22;
      (*(v8 + 8))(v11, v7);
      v24 = sub_100008A0C(v21, v23, &v30);
      a2 = v28;

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, v27, v18, 0xCu);
      sub_100009914(v20);
      a4 = v29;
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v25 = *(v13 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry);

    a4(a2);
  }

  return result;
}

uint64_t sub_100044B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v9 = type metadata accessor for StreamError();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StreamSubscribeRequest();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051EE4(&unk_100085FC0, &type metadata accessor for StreamSubscribeRequest);
  v18 = dispatch thunk of StreamMessageWithTopic.topic.getter();
  v20 = sub_1000292B0(v18, v19, a3);

  if (v20 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, a3))
  {
    v21 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry);
    v22 = StreamSubscribeRequest.topic.getter();
    v24 = sub_10000BFE0(a4, v22, v23);

    v26 = UUID.uuidString.getter();

    return StreamSubscribeResponse.init(result:subscriberId:)((v24 & 1) != 0, v26, v25);
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000098DC(v27, qword_100087610);
    (*(v14 + 16))(v17, a1, v13);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 136315138;
      v32 = StreamSubscribeRequest.topic.getter();
      v34 = v33;
      (*(v14 + 8))(v17, v13);
      v35 = sub_100008A0C(v32, v34, &v40);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Dropping request for topic %s because it is not allowed.", v30, 0xCu);
      sub_100009914(v31);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }

    (*(v37 + 104))(v12, enum case for StreamError.invalidTopic(_:), v38);
    return StreamSubscribeResponse.init(error:)();
  }
}

uint64_t sub_100044F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v9 = type metadata accessor for StreamError();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StreamUnsubscribeRequest();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051EE4(&qword_100085FB8, &type metadata accessor for StreamUnsubscribeRequest);
  v18 = dispatch thunk of StreamMessageWithTopic.topic.getter();
  v20 = sub_1000292B0(v18, v19, a3);

  if (v20 & 1) != 0 || (sub_1000292B0(42, 0xE100000000000000, a3))
  {
    v21 = *(a2 + OBJC_IVAR____TtC7mlhostd12MLHostDaemon_pubSubRegistry);
    v22 = StreamUnsubscribeRequest.topic.getter();
    v24 = sub_10000C460(a4, v22, v23);

    return StreamUnsubscribeResponse.init(result:)(v24);
  }

  else
  {
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000098DC(v25, qword_100087610);
    (*(v14 + 16))(v17, a1, v13);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136315138;
      v30 = StreamUnsubscribeRequest.topic.getter();
      v32 = v31;
      (*(v14 + 8))(v17, v13);
      v33 = sub_100008A0C(v30, v32, &v38);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Dropping request for topic %s because it is not allowed.", v28, 0xCu);
      sub_100009914(v29);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }

    (*(v35 + 104))(v12, enum case for StreamError.invalidTopic(_:), v36);
    return StreamUnsubscribeResponse.init(error:)();
  }
}

void sub_100045330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v454 = a8;
  v453 = a7;
  v452 = a6;
  v451 = a5;
  v450 = a4;
  v449 = a3;
  v448 = a2;
  v447 = a1;
  v395 = type metadata accessor for URL.DirectoryHint();
  v498 = *(v395 - 8);
  v10 = *(v498 + 64);
  __chkstk_darwin(v395);
  v394 = &v374[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000089AC(&qword_100085948, &qword_100069258);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v393 = &v374[-v14];
  v404 = type metadata accessor for URL();
  v501 = *(v404 - 8);
  v15 = *(v501 + 8);
  v16 = __chkstk_darwin(v404);
  v381 = &v374[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v392 = &v374[-v19];
  __chkstk_darwin(v18);
  v405 = &v374[-v20];
  v456 = type metadata accessor for MLHostTask();
  v500 = *(v456 - 8);
  v21 = *(v500 + 64);
  __chkstk_darwin(v456);
  v418 = &v374[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v421 = type metadata accessor for TaskValidationError();
  v499 = *(v421 - 8);
  v23 = *(v499 + 64);
  __chkstk_darwin(v421);
  v443 = &v374[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1000089AC(&qword_100085940, &unk_1000693D0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v374[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __chkstk_darwin(v27);
  v442 = &v374[-v31];
  __chkstk_darwin(v30);
  v466 = &v374[-v32];
  v33 = sub_1000089AC(&unk_100085CE8, &qword_100069498);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v382 = &v374[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v415 = &v374[-v37];
  v416 = type metadata accessor for RepeatingTaskRequest();
  v491 = *(v416 - 8);
  v38 = *(v491 + 64);
  __chkstk_darwin(v416);
  v403 = &v374[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = sub_1000089AC(&qword_1000859A0, &qword_100069268);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v412 = &v374[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v425 = &v374[-v44];
  v457 = type metadata accessor for TaskRequest();
  v45 = *(v457 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v457);
  v426 = &v374[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v473 = type metadata accessor for TaskCategory();
  v489 = *(v473 - 8);
  v48 = v489[8];
  v49 = __chkstk_darwin(v473);
  v472 = &v374[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v471 = &v374[-v51];
  v476 = type metadata accessor for TaskDefinition();
  v490 = *(v476 - 8);
  v52 = *(v490 + 64);
  v53 = __chkstk_darwin(v476);
  v441 = &v374[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v53);
  v502 = &v374[-v55];
  v56 = sub_1000089AC(&unk_1000859C0, &qword_1000694A0);
  v57 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56 - 8);
  v481 = &v374[-v58];
  v497 = type metadata accessor for DynamicTaskSource();
  v492 = *(v497 - 8);
  v59 = *(v492 + 64);
  __chkstk_darwin(v497);
  v480 = &v374[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v496 = type metadata accessor for TaskStatus();
  v61 = *(v496 - 8);
  v62 = *(v61 + 64);
  __chkstk_darwin(v496);
  v479 = &v374[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_1000089AC(&qword_100085CF8, &qword_1000694A8);
  v65 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64 - 8);
  v446 = &v374[-v66];
  v67 = sub_1000089AC(&unk_100085D00, &unk_1000694B0);
  v68 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67 - 8);
  v445 = &v374[-v69];
  v478 = type metadata accessor for TaskMetadata();
  v488 = *(v478 - 8);
  v70 = *(v488 + 64);
  __chkstk_darwin(v478);
  v495 = &v374[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v465 = type metadata accessor for PushMetadata();
  v487 = *(v465 - 8);
  v72 = *(v487 + 64);
  __chkstk_darwin(v465);
  v464 = &v374[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v455 = type metadata accessor for Date();
  v74 = *(v455 - 8);
  v75 = *(v74 + 64);
  __chkstk_darwin(v455);
  v470 = &v374[-((v76 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v483 = sub_1000089AC(&qword_1000854E8, &qword_100068F70);
  v77 = *(*(v483 - 8) + 64);
  v78 = __chkstk_darwin(v483);
  v391 = &v374[-((v79 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = __chkstk_darwin(v78);
  v420 = &v374[-v81];
  v82 = __chkstk_darwin(v80);
  v413 = &v374[-v83];
  v84 = __chkstk_darwin(v82);
  v380 = &v374[-v85];
  v86 = __chkstk_darwin(v84);
  v390 = &v374[-v87];
  v88 = __chkstk_darwin(v86);
  v389 = &v374[-v89];
  v90 = __chkstk_darwin(v88);
  v444 = &v374[-v91];
  v92 = __chkstk_darwin(v90);
  v469 = &v374[-v93];
  v94 = __chkstk_darwin(v92);
  v468 = &v374[-v95];
  __chkstk_darwin(v94);
  v97 = &v374[-v96];
  v98 = sub_1000089AC(&qword_1000854E0, &qword_1000694C0);
  v99 = *(v98 - 8);
  v100 = *(v99 + 64);
  __chkstk_darwin(v98);
  v467 = &v374[-v101];
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  v103 = sub_1000098DC(v102, qword_100087610);

  v503 = v103;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.info.getter();
  v106 = os_log_type_enabled(v104, v105);
  v414 = v29;
  v504 = v97;
  if (v106)
  {
    v107 = swift_slowAlloc();
    *v107 = 134217984;
    *(v107 + 4) = *(a9 + 16);

    _os_log_impl(&_mh_execute_header, v104, v105, "Received push notification with %ld messages.", v107, 0xCu);
    v97 = v504;
  }

  else
  {
  }

  v109 = v455;
  v110 = *(a9 + 16);
  if (v110)
  {
    v482 = 0;
    v111 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v463 = *(v98 + 48);
    v112 = a9 + v111;
    v462 = (v74 + 8);
    v440 = (v74 + 16);
    v494 = (v61 + 104);
    v439 = OBJC_IVAR____TtC7mlhostd12MLHostDaemon_taskRegistry;
    v493 = (v492 + 104);
    v492 += 8;
    v477 = (v61 + 8);
    v461 = *(v99 + 72);
    v438 = (v489 + 13);
    v437 = (v489 + 1);
    v436 = enum case for TaskStatus.taskCreated(_:);
    v424 = (v45 + 48);
    v411 = (v45 + 32);
    v410 = (v491 + 48);
    v401 = (v491 + 32);
    v398 = (v491 + 8);
    *&v108 = 134218242;
    v435 = v108;
    *&v108 = 136315138;
    v423 = v108;
    *&v108 = 136315394;
    v417 = v108;
    v379 = (v491 + 16);
    v378 = (v491 + 56);
    LODWORD(v491) = enum case for DynamicTaskSource.push(_:);
    v434 = enum case for TaskStatus.taskReceived(_:);
    v408 = (v45 + 16);
    v407 = (v45 + 56);
    v406 = (v45 + 8);
    v460 = (v490 + 16);
    v458 = (v490 + 8);
    v433 = enum case for TaskCategory.backgroundTask(_:);
    v419 = (v499 + 32);
    v427 = enum case for TaskStatus.taskFailedToRegister(_:);
    v388 = enum case for TaskStatus.taskSuccessfullyRegistered(_:);
    v387 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v377 = enum case for TaskStatus.taskParametersStored(_:);
    v383 = enum case for TaskStatus.taskParametersFailedToStore(_:);
    v113 = &qword_1000854E8;
    v432 = (v487 + 16);
    v431 = (v487 + 56);
    v490 = v488 + 16;
    v489 = (v488 + 56);
    v430 = (v500 + 56);
    v459 = a10;
    v429 = (v488 + 8);
    v428 = (v487 + 8);
    v409 = (v500 + 48);
    v399 = (v500 + 32);
    v386 = (v501 + 56);
    v385 = (v498 + 104);
    v384 = (v498 + 8);
    v402 = (v501 + 8);
    v376 = (v501 + 16);
    v400 = (v500 + 8);
    do
    {
      v499 = v110;
      v498 = v112;
      v116 = v467;
      sub_100009C2C(v112, v467, &qword_1000854E0, &qword_1000694C0);
      v500 = *&v116[v463];
      sub_100009CF4(v116, v97, v113, &qword_100068F70);
      v117 = v468;
      sub_100009C2C(v97, v468, v113, &qword_100068F70);
      v118 = v469;
      sub_100009C2C(v97, v469, v113, &qword_100068F70);
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v507 = v122;
        *v121 = v435;
        v123 = *v117;
        sub_100009C94(v117, v113, &qword_100068F70);
        *(v121 + 4) = v123;
        *(v121 + 12) = 2080;
        v124 = v483;
        v125 = &v118[*(v483 + 48)];
        v126 = TaskDefinition.name.getter();
        v127 = v118;
        v129 = v128;
        sub_100009C94(v127, v113, &qword_100068F70);
        v130 = sub_100008A0C(v126, v129, &v507);

        *(v121 + 14) = v130;
        _os_log_impl(&_mh_execute_header, v119, v120, "Received new push message: version: %ld, task: %s", v121, 0x16u);
        sub_100009914(v122);

        v131 = v470;
      }

      else
      {
        sub_100009C94(v117, v113, &qword_100068F70);

        sub_100009C94(v118, v113, &qword_100068F70);
        v131 = v470;
        v124 = v483;
      }

      v97 = v504;
      v132 = &v504[*(v124 + 44)];
      static Date.now.getter();
      v133 = static Date.> infix(_:_:)();
      (*v462)(v131, v109);
      if (v133)
      {

        v134 = v444;
        sub_100009C2C(v97, v444, v113, &qword_100068F70);
        v135 = v113;
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v507 = v139;
          *v138 = v423;
          v140 = &v134[*(v124 + 48)];
          v141 = TaskDefinition.name.getter();
          v143 = v142;
          sub_100009C94(v134, v135, &qword_100068F70);
          v144 = sub_100008A0C(v141, v143, &v507);

          *(v138 + 4) = v144;
          _os_log_impl(&_mh_execute_header, v136, v137, "Push task cannot be registered before created, task name: %s.", v138, 0xCu);
          sub_100009914(v139);
          v97 = v504;
        }

        else
        {

          sub_100009C94(v134, v135, &qword_100068F70);
        }

        sub_100009C94(v97, v135, &qword_100068F70);
        v114 = v499;
        v115 = v498;
        v113 = v135;
        goto LABEL_10;
      }

      (*v440)(v131, v132, v109);

      v145 = v464;
      PushMetadata.init(topic:channelID:pushType:pushPriority:creationDate:)();
      v146 = v445;
      v147 = v465;
      (*v432)(v445, v145, v465);
      (*v431)(v146, 0, 1, v147);
      v148 = type metadata accessor for PullMetadata();
      (*(*(v148 - 8) + 56))(v446, 1, 1, v148);
      v149 = v495;
      TaskMetadata.init(pushMetadata:pullMetadata:)();
      v488 = *(v459 + v439);
      v501 = &v97[*(v124 + 48)];
      v150 = TaskDefinition.name.getter();
      v152 = v151;
      v484 = *v494;
      v153 = v479;
      v154 = v496;
      v484(v479, v436, v496);
      v485 = *v493;
      v155 = v480;
      v156 = v497;
      v485(v480, v491, v497);
      v486 = *v490;
      v157 = v481;
      v158 = v478;
      v486(v481, v149, v478);
      v487 = *v489;
      (v487)(v157, 0, 1, v158);
      sub_10001CCB4(v150, v152, v153, v155, v157);

      sub_100009C94(v157, &unk_1000859C0, &qword_1000694A0);
      v159 = *v492;
      (*v492)(v155, v156);
      v160 = *v477;
      (*v477)(v153, v154);
      v161 = TaskDefinition.name.getter();
      v163 = v162;
      v484(v153, v434, v154);
      v164 = v497;
      v485(v155, v491, v497);
      v486(v157, v495, v158);
      v165 = v158;
      v166 = v476;
      (v487)(v157, 0, 1, v165);
      sub_10001CCB4(v161, v163, v153, v155, v157);

      sub_100009C94(v157, &unk_1000859C0, &qword_1000694A0);
      v474 = v159;
      v159(v155, v164);
      v475 = v160;
      v160(v153, v496);
      v167 = *v460;
      (*v460)(v502, v501, v166);
      swift_beginAccess();
      TaskDefinition.taskCategory.getter();
      (*v438)(v472, v433, v473);
      sub_100051EE4(&qword_100085920, &type metadata accessor for TaskCategory);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v507 == v505 && v508 == v506)
      {
        v168 = *v437;
        v169 = v473;
        (*v437)(v472, v473);
        v168(v471, v169);

        v170 = v466;
      }

      else
      {
        v171 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v172 = *v437;
        v173 = v473;
        (*v437)(v472, v473);
        v172(v471, v173);

        v170 = v466;
        if ((v171 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      swift_beginAccess();
      v174 = v425;
      TaskDefinition.taskRequest.getter();
      v175 = v457;
      if ((*v424)(v174, 1, v457) == 1)
      {
        sub_100009C94(v174, &qword_1000859A0, &qword_100069268);
        swift_endAccess();
      }

      else
      {
        (*v411)(v426, v174, v175);
        swift_endAccess();
        v176 = v415;
        TaskRequest.repeatingTask.getter();
        v177 = v416;
        if ((*v410)(v176, 1, v416) == 1)
        {
          sub_100009C94(v176, &unk_100085CE8, &qword_100069498);
        }

        else
        {
          v178 = v403;
          (*v401)(v403, v176, v177);
          RepeatingTaskRequest.interval.getter();
          if (v179 > 0.0 && (RepeatingTaskRequest.minDurationBetweenInstances.getter(), (v180 & 1) != 0))
          {
            RepeatingTaskRequest.interval.getter();
            v182 = v181 * 0.2;
            if (v182 > 300.0)
            {
              v183 = v182;
            }

            else
            {
              v183 = 300.0;
            }

            RepeatingTaskRequest.interval.getter();
            v185 = v184 * 0.8;
            if (v185 > 1200.0)
            {
              v186 = v185;
            }

            else
            {
              v186 = 1200.0;
            }

            if (v183 > v186)
            {
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
            }

            if (COERCE__INT64(fabs(v186 - v183)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_88;
            }

            v187 = sub_100008FB4(0x20000000000001uLL);
            v188 = v183 + (v186 - v183) * vcvtd_n_f64_u64(v187, 0x35uLL);
            if (v187 == 0x20000000000000)
            {
              v189 = v186;
            }

            else
            {
              v189 = v188;
            }

            v190 = Logger.logObject.getter();
            v191 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v190, v191))
            {
              v192 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              v507 = v193;
              *v192 = v417;
              v194 = TaskDefinition.name.getter();
              v196 = sub_100008A0C(v194, v195, &v507);

              *(v192 + 4) = v196;
              v166 = v476;
              *(v192 + 12) = 2048;
              *(v192 + 14) = v189;
              _os_log_impl(&_mh_execute_header, v190, v191, "Updating minDurationBetweenInstances for push task %s to %f", v192, 0x16u);
              sub_100009914(v193);
            }

            v197 = v403;
            RepeatingTaskRequest.minDurationBetweenInstances.setter();
            v198 = v382;
            v199 = v416;
            (*v379)(v382, v197, v416);
            (*v378)(v198, 0, 1, v199);
            TaskRequest.repeatingTask.setter();
            (*v398)(v197, v199);
          }

          else
          {
            (*v398)(v178, v177);
          }
        }

        v200 = v426;
        TaskRequest.randomInitialDelay.getter();
        v201 = v457;
        if (v202)
        {
          v203 = COERCE_DOUBLE(sub_100048C18());
          if ((v204 & 1) == 0)
          {
            v205 = v203;
            if (v203 > 0.0)
            {
              if ((~*&v203 & 0x7FF0000000000000) == 0)
              {
                goto LABEL_87;
              }

              v206 = sub_100008FB4(0x20000000000001uLL);
              v207 = vcvtd_n_f64_u64(v206, 0x35uLL) * v205 + 0.0;
              if (v206 != 0x20000000000000)
              {
                v205 = v207;
              }

              v208 = Logger.logObject.getter();
              v209 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v208, v209))
              {
                v210 = swift_slowAlloc();
                v211 = swift_slowAlloc();
                v507 = v211;
                *v210 = v417;
                v212 = TaskDefinition.name.getter();
                v214 = sub_100008A0C(v212, v213, &v507);

                *(v210 + 4) = v214;
                v166 = v476;
                *(v210 + 12) = 2048;
                *(v210 + 14) = v205;
                _os_log_impl(&_mh_execute_header, v208, v209, "Updating randomInitialDelay for push task %s to %f", v210, 0x16u);
                sub_100009914(v211);
              }

              v201 = v457;
              v200 = v426;
              TaskRequest.randomInitialDelay.setter();
            }
          }
        }

        v215 = v412;
        (*v408)(v412, v200, v201);
        (*v407)(v215, 0, 1, v201);
        swift_beginAccess();
        TaskDefinition.taskRequest.setter();
        swift_endAccess();
        (*v406)(v200, v201);
      }

LABEL_52:
      v216 = v456;
      (*v430)(v170, 1, 1, v456);
      v217 = v441;
      v167(v441, v502, v166);
      v218 = v170;
      v219 = v442;
      v220 = v482;
      v221 = v443;
      sub_100034304(v217, v443, v442);
      if (v220)
      {
        v482 = *v458;
        v482(v217, v166);

        sub_100051EE4(&unk_100085990, &type metadata accessor for TaskValidationError);
        v222 = v421;
        swift_allocError();
        (*v419)(v223, v221, v222);
        v224 = v420;
        sub_100009C2C(v504, v420, &qword_1000854E8, &qword_100068F70);
        swift_errorRetain();
        swift_errorRetain();
        v225 = Logger.logObject.getter();
        v226 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v225, v226))
        {
          v227 = swift_slowAlloc();
          v228 = swift_slowAlloc();
          v229 = swift_slowAlloc();
          v507 = v229;
          *v227 = v417;
          v230 = &v224[*(v483 + 48)];
          v231 = TaskDefinition.name.getter();
          v233 = v232;
          sub_100009C94(v224, &qword_1000854E8, &qword_100068F70);
          v234 = sub_100008A0C(v231, v233, &v507);

          *(v227 + 4) = v234;
          *(v227 + 12) = 2112;
          swift_errorRetain();
          v235 = _swift_stdlib_bridgeErrorToNSError();
          *(v227 + 14) = v235;
          *v228 = v235;
          _os_log_impl(&_mh_execute_header, v225, v226, "Failed to register push task %s. Error: %@", v227, 0x16u);
          sub_100009C94(v228, &qword_100085970, &qword_100068F48);

          sub_100009914(v229);
        }

        else
        {

          sub_100009C94(v224, &qword_1000854E8, &qword_100068F70);
        }

        v242 = TaskDefinition.name.getter();
        v244 = v243;
        v245 = v479;
        v246 = v496;
        v484(v479, v427, v496);
        v247 = v480;
        v248 = v497;
        v485(v480, v491, v497);
        v249 = v481;
        v250 = v495;
        v251 = v478;
        v486(v481, v495, v478);
        (v487)(v249, 0, 1, v251);
        sub_10001CCB4(v242, v244, v245, v247, v249);

        sub_100009C94(v249, &unk_1000859C0, &qword_1000694A0);
        v474(v247, v248);
        v475(v245, v246);
        sub_100009C94(v466, &qword_100085940, &unk_1000693D0);
        (*v429)(v250, v251);
        (*v428)(v464, v465);
        v97 = v504;
        sub_100009C94(v504, &qword_1000854E8, &qword_100068F70);

        v482(v502, v476);
        v482 = 0;
        v109 = v455;
        v114 = v499;
        v115 = v498;
        v113 = &qword_1000854E8;
        goto LABEL_10;
      }

      v482 = 0;
      v422 = *v458;
      v422(v217, v166);
      sub_100009C94(v218, &qword_100085940, &unk_1000693D0);
      sub_100009CF4(v219, v218, &qword_100085940, &unk_1000693D0);
      v236 = v414;
      sub_100009C2C(v218, v414, &qword_100085940, &unk_1000693D0);
      v237 = (*v409)(v236, 1, v216);
      v238 = v418;
      if (v237 == 1)
      {

        sub_100009C94(v236, &qword_100085940, &unk_1000693D0);
        v239 = v483;
        v240 = v413;
        v241 = v504;
LABEL_63:
        sub_100009C2C(v241, v240, &qword_1000854E8, &qword_100068F70);
        v265 = Logger.logObject.getter();
        v266 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v265, v266))
        {
          v267 = swift_slowAlloc();
          v268 = swift_slowAlloc();
          v507 = v268;
          *v267 = v423;
          v269 = v240 + *(v239 + 48);
          v270 = TaskDefinition.name.getter();
          v272 = v271;
          sub_100009C94(v240, &qword_1000854E8, &qword_100068F70);
          v273 = sub_100008A0C(v270, v272, &v507);

          *(v267 + 4) = v273;
          _os_log_impl(&_mh_execute_header, v265, v266, "Failed to fetch task folder for pushed task %s. Skipping task.", v267, 0xCu);
          sub_100009914(v268);
        }

        else
        {

          sub_100009C94(v240, &qword_1000854E8, &qword_100068F70);
        }

        v274 = TaskDefinition.name.getter();
        v276 = v275;
        v277 = v479;
        v278 = v496;
        v484(v479, v427, v496);
        v279 = v480;
        v280 = v497;
        v485(v480, v491, v497);
        v281 = v481;
        v282 = v495;
        v283 = v478;
        v486(v481, v495, v478);
        (v487)(v281, 0, 1, v283);
        sub_10001CCB4(v274, v276, v277, v279, v281);

        sub_100009C94(v281, &unk_1000859C0, &qword_1000694A0);
        v474(v279, v280);
        v475(v277, v278);
        goto LABEL_84;
      }

      (*v399)(v418, v236, v216);
      v253 = MLHostTask.taskFolder.getter();
      v239 = v483;
      v240 = v413;
      if (!v252)
      {
        v264 = v504;
        (*v400)(v238, v216);

        v241 = v264;
        goto LABEL_63;
      }

      v396 = v252;
      v397 = v253;
      v254 = v389;
      sub_100009C2C(v504, v389, &qword_1000854E8, &qword_100068F70);
      v255 = Logger.logObject.getter();
      v256 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        v258 = swift_slowAlloc();
        v507 = v258;
        *v257 = v423;
        v259 = &v254[*(v483 + 48)];
        v260 = TaskDefinition.name.getter();
        v262 = v261;
        sub_100009C94(v254, &qword_1000854E8, &qword_100068F70);
        v263 = sub_100008A0C(v260, v262, &v507);

        *(v257 + 4) = v263;
        _os_log_impl(&_mh_execute_header, v255, v256, "Task %s is successfully registered via push message.", v257, 0xCu);
        sub_100009914(v258);
      }

      else
      {

        sub_100009C94(v254, &qword_1000854E8, &qword_100068F70);
      }

      v284 = v404;
      v285 = TaskDefinition.name.getter();
      v287 = v286;
      v288 = v479;
      v289 = v496;
      v484(v479, v388, v496);
      v290 = v480;
      v291 = v497;
      v485(v480, v491, v497);
      v292 = v481;
      v293 = v478;
      v486(v481, v495, v478);
      (v487)(v292, 0, 1, v293);
      sub_10001CCB4(v285, v287, v288, v290, v292);

      sub_100009C94(v292, &unk_1000859C0, &qword_1000694A0);
      v474(v290, v291);
      v475(v288, v289);
      (*v386)(v393, 1, 1, v284);
      v294 = *v385;
      v295 = v394;
      v296 = v387;
      v297 = v395;
      (*v385)(v394, v387, v395);
      v298 = v392;
      URL.init(filePath:directoryHint:relativeTo:)();
      v507 = 0x6574656D61726170;
      v508 = 0xEF6E6F736A2E7372;
      v294(v295, v296, v297);
      sub_100027A04();
      URL.appending<A>(path:directoryHint:)();
      (*v384)(v295, v297);
      v299 = *v402;
      (*v402)(v298, v284);
      v300 = v504;
      v301 = v390;
      sub_100009C2C(v504, v390, &qword_1000854E8, &qword_100068F70);

      v302 = Logger.logObject.getter();
      v303 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v302, v303))
      {
        v304 = swift_slowAlloc();
        v507 = swift_slowAlloc();
        *v304 = v417;
        v305 = v303;
        v306 = &v301[*(v483 + 48)];
        v307 = TaskDefinition.name.getter();
        v308 = v301;
        v309 = v299;
        v311 = v310;
        sub_100009C94(v308, &qword_1000854E8, &qword_100068F70);
        v312 = sub_100008A0C(v307, v311, &v507);

        *(v304 + 4) = v312;
        *(v304 + 12) = 2080;
        v313 = Dictionary.description.getter();
        v315 = sub_100008A0C(v313, v314, &v507);

        *(v304 + 14) = v315;
        v299 = v309;
        _os_log_impl(&_mh_execute_header, v302, v305, "Task %s parameters %s", v304, 0x16u);
        swift_arrayDestroy();

        v300 = v504;
      }

      else
      {

        sub_100009C94(v301, &qword_1000854E8, &qword_100068F70);
      }

      v316 = v391;
      v317 = objc_opt_self();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v507 = 0;
      v319 = [v317 dataWithJSONObject:isa options:1 error:&v507];

      v320 = v507;
      v321 = v483;
      v397 = v299;
      if (v319)
      {
        v322 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v324 = v323;

        v325 = v405;
        v326 = v482;
        Data.write(to:options:)();
        if (!v326)
        {
          v396 = v322;
          v500 = v324;
          v482 = 0;
          v350 = v380;
          sub_100009C2C(v300, v380, &qword_1000854E8, &qword_100068F70);
          v351 = v381;
          v352 = v404;
          (*v376)(v381, v325, v404);
          v353 = Logger.logObject.getter();
          v354 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v353, v354))
          {
            v355 = swift_slowAlloc();
            v507 = swift_slowAlloc();
            *v355 = v417;
            v356 = *(v321 + 48);
            v375 = v354;
            v357 = TaskDefinition.name.getter();
            v358 = v353;
            v359 = v352;
            v361 = v360;
            sub_100009C94(v350, &qword_1000854E8, &qword_100068F70);
            v362 = sub_100008A0C(v357, v361, &v507);

            *(v355 + 4) = v362;
            *(v355 + 12) = 2080;
            sub_100051EE4(&qword_100085D10, &type metadata accessor for URL);
            v363 = dispatch thunk of CustomStringConvertible.description.getter();
            v365 = v364;
            v299(v351, v359);
            v366 = sub_100008A0C(v363, v365, &v507);

            *(v355 + 14) = v366;
            _os_log_impl(&_mh_execute_header, v358, v375, "Task %s parameters are stored at: %s", v355, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            v299(v351, v352);
            sub_100009C94(v350, &qword_1000854E8, &qword_100068F70);
          }

          v367 = v396;
          v368 = TaskDefinition.name.getter();
          v370 = v369;
          v343 = v479;
          v344 = v496;
          v484(v479, v377, v496);
          v371 = v480;
          v372 = v497;
          v485(v480, v491, v497);
          v373 = v481;
          v282 = v495;
          v283 = v478;
          v486(v481, v495, v478);
          (v487)(v373, 0, 1, v283);
          sub_10001CCB4(v368, v370, v343, v371, v373);

          sub_1000099D4(v367, v500);
          sub_100009C94(v373, &unk_1000859C0, &qword_1000694A0);
          v348 = v371;
          v349 = v372;
          goto LABEL_83;
        }

        sub_1000099D4(v322, v324);
      }

      else
      {
        v327 = v320;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v482 = 0;
      sub_100009C2C(v300, v316, &qword_1000854E8, &qword_100068F70);
      swift_errorRetain();
      v328 = Logger.logObject.getter();
      v329 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v328, v329))
      {
        v330 = swift_slowAlloc();
        v331 = v321;
        v332 = swift_slowAlloc();
        v333 = swift_slowAlloc();
        v507 = v333;
        *v330 = v417;
        v334 = v316 + *(v331 + 48);
        v335 = TaskDefinition.name.getter();
        v337 = v336;
        sub_100009C94(v316, &qword_1000854E8, &qword_100068F70);
        v338 = sub_100008A0C(v335, v337, &v507);

        *(v330 + 4) = v338;
        *(v330 + 12) = 2112;
        swift_errorRetain();
        v339 = _swift_stdlib_bridgeErrorToNSError();
        *(v330 + 14) = v339;
        *v332 = v339;
        _os_log_impl(&_mh_execute_header, v328, v329, "Failed at storing parameters for pushed task %s, with error: %@", v330, 0x16u);
        sub_100009C94(v332, &qword_100085970, &qword_100068F48);

        sub_100009914(v333);
      }

      else
      {

        sub_100009C94(v316, &qword_1000854E8, &qword_100068F70);
      }

      v340 = TaskDefinition.name.getter();
      v342 = v341;
      v343 = v479;
      v344 = v496;
      v484(v479, v383, v496);
      v345 = v480;
      v346 = v497;
      v485(v480, v491, v497);
      v347 = v481;
      v282 = v495;
      v283 = v478;
      v486(v481, v495, v478);
      (v487)(v347, 0, 1, v283);
      sub_10001CCB4(v340, v342, v343, v345, v347);

      sub_100009C94(v347, &unk_1000859C0, &qword_1000694A0);
      v348 = v345;
      v349 = v346;
LABEL_83:
      v474(v348, v349);
      v475(v343, v344);
      v397(v405, v404);
      (*v400)(v418, v456);
LABEL_84:
      sub_100009C94(v466, &qword_100085940, &unk_1000693D0);
      (*v429)(v282, v283);
      (*v428)(v464, v465);
      v97 = v504;
      v113 = &qword_1000854E8;
      sub_100009C94(v504, &qword_1000854E8, &qword_100068F70);
      v422(v502, v476);
      v109 = v455;
      v114 = v499;
      v115 = v498;
LABEL_10:
      v112 = v115 + v461;
      v110 = v114 - 1;
    }

    while (v110);
  }
}