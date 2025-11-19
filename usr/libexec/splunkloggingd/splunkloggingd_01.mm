unint64_t sub_1000157A8()
{
  result = qword_100057010;
  if (!qword_100057010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057010);
  }

  return result;
}

uint64_t sub_1000157FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002024(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100015880()
{
  result = qword_100057028;
  if (!qword_100057028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057028);
  }

  return result;
}

unint64_t sub_1000158D4()
{
  result = qword_100057038;
  if (!qword_100057038)
  {
    sub_100002024(&qword_100057030, &unk_1000469E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057038);
  }

  return result;
}

unint64_t sub_100015950()
{
  result = qword_100057048;
  if (!qword_100057048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057048);
  }

  return result;
}

uint64_t sub_1000159D0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_100015A08(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_100015AD4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_100015B64(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_100015BC4(a1, a2);
  return v4;
}

uint64_t sub_100015BC4(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = 0;
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = result;
    if (result)
    {
      sub_100001FDC(&qword_100057050, &qword_1000466D0);
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = v4;
      bzero((v5 + 32), 8 * v4);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage[2];
      if (!v4)
      {
LABEL_7:

        *(v2 + 16) = _swiftEmptyArrayStorage;
        return v2;
      }
    }

    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for SplunkEventBuffer();
    do
    {
      sub_1000306D0(a2);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100015D00(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = *(*v2 + 96);
    v4 = swift_unknownObjectRetain();
    v5 = v3(v4);
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = result;
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_12:
            __break(1u);
            return result;
          }

LABEL_8:
          v11 = *(*v9 + 176);
          v12 = swift_unknownObjectRetain();
          v11(v12, a2);

          ++v8;
          if (v10 == v7)
          {
            goto LABEL_16;
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_15:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_16:
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100015E80()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_100015EA0()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100015ED8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = *(*v2 + 120);
  v5 = *(*v2 + 96);
  v6 = v4();
  result = v5();
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v6 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v8 = *(result + 8 * v6 + 32);

  while (1)
  {

    if (sub_10003136C(a1, a2))
    {
      break;
    }

    v9 = *(*v3 + 128);
    while (1)
    {
      v10 = v4();
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v12 = v5();
      if (v12 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();

        if (!v13)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v13)
        {
          goto LABEL_23;
        }
      }

      if (v11 == 0x8000000000000000 && v13 == -1)
      {
        goto LABEL_26;
      }

      v9(v11 % v13);

      v15 = (v4)(v14);
      v16 = v5();
      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v17 = *(v16 + 8 * v15 + 32);
      }

      if (sub_10003136C(a1, a2))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

LABEL_6:

  return 1;
}

uint64_t sub_100016118(unint64_t a1, unint64_t a2)
{
  v3 = *v2;
  sub_100015ED8(a1, a2);
  return 1;
}

uint64_t sub_100016164()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_100059548);
  sub_100006C6C(v0, qword_100059548);
  v1 = sub_100029948();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000161F0()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for URL();
  sub_1000074E8(v9, qword_10005B038);
  sub_100006C6C(v9, qword_10005B038);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v0);
  return URL.init(filePath:directoryHint:relativeTo:)();
}

uint64_t sub_10001639C()
{
  if (qword_100059560 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return sub_100006C6C(v0, qword_10005B038);
}

uint64_t sub_100016400@<X0>(uint64_t a1@<X8>)
{
  if (qword_100059560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_100006C6C(v2, qword_10005B038);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1000164C0(uint64_t a1)
{
  if (qword_100059560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_100006C6C(v2, qword_10005B038);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1000165B4())()
{
  if (qword_100059560 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  sub_100006C6C(v0, qword_10005B038);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100016648()
{
  v1 = v0 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_100016698(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100016704(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10000B168;
}

uint64_t sub_1000167A4(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001684C;

  return sub_100016948(a1);
}

uint64_t sub_10001684C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100016948(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100016A08, 0, 0);
}

uint64_t sub_100016A08()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = *(v2 + 16);
  v6(v4 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbURL, v5, v3);
  type metadata accessor for FileMonitor();
  v6(v1, v4 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbURL, v3);
  v7 = sub_100002920(v1, 0, 0);
  v8 = OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor;
  v0[7] = OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor;
  *(v4 + v8) = v7;

  return _swift_task_switch(sub_100016B1C, v4, 0);
}

uint64_t sub_100016B1C()
{
  v1 = *(v0[3] + v0[7]);
  v0[8] = v1;
  v2 = *(*v1 + 344);

  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100016C6C;
  v5 = v0[3];

  return (v7)(v5, &off_100052120);
}

uint64_t sub_100016C6C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 24);
  v7 = *v0;

  sub_10001A3C8(&qword_100057138, type metadata accessor for PanicMonitor);
  swift_getObjectType();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100016DFC, v5, v4);
}

uint64_t sub_100016DFC()
{
  v1 = v0[6];
  (*(v0[5] + 8))(v0[2], v0[4]);

  v2 = v0[1];
  v3 = v0[3];

  return v2(v3);
}

uint64_t type metadata accessor for PanicMonitor()
{
  result = qword_100059600;
  if (!qword_100059600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016EE8()
{
  if ((*(**(v0 + 16) + 136))())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100059540 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006C6C(v1, qword_100059548);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error: starting monitor without a delegate to handle panics", v4, 2u);
    }
  }

  v5 = *(*(v0 + 16) + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor);
  *(v0 + 24) = v5;
  v6 = *v5 + 392;
  *(v0 + 32) = *v6;
  *(v0 + 40) = v6 & 0xFFFFFFFFFFFFLL | 0xA103000000000000;

  return _swift_task_switch(sub_10001A4E8, v5, 0);
}

uint64_t sub_10001707C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000170A0, v2, 0);
}

uint64_t sub_1000170A0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(**(v0 + 32) + 144);
  v4 = swift_unknownObjectRetain();
  v3(v4, v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100017134(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(sub_100001FDC(&unk_100056B40, &unk_100045890) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000172A0, v1, 0);
}

uint64_t sub_1000172A0()
{
  v103 = v0;
  v1 = sub_10002AD10();
  v3 = v2;
  v4 = v1;
  v5 = v0[8];
  v6 = Data.init(contentsOf:options:)();
  v0[18] = v6;
  v0[19] = v7;
  v8 = v6;
  v9 = v7;
  v10 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_11;
    }

    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 >= 1)
      {
        goto LABEL_8;
      }

LABEL_11:

      if (qword_100059540 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006C6C(v18, qword_100059548);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Found empty breadcrumb file", v21, 2u);
      }

      v22 = v0[13];
      v23 = v0[14];
      v24 = v0[7];
      sub_10000803C(v8, v9);

      (*(v23 + 56))(v24, 1, 1, v22);
      goto LABEL_29;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v10)
  {
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      if (HIDWORD(v6) - v6 >= 1)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_47;
  }

  if (!BYTE6(v7))
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = type metadata accessor for PropertyListDecoder();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[20] = PropertyListDecoder.init()();
  sub_100001FDC(&qword_100057260, qword_1000468C0);
  sub_10001A410();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v25 = v0[6];
  if (!*(v25 + 16) || (v26 = sub_10000FE4C(v4, v3), (v27 & 1) == 0))
  {

    if (qword_100059540 == -1)
    {
LABEL_33:
      v45 = type metadata accessor for Logger();
      sub_100006C6C(v45, qword_100059548);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v102[0] = v49;
        *v48 = 136446210;
        v50 = sub_10000604C(v4, v3, v102);

        *(v48 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v46, v47, "Breadcrumb missing boot UUID: %{public}s", v48, 0xCu);
        sub_100006D94(v49);

        sub_10000803C(v8, v9);
      }

      else
      {
        sub_10000803C(v8, v9);
      }

      (*(v0[14] + 56))(v0[7], 1, 1, v0[13]);
LABEL_29:
      v40 = v0[16];
      v39 = v0[17];
      v41 = v0[15];
      v43 = v0[11];
      v42 = v0[12];

      v44 = v0[1];

      return v44();
    }

LABEL_48:
    swift_once();
    goto LABEL_33;
  }

  v28 = v26;

  v29 = (*(v25 + 56) + 16 * v28);
  v31 = *v29;
  v30 = v29[1];

  if ((v31 || v30 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v98 = v0[17];
    v51 = v0[11];
    v100 = v31;
    v53 = v0[9];
    v52 = v0[10];
    v97 = *(v0[14] + 56);
    v97(v0[12], 1, 1, v0[13]);
    v95 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v94 = *(v52 + 104);
    v94(v51);

    URL.init(filePath:directoryHint:relativeTo:)();
    v54 = [objc_opt_self() defaultManager];
    v55 = String._bridgeToObjectiveC()();
    v99 = v54;
    LODWORD(v54) = [v54 fileExistsAtPath:v55];

    v56 = v0[17];
    if (v54)
    {
      v57 = v0[13];
      v58 = v0[14];
      v59 = v0[7];

      sub_10000803C(v8, v9);
      (*(v58 + 32))(v59, v56, v57);
      v97(v59, 0, 1, v57);
    }

    else
    {
      v87 = v0[15];
      v88 = v0[16];
      v60 = v0[14];
      v92 = v0[13];
      v61 = v0[11];
      v90 = v0[10];
      v62 = v0[9];
      v63 = URL.lastPathComponent.getter();
      v85 = v64;
      v86 = v63;
      URL.deletingLastPathComponent()();
      sub_100001FDC(&unk_100056C98, &unk_100045C20);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_100045B60;
      *(v65 + 32) = 0x64657269746552;
      *(v65 + 40) = 0xE700000000000000;
      *(v65 + 48) = v86;
      *(v65 + 56) = v85;
      (v94)(v61, v95, v62);
      sub_10001A48C();
      URL.appending<A>(components:directoryHint:)();

      (*(v90 + 8))(v61, v62);
      v96 = *(v60 + 8);
      v96(v87, v92);
      v66 = URL.path(percentEncoded:)(0);
      v67 = String._bridgeToObjectiveC()();
      LODWORD(v60) = [v99 fileExistsAtPath:v67];

      if (v60)
      {
        v101 = v0[16];
        v68 = v0[13];
        v69 = v0[14];
        v70 = v0[7];
        v96(v0[17], v68);

        sub_10000803C(v8, v9);
        (*(v69 + 32))(v70, v101, v68);
        v97(v70, 0, 1, v68);
      }

      else
      {
        if (qword_100059540 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_100006C6C(v71, qword_100059548);

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

        v74 = v72;
        v75 = os_log_type_enabled(v72, v73);
        v76 = v0[17];
        v77 = v0[13];
        v91 = v77;
        v93 = v0[16];
        if (v75)
        {
          v89 = v0[17];
          v78 = swift_slowAlloc();
          v102[0] = swift_slowAlloc();
          *v78 = 136446466;
          v79 = sub_10000604C(v100, v30, v102);

          *(v78 + 4) = v79;
          *(v78 + 12) = 2082;
          v80 = sub_10000604C(v66._countAndFlagsBits, v66._object, v102);

          *(v78 + 14) = v80;
          _os_log_impl(&_mh_execute_header, v74, v73, "Breadcrumb file has path: '%{public}s, but no file found there or %{public}s'", v78, 0x16u);
          swift_arrayDestroy();

          sub_10000803C(v8, v9);
          v81 = v91;
          v82 = v96;
          v96(v93, v91);
          v83 = v89;
        }

        else
        {

          sub_10000803C(v8, v9);

          v81 = v91;
          v82 = v96;
          v96(v93, v91);
          v83 = v76;
        }

        v82(v83, v81);
        v97(v0[7], 1, 1, v0[13]);
      }
    }

    goto LABEL_29;
  }

  if (qword_100059540 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006C6C(v32, qword_100059548);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "No panic found this boot, stopping monitoring breadcrumb", v35, 2u);
  }

  v36 = v0[8];

  v37 = *(v36 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor);
  v0[21] = v37;
  v38 = *v37;
  v0[22] = *(*v37 + 400);
  v0[23] = (v38 + 400) & 0xFFFFFFFFFFFFLL | 0x5E9D000000000000;

  return _swift_task_switch(sub_100018234, v37, 0);
}

uint64_t sub_100018234()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 64);
  (*(v0 + 176))();

  return _swift_task_switch(sub_1000182AC, v3, 0);
}

uint64_t sub_1000182AC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[7];

  sub_10000803C(v3, v2);
  (*(v5 + 56))(v6, 1, 1, v4);
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  v11 = v0[11];
  v10 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000183A4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor);
  v0[3] = v1;
  v2 = *v1 + 400;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0x5E9D000000000000;

  return _swift_task_switch(sub_100018448, v1, 0);
}

uint64_t sub_100018448()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000184B4()
{
  v1[2] = v0;
  v2 = *(*(sub_100001FDC(&qword_100056880, &qword_100046FE0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(sub_100001FDC(&unk_100056B40, &unk_100045890) - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v1[4] = v4;
  v5 = type metadata accessor for URL();
  v1[5] = v5;
  v6 = *(v5 - 8);
  v1[6] = v6;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[9] = v8;
  *v8 = v1;
  v8[1] = sub_100018630;

  return sub_100017134(v4);
}

uint64_t sub_100018630()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_100018740, v2, 0);
}

uint64_t sub_100018740()
{
  v57 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007E2C(v3, &unk_100056B40, &unk_100045890);
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    (*(v2 + 32))(v4, v3, v1);
    v6 = URL.path(percentEncoded:)(0);
    type metadata accessor for PanicReport();
    (*(v2 + 16))(v5, v4, v1);
    if (IPSReport.__allocating_init(reportPath:)())
    {
      dispatch thunk of PanicReport.prepareReportForSubmission()();

      v7 = dispatch thunk of IPSReport.reportData.getter();
      v9 = v8;

      if (v9 >> 60 == 15)
      {
        if (qword_100059540 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_100006C6C(v10, qword_100059548);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();

        v13 = os_log_type_enabled(v11, v12);
        v14 = v0[8];
        v16 = v0[5];
        v15 = v0[6];
        if (v13)
        {
          v54 = v0[8];
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v56 = v18;
          *v17 = 136446210;
          v19 = sub_10000604C(v6._countAndFlagsBits, v6._object, &v56);

          *(v17 + 4) = v19;
          _os_log_impl(&_mh_execute_header, v11, v12, "Failed to redact panic report at path '%{public}s'", v17, 0xCu);
          sub_100006D94(v18);

          (*(v15 + 8))(v54, v16);
        }

        else
        {

          (*(v15 + 8))(v14, v16);
        }
      }

      else
      {
        v30 = sub_100019498(v6._countAndFlagsBits, v6._object, v7, v9);
        if (v32)
        {
          (*(v0[6] + 8))(v0[8], v0[5]);

          sub_100010C2C(v7, v9);
        }

        else
        {
          v53 = v30;
          v55 = v31;
          if (qword_100059540 != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          sub_100006C6C(v33, qword_100059548);

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v56 = v37;
            *v36 = 136446210;
            v38 = sub_10000604C(v6._countAndFlagsBits, v6._object, &v56);

            *(v36 + 4) = v38;
            _os_log_impl(&_mh_execute_header, v34, v35, "Forwarding panic event to Splunk from path %{public}s", v36, 0xCu);
            sub_100006D94(v37);
          }

          else
          {
          }

          v39 = v0[6];
          v51 = v0[5];
          v52 = v0[8];
          v41 = v0[2];
          v40 = v0[3];
          v42 = type metadata accessor for TaskPriority();
          (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
          v43 = sub_10001A3C8(&qword_100057138, type metadata accessor for PanicMonitor);
          v44 = swift_allocObject();
          v44[2] = v41;
          v44[3] = v43;
          v44[4] = v41;
          v44[5] = v53;
          v44[6] = v55;
          swift_retain_n();
          sub_10001A300(v53, v55, 0);
          sub_10000326C(0, 0, v40, &unk_100046860, v44);
          sub_100010C2C(v7, v9);

          sub_10001A35C(v53, v55, 0);

          (*(v39 + 8))(v52, v51);
        }
      }
    }

    else
    {
      if (qword_100059540 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006C6C(v20, qword_100059548);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      v23 = os_log_type_enabled(v21, v22);
      v24 = v0[8];
      v25 = v0[5];
      v26 = v0[6];
      if (v23)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v56 = v28;
        *v27 = 136446210;
        v29 = sub_10000604C(v6._countAndFlagsBits, v6._object, &v56);

        *(v27 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to initialize Panic Helper at path '%{public}s'", v27, 0xCu);
        sub_100006D94(v28);
      }

      else
      {
      }

      (*(v26 + 8))(v24, v25);
    }
  }

  v46 = v0[7];
  v45 = v0[8];
  v48 = v0[3];
  v47 = v0[4];

  v49 = v0[1];

  return v49();
}

uint64_t sub_100018E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_100018E50, a4, 0);
}

uint64_t sub_100018E50()
{
  v1 = (*(**(v0 + 24) + 136))();
  *(v0 + 48) = v1;
  if (v1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_100018FE8;
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);

    return v12(v9, v8, ObjectType, v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100018FE8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 24);
  v5 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10000D7B0, v3, 0);
}

uint64_t sub_100019114()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor);

  sub_100006DE0(v0 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10001919C()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_breadCrumbMonitor);

  sub_100006DE0(v0 + OBJC_IVAR____TtC14splunkloggingd12PanicMonitor_delegate);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100019234()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000073F4;

  return sub_100019AE0();
}

uint64_t sub_1000192D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007EAC;

  return sub_100019DCC();
}

uint64_t sub_100019378()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007EAC;

  return sub_100019AE0();
}

uint64_t sub_100019438()
{
  v1 = *(v0 + 16);
  sub_100019FC4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100019498(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_100001FDC(&qword_100056C18, &qword_100045BC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v42 - v10;
  v45 = type metadata accessor for Date();
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v45);
  v44 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002CD18(a3, a4);
  if (v15)
  {
    v16 = v15;
    v17 = sub_10002BE40();
    if (!v18)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = a1;
  if (qword_100059540 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006C6C(v32, qword_100059548);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v53 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_10000604C(v43, a2, &v53);
    _os_log_impl(&_mh_execute_header, v33, v34, "Failed to extract json from redacted panic report. Sending raw data for path %{public}s", v35, 0xCu);
    sub_100006D94(v36);
  }

  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045B50;
  *(inited + 32) = 0x70655263696E6170;
  *(inited + 40) = 0xEB0000000074726FLL;
  v38 = sub_100010724(a3, a4);
  if (v39)
  {
    a1 = v43;
    goto LABEL_22;
  }

  v48 = a3;
  v49 = a4;
  sub_100007F28(a3, a4);
  sub_100001FDC(&unk_1000578A0, &unk_100045C10);
  if (swift_dynamicCast())
  {
    v42[1] = 0;
    sub_100010C50(v46, &v50);
    v42[2] = v52;
    sub_100010C68(&v50, v51);
    if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
    {
      sub_100010C68(&v50, v51);
      dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
      v41 = *(&v46[0] + 1);
      v40 = *&v46[0];
      sub_100006D94(&v50);
      v39 = v41;
      v38 = v40;
      a1 = v43;
      goto LABEL_22;
    }

    sub_100006D94(&v50);
  }

  else
  {
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    sub_100007E2C(v46, &qword_100056C90, &qword_1000471D0);
  }

  a1 = v43;
  v38 = sub_10000FDA4(a3, a4);
LABEL_22:
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v38;
  *(inited + 56) = v39;
  v16 = sub_100010AFC(inited);
  swift_setDeallocating();
  sub_100007E2C(inited + 32, &unk_100056C80, &unk_1000468A0);
  v17 = sub_10002BE40();
  if (v18)
  {
LABEL_3:
    v54 = &type metadata for String;
    *&v53 = v17;
    *(&v53 + 1) = v18;
    sub_100010C40(&v53, &v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46[0] = v16;
    sub_100010234(&v50, 0x6C6169726573, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v16 = *&v46[0];
  }

LABEL_4:
  sub_100001FDC(&unk_100056C70, &unk_100046890);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_100045B60;
  *(v20 + 32) = 0x746E657665;
  *(v20 + 40) = 0xE500000000000000;
  v21 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
  *(v20 + 48) = v16;
  *(v20 + 72) = v21;
  *(v20 + 80) = 0x656372756F73;
  *(v20 + 120) = &type metadata for String;
  *(v20 + 88) = 0xE600000000000000;
  *(v20 + 96) = a1;
  *(v20 + 104) = a2;

  v22 = a1;
  v23 = sub_100010AFC(v20);
  swift_setDeallocating();
  sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  swift_arrayDestroy();
  sub_10002D128(v22, a2, v11);
  v24 = v45;
  if ((*(v12 + 48))(v11, 1, v45) == 1)
  {
    sub_100007E2C(v11, &qword_100056C18, &qword_100045BC0);
  }

  else
  {
    v25 = v44;
    (*(v12 + 32))(v44, v11, v24);
    Date.timeIntervalSince1970.getter();
    v54 = &type metadata for Double;
    *&v53 = v26;
    sub_100010C40(&v53, &v50);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v46[0] = v23;
    sub_100010234(&v50, 1701669236, 0xE400000000000000, v27);
    (*(v12 + 8))(v25, v24);
  }

  v28 = sub_10002C584();
  v30 = v29;

  if (v30 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    return v28;
  }
}

uint64_t sub_100019B00()
{
  v14 = v0;
  if (qword_100059540 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_100059548);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = URL.path(percentEncoded:)(1);
    v9 = sub_10000604C(v8._countAndFlagsBits, v8._object, &v13);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Observed change in %{public}s", v6, 0xCu);
    sub_100006D94(v7);
  }

  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_100019CD8;
  v11 = *(v0 + 16);

  return sub_1000184B4();
}

uint64_t sub_100019CD8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100019DEC()
{
  v14 = v0;
  if (qword_100059540 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_100059548);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = URL.path(percentEncoded:)(1);
    v9 = sub_10000604C(v8._countAndFlagsBits, v8._object, &v13);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Started monitoring %{public}s", v6, 0xCu);
    sub_100006D94(v7);
  }

  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_10001A4E4;
  v11 = *(v0 + 16);

  return sub_1000184B4();
}

void sub_100019FC4()
{
  if (qword_100059540 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006C6C(v0, qword_100059548);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v7 = v3;
    *v2 = 136446210;
    v4 = URL.path(percentEncoded:)(1);
    v5 = sub_10000604C(v4._countAndFlagsBits, v4._object, &v7);

    *(v2 + 4) = v5;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Stopped monitoring %{public}s", v2, 0xCu);
    sub_100006D94(v3);
  }
}

uint64_t sub_10001A13C()
{
  result = type metadata accessor for URL();
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

uint64_t sub_10001A1F0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_10001A334(v0[5], v0[6], sub_10000803C);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001A24C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000073F4;

  return sub_100018E2C(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_10001A300(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_10001A334(result, a2, sub_100007F28);
  }

  return result;
}

uint64_t sub_10001A334(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  if (((a2 >> 60) & 3) == 0)
  {
    v3 = a2;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  return a3(a1, v4);
}

uint64_t sub_10001A35C(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_10001A334(result, a2, sub_10000803C);
  }

  return result;
}

uint64_t sub_10001A390()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001A3C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001A410()
{
  result = qword_100057268;
  if (!qword_100057268)
  {
    sub_100002024(&qword_100057260, qword_1000468C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057268);
  }

  return result;
}

unint64_t sub_10001A48C()
{
  result = qword_1000578E0;
  if (!qword_1000578E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000578E0);
  }

  return result;
}

id sub_10001A4EC()
{
  result = [v0 decomposedMessage];
  if (result)
  {
    v2 = result;
    v3 = [result placeholderCount];

    result = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001A548(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    result = [v1 decomposedMessage];
    if (result)
    {
      v3 = result;
      if ([result placeholderCount] > v2 && (v4 = objc_msgSend(v3, "argumentAtIndex:", v2)) != 0)
      {
        v5 = v4;
        v6 = [v4 availability];
        if (v6 > 1)
        {
          switch(v6)
          {
            case 2:

              return 0x657461766972703CLL;
            case 3:

              return 0x7461636E7572743CLL;
            case 4:

              return 0x6D726F666C616D3CLL;
          }

          goto LABEL_20;
        }

        if (v6)
        {
          if (v6 == 1)
          {

            return 0x676E697373696D3CLL;
          }

LABEL_20:
          [v5 availability];
          v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v11);

          v12._countAndFlagsBits = 62;
          v12._object = 0xE100000000000000;
          String.append(_:)(v12);

          return 0x6E776F6E6B6E753CLL;
        }

        v7 = [v5 objectRepresentation];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 description];

          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          return v10;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10001A7B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  __chkstk_darwin(v4);
  v71 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 process];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0x8000000100043B90;
    v9 = 0xD000000000000011;
  }

  v70 = sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000468E0;
  *(inited + 32) = 0x6449646165726874;
  *(inited + 40) = 0xE800000000000000;
  *&v75 = [v2 threadIdentifier];
  sub_10001AFB0();
  *(inited + 48) = BinaryInteger.description.getter();
  *(inited + 56) = v13;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x737365636F7270;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v9;
  v69 = v9;
  *(inited + 104) = v11;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 6580592;
  *(inited + 136) = 0xE300000000000000;
  v74 = v11;

  LODWORD(v79[0]) = [v2 processIdentifier];
  v68[1] = sub_10001B004();
  *(inited + 144) = BinaryInteger.description.getter();
  *(inited + 152) = v14;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x65707954676F6CLL;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = OSLogEventLogType.description.getter([v2 logType]);
  *(inited + 200) = v15;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 1701869940;
  *(inited + 232) = 0xE400000000000000;
  v16 = OSLogEventType.description.getter([v2 type]);
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v16;
  *(inited + 248) = v17;
  v18 = sub_100010AFC(inited);
  swift_setDeallocating();
  v68[2] = sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  swift_arrayDestroy();
  if (a1)
  {
    v19 = sub_10001B1E4();
    v76 = v19;
    v77 = &off_1000521B8;
    *&v75 = v2;

    v20 = v2;
    v21 = sub_100013020(&v75);
    sub_100006D94(&v75);
    v76 = v19;
    v77 = &off_1000521B8;
    *&v75 = v20;
    v22 = v20;
    v23 = sub_100013074(&v75);

    sub_100006D94(&v75);
    if ((v21 & 1) == 0)
    {
      if (!v23)
      {

        return 0;
      }

      v31 = v74;
      goto LABEL_17;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xED00003E65676173;
  v25 = 0x73656D5F6C696E3CLL;
  v26 = [v2 composedMessage];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v76 = &type metadata for String;
    if (v30)
    {
      v25 = v28;
      v24 = v30;
    }
  }

  else
  {
    v76 = &type metadata for String;
  }

  *&v75 = v25;
  *(&v75 + 1) = v24;
  sub_100010C40(&v75, v79);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v18;
  sub_100010234(v79, 0x6567617373656DLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v18 = v78;
  if (!v23)
  {
    v31 = v74;
    goto LABEL_19;
  }

  v31 = v74;
LABEL_17:

  v76 = sub_100001FDC(&qword_100057260, qword_1000468C0);
  *&v75 = v23;
  sub_100010C40(&v75, v79);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v78 = v18;
  sub_100010234(v79, 0x746E656D75677261, 0xE900000000000073, v33);
  v18 = v78;
LABEL_19:
  v34 = [v2 sender];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v76 = &type metadata for String;
    *&v75 = v36;
    *(&v75 + 1) = v38;
    sub_100010C40(&v75, v79);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v18;
    sub_100010234(v79, 0x7265646E6573, 0xE600000000000000, v39);
    v18 = v78;
    v40 = [v2 subsystem];
    if (v40)
    {
      v41 = v40;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v76 = &type metadata for String;
      *&v75 = v42;
      *(&v75 + 1) = v44;
      sub_100010C40(&v75, v79);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v78 = v18;
      sub_100010234(v79, 0x6574737973627573, 0xE90000000000006DLL, v45);
      v18 = v78;
      v46 = [v2 category];
      if (v46)
      {
        v47 = v46;
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v76 = &type metadata for String;
        *&v75 = v48;
        *(&v75 + 1) = v50;
        sub_100010C40(&v75, v79);
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v78 = v18;
        sub_100010234(v79, 0x79726F6765746163, 0xE800000000000000, v51);
        v18 = v78;
      }
    }
  }

  v74 = v23;
  v52 = sub_10002BE40();
  if (v53)
  {
    v76 = &type metadata for String;
    *&v75 = v52;
    *(&v75 + 1) = v53;
    sub_100010C40(&v75, v79);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v18;
    sub_100010234(v79, 0x6C6169726573, 0xE600000000000000, v54);
    v18 = v78;
  }

  *&v75 = v69;
  *(&v75 + 1) = v31;
  v55._countAndFlagsBits = 58;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  LODWORD(v79[0]) = [v2 processIdentifier];
  v56._countAndFlagsBits = BinaryInteger.description.getter();
  String.append(_:)(v56);

  v57 = v75;
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_100045570;
  *(v58 + 32) = 1701669236;
  *(v58 + 40) = 0xE400000000000000;
  v59 = [v2 date];
  v60 = v71;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince1970.getter();
  v62 = v61;
  (*(v72 + 8))(v60, v73);
  *(v58 + 48) = v62;
  *(v58 + 72) = &type metadata for Double;
  *(v58 + 80) = 0x746E657665;
  *(v58 + 88) = 0xE500000000000000;
  v63 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
  *(v58 + 96) = v18;
  *(v58 + 120) = v63;
  *(v58 + 128) = 0x656372756F73;
  *(v58 + 168) = &type metadata for String;
  *(v58 + 136) = 0xE600000000000000;
  *(v58 + 144) = v57;
  sub_100010AFC(v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  v64 = sub_10002C584();
  v66 = v65;

  if (v66 >> 60 != 15)
  {
    return v64;
  }

  return 0;
}

unint64_t sub_10001AFB0()
{
  result = qword_100057270;
  if (!qword_100057270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057270);
  }

  return result;
}

unint64_t sub_10001B004()
{
  result = qword_100057278;
  if (!qword_100057278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057278);
  }

  return result;
}

uint64_t sub_10001B0A0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

id sub_10001B104()
{
  result = [*v0 decomposedMessage];
  if (result)
  {
    v2 = result;
    v3 = [result placeholderCount];

    result = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10001B160()
{
  v1 = [*v0 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t sub_10001B1E4()
{
  result = qword_100057280;
  if (!qword_100057280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100057280);
  }

  return result;
}

uint64_t sub_10001B230(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OSLogEventType.description.getter(uint64_t a1)
{
  if (a1 <= 1023)
  {
    if ((a1 - 513) < 3)
    {
      return 0x7974697669746341;
    }

    if (a1 == 768)
    {
      return 0x6563617254;
    }
  }

  else if (a1 <= 1535)
  {
    if (a1 == 1024)
    {
      return 6778700;
    }

    if (a1 == 1280)
    {
      return 0x636E7973656D6954;
    }
  }

  else
  {
    switch(a1)
    {
      case 1536:
        return 0x74736F706E676953;
      case 1792:
        return 1936944972;
      case 2560:
        return 0x6D75646574617453;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_10001B39C()
{
  v1 = *v0;
  if (*v0 <= 1023)
  {
    if ((v1 - 513) < 3)
    {
      return 0x7974697669746341;
    }

    if (v1 == 768)
    {
      return 0x6563617254;
    }
  }

  else if (v1 <= 1535)
  {
    if (v1 == 1024)
    {
      return 6778700;
    }

    if (v1 == 1280)
    {
      return 0x636E7973656D6954;
    }
  }

  else
  {
    switch(v1)
    {
      case 1536:
        return 0x74736F706E676953;
      case 1792:
        return 1936944972;
      case 2560:
        return 0x6D75646574617453;
    }
  }

  return 0x6E776F6E6B6E55;
}

void type metadata accessor for OSLogEventType()
{
  if (!qword_100057288)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100057288);
    }
  }
}

uint64_t sub_10001B4EC()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_100059698);
  sub_100006C6C(v0, qword_100059698);
  v1 = sub_100029948();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

unint64_t sub_10001B580(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100052228, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001B5CC(char a1)
{
  if (!a1)
  {
    return 0x746C7561666544;
  }

  if (a1 == 1)
  {
    return 1868983881;
  }

  return 0x6775626544;
}

unint64_t sub_10001B628@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001B580(*a1);
  *a2 = result;
  return result;
}

void sub_10001B658(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1868983881;
  if (v2 != 1)
  {
    v5 = 0x6775626544;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666544;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10001B6AC()
{
  v1 = 1868983881;
  if (*v0 != 1)
  {
    v1 = 0x6775626544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666544;
  }
}

unint64_t sub_10001B6FC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10001B580(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001B724(uint64_t a1)
{
  v2 = sub_100022178();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B760(uint64_t a1)
{
  v2 = sub_100022178();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B7A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1868983881;
  if (v2 != 1)
  {
    v4 = 0x6775626544;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666544;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1868983881;
  if (*a2 != 1)
  {
    v8 = 0x6775626544;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666544;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10001B88C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001B924()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10001B9A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001BA3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020AB8(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_10001BB8C()
{
  if (qword_1000596B0 != -1)
  {
    swift_once();
  }

  return &qword_10005B058;
}

unint64_t sub_10001BBDC()
{
  result = sub_100014AD4(&_swiftEmptyArrayStorage);
  qword_10005B060 = result;
  return result;
}

uint64_t *sub_10001BC04()
{
  if (qword_1000596B8 != -1)
  {
    swift_once();
  }

  return &qword_10005B060;
}

uint64_t sub_10001BD5C()
{
  v1 = (v0 + *(type metadata accessor for Configuration() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_10001BD9C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Configuration() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_10001BE44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_10001BFB4(double a1)
{
  result = type metadata accessor for Configuration();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_10001C050(uint64_t a1)
{
  result = type metadata accessor for Configuration();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_10001C0EC(uint64_t a1)
{
  result = type metadata accessor for Configuration();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_10001C188(char a1)
{
  result = type metadata accessor for Configuration();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_10001C224()
{
  v1 = *(v0 + *(type metadata accessor for Configuration() + 48));
}

uint64_t sub_10001C258(uint64_t a1)
{
  v3 = *(type metadata accessor for Configuration() + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10001C304(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_10001C364()
{
  v1 = *(v0 + *(type metadata accessor for Configuration() + 52));
}

uint64_t sub_10001C398(uint64_t a1)
{
  v3 = *(type metadata accessor for Configuration() + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10001C444(char a1)
{
  result = type metadata accessor for Configuration();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_10001C4E0(char a1)
{
  result = type metadata accessor for Configuration();
  *(v1 + *(result + 60)) = a1;
  return result;
}

unint64_t sub_10001C568(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x726576726553;
    v6 = 0x6E656B6F54;
    v7 = 0x74756F656D6954;
    if (a1 != 3)
    {
      v7 = 0x6953726566667542;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x7865646E49;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x614C6C61626F6C47;
    if (a1 != 8)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0x6F43726566667542;
    v3 = 0x6C6576654CLL;
    if (a1 != 6)
    {
      v3 = 0x7461636964657250;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10001C6D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10001C568(*a1);
  v5 = v4;
  if (v3 == sub_10001C568(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10001C760()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10001C568(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001C7C4()
{
  sub_10001C568(*v0);
  String.hash(into:)();
}

Swift::Int sub_10001C818()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10001C568(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001C878@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020BB8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001C8A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001C568(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001C8F0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100020BB8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001C924(uint64_t a1)
{
  v2 = sub_100020C04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C960(uint64_t a1)
{
  v2 = sub_100020C04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001C99C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v64 = a2;
  v2 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v63 = &v61 - v4;
  v5 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v67 = &v61 - v7;
  v8 = sub_100001FDC(&qword_100057290, &unk_1000469D0);
  v75 = *(v8 - 8);
  v9 = *(v75 + 64);
  __chkstk_darwin(v8);
  v11 = &v61 - v10;
  v12 = type metadata accessor for Configuration();
  v13 = *(*(v12 - 1) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = *(v14 + 20);
  v18 = type metadata accessor for URL();
  v19 = *(*(v18 - 8) + 56);
  v62 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = &v16[v12[6]];
  *v20 = 1667523425;
  v20[1] = 0xE400000000000000;
  v74 = v20;
  v21 = v12[7];
  v22 = type metadata accessor for UUID();
  v23 = *(*(v22 - 8) + 56);
  v65 = v21;
  v66 = v22;
  v23(&v16[v21], 1, 1);
  v73 = v12[8];
  *&v16[v73] = 0x403E000000000000;
  v72 = v12[9];
  *&v16[v72] = 0x40000;
  v24 = v12[10];
  *&v16[v24] = 2;
  v70 = v12[11];
  v71 = v24;
  v16[v70] = 0;
  v25 = v12[12];
  if (qword_1000596B0 != -1)
  {
    swift_once();
  }

  v79 = v11;
  v76 = v8;
  v68 = v25;
  v69 = qword_10005B058;
  *&v16[v25] = qword_10005B058;
  v26 = v12[13];
  v27 = qword_1000596B8[0];

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_10005B060;
  *&v16[v26] = qword_10005B060;
  v29 = v12[14];
  v16[v29] = 1;
  v30 = v12[15];
  v78 = v16;
  v16[v30] = 1;
  v31 = v80[4];
  sub_100010C68(v80, v80[3]);
  sub_100020C04();

  v32 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    v35 = v78;
    sub_100006D94(v80);
    v36 = v35;
  }

  else
  {
    v77 = v30;
    LOBYTE(v81) = 1;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = 1667523425;
    if (v34)
    {
      v38 = v33;
    }

    v39 = 0xE400000000000000;
    if (v34)
    {
      v39 = v34;
    }

    v40 = v74;
    *v74 = v38;
    v40[1] = v39;
    LOBYTE(v81) = 3;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v78;
    v43 = *&v41;
    if (v44)
    {
      v43 = 30.0;
    }

    *(v78 + v73) = v43;
    LOBYTE(v81) = 4;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = 0x40000;
    if ((v46 & 1) == 0)
    {
      v47 = v45;
    }

    *(v42 + v72) = v47;
    LOBYTE(v81) = 5;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = 2;
    if ((v49 & 1) == 0)
    {
      v50 = v48;
    }

    *(v42 + v71) = v50;
    v82 = 6;
    sub_100020CB4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v51 = v81;
    if (v81 == 3)
    {
      v51 = 0;
    }

    *(v42 + v70) = v51;
    sub_100001FDC(&qword_100057260, qword_1000468C0);
    v82 = 8;
    sub_1000216BC(&qword_100057268);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v52 = v81;
    if (v81)
    {
    }

    else
    {
      v52 = v28;
    }

    *(v42 + v26) = v52;
    sub_100001FDC(&qword_100057030, &unk_1000469E0);
    v82 = 7;
    sub_100021650(&qword_100057038);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v53 = v81;
    if (v81)
    {
    }

    else
    {
      v53 = v69;
    }

    *(v42 + v68) = v53;
    LOBYTE(v81) = 9;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v42 + v29) = (v54 == 2) | v54 & 1;
    LOBYTE(v81) = 10;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v42 + v77) = (v55 == 2) | v55 & 1;
    sub_10001D1E0(v53);
    LOBYTE(v81) = 2;
    sub_100022374(&qword_1000572A8, 255, &type metadata accessor for UUID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100020B50(v67, v78 + v65, &unk_100057530, &unk_100046FC0);
    LOBYTE(v81) = 0;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v78;
    *v78 = v56;
    v57[1] = v58;
    if (v58)
    {

      v59 = v63;
      URL.init(string:)();

      (*(v75 + 8))(v79, v76);
      sub_100020B50(v59, v78 + v62, &unk_100056B40, &unk_100045890);
    }

    else
    {
      (*(v75 + 8))(v79, v76);
    }

    v60 = v78;
    sub_100020D08(v78, v64);
    sub_100006D94(v80);
    v36 = v60;
  }

  return sub_100020C58(v36);
}

uint64_t sub_10001D1E0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = (result + 40); ; i += 2)
    {
      v3 = *(i - 1);
      v4 = *i;
      v5 = String.lowercased()();
      v15 = v5;
      sub_10001A48C();
      if ((StringProtocol.contains<A>(_:)() & 1) == 0)
      {
        v15 = v5;
        if ((StringProtocol.contains<A>(_:)() & 1) == 0)
        {
          v15 = v5;
          if (StringProtocol.contains<A>(_:)())
          {
            break;
          }
        }
      }

      if (!--v1)
      {
        return result;
      }
    }

    if (qword_100059690 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006C6C(v6, qword_100059698);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15._countAndFlagsBits = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_10000604C(v5._countAndFlagsBits, v5._object, &v15._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v7, v8, "Found invalid predicate with string 'splunkloggingd': %{public}s", v9, 0xCu);
      sub_100006D94(v10);
    }

    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v11._countAndFlagsBits = 0xD000000000000037;
    v11._object = 0x8000000100043D70;
    String.append(_:)(v11);
    String.append(_:)(v5);

    countAndFlagsBits = v15._countAndFlagsBits;
    object = v15._object;
    sub_1000223BC();
    swift_allocError();
    *v14 = countAndFlagsBits;
    *(v14 + 8) = object;
    *(v14 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10001D4E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 1) = 0;
  v11 = *(v8 + 20);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v38 = v12;
  v14(&a2[v11], 1, 1);
  v15 = &a2[v6[6]];
  *v15 = 1667523425;
  *(v15 + 1) = 0xE400000000000000;
  v16 = v6[7];
  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 56))(&a2[v16], 1, 1, v17);
  *&a2[v6[8]] = 0x403E000000000000;
  *&a2[v6[9]] = 0x40000;
  *&a2[v6[10]] = 2;
  a2[v6[11]] = 0;
  v18 = v6[12];
  if (qword_1000596B0 != -1)
  {
    swift_once();
  }

  *&a2[v18] = qword_10005B058;
  v19 = v6[13];
  v20 = qword_1000596B8[0];

  if (v20 != -1)
  {
    swift_once();
  }

  *&a2[v19] = qword_10005B060;
  a2[v6[14]] = 1;
  a2[v6[15]] = 1;
  v21 = type metadata accessor for PropertyListDecoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  PropertyListDecoder.init()();
  v39 = a1;
  v24 = Data.init(contentsOf:options:)();
  if (v3)
  {
    if (qword_100059690 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006C6C(v26, qword_100059698);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v39;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to read config with error %{public}@", v31, 0xCu);
      sub_100007E2C(v32, &qword_100056C40, &unk_100045BE0);
    }

    swift_willThrow();

    (*(v13 + 8))(v30, v38);
    return sub_100020C58(a2);
  }

  else
  {
    v34 = v24;
    v35 = v25;
    sub_100022374(&qword_1000572B0, 255, type metadata accessor for Configuration);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10000803C(v34, v35);
    (*(v13 + 8))(v39, v38);
    sub_100020C58(a2);
    return sub_100020D6C(v10, a2);
  }
}

uint64_t sub_10001DA94@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Configuration();
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[5];
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 1667523425;
  *(v5 + 1) = 0xE400000000000000;
  v6 = v2[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  *&a1[v2[8]] = 0x403E000000000000;
  *&a1[v2[9]] = 0x40000;
  *&a1[v2[10]] = 2;
  a1[v2[11]] = 0;
  v8 = v2[12];
  if (qword_1000596B0 != -1)
  {
    swift_once();
  }

  *&a1[v8] = qword_10005B058;
  v9 = v2[13];
  v10 = qword_1000596B8[0];

  if (v10 != -1)
  {
    swift_once();
  }

  *&a1[v9] = qword_10005B060;
  a1[v2[14]] = 1;
  a1[v2[15]] = 1;
}

void sub_10001DC40()
{
  v1 = v0;
  v102 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
  v2 = *(*(v102 - 8) + 64);
  v3 = __chkstk_darwin(v102);
  v101 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v100 = &v91 - v5;
  v98 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v6 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v97 = &v91 - v7;
  v103 = type metadata accessor for Configuration();
  v8 = *(*(v103 - 8) + 64);
  v9 = __chkstk_darwin(v103);
  v104 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v91 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v91 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v91 - v18;
  v20 = __chkstk_darwin(v17);
  v107 = &v91 - v21;
  v22 = __chkstk_darwin(v20);
  v106 = &v91 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v91 - v25;
  v27 = __chkstk_darwin(v24);
  v105 = &v91 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v91 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v91 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v91 - v36;
  __chkstk_darwin(v35);
  v39 = &v91 - v38;
  if (qword_100059690 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = sub_100006C6C(v40, qword_100059698);
  sub_100020D08(v1, v39);
  sub_100020D08(v1, v37);
  sub_100020D08(v1, v34);
  sub_100020D08(v1, v31);
  sub_100020D08(v1, v105);
  sub_100020D08(v1, v26);
  sub_100020D08(v1, v106);
  sub_100020D08(v1, v107);
  sub_100020D08(v1, v19);
  sub_100020D08(v1, v16);
  v108 = v41;
  v42 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v99))
  {
    v93 = v42;
    v94 = v19;
    v95 = v16;
    v96 = v13;
    v43 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v109[0] = v92;
    *v43 = 136448515;
    v44 = v103;
    sub_10001102C(&v39[*(v103 + 20)], v97, &unk_100056B40, &unk_100045890);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    sub_100020C58(v39);
    v48 = sub_10000604C(v45, v47, v109);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2082;
    v49 = &v37[v44[6]];
    v50 = *v49;
    v51 = v49[1];

    sub_100020C58(v37);
    v52 = sub_10000604C(v50, v51, v109);

    *(v43 + 14) = v52;
    *(v43 + 22) = 1024;
    v53 = v100;
    sub_10001102C(&v34[v44[7]], v100, &unk_100057530, &unk_100046FC0);
    v54 = type metadata accessor for UUID();
    v55 = (*(*(v54 - 8) + 48))(v53, 1, v54) != 1;
    sub_100007E2C(v53, &unk_100057530, &unk_100046FC0);
    sub_100020C58(v34);
    *(v43 + 24) = v55;
    *(v43 + 28) = 2085;
    sub_10001102C(&v31[v44[7]], v101, &unk_100057530, &unk_100046FC0);
    v56 = String.init<A>(describing:)();
    v58 = v57;
    sub_100020C58(v31);
    v59 = sub_10000604C(v56, v58, v109);

    *(v43 + 30) = v59;
    *(v43 + 38) = 2048;
    v60 = *(v105 + v44[8]);
    sub_100020C58(v105);
    *(v43 + 40) = v60;
    *(v43 + 48) = 2048;
    v61 = *&v26[v44[9]];
    sub_100020C58(v26);
    *(v43 + 50) = v61;
    *(v43 + 58) = 2048;
    v62 = *(v106 + v44[10]);
    sub_100020C58(v106);
    *(v43 + 60) = v62;
    *(v43 + 68) = 2082;
    v63 = 0xE400000000000000;
    v64 = 1868983881;
    if (*(v107 + v44[11]) != 1)
    {
      v64 = 0x6775626544;
      v63 = 0xE500000000000000;
    }

    if (*(v107 + v44[11]))
    {
      v65 = v64;
    }

    else
    {
      v65 = 0x746C7561666544;
    }

    if (*(v107 + v44[11]))
    {
      v66 = v63;
    }

    else
    {
      v66 = 0xE700000000000000;
    }

    sub_100020C58(v107);
    v67 = sub_10000604C(v65, v66, v109);

    *(v43 + 70) = v67;
    *(v43 + 78) = 1024;
    v68 = v94[v44[14]];
    sub_100020C58(v94);
    *(v43 + 80) = v68;
    *(v43 + 84) = 1024;
    v69 = v95[v44[15]];
    sub_100020C58(v95);
    *(v43 + 86) = v69;
    v70 = v93;
    _os_log_impl(&_mh_execute_header, v93, v99, "Got new config:\nServerURL: %{public}s\nIndex: %{public}s\nToken provided: %{BOOL}d\nToken: %{sensitive}s\nTimeout: %f\nBufferSize: %ld\nBufferCount: %ld\nLevel: %{public}s\nForwardCrashes: %{BOOL}d\nForwardPanics: %{BOOL}d", v43, 0x5Au);
    swift_arrayDestroy();

    v13 = v96;
  }

  else
  {
    sub_100020C58(v16);
    sub_100020C58(v19);
    sub_100020C58(v106);
    sub_100020C58(v26);
    sub_100020C58(v34);

    sub_100020C58(v107);
    sub_100020C58(v105);
    sub_100020C58(v31);
    sub_100020C58(v37);
    sub_100020C58(v39);
    v44 = v103;
  }

  sub_100020D08(v1, v13);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = v13;
    v75 = swift_slowAlloc();
    v109[0] = v75;
    *v73 = 136446210;
    v76 = *(v74 + v44[12]);
    v77 = Array.description.getter();
    v79 = v78;
    sub_100020C58(v74);
    v80 = sub_10000604C(v77, v79, v109);

    *(v73 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v71, v72, "Predicates: %{public}s", v73, 0xCu);
    sub_100006D94(v75);
  }

  else
  {

    sub_100020C58(v13);
  }

  v81 = v104;
  sub_100020D08(v1, v104);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v109[0] = v85;
    *v84 = 136446210;
    v86 = *(v81 + v44[13]);
    v87 = Dictionary.description.getter();
    v89 = v88;
    sub_100020C58(v81);
    v90 = sub_10000604C(v87, v89, v109);

    *(v84 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v82, v83, "GlobalLabels: %{public}s", v84, 0xCu);
    sub_100006D94(v85);
  }

  else
  {

    sub_100020C58(v81);
  }
}

uint64_t sub_10001E5C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10001E654(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_10000FE4C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E7F8(void *a1)
{
  v3 = v1;
  v5 = sub_100001FDC(&qword_1000572B8, &qword_1000469F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_100010C68(a1, a1[3]);
  sub_100020C04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v24) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for Configuration();
    v14 = (v3 + v13[6]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v13[7];
    LOBYTE(v24) = 2;
    type metadata accessor for UUID();
    sub_100022374(&qword_1000572C0, 255, &type metadata accessor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = *(v3 + v13[8]);
    LOBYTE(v24) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + v13[9]);
    LOBYTE(v24) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(v3 + v13[10]);
    LOBYTE(v24) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v24) = *(v3 + v13[11]);
    v25 = 6;
    sub_1000215FC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v3 + v13[12]);
    v25 = 7;
    sub_100001FDC(&qword_100057030, &unk_1000469E0);
    sub_100021650(&qword_1000572D0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v3 + v13[13]);
    v25 = 8;
    sub_100001FDC(&qword_100057260, qword_1000468C0);
    sub_1000216BC(&qword_1000572D8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v3 + v13[14]);
    LOBYTE(v24) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = *(v3 + v13[15]);
    LOBYTE(v24) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001EC30()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 120);
  return result;
}

uint64_t sub_10001EC6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10001ECCC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10001ED60;
}

void sub_10001ED60(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 120) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10001EDE4()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_100001FDC(&qword_1000572E0, &qword_100046A00) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for Configuration();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001EF38, v0, 0);
}

uint64_t sub_10001EF38()
{
  v1 = v0[5];
  v2 = v0[6];
  (*(v0[4] + 16))(v1, *(v0[2] + 128) + OBJC_IVAR____TtC14splunkloggingd11FileMonitor_url, v0[3]);
  sub_10001D4E4(v1, v2);
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[2];
  (*(v0[8] + 56))(v9, 0, 1, v0[7]);
  sub_100020D6C(v9, v8);
  sub_10001DC40();
  v11 = (*(*v10 + 104))();
  v0[10] = v11;
  if (v11)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);
    v19 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[11] = v17;
    *v17 = v0;
    v17[1] = sub_10001F1C0;
    v18 = v0[9];

    return v19(v18, ObjectType, v13);
  }

  else
  {
    sub_100020C58(v0[9]);
    v3 = v0[9];
    v4 = v0[5];
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10001F1C0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 16);
  v5 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10001F2EC, v3, 0);
}

uint64_t sub_10001F2EC()
{
  sub_100020C58(v0[9]);
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001F368(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001684C;

  return sub_10001F410(a1);
}

uint64_t sub_10001F410(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001F4DC, 0, 0);
}

uint64_t sub_10001F4DC()
{
  v28 = v0;
  v1 = v0[3];
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  swift_unknownObjectWeakInit();
  if (qword_100059690 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_100006C6C(v6, qword_100059698);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v15 = v27;
    *v14 = 136446210;
    v16 = URL.path(percentEncoded:)(1);
    v19 = *(v13 + 8);
    v17 = v13 + 8;
    v18 = v19;
    v19(v11, v12);
    v20 = sub_10000604C(v16._countAndFlagsBits, v16._object, &v27);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Creating config monitor at %{public}s", v14, 0xCu);
    sub_100006D94(v15);
  }

  else
  {

    v21 = *(v13 + 8);
    v17 = v13 + 8;
    v18 = v21;
    v21(v11, v12);
  }

  v0[8] = v17;
  v0[9] = v18;
  v22 = v0[6];
  v24 = v0[3];
  v23 = v0[4];
  v25 = v0[2];
  type metadata accessor for FileMonitor();
  v7(v22, v25, v23);
  *(v24 + 128) = sub_100002920(v22, 0, 0);

  return _swift_task_switch(sub_10001F750, v24, 0);
}

uint64_t sub_10001F750()
{
  v1 = *(v0[3] + 128);
  v0[10] = v1;
  v2 = *(*v1 + 344);

  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10001F89C;
  v5 = v0[3];

  return (v7)(v5, &off_100052470);
}

uint64_t sub_10001F89C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 24);
  v9 = *v0;

  *(v1 + 96) = sub_100022374(&qword_1000572E8, v5, type metadata accessor for ConfigurationMonitor);
  swift_getObjectType();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001FA30, v7, v6);
}

uint64_t sub_10001FA30()
{
  v1 = *(v0[3] + 128);
  v0[13] = v1;
  v2 = *v1 + 392;
  v0[14] = *v2;
  v0[15] = v2 & 0xFFFFFFFFFFFFLL | 0xA103000000000000;

  return _swift_task_switch(sub_10001FACC, v1, 0);
}

uint64_t sub_10001FACC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 24);
  (*(v0 + 112))();

  swift_getObjectType();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001FB68, v6, v5);
}

uint64_t sub_10001FB68()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  (*(v0 + 72))(*(v0 + 16), *(v0 + 32));

  v4 = *(v0 + 8);
  v5 = *(v0 + 24);

  return v4(v5);
}

uint64_t sub_10001FBF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10001FC14, v2, 0);
}

uint64_t sub_10001FC14()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(**(v0 + 32) + 112);
  v4 = swift_unknownObjectRetain();
  v3(v4, v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001FCC8()
{
  v1 = *(v0[2] + 128);
  v0[3] = v1;
  v2 = *v1 + 400;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0x5E9D000000000000;
  return _swift_task_switch(sub_10001FD10, v1, 0);
}

uint64_t sub_10001FD10()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001FD74()
{
  v1 = v0;
  v2 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  if (qword_100059690 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006C6C(v6, qword_100059698);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_10000604C(0xD00000000000001ELL, 0x8000000100043C60, &v17);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s", v9, 0xCu);
    sub_100006D94(v10);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v13 = sub_100022374(&qword_1000572E8, v12, type metadata accessor for ConfigurationMonitor);
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v13;
  v14[4] = v1;
  swift_retain_n();
  sub_1000200E8(0, 0, v5, &unk_100046A38, v14);
}

uint64_t sub_10001FFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a4 + 128);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000073F4;

  return v9();
}

uint64_t sub_1000200E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001102C(a3, v27 - v11, &qword_100056880, &qword_100046FE0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007E2C(v12, &qword_100056880, &qword_100046FE0);
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

      sub_100007E2C(a3, &qword_100056880, &qword_100046FE0);

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

  sub_100007E2C(a3, &qword_100056880, &qword_100046FE0);
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

void sub_1000203E8()
{
  if (qword_100059690 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006C6C(v0, qword_100059698);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_10000604C(0xD000000000000020, 0x8000000100043C80, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%{public}s", v2, 0xCu);
    sub_100006D94(v3);
  }
}

void sub_100020530()
{
  if (qword_100059690 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006C6C(v0, qword_100059698);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_10000604C(0xD00000000000001FLL, 0x8000000100043CB0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%{public}s", v2, 0xCu);
    sub_100006D94(v3);
  }
}

uint64_t sub_100020678()
{
  sub_100006DE0(v0 + 112);
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000206A8()
{
  sub_100006DE0(v0 + 112);
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000206E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100020708, v1, 0);
}

uint64_t sub_100020708()
{
  (*(**(v0 + 24) + 160))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020788(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000207A8, v1, 0);
}

uint64_t sub_1000207A8()
{
  (*(**(v0 + 24) + 168))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100020828(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100020848, v1, 0);
}

uint64_t sub_100020848()
{
  (*(**(v0 + 24) + 176))(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000208C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000209C0;

  return v7(a1);
}

uint64_t sub_1000209C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100020AB8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100052290, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for Configuration()
{
  result = qword_10005A1C0;
  if (!qword_10005A1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100020B50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001FDC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_100020BB8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000522F8, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100020C04()
{
  result = qword_100057298;
  if (!qword_100057298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057298);
  }

  return result;
}

uint64_t sub_100020C58(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100020CB4()
{
  result = qword_1000572A0;
  if (!qword_1000572A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000572A0);
  }

  return result;
}

uint64_t sub_100020D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020DD0(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v70 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v71 = &v66 - v10;
  v72 = sub_100001FDC(&qword_100057500, &qword_100046F40);
  v11 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v73 = &v66 - v12;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v66 - v20;
  v22 = sub_100001FDC(&qword_100057508, qword_100046F48);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v66 - v24;
  v26 = a1[1];
  v27 = a2[1];
  if (v26)
  {
    if (!v27 || (*a1 != *a2 || v26 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v27)
  {
    goto LABEL_25;
  }

  v69 = v5;
  v66 = v4;
  v28 = type metadata accessor for Configuration();
  v29 = *(v28 + 20);
  v30 = *(v22 + 48);
  v67 = v28;
  v68 = a1;
  sub_10001102C(a1 + v29, v25, &unk_100056B40, &unk_100045890);
  v31 = a2 + v29;
  v32 = a2;
  sub_10001102C(v31, &v25[v30], &unk_100056B40, &unk_100045890);
  v33 = *(v14 + 48);
  if (v33(v25, 1, v13) == 1)
  {
    if (v33(&v25[v30], 1, v13) == 1)
    {
      sub_100007E2C(v25, &unk_100056B40, &unk_100045890);
      goto LABEL_15;
    }

LABEL_13:
    v34 = &qword_100057508;
    v35 = qword_100046F48;
    v36 = v25;
LABEL_24:
    sub_100007E2C(v36, v34, v35);
    goto LABEL_25;
  }

  sub_10001102C(v25, v21, &unk_100056B40, &unk_100045890);
  if (v33(&v25[v30], 1, v13) == 1)
  {
    (*(v14 + 8))(v21, v13);
    goto LABEL_13;
  }

  (*(v14 + 32))(v17, &v25[v30], v13);
  sub_100022374(&qword_100057518, 255, &type metadata accessor for URL);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v14 + 8);
  v38(v17, v13);
  v38(v21, v13);
  sub_100007E2C(v25, &unk_100056B40, &unk_100045890);
  if ((v37 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v40 = v67;
  v39 = v68;
  v41 = v67[6];
  v42 = *(v68 + v41);
  v43 = *(v68 + v41 + 8);
  v44 = (v32 + v41);
  if ((v42 != *v44 || v43 != v44[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v45 = v40[7];
  v46 = v73;
  v47 = *(v72 + 48);
  sub_10001102C(v39 + v45, v73, &unk_100057530, &unk_100046FC0);
  sub_10001102C(v32 + v45, v46 + v47, &unk_100057530, &unk_100046FC0);
  v48 = *(v69 + 48);
  v49 = v66;
  if (v48(v46, 1, v66) != 1)
  {
    v50 = v71;
    sub_10001102C(v46, v71, &unk_100057530, &unk_100046FC0);
    if (v48(v46 + v47, 1, v49) != 1)
    {
      v53 = v69;
      v54 = v46 + v47;
      v55 = v70;
      (*(v69 + 32))(v70, v54, v49);
      sub_100022374(&qword_100057510, 255, &type metadata accessor for UUID);
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = *(v53 + 8);
      v57(v55, v49);
      v57(v50, v49);
      sub_100007E2C(v46, &unk_100057530, &unk_100046FC0);
      if ((v56 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    (*(v69 + 8))(v50, v49);
    goto LABEL_23;
  }

  if (v48(v46 + v47, 1, v49) != 1)
  {
LABEL_23:
    v34 = &qword_100057500;
    v35 = &qword_100046F40;
    v36 = v46;
    goto LABEL_24;
  }

  sub_100007E2C(v46, &unk_100057530, &unk_100046FC0);
LABEL_28:
  if (*(v39 + v40[8]) != *(v32 + v40[8]) || *(v39 + v40[9]) != *(v32 + v40[9]) || *(v39 + v40[10]) != *(v32 + v40[10]))
  {
    goto LABEL_25;
  }

  v58 = 0x746C7561666544;
  v59 = v40[11];
  v60 = *(v39 + v59);
  v61 = *(v32 + v59);
  if (v60)
  {
    if (v60 == 1)
    {
      v62 = 0xE400000000000000;
      v63 = 1868983881;
    }

    else
    {
      v62 = 0xE500000000000000;
      v63 = 0x6775626544;
    }
  }

  else
  {
    v62 = 0xE700000000000000;
    v63 = 0x746C7561666544;
  }

  if (v61)
  {
    if (v61 == 1)
    {
      v64 = 0xE400000000000000;
      v58 = 1868983881;
    }

    else
    {
      v64 = 0xE500000000000000;
      v58 = 0x6775626544;
    }
  }

  else
  {
    v64 = 0xE700000000000000;
  }

  if (v63 == v58 && v62 == v64)
  {
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v65 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if ((sub_10001E5C4(*(v39 + v40[12]), *(v32 + v40[12])) & 1) != 0 && (sub_10001E654(*(v39 + v40[13]), *(v32 + v40[13])) & 1) != 0 && *(v39 + v40[14]) == *(v32 + v40[14]))
  {
    v51 = *(v39 + v40[15]) ^ *(v32 + v40[15]) ^ 1;
    return v51 & 1;
  }

LABEL_25:
  v51 = 0;
  return v51 & 1;
}

unint64_t sub_1000215FC()
{
  result = qword_1000572C8;
  if (!qword_1000572C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000572C8);
  }

  return result;
}

uint64_t sub_100021650(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100002024(&qword_100057030, &unk_1000469E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000216BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100002024(&qword_100057260, qword_1000468C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002174C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002178C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000073F4;

  return sub_10001FFD4(v3, v4, v5, v2);
}

unint64_t sub_100021824()
{
  result = qword_1000572F0;
  if (!qword_1000572F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000572F0);
  }

  return result;
}

unint64_t sub_10002187C()
{
  result = qword_1000572F8;
  if (!qword_1000572F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000572F8);
  }

  return result;
}

unint64_t sub_1000218D4()
{
  result = qword_100057300;
  if (!qword_100057300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057300);
  }

  return result;
}

unint64_t sub_10002192C()
{
  result = qword_100057308;
  if (!qword_100057308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057308);
  }

  return result;
}

unint64_t sub_100021984()
{
  result = qword_100057310;
  if (!qword_100057310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057310);
  }

  return result;
}

unint64_t sub_1000219DC()
{
  result = qword_100057318;
  if (!qword_100057318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057318);
  }

  return result;
}

unint64_t sub_100021A34()
{
  result = qword_100057320;
  if (!qword_100057320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057320);
  }

  return result;
}

uint64_t sub_100021ABC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100021C14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_100021D58()
{
  sub_100021F24(319, &qword_100057380, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100021ED0(319, &qword_100057388, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      sub_100021ED0(319, &qword_100057390, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        sub_100021F24(319, &qword_100057398, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_100021F78();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100021ED0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100021F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100021F78()
{
  if (!qword_1000573A0)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000573A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100022124()
{
  result = qword_1000574F0;
  if (!qword_1000574F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000574F0);
  }

  return result;
}

unint64_t sub_100022178()
{
  result = qword_1000574F8;
  if (!qword_1000574F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000574F8);
  }

  return result;
}

uint64_t sub_1000221CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022204(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007EAC;

  return sub_1000208C8(a1, v5);
}

uint64_t sub_1000222BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000073F4;

  return sub_1000208C8(a1, v5);
}

uint64_t sub_100022374(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000223BC()
{
  result = qword_100057880;
  if (!qword_100057880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057880);
  }

  return result;
}

uint64_t OSLogEventLogType.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x746C7561666544;
    }

    if (a1 == 1)
    {
      return 1868983881;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6775626544;
      case 16:
        return 0x726F727245;
      case 17:
        return 0x746C756146;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_1000224E4()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x746C7561666544;
    }

    if (v1 == 1)
    {
      return 1868983881;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x6775626544;
      case 16:
        return 0x726F727245;
      case 17:
        return 0x746C756146;
    }
  }

  return 0x6E776F6E6B6E55;
}

void type metadata accessor for OSLogEventLogType()
{
  if (!qword_100057520)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100057520);
    }
  }
}

uint64_t sub_1000225E0()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_10005A258);
  sub_100006C6C(v0, qword_10005A258);
  v1 = sub_100029948();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

NSString sub_100022668()
{
  result = String._bridgeToObjectiveC()();
  qword_10005A278 = result;
  return result;
}

Swift::Int sub_1000226C8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10002270C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_100022818()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100022860@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_jsonEndpoint;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100022910()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_refreshEventRecieved;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100022954(char a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_refreshEventRecieved;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_100022A04()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_acdcActorURLSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100022A50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_acdcActorURLSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100022B08()
{
  v0 = [objc_opt_self() sharedSession];
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_10005B068 = &unk_100047220;
  qword_10005B070 = result;
  return result;
}

uint64_t sub_100022B7C(uint64_t a1)
{
  v3 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100022C1C;

  return NSURLSession.data(for:delegate:)(a1, 0);
}

uint64_t sub_100022C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t *sub_100022D34()
{
  if (qword_10005A280 != -1)
  {
    swift_once();
  }

  return &qword_10005B068;
}

uint64_t sub_100022D84()
{
  if (qword_10005A280 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_10005B068;

  return v0;
}

uint64_t sub_100022E08(uint64_t a1, uint64_t a2)
{
  if (qword_10005A280 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_10005B068 = a1;
  qword_10005B070 = a2;
}

uint64_t (*sub_100022E94())()
{
  if (qword_10005A280 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100022F1C(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100022FDC, v1, 0);
}

uint64_t sub_100022FDC()
{
  if ((*(**(v0 + 112) + 120))())
  {
    if (qword_10005A250 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006C6C(v1, qword_10005A258);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing acdc actor cert.", v4, 2u);
    }

    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);

    v9 = objc_allocWithZone(type metadata accessor for NarrativeCert());
    v27 = NarrativeCert.init(domain:identityType:)();
    v10 = dispatch thunk of NarrativeCert.getCredential()();
    v11 = type metadata accessor for MTLSURLSessionDelegate();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____TtC14splunkloggingdP33_F073D0EF6A22BE81F4E8780E926B09A722MTLSURLSessionDelegate_cred] = v10;
    v12[OBJC_IVAR____TtC14splunkloggingdP33_F073D0EF6A22BE81F4E8780E926B09A722MTLSURLSessionDelegate_insecure] = 0;
    *(v0 + 88) = v12;
    *(v0 + 96) = v11;
    v29 = v10;
    v28 = objc_msgSendSuper2((v0 + 88), "init");
    v13 = (*(*v7 + 144))();
    [v13 finishTasksAndInvalidate];

    v14 = [objc_opt_self() defaultSessionConfiguration];
    v15 = [objc_opt_self() sessionWithConfiguration:v14 delegate:v28 delegateQueue:0];

    (*(*v7 + 152))(v15);
    (*(*v7 + 128))(0);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    NarrativeCert.refreshedNotificationName.getter();
    sub_100028308();
    (*(v5 + 104))(v6, enum case for DispatchQoS.QoSClass.utility(_:), v8);
    v17 = static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v6, v8);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v7;
    *(v0 + 48) = sub_100028394;
    *(v0 + 56) = v18;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1000236A8;
    *(v0 + 40) = &unk_100052850;
    v19 = _Block_copy((v0 + 16));
    v20 = *(v0 + 56);

    v21 = String.utf8CString.getter();

    swift_beginAccess();
    notify_register_dispatch((v21 + 32), (v16 + 16), v17, v19);
    swift_endAccess();

    _Block_release(v19);
  }

  v22 = (*(**(v0 + 112) + 144))();
  *(v0 + 144) = v22;
  if (v22)
  {
    v24 = async function pointer to NSURLSession.data(for:delegate:)[1];
    v25 = swift_task_alloc();
    *(v0 + 152) = v25;
    *v25 = v0;
    v25[1] = sub_1000234BC;
    v22 = *(v0 + 104);
    v23 = 0;
  }

  else
  {
    __break(1u);
  }

  return NSURLSession.data(for:delegate:)(v22, v23);
}

uint64_t sub_1000234BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 152);
  v10 = *v4;
  *(*v4 + 160) = v3;

  if (v3)
  {
    v11 = *(v8 + 112);

    return _swift_task_switch(sub_10002363C, v11, 0);
  }

  else
  {
    v12 = *(v8 + 136);

    v13 = *(v10 + 8);

    return v13(a1, a2, a3);
  }
}

uint64_t sub_10002363C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_1000236A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1000236FC(uint64_t a1, uint64_t a2)
{
  v3[96] = v2;
  v3[95] = a2;
  v3[94] = a1;
  v4 = *(*(sub_100001FDC(&unk_100057530, &unk_100046FC0) - 8) + 64) + 15;
  v3[97] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[98] = v5;
  v6 = *(v5 - 8);
  v3[99] = v6;
  v7 = *(v6 + 64) + 15;
  v3[100] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock.Instant();
  v3[101] = v8;
  v9 = *(v8 - 8);
  v3[102] = v9;
  v10 = *(v9 + 64) + 15;
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock();
  v3[105] = v11;
  v12 = *(v11 - 8);
  v3[106] = v12;
  v13 = *(v12 + 64) + 15;
  v3[107] = swift_task_alloc();
  v14 = type metadata accessor for URLRequest();
  v3[108] = v14;
  v15 = *(v14 - 8);
  v3[109] = v15;
  v16 = *(v15 + 64) + 15;
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v17 = type metadata accessor for URL();
  v3[113] = v17;
  v18 = *(v17 - 8);
  v3[114] = v18;
  v19 = *(v18 + 64) + 15;
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();

  return _swift_task_switch(sub_10002399C, v2, 0);
}

uint64_t sub_10002399C()
{
  v69 = v0;
  v1 = sub_100007EC8(*(v0 + 752), *(v0 + 760));
  v3 = v1;
  *(v0 + 936) = v1;
  *(v0 + 944) = v2;
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 == 2 && *(v1 + 16) != *(v1 + 24))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!v4)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_7:
      v67 = v2;
      v5 = *(v0 + 928);
      v6 = *(v0 + 912);
      v7 = *(v0 + 904);
      v8 = *(v0 + 768);
      v9 = *(v0 + 760);
      v10 = *(v0 + 752);
      *(v0 + 728) = v10;
      *(v0 + 736) = v9;
      sub_10001A334(v10, v9, sub_100007F28);
      sub_1000280D0();
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001A334(*(v0 + 728), *(v0 + 736), sub_10000803C);
      v11 = *(v6 + 16);
      v12 = v11(v5, v8 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_jsonEndpoint, v7);
      if (v4 == 2)
      {
        v29 = *(v3 + 16);
        v28 = *(v3 + 24);
        v15 = v28 - v29;
        if (!__OFSUB__(v28, v29))
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v4 != 1)
        {
          goto LABEL_18;
        }

        if (!__OFSUB__(HIDWORD(v3), v3))
        {
          v15 = HIDWORD(v3) - v3;
LABEL_16:
          if ((v15 & 0x8000000000000000) == 0)
          {
LABEL_19:
            v30 = *(v0 + 928);
            v64 = *(v0 + 920);
            v65 = *(v0 + 904);
            v66 = *(v0 + 896);
            v63 = v11;
            *(v0 + 952) = sub_100001FDC(&qword_100057710, &unk_1000471C0);
            v31 = sub_100028E80();
            *(v0 + 960) = v31;
            v32 = *(*v31 + OBJC_IVAR____TtC14splunkloggingd10Statistics_totalBytes);

            sub_1000287B8(v33, v15);

            v34 = *(*v31 + OBJC_IVAR____TtC14splunkloggingd10Statistics_minimumBytes);

            os_unfair_lock_lock((v34 + 24));
            v35 = *(v34 + 16);
            if (v35 >= v15)
            {
              v35 = v15;
            }

            *(v34 + 16) = v35;
            os_unfair_lock_unlock((v34 + 24));

            v36 = *(*v31 + OBJC_IVAR____TtC14splunkloggingd10Statistics_maximumBytes);

            os_unfair_lock_lock((v36 + 24));
            v37 = *(v36 + 16);
            if (v37 <= v15)
            {
              v37 = v15;
            }

            *(v36 + 16) = v37;
            os_unfair_lock_unlock((v36 + 24));

            sub_100001FDC(&unk_100057550, &qword_100046FD8);
            v38 = *(type metadata accessor for URLQueryItem() - 8);
            v39 = *(v38 + 72);
            v40 = *(v38 + 80);
            v41 = swift_allocObject();
            *(v41 + 16) = xmmword_100045B50;
            URLQueryItem.init(name:value:)();

            URL.append(queryItems:)(v41);

            sub_10002AC8C();
            v42 = swift_allocObject();
            *(v42 + 16) = xmmword_100045B50;
            URLQueryItem.init(name:value:)();

            URL.append(queryItems:)(v42);

            v63(v64, v30, v65);
            URLRequest.init(url:cachePolicy:timeoutInterval:)();
            URLRequest.httpMethod.setter();
            sub_100007F28(v3, v67);
            URLRequest.httpBody.setter();
            if (qword_10005A250 != -1)
            {
              swift_once();
            }

            v43 = type metadata accessor for Logger();
            *(v0 + 968) = sub_100006C6C(v43, qword_10005A258);
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = *(v0 + 896);
              v47 = *(v0 + 864);
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v68 = v49;
              *v48 = 136446210;
              swift_beginAccess();
              sub_1000282B0(&qword_100057738, &type metadata accessor for URLRequest);
              v50 = dispatch thunk of CustomStringConvertible.description.getter();
              v52 = sub_10000604C(v50, v51, &v68);

              *(v48 + 4) = v52;
              _os_log_impl(&_mh_execute_header, v44, v45, "sending HTTP POST: %{public}s", v48, 0xCu);
              sub_100006D94(v49);
            }

            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = *(v0 + 896);
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v68 = v57;
              *v56 = 136446210;
              swift_beginAccess();
              v58 = sub_10002F224();
              v60 = sub_10000604C(v58, v59, &v68);

              *(v56 + 4) = v60;
              _os_log_impl(&_mh_execute_header, v53, v54, "body: %{public}s", v56, 0xCu);
              sub_100006D94(v57);
            }

            v61 = *(v0 + 896);
            *(v0 + 976) = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_token;
            swift_beginAccess();
            *(v0 + 984) = NSLocalizedFailureErrorKey;
            *(v0 + 992) = 0;
            v62 = *(v0 + 856);
            static Clock<>.continuous.getter();
            *(v0 + 664) = 0u;
            *(v0 + 592) = 0u;
            *(v0 + 608) = 1;
            v12 = sub_100024154;
            v13 = 0;
            v14 = 0;

            return _swift_task_switch(v12, v13, v14);
          }

          __break(1u);
LABEL_18:
          v15 = BYTE6(v67);
          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
      return _swift_task_switch(v12, v13, v14);
    }

    if (v1 != v1 >> 32)
    {
      goto LABEL_7;
    }
  }

LABEL_12:
  sub_10000803C(v1, v2);
  v16 = *(v0 + 928);
  v17 = *(v0 + 920);
  v18 = *(v0 + 896);
  v19 = *(v0 + 888);
  v20 = *(v0 + 880);
  v21 = *(v0 + 856);
  v22 = *(v0 + 832);
  v23 = *(v0 + 824);
  v24 = *(v0 + 800);
  v25 = *(v0 + 776);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100024154()
{
  v1 = v0[107];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[101];
  v7 = sub_1000282B0(&qword_100057718, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000282B0(&qword_100057720, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v5 + 8);
  v0[125] = v8;
  v0[126] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[127] = v10;
  *v10 = v0;
  v10[1] = sub_1000242E8;
  v11 = v0[107];
  v12 = v0[105];
  v13 = v0[104];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 74, v12, v7);
}

uint64_t sub_1000242E8()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v15 = *v1;
  *(*v1 + 1024) = v0;

  v4 = *(v2 + 1008);
  if (v0)
  {
    (*(v2 + 1000))(*(v2 + 832), *(v2 + 808));
    v5 = sub_100024924;
    v6 = 0;
  }

  else
  {
    v7 = *(v2 + 1000);
    v8 = *(v2 + 856);
    v9 = *(v2 + 848);
    v10 = *(v2 + 840);
    v11 = *(v2 + 832);
    v12 = *(v2 + 808);
    v13 = *(v2 + 768);
    v7(v11, v12);
    (*(v9 + 8))(v8, v10);
    v5 = sub_10002445C;
    v6 = v13;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10002445C()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 952);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(**(v0 + 960) + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpRequests);

  sub_1000287B8(v8, 1uLL);

  sub_10001102C(v6 + v1, v5, &unk_100057530, &unk_100046FC0);
  v9 = (*(v3 + 48))(v5, 1, v4);
  v10 = *(v0 + 968);
  if (v9 == 1)
  {
    sub_100007E2C(*(v0 + 776), &unk_100057530, &unk_100046FC0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Auth: using acdc actor cert", v13, 2u);
    }

    v14 = *(v0 + 896);
    v15 = *(v0 + 880);
    v16 = *(v0 + 872);
    v17 = *(v0 + 864);

    (*(v16 + 16))(v15, v14, v17);
    v18 = swift_task_alloc();
    *(v0 + 1064) = v18;
    *v18 = v0;
    v18[1] = sub_10002571C;
    v19 = *(v0 + 880);
    v20 = *(v0 + 768);

    return sub_100022F1C(v19);
  }

  else
  {
    (*(*(v0 + 792) + 32))(*(v0 + 800), *(v0 + 776), *(v0 + 784));
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Auth: using token", v24, 2u);
    }

    v25 = *(v0 + 896);
    v26 = *(v0 + 800);

    sub_100001FDC(&qword_100057728, &qword_1000471D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100045B50;
    strcpy((inited + 32), "Authorization");
    *(inited + 46) = -4864;
    *(v0 + 712) = 0x206B6E756C7053;
    *(v0 + 720) = 0xE700000000000000;
    v28._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v28);

    v29 = *(v0 + 720);
    *(inited + 48) = *(v0 + 712);
    *(inited + 56) = v29;
    sub_100014AD4(inited);
    swift_setDeallocating();
    sub_100007E2C(inited + 32, &qword_100057730, &unk_1000471E0);
    swift_beginAccess();
    URLRequest.allHTTPHeaderFields.setter();
    swift_endAccess();
    if (qword_10005A280 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 896);
    v31 = *(v0 + 888);
    v32 = *(v0 + 872);
    v33 = *(v0 + 864);
    swift_beginAccess();
    v34 = qword_10005B068;
    *(v0 + 1032) = qword_10005B070;
    (*(v32 + 16))(v31, v30, v33);

    v38 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 1040) = v36;
    *v36 = v0;
    v36[1] = sub_100024AF0;
    v37 = *(v0 + 888);

    return v38(v37);
  }
}

uint64_t sub_100024924()
{
  v1 = v0[96];
  (*(v0[106] + 8))(v0[107], v0[105]);

  return _swift_task_switch(sub_1000249A4, v1, 0);
}

uint64_t sub_1000249A4()
{
  v1 = v0[128];
  v2 = v0[116];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[112];
  v6 = v0[109];
  v7 = v0[108];
  sub_10000803C(v0[117], v0[118]);
  (*(v3 + 8))(v2, v4);

  (*(v6 + 8))(v5, v7);
  v8 = v0[116];
  v9 = v0[115];
  v10 = v0[112];
  v11 = v0[111];
  v12 = v0[110];
  v13 = v0[107];
  v14 = v0[104];
  v15 = v0[103];
  v16 = v0[100];
  v17 = v0[97];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100024AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[40] = v4;
  v6[41] = a1;
  v6[42] = a2;
  v6[43] = a3;
  v6[44] = v3;
  v7 = v5[130];
  v8 = *v4;
  v6[131] = v3;

  v9 = v5[129];
  v10 = v5[111];
  v11 = v5[109];
  v12 = v5[108];
  v13 = v5[96];
  v14 = *(v11 + 8);
  if (v3)
  {
    v6[136] = v14;
    v14(v10, v12);

    v15 = sub_100026308;
  }

  else
  {
    v6[132] = v14;
    v14(v10, v12);

    v15 = sub_100024CB8;
  }

  return _swift_task_switch(v15, v13, 0);
}

uint64_t sub_100024CB8()
{
  v91 = v0;
  (*(*(v0 + 792) + 8))(*(v0 + 800), *(v0 + 784));
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 344);
  *(v0 + 632) = *(v0 + 328);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 statusCode];
    if (v7 == 200)
    {
      v8 = *(v0 + 944);
      v9 = *(v0 + 936);
      v10 = *(v0 + 896);
      v11 = *(v0 + 864);
      v12 = *(v0 + 872) + 8;
      (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));

      sub_10000803C(v9, v8);
      sub_10000803C(*(v0 + 632), *(v0 + 640));
      v1(v10, v11);
LABEL_47:
      v76 = *(v0 + 928);
      v77 = *(v0 + 920);
      v78 = *(v0 + 896);
      v79 = *(v0 + 888);
      v80 = *(v0 + 880);
      v81 = *(v0 + 856);
      v82 = *(v0 + 832);
      v83 = *(v0 + 824);
      v84 = *(v0 + 800);
      v85 = *(v0 + 776);

      v86 = *(v0 + 8);

      return v86();
    }

    v37 = v7;
    v38 = *(v0 + 968);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v39, v40))
    {

LABEL_40:
      v65 = *(v0 + 952);
      v66 = *(**(v0 + 960) + OBJC_IVAR____TtC14splunkloggingd10Statistics_splunkErrors);

      sub_1000287B8(v67, 1uLL);

      v68 = CFNotificationCenterGetDarwinNotifyCenter();
      if (v68)
      {
        v69 = qword_10005A270;
        v70 = v68;
        if (v69 != -1)
        {
          swift_once();
        }

        CFNotificationCenterPostNotification(v70, qword_10005A278, 0, 0, 0);
      }

      else
      {
        v70 = v6;
      }

      sub_10000803C(*(v0 + 632), *(v0 + 640));
LABEL_46:
      v71 = *(v0 + 944);
      v72 = *(v0 + 936);
      v73 = *(v0 + 896);
      v74 = *(v0 + 864);
      v75 = *(v0 + 872) + 8;
      (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));
      sub_10000803C(v72, v71);
      v1(v73, v74);
      goto LABEL_47;
    }

    v89 = v1;
    v41 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v41 = 134218499;
    *(v41 + 4) = v37;
    *(v41 + 12) = 2082;
    swift_beginAccess();
    v42 = *(v0 + 632);
    v43 = *(v0 + 640);
    sub_100007F28(v42, v43);
    v44 = sub_100010724(v42, v43);
    if (!v45)
    {
      *(v0 + 616) = v42;
      *(v0 + 624) = v43;
      sub_100007F28(v42, v43);
      sub_100001FDC(&unk_1000578A0, &unk_100045C10);
      if (swift_dynamicCast())
      {
        v88 = v40;
        sub_100010C50((v0 + 240), v0 + 280);
        v46 = *(v0 + 312);
        sub_100010C68((v0 + 280), *(v0 + 304));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000803C(v42, v43);
          v47 = *(v0 + 312);
          sub_100010C68((v0 + 280), *(v0 + 304));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v48 = *(v0 + 696);
          v49 = *(v0 + 704);
          sub_100006D94((v0 + 280));
          v40 = v88;
          goto LABEL_25;
        }

        sub_100006D94((v0 + 280));
        v40 = v88;
      }

      else
      {
        *(v0 + 272) = 0;
        *(v0 + 240) = 0u;
        *(v0 + 256) = 0u;
        sub_100007E2C(v0 + 240, &qword_100056C90, &qword_1000471D0);
      }

      v44 = sub_10000FDA4(v42, v43);
    }

    v48 = v44;
    v49 = v45;
    sub_10000803C(v42, v43);
LABEL_25:
    v51 = *(v0 + 896);
    v52 = sub_10000604C(v48, v49, v90);

    *(v41 + 14) = v52;
    *(v41 + 22) = 2081;
    swift_beginAccess();
    v53 = URLRequest.httpBody.getter();
    v55 = v54;
    swift_endAccess();
    if (v55 >> 60 == 15)
    {
      v56 = 0;
    }

    else
    {
      v56 = v53;
    }

    if (v55 >> 60 == 15)
    {
      v57 = 0xC000000000000000;
    }

    else
    {
      v57 = v55;
    }

    v58 = sub_100010724(v56, v57);
    if (!v59)
    {
      *(v0 + 648) = v56;
      *(v0 + 656) = v57;
      sub_100007F28(v56, v57);
      sub_100001FDC(&unk_1000578A0, &unk_100045C10);
      if (swift_dynamicCast())
      {
        sub_100010C50((v0 + 160), v0 + 200);
        v60 = *(v0 + 232);
        sub_100010C68((v0 + 200), *(v0 + 224));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000803C(v56, v57);
          v61 = *(v0 + 232);
          sub_100010C68((v0 + 200), *(v0 + 224));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v62 = *(v0 + 680);
          v63 = *(v0 + 688);
          sub_100006D94((v0 + 200));
LABEL_39:
          v64 = sub_10000604C(v62, v63, v90);

          *(v41 + 24) = v64;
          _os_log_impl(&_mh_execute_header, v39, v40, "ERROR: Response: %ld\nERROR: %{public}s\nERROR: Request body:\n%{private}s", v41, 0x20u);
          swift_arrayDestroy();

          v1 = v89;
          goto LABEL_40;
        }

        sub_100006D94((v0 + 200));
      }

      else
      {
        *(v0 + 192) = 0;
        *(v0 + 160) = 0u;
        *(v0 + 176) = 0u;
        sub_100007E2C(v0 + 160, &qword_100056C90, &qword_1000471D0);
      }

      v58 = sub_10000FDA4(v56, v57);
    }

    v62 = v58;
    v63 = v59;
    sub_10000803C(v56, v57);
    goto LABEL_39;
  }

  v13 = *(v0 + 984);
  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045B50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v15;
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x8000000100043F00;
  sub_100010AFC(inited);
  swift_setDeallocating();
  sub_100007E2C(inited + 32, &unk_100056C80, &unk_1000468A0);
  v16 = objc_allocWithZone(NSError);
  v17 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 initWithDomain:v17 code:1 userInfo:isa];

  swift_willThrow();
  sub_10000803C(*(v0 + 632), *(v0 + 640));
  v19 = *(v0 + 968);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v90[0] = v23;
    *v22 = 136446210;
    swift_getErrorValue();
    v25 = *(v0 + 424);
    v24 = *(v0 + 432);
    v26 = *(v0 + 440);
    v27 = Error.localizedDescription.getter();
    v29 = sub_10000604C(v27, v28, v90);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Splunk HTTP POST failed:\n%{public}s", v22, 0xCu);
    sub_100006D94(v23);
  }

  v30 = *(v0 + 992);
  v31 = *(v0 + 952);
  v32 = *(**(v0 + 960) + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpErrors);

  sub_1000287B8(v33, 1uLL);

  v34 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v34)
  {
    v35 = qword_10005A270;
    v36 = v34;
    if (v35 != -1)
    {
      swift_once();
    }

    CFNotificationCenterPostNotification(v36, qword_10005A278, 0, 0, 0);
  }

  else
  {
  }

  if (*(v0 + 992) >= 4uLL)
  {
    goto LABEL_46;
  }

  *(v0 + 992) = v30 + 1;
  v50 = *(v0 + 856);
  static Clock<>.continuous.getter();
  *(v0 + 664) = 125000000000000000 * (v30 + 1);
  *(v0 + 672) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 1;

  return _swift_task_switch(sub_100024154, 0, 0);
}

uint64_t sub_10002571C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[45] = v4;
  v6[46] = a1;
  v6[47] = a2;
  v6[48] = a3;
  v6[49] = v3;
  v7 = v5[133];
  v8 = *v4;
  v6[134] = v3;

  v9 = v5[110];
  v10 = v5[109];
  v11 = v5[108];
  v12 = v5[96];
  v13 = *(v10 + 8);
  if (v3)
  {
    v6[137] = v13;
    v13(v9, v11);
    v14 = sub_1000266A0;
  }

  else
  {
    v6[135] = v13;
    v13(v9, v11);
    v14 = sub_1000258B8;
  }

  return _swift_task_switch(v14, v12, 0);
}

uint64_t sub_1000258B8()
{
  v93 = v0;
  *(v0 + 632) = *(v0 + 368);
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 384);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 statusCode];
    if (v7 == 200)
    {
      v8 = *(v0 + 944);
      v9 = *(v0 + 936);
      v10 = *(v0 + 896);
      v11 = *(v0 + 864);
      v12 = v1;
      v13 = *(v0 + 872) + 8;
      (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));

      sub_10000803C(v9, v8);
      sub_10000803C(*(v0 + 632), *(v0 + 640));
      v12(v10, v11);
LABEL_46:
      v78 = *(v0 + 928);
      v79 = *(v0 + 920);
      v80 = *(v0 + 896);
      v81 = *(v0 + 888);
      v82 = *(v0 + 880);
      v83 = *(v0 + 856);
      v84 = *(v0 + 832);
      v85 = *(v0 + 824);
      v86 = *(v0 + 800);
      v87 = *(v0 + 776);

      v88 = *(v0 + 8);

      return v88();
    }

    v39 = v7;
    v40 = *(v0 + 968);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_39;
    }

    v91 = v42;
    v43 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v43 = 134218499;
    *(v43 + 4) = v39;
    *(v43 + 12) = 2082;
    swift_beginAccess();
    v44 = *(v0 + 632);
    v45 = *(v0 + 640);
    sub_100007F28(v44, v45);
    v46 = sub_100010724(v44, v45);
    if (!v47)
    {
      *(v0 + 616) = v44;
      *(v0 + 624) = v45;
      sub_100007F28(v44, v45);
      sub_100001FDC(&unk_1000578A0, &unk_100045C10);
      if (swift_dynamicCast())
      {
        v90 = v1;
        sub_100010C50((v0 + 240), v0 + 280);
        v48 = *(v0 + 312);
        sub_100010C68((v0 + 280), *(v0 + 304));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000803C(v44, v45);
          v49 = *(v0 + 312);
          sub_100010C68((v0 + 280), *(v0 + 304));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v50 = *(v0 + 696);
          v51 = *(v0 + 704);
          sub_100006D94((v0 + 280));
          v1 = v90;
          goto LABEL_24;
        }

        sub_100006D94((v0 + 280));
        v1 = v90;
      }

      else
      {
        *(v0 + 272) = 0;
        *(v0 + 240) = 0u;
        *(v0 + 256) = 0u;
        sub_100007E2C(v0 + 240, &qword_100056C90, &qword_1000471D0);
      }

      v46 = sub_10000FDA4(v44, v45);
    }

    v50 = v46;
    v51 = v47;
    sub_10000803C(v44, v45);
LABEL_24:
    v53 = *(v0 + 896);
    v54 = sub_10000604C(v50, v51, v92);

    *(v43 + 14) = v54;
    *(v43 + 22) = 2081;
    swift_beginAccess();
    v55 = URLRequest.httpBody.getter();
    v57 = v56;
    swift_endAccess();
    if (v57 >> 60 == 15)
    {
      v58 = 0;
    }

    else
    {
      v58 = v55;
    }

    if (v57 >> 60 == 15)
    {
      v59 = 0xC000000000000000;
    }

    else
    {
      v59 = v57;
    }

    v60 = sub_100010724(v58, v59);
    if (!v61)
    {
      *(v0 + 648) = v58;
      *(v0 + 656) = v59;
      sub_100007F28(v58, v59);
      sub_100001FDC(&unk_1000578A0, &unk_100045C10);
      if (swift_dynamicCast())
      {
        sub_100010C50((v0 + 160), v0 + 200);
        v62 = *(v0 + 232);
        sub_100010C68((v0 + 200), *(v0 + 224));
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_10000803C(v58, v59);
          v63 = *(v0 + 232);
          sub_100010C68((v0 + 200), *(v0 + 224));
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v64 = *(v0 + 680);
          v65 = *(v0 + 688);
          sub_100006D94((v0 + 200));
LABEL_38:
          v66 = sub_10000604C(v64, v65, v92);

          *(v43 + 24) = v66;
          _os_log_impl(&_mh_execute_header, v41, v91, "ERROR: Response: %ld\nERROR: %{public}s\nERROR: Request body:\n%{private}s", v43, 0x20u);
          swift_arrayDestroy();

LABEL_39:

          v67 = *(v0 + 952);
          v68 = *(**(v0 + 960) + OBJC_IVAR____TtC14splunkloggingd10Statistics_splunkErrors);

          sub_1000287B8(v69, 1uLL);

          v70 = CFNotificationCenterGetDarwinNotifyCenter();
          if (v70)
          {
            v71 = qword_10005A270;
            v72 = v70;
            if (v71 != -1)
            {
              swift_once();
            }

            CFNotificationCenterPostNotification(v72, qword_10005A278, 0, 0, 0);
          }

          else
          {
            v72 = v6;
          }

          sub_10000803C(*(v0 + 632), *(v0 + 640));
LABEL_45:
          v73 = *(v0 + 944);
          v74 = *(v0 + 936);
          v75 = *(v0 + 896);
          v76 = *(v0 + 864);
          v77 = *(v0 + 872) + 8;
          (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));
          sub_10000803C(v74, v73);
          v1(v75, v76);
          goto LABEL_46;
        }

        sub_100006D94((v0 + 200));
      }

      else
      {
        *(v0 + 192) = 0;
        *(v0 + 160) = 0u;
        *(v0 + 176) = 0u;
        sub_100007E2C(v0 + 160, &qword_100056C90, &qword_1000471D0);
      }

      v60 = sub_10000FDA4(v58, v59);
    }

    v64 = v60;
    v65 = v61;
    sub_10000803C(v58, v59);
    goto LABEL_38;
  }

  v14 = v1;
  v15 = *(v0 + 984);
  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045B50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v17;
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x8000000100043F00;
  sub_100010AFC(inited);
  swift_setDeallocating();
  sub_100007E2C(inited + 32, &unk_100056C80, &unk_1000468A0);
  v18 = objc_allocWithZone(NSError);
  v19 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v18 initWithDomain:v19 code:1 userInfo:isa];

  swift_willThrow();
  sub_10000803C(*(v0 + 632), *(v0 + 640));
  v21 = *(v0 + 968);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v92[0] = v25;
    *v24 = 136446210;
    swift_getErrorValue();
    v27 = *(v0 + 424);
    v26 = *(v0 + 432);
    v28 = *(v0 + 440);
    v29 = Error.localizedDescription.getter();
    v31 = sub_10000604C(v29, v30, v92);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Splunk HTTP POST failed:\n%{public}s", v24, 0xCu);
    sub_100006D94(v25);
  }

  v32 = *(v0 + 992);
  v33 = *(v0 + 952);
  v34 = *(**(v0 + 960) + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpErrors);

  sub_1000287B8(v35, 1uLL);

  v36 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = v14;
  if (v36)
  {
    v37 = qword_10005A270;
    v38 = v36;
    if (v37 != -1)
    {
      swift_once();
    }

    CFNotificationCenterPostNotification(v38, qword_10005A278, 0, 0, 0);
  }

  else
  {
  }

  if (*(v0 + 992) >= 4uLL)
  {
    goto LABEL_45;
  }

  *(v0 + 992) = v32 + 1;
  v52 = *(v0 + 856);
  static Clock<>.continuous.getter();
  *(v0 + 664) = 125000000000000000 * (v32 + 1);
  *(v0 + 672) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 1;

  return _swift_task_switch(sub_100024154, 0, 0);
}

uint64_t sub_100026308()
{
  v40 = v0;
  (*(*(v0 + 792) + 8))(*(v0 + 800), *(v0 + 784));
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 968);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = *(v0 + 424);
    v8 = *(v0 + 432);
    v10 = *(v0 + 440);
    v11 = Error.localizedDescription.getter();
    v13 = sub_10000604C(v11, v12, &v39);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Splunk HTTP POST failed:\n%{public}s", v6, 0xCu);
    sub_100006D94(v7);
  }

  v14 = *(v0 + 992);
  v15 = *(v0 + 952);
  v16 = *(**(v0 + 960) + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpErrors);

  sub_1000287B8(v17, 1uLL);

  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v18)
  {
    v19 = qword_10005A270;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    CFNotificationCenterPostNotification(v20, qword_10005A278, 0, 0, 0);
  }

  else
  {
  }

  if (*(v0 + 992) >= 4uLL)
  {
    v22 = *(v0 + 944);
    v23 = *(v0 + 936);
    v24 = *(v0 + 896);
    v25 = *(v0 + 864);
    v26 = *(v0 + 872) + 8;
    (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));
    sub_10000803C(v23, v22);
    v1(v24, v25);
    v27 = *(v0 + 928);
    v28 = *(v0 + 920);
    v29 = *(v0 + 896);
    v30 = *(v0 + 888);
    v31 = *(v0 + 880);
    v32 = *(v0 + 856);
    v33 = *(v0 + 832);
    v34 = *(v0 + 824);
    v35 = *(v0 + 800);
    v36 = *(v0 + 776);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    *(v0 + 992) = v14 + 1;
    v21 = *(v0 + 856);
    static Clock<>.continuous.getter();
    *(v0 + 664) = 125000000000000000 * (v14 + 1);
    *(v0 + 672) = 0;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 1;

    return _swift_task_switch(sub_100024154, 0, 0);
  }
}

uint64_t sub_1000266A0()
{
  v40 = v0;
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 968);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = *(v0 + 424);
    v8 = *(v0 + 432);
    v10 = *(v0 + 440);
    v11 = Error.localizedDescription.getter();
    v13 = sub_10000604C(v11, v12, &v39);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Splunk HTTP POST failed:\n%{public}s", v6, 0xCu);
    sub_100006D94(v7);
  }

  v14 = *(v0 + 992);
  v15 = *(v0 + 952);
  v16 = *(**(v0 + 960) + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpErrors);

  sub_1000287B8(v17, 1uLL);

  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v18)
  {
    v19 = qword_10005A270;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    CFNotificationCenterPostNotification(v20, qword_10005A278, 0, 0, 0);
  }

  else
  {
  }

  if (*(v0 + 992) >= 4uLL)
  {
    v22 = *(v0 + 944);
    v23 = *(v0 + 936);
    v24 = *(v0 + 896);
    v25 = *(v0 + 864);
    v26 = *(v0 + 872) + 8;
    (*(*(v0 + 912) + 8))(*(v0 + 928), *(v0 + 904));
    sub_10000803C(v23, v22);
    v1(v24, v25);
    v27 = *(v0 + 928);
    v28 = *(v0 + 920);
    v29 = *(v0 + 896);
    v30 = *(v0 + 888);
    v31 = *(v0 + 880);
    v32 = *(v0 + 856);
    v33 = *(v0 + 832);
    v34 = *(v0 + 824);
    v35 = *(v0 + 800);
    v36 = *(v0 + 776);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    *(v0 + 992) = v14 + 1;
    v21 = *(v0 + 856);
    static Clock<>.continuous.getter();
    *(v0 + 664) = 125000000000000000 * (v14 + 1);
    *(v0 + 672) = 0;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 1;

    return _swift_task_switch(sub_100024154, 0, 0);
  }
}

uint64_t sub_100026A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_100026A8C(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_100026A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[2] = a2;
  v5 = v4;
  v41 = a3;
  v8 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v39 = v38 - v10;
  v11 = type metadata accessor for URL();
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  __chkstk_darwin(v11);
  v38[0] = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001FDC(&qword_100057540, &qword_100046FD0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v38 - v16;
  v18 = type metadata accessor for URLComponents();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v38 - v24;
  swift_defaultActor_initialize();
  *(v5 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_refreshEventRecieved) = 1;
  *(v5 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_acdcActorURLSession) = 0;
  v40 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_token;
  v43 = a4;
  sub_10001102C(a4, v5 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_token, &unk_100057530, &unk_100046FC0);
  v44 = a1;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    sub_100007E2C(v17, &qword_100057540, &qword_100046FD0);
    sub_100027088();
    swift_allocError();
    swift_willThrow();
    v26 = v42;
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
    sub_100001FDC(&unk_100057550, &qword_100046FD8);
    v27 = *(type metadata accessor for URLQueryItem() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    *(swift_allocObject() + 16) = xmmword_100045B50;
    URLQueryItem.init(name:value:)();

    (*(v19 + 16))(v23, v25, v18);
    URLComponents.path.setter();
    URLComponents.queryItems.setter();
    v30 = v39;
    URLComponents.url.getter();
    v26 = v42;
    if ((*(v42 + 48))(v30, 1, v11) != 1)
    {
      sub_100007E2C(v43, &unk_100057530, &unk_100046FC0);
      (*(v26 + 8))(v44, v11);
      v34 = *(v19 + 8);
      v34(v23, v18);
      v34(v25, v18);
      v35 = *(v26 + 32);
      v36 = v38[0];
      v35(v38[0], v30, v11);
      v35(v5 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_jsonEndpoint, v36, v11);
      return v5;
    }

    sub_100007E2C(v30, &unk_100056B40, &unk_100045890);
    sub_100027088();
    swift_allocError();
    swift_willThrow();
    v31 = *(v19 + 8);
    v31(v23, v18);
    v31(v25, v18);
  }

  sub_100007E2C(v5 + v40, &unk_100057530, &unk_100046FC0);

  type metadata accessor for SplunkEventOffloader();
  swift_defaultActor_destroy();
  sub_100007E2C(v43, &unk_100057530, &unk_100046FC0);
  (*(v26 + 8))(v44, v11);
  v32 = *(*v5 + 48);
  v33 = *(*v5 + 52);
  swift_deallocPartialClassInstance();
  return v5;
}

unint64_t sub_100027088()
{
  result = qword_100057548;
  if (!qword_100057548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057548);
  }

  return result;
}

uint64_t type metadata accessor for SplunkEventOffloader()
{
  result = qword_10005A490;
  if (!qword_10005A490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100027128()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_jsonEndpoint;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100007E2C(v0 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_token, &unk_100057530, &unk_100046FC0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000271C0()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_jsonEndpoint;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100007E2C(v0 + OBJC_IVAR____TtC14splunkloggingd20SplunkEventOffloader_token, &unk_100057530, &unk_100046FC0);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100027268(uint64_t a1, unint64_t a2)
{
  v5 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v6 = *(*(v5 - 8) + 64);
  result = __chkstk_darwin(v5 - 8);
  v9 = &v13 - v8;
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v10)
    {
      if (a1 == a1 >> 32)
      {
        return result;
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      return result;
    }

LABEL_9:
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v2;
    v12[5] = a1;
    v12[6] = a2;

    sub_100007F28(a1, a2);
    sub_1000200E8(0, 0, v9, &unk_100046FF0, v12);
  }

  if (v10 == 2 && *(a1 + 16) != *(a1 + 24))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000273D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000273F8, 0, 0);
}

uint64_t sub_1000273F8()
{
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  v1 = *(*sub_100028E80() + OBJC_IVAR____TtC14splunkloggingd10Statistics_timerOffloads);

  sub_1000287B8(v2, 1uLL);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1000287B4;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return sub_1000236FC(v5, v4);
}

uint64_t sub_1000274DC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007EAC;

  return sub_1000273D4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100027584(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;

  sub_100007F28(a1, a2);
  sub_1000200E8(0, 0, v9, &unk_100047000, v11);
}

uint64_t sub_1000276B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1000073F4;

  return sub_1000236FC(a5, a6);
}

uint64_t sub_10002775C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_10000803C(v0[5], v0[6]);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000277A4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007EAC;

  return sub_1000276B0(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10002784C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;

  sub_10001A334(a1, a2, sub_100007F28);
  sub_1000200E8(0, 0, v9, &unk_100047010, v11);
}

uint64_t sub_10002798C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000279B0, 0, 0);
}

uint64_t sub_1000279B0()
{
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  v1 = *(*sub_100028E80() + OBJC_IVAR____TtC14splunkloggingd10Statistics_directOffloads);

  sub_1000287B8(v2, 1uLL);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100027A90;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return sub_1000236FC(v5, v4);
}

uint64_t sub_100027A90()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100027B84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_10001A334(v0[5], v0[6], sub_10000803C);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100027BE0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007EAC;

  return sub_10002798C(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_100027C8C()
{
  result = qword_100057560;
  if (!qword_100057560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057560);
  }

  return result;
}

uint64_t sub_100027CE4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;

  sub_100007F28(a1, a2);
  sub_1000200E8(0, 0, v9, &unk_1000471F8, v11);
}

uint64_t sub_100027E10(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;

  sub_10001A334(a1, a2, sub_100007F28);
  sub_1000200E8(0, 0, v9, &unk_1000471F0, v11);
}

void sub_100027F8C()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100028078();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100028078()
{
  if (!qword_100057390)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100057390);
    }
  }
}

unint64_t sub_1000280D0()
{
  result = qword_100057708;
  if (!qword_100057708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057708);
  }

  return result;
}

uint64_t sub_100028124(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 protectionSpace];
  v7 = [v6 authenticationMethod];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    v19 = [a1 protectionSpace];
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14 = [a1 protectionSpace];

    if ((v13 & 1) == 0)
    {
      v15 = *(a3 + 16);
      v16 = a3;
      v17 = 1;
      v18 = 0;
      goto LABEL_9;
    }
  }

  v18 = *(a2 + OBJC_IVAR____TtC14splunkloggingdP33_F073D0EF6A22BE81F4E8780E926B09A722MTLSURLSessionDelegate_cred);
  v15 = *(a3 + 16);
  v16 = a3;
  v17 = 0;
LABEL_9:

  return v15(v16, v17, v18);
}

uint64_t sub_1000282B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100028308()
{
  result = qword_100056860;
  if (!qword_100056860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100056860);
  }

  return result;
}

uint64_t sub_100028354()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100028394()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  notify_cancel(*(v2 + 16));
  if (qword_10005A250 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006C6C(v3, qword_10005A258);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received acdc cert expiry notification.", v6, 2u);
  }

  return (*(*v1 + 128))(1);
}

uint64_t sub_1000284C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000284DC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000073F4;

  return sub_10002798C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100028584()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000285BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000285F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100028690;

  return sub_100022B7C(a1);
}

uint64_t sub_100028690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

atomic_ullong *sub_1000287B8(uint64_t a1, unint64_t a2)
{
  result = (*(*a1 + 136))();
  atomic_fetch_add_explicit(result, a2, memory_order_relaxed);
  return result;
}

uint64_t sub_100028804@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd10Statistics_startTime;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10002895C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_10002899C(a1);
  return v5;
}

uint64_t sub_10002899C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd10Statistics_startTime;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1 + v3, a1, v4);
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_droppedEvents) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_processedEvents) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_crashReports) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_jetsamReports) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_panicReports) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_timerOffloads) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_directOffloads) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpRequests) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpErrors) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_splunkErrors) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_totalBytes) = v17;
  sub_100001FDC(&qword_100057758, qword_100047228);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = -1;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_minimumBytes) = v18;
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  (*(v5 + 8))(a1, v4);
  *(v19 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_maximumBytes) = v19;
  return v1;
}

uint64_t sub_100028C54()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd10Statistics_startTime;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_droppedEvents);

  v4 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_processedEvents);

  v5 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents);

  v6 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_crashReports);

  v7 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_jetsamReports);

  v8 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_panicReports);

  v9 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_timerOffloads);

  v10 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_directOffloads);

  v11 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpRequests);

  v12 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpErrors);

  v13 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_splunkErrors);

  v14 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_totalBytes);

  v15 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_minimumBytes);

  v16 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_maximumBytes);

  return v0;
}

uint64_t sub_100028D94()
{
  sub_100028C54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100028DEC()
{
  v0 = type metadata accessor for Date();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v4 = type metadata accessor for Statistics();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  result = sub_10002899C(v3);
  qword_10005B098 = v7;
  return result;
}

uint64_t *sub_100028E80()
{
  if (qword_10005A4A0 != -1)
  {
    swift_once();
  }

  return &qword_10005B098;
}

uint64_t sub_100028ED0()
{
  if (qword_10005A4A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100028F2C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  result = Date.timeIntervalSince1970.getter();
  v11 = round((v8 - v10) * 1000.0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 < 9.22337204e18)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(394);
    v12._countAndFlagsBits = 0xD000000000000017;
    v12._object = 0x8000000100043F80;
    String.append(_:)(v12);
    Double.write<A>(to:)();
    v13._countAndFlagsBits = 0xD00000000000001DLL;
    v13._object = 0x8000000100043FA0;
    String.append(_:)(v13);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_processedEvents) + 136))();
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._object = 0x8000000100043FC0;
    v15._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v15);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_droppedEvents) + 136))();
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._object = 0x8000000100043FE0;
    v17._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v17);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_skippedEvents) + 136))();
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._object = 0x8000000100044000;
    v19._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v19);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_crashReports) + 136))();
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._object = 0x8000000100044020;
    v21._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v21);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_jetsamReports) + 136))();
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._object = 0x8000000100044040;
    v23._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v23);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_panicReports) + 136))();
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._object = 0x8000000100044060;
    v25._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v25);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_timerOffloads) + 136))();
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    v27._object = 0x8000000100044080;
    v27._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v27);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_directOffloads) + 136))();
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._object = 0x80000001000440A0;
    v29._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v29);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpRequests) + 136))();
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31._object = 0x80000001000440C0;
    v31._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v31);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_httpErrors) + 136))();
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._object = 0x80000001000440E0;
    v33._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v33);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_splunkErrors) + 136))();
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._object = 0x8000000100044100;
    v35._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v35);
    v47 = *(*(**(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_totalBytes) + 136))();
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37._object = 0x8000000100044120;
    v37._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v37);
    v38 = *(v0 + OBJC_IVAR____TtC14splunkloggingd10Statistics_minimumBytes);
    os_unfair_lock_lock((v38 + 24));
    v39 = *(v38 + 16);
    os_unfair_lock_unlock((v38 + 24));
    v47 = v39;
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v41._object = 0x8000000100044140;
    v41._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v41);
    v42 = *(v1 + OBJC_IVAR____TtC14splunkloggingd10Statistics_maximumBytes);
    os_unfair_lock_lock((v42 + 24));
    v43 = *(v42 + 16);
    os_unfair_lock_unlock((v42 + 24));
    v47 = v43;
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45 = v48;
    (*(v3 + 8))(v6, v2);
    return v45;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for Statistics()
{
  result = qword_10005A530;
  if (!qword_10005A530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000297F0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000298B0(uint64_t a1, int a2)
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

uint64_t sub_1000298D0(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_100057870)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100057870);
    }
  }
}

uint64_t sub_100029954()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_10005A548);
  sub_100006C6C(v0, qword_10005A548);
  return Logger.init(subsystem:category:)();
}

void sub_1000299D4()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_serialNumber_obj();

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    qword_10005A568 = v3;
    qword_10005A570 = v5;
  }

  else
  {
    __break(1u);
  }
}

void sub_100029A58()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_releaseType_obj();

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      qword_10005A580 = v3;
      qword_10005A588 = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100029AD4()
{
  if (qword_10005A578 != -1)
  {
    swift_once();
  }

  sub_10001A48C();

  v0 = StringProtocol.contains<A>(_:)();

  byte_10005A598 = v0 & 1;
  return result;
}

uint64_t sub_100029BB8()
{
  type metadata accessor for HostNameWrapper();
  v0 = swift_allocObject();
  result = sub_10002A098();
  qword_10005A5A8 = v0;
  return result;
}

uint64_t sub_100029BF4()
{
  result = sub_100029C18();
  qword_10005B118 = result;
  unk_10005B120 = v1;
  return result;
}

uint64_t sub_100029C18()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = CFPreferencesCopyValue(v0, kCFPreferencesAnyApplication, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);

  if (v1 && (v14[2] = v1, (swift_dynamicCast() & 1) != 0))
  {
    v2 = v14[0];
    v3 = v14[1];
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006C6C(v4, qword_10005A548);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v14[0] = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_10000604C(v2, v3, v14);
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_10000604C(0xD000000000000014, 0x8000000100044270, v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "Found value of %{public}s for key %{public}s.", v7, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006C6C(v8, qword_10005A548);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000604C(0xD000000000000014, 0x8000000100044270, v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "Couldn't find value for key %{public}s.", v11, 0xCu);
      sub_100006D94(v12);
    }

    return 0;
  }

  return v2;
}

uint64_t *sub_100029F28()
{
  if (qword_10005A5B0 != -1)
  {
    swift_once();
  }

  return &qword_10005B118;
}

uint64_t sub_100029F78()
{
  String.utf8CString.getter();
  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    has_internal_diagnostics = 1;
  }

  else
  {
    String.utf8CString.getter();
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
  }

  byte_10005A5C0 = has_internal_diagnostics;
  return result;
}

uint64_t sub_10002A00C()
{
  sub_100001FDC(&qword_100057AC8, &qword_100047590);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_10005A5D0 = result;
  return result;
}

uint64_t sub_10002A050()
{
  sub_100001FDC(&qword_100057AD0, &qword_100047598);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 1;
  qword_10005A5E0 = result;
  return result;
}

uint64_t sub_10002A098()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  __chkstk_darwin(v2);
  v58 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  __chkstk_darwin(v5);
  v54 = (v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for DispatchTime();
  v53 = *(v55 - 8);
  v8 = *(v53 + 64);
  __chkstk_darwin(v55);
  v52 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v47 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v46 - 8);
  v13 = *(v45 + 64);
  __chkstk_darwin(v46);
  v44 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v15 = *(*(v43[0] - 8) + 64);
  __chkstk_darwin(v43[0]);
  v43[1] = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v50 = *(v17 - 8);
  v51 = v17;
  v18 = *(v50 + 64);
  __chkstk_darwin(v17);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 128) = 0x404E000000000000;
  v21 = [objc_opt_self() processInfo];
  v22 = [v21 hostName];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (String.count.getter() <= 0)
  {

    v25 = 0x8000000100044560;
    v23 = 0xD000000000000012;
  }

  if (qword_10005A540 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006C6C(v26, qword_10005A548);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_10000604C(v23, v25, aBlock);
    _os_log_impl(&_mh_execute_header, v27, v28, "Setting initial hostname to %{public}s", v29, 0xCu);
    sub_100006D94(v30);
  }

  sub_100001FDC(&qword_100057AD8, &qword_1000475A0);
  v31 = swift_allocObject();
  *(v31 + 32) = 0;
  *(v31 + 16) = v23;
  *(v31 + 24) = v25;
  *(v1 + 112) = v31;
  sub_1000075EC(0, &qword_100057AE0, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002FF34(&qword_100057AE8, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100001FDC(&qword_100057AF0, qword_1000475A8);
  sub_10003002C(&qword_100057AF8, &qword_100057AF0, qword_1000475A8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v45 + 104))(v44, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v46);
  v32 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002FF34(&qword_100056B28, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100001FDC(&qword_100056B30, &unk_100045BF0);
  sub_10003002C(&qword_100056B38, &qword_100056B30, &unk_100045BF0);
  v33 = v47;
  v34 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v48 + 8))(v33, v34);
  *(v1 + 120) = v35;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v36 = v52;
  static DispatchTime.now()();
  v37 = v54;
  *v54 = 0;
  v39 = v56;
  v38 = v57;
  (*(v56 + 104))(v37, enum case for DispatchTimeInterval.nanoseconds(_:), v57);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  (*(v39 + 8))(v37, v38);
  (*(v53 + 8))(v36, v55);
  aBlock[4] = sub_10003000C;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000040C8;
  aBlock[3] = &unk_100052A58;
  v40 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v41 = v58;
  sub_10000410C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v40);
  (*(v59 + 8))(v41, v60);
  (*(v50 + 8))(v20, v51);

  OS_dispatch_source.activate()();

  swift_unknownObjectRelease();
  return v1;
}

void sub_10002A9AC(uint64_t a1)
{
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = 256;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 32) = 0u;
  v3 = gethostname((v2 + 32), 0x100uLL);
  if (v3)
  {
    v4 = v3;

    v5 = errno.getter();
    if (strerror(v5))
    {
      v6 = String.init(cString:)();
      v8 = v7;
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 7104878;
    }

    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006C6C(v13, qword_10005A548);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 67109635;
      *(v16 + 4) = v4;
      *(v16 + 8) = 1024;
      *(v16 + 10) = v5;
      *(v16 + 14) = 2081;
      v18 = sub_10000604C(v6, v8, &v19);

      *(v16 + 16) = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch darwin hostname with retval: %d, errno: %d, error: %{private}s", v16, 0x18u);
      sub_100006D94(v17);
    }

    else
    {
    }
  }

  else
  {
    sub_10002FA08(v2);
    v10 = v9;

    if (v10)
    {
      v12 = *(a1 + 112);
      __chkstk_darwin(v11);
      os_unfair_lock_lock((v12 + 32));
      sub_100030074((v12 + 16));
      os_unfair_lock_unlock((v12 + 32));
    }
  }
}

uint64_t sub_10002AC4C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002AC8C()
{
  if (qword_10005A5A0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10005A5A8 + 112);
  os_unfair_lock_lock((v0 + 32));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  os_unfair_lock_unlock((v0 + 32));
  return v1;
}

uint64_t sub_10002AD10()
{
  v8 = 0;
  if (!sysctlbyname("kern.bootsessionuuid", 0, &v8, 0, 0))
  {
    v0 = v8;
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    if (v8)
    {
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v1[2] = v0;
      bzero(v1 + 4, v0);
    }

    else
    {
      v1 = &_swiftEmptyArrayStorage;
    }

    if (!sysctlbyname("kern.bootsessionuuid", v1 + 4, &v8, 0, 0))
    {
      v4 = sub_10002FA08(v1);

      return v4;
    }
  }

  _StringGuts.grow(_:)(55);
  v2._object = 0x80000001000442B0;
  v2._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v2);
  v7 = errno.getter();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = 0xE000000000000000;
  sub_1000223BC();
  swift_allocError();
  *v5 = HIDWORD(v7);
  *(v5 + 8) = 0xE000000000000000;
  *(v5 + 16) = 0;
  swift_willThrow();
  return v4;
}

uint64_t sub_10002AF0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports);
  v2 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports + 8);
  sub_10002FA54(v1);
  return v1;
}

uint64_t sub_10002AF6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir);
  v2 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir + 8);

  return v1;
}

_BYTE *sub_10002AFA8(char a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v15 = *(v9 + 48);
  v16 = *(v9 + 52);
  v17 = swift_allocObject();
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0)
  {
    v17[16] = a1;
    v17[17] = a2;
    sub_10002FA74(a3, &v17[OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath]);
    v17[OBJC_IVAR____TtC14splunkloggingd11TestingMock_isInternal] = a4;
    v18 = &v17[OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports];
    *v18 = a5;
    v18[1] = a6;
    v17[OBJC_IVAR____TtC14splunkloggingd11TestingMock_ownCrashDeletion] = a7;
    v19 = &v17[OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir];
    *v19 = a8;
    v19[1] = a9;
  }

  else
  {

    sub_1000223BC();
    swift_allocError();
    *v20 = 0xD000000000000032;
    *(v20 + 8) = 0x80000001000442F0;
    *(v20 + 16) = 2;
    swift_willThrow();
    sub_10002FA64(a5);
    sub_100007E2C(a3, &unk_100056B40, &unk_100045890);
    v21 = *(*v17 + 48);
    v22 = *(*v17 + 52);
    swift_deallocPartialClassInstance();
  }

  return v17;
}

_BYTE *sub_10002B174(char a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v16 = *v9;
  if (qword_10005A5B8 != -1)
  {
    v24 = a8;
    swift_once();
    a8 = v24;
  }

  if (byte_10005A5C0)
  {
    v9[16] = a1;
    v9[17] = a2;
    v17 = a8;
    sub_10002FA74(a3, &v9[OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath]);
    v9[OBJC_IVAR____TtC14splunkloggingd11TestingMock_isInternal] = a4;
    v18 = &v9[OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports];
    *v18 = a5;
    v18[1] = a6;
    v9[OBJC_IVAR____TtC14splunkloggingd11TestingMock_ownCrashDeletion] = a7;
    v19 = &v9[OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir];
    *v19 = v17;
    v19[1] = a9;
  }

  else
  {

    sub_1000223BC();
    swift_allocError();
    *v20 = 0xD000000000000032;
    *(v20 + 8) = 0x80000001000442F0;
    *(v20 + 16) = 2;
    swift_willThrow();
    sub_10002FA64(a5);
    sub_100007E2C(a3, &unk_100056B40, &unk_100045890);
    v21 = *(*v9 + 48);
    v22 = *(*v9 + 52);
    swift_deallocPartialClassInstance();
  }

  return v9;
}

uint64_t sub_10002B5C0()
{
  sub_100007E2C(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath, &unk_100056B40, &unk_100045890);
  v1 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports + 8);
  sub_10002FA64(*(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports));
  v2 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir + 8);

  return v0;
}

uint64_t sub_10002B620()
{
  sub_100007E2C(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath, &unk_100056B40, &unk_100045890);
  v1 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports + 8);
  sub_10002FA64(*(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports));
  v2 = *(v0 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10002B6E0()
{
  if (qword_10005A5D8 != -1)
  {
    swift_once();
  }

  v0 = qword_10005A5E0;
  os_unfair_lock_lock((qword_10005A5E0 + 20));
  v1 = *(v0 + 16);
  os_unfair_lock_unlock((v0 + 20));
  return v1;
}

void sub_10002B74C(char a1)
{
  if (qword_10005A540 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_10005A548);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting canLogToStdout: %{BOOL}d", v5, 8u);
  }

  if (qword_10005A5D8 != -1)
  {
    swift_once();
  }

  v6 = qword_10005A5E0;
  os_unfair_lock_lock((qword_10005A5E0 + 20));
  *(v6 + 16) = a1 & 1;

  os_unfair_lock_unlock((v6 + 20));
}

void sub_10002B894()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0)
  {
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006C6C(v1, qword_10005A548);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136315138;

      sub_100001FDC(&qword_100057898, qword_1000472D0);
      v6 = String.init<A>(describing:)();
      v8 = sub_10000604C(v6, v7, &v12);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Setting testing mock: %s", v4, 0xCu);
      sub_100006D94(v5);
    }

    if (qword_10005A5C8 != -1)
    {
      v9 = swift_once();
    }

    v10 = qword_10005A5D0;
    __chkstk_darwin(v9);
    os_unfair_lock_lock((v10 + 24));
    sub_10002FAE4((v10 + 16));
    os_unfair_lock_unlock((v10 + 24));
    if (v0)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1000223BC();
    swift_allocError();
    *v11 = 0xD000000000000031;
    *(v11 + 8) = 0x80000001000443B0;
    *(v11 + 16) = 2;
    swift_willThrow();
  }
}

void sub_10002BB40()
{
  if (qword_10005A540 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006C6C(v0, qword_10005A548);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unsetting testing mock", v3, 2u);
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v4 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v5 = *(v4 + 16);

  *(v4 + 16) = 0;

  os_unfair_lock_unlock((v4 + 24));
}

uint64_t sub_10002BC78()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 == 1)
  {
    if (qword_10005A5C8 != -1)
    {
      swift_once();
    }

    v0 = qword_10005A5D0;
    os_unfair_lock_lock((qword_10005A5D0 + 24));
    v1 = *(v0 + 16);

    os_unfair_lock_unlock((v0 + 24));
    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_isInternal);
      if (v2 == 2)
      {

        LOBYTE(v2) = 1;
      }

      else
      {
        if (qword_10005A540 != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for Logger();
        sub_100006C6C(v3, qword_10005A548);
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 67109120;
          *(v6 + 4) = v2 & 1;
          _os_log_impl(&_mh_execute_header, v4, v5, "Found mocked value for isAppleInternal, returning %{BOOL}d", v6, 8u);
        }
      }
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t sub_10002BE40()
{
  if (qword_10005A560 != -1)
  {
    swift_once();
  }

  v0 = qword_10005A568;

  return v0;
}

uint64_t sub_10002BEAC()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 != 1)
  {
    goto LABEL_9;
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v0 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v1 = *(v0 + 16);

  os_unfair_lock_unlock((v0 + 24));
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_ownCrashDeletion);
  if (v2 == 2)
  {

LABEL_9:
    if (qword_10005A590 != -1)
    {
      swift_once();
    }

    LOBYTE(v2) = byte_10005A598;
    return v2 & 1;
  }

  if (qword_10005A540 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006C6C(v4, qword_10005A548);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Found mocked value for shouldOwnCrashDeletion, returning %{BOOL}d", v7, 8u);
  }

  return v2 & 1;
}

uint64_t sub_10002C098()
{
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 == 1)
  {
    if (qword_10005A5C8 != -1)
    {
      swift_once();
    }

    v0 = qword_10005A5D0;
    os_unfair_lock_lock((qword_10005A5D0 + 24));
    v1 = *(v0 + 16);

    os_unfair_lock_unlock((v0 + 24));
    if (v1)
    {
      v2 = *(v1 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir + 8);
      if (v2)
      {
        v3 = *(v1 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir);
        v4 = qword_10005A540;
        v5 = *(v1 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_crashDir + 8);

        if (v4 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_100006C6C(v6, qword_10005A548);

        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v13 = v10;
          *v9 = 136315138;
          *(v9 + 4) = sub_10000604C(v3, v2, &v13);
          _os_log_impl(&_mh_execute_header, v7, v8, "Found mocked value for crash dir, returning %s", v9, 0xCu);
          sub_100006D94(v10);
        }

        goto LABEL_16;
      }
    }
  }

  v11 = [objc_opt_self() sharedInstance];
  v7 = [v11 pathSubmission];

  if (!v7)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_16:

  return v3;
}

uint64_t sub_10002C314(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedClient];
  *(swift_allocObject() + 16) = v4;
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 != 1)
  {
    goto LABEL_13;
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v5 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports);
    if (v7)
    {
      v8 = *(v6 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_registerForReports + 8);
      v9 = qword_10005A540;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006C6C(v10, qword_10005A548);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Found mocked value for OSAnalytics registration, registering for mock", v13, 2u);
      }
    }

    else
    {
      v7 = sub_10002FB64;
    }

    (v7)(a1, a2);
  }

  else
  {
LABEL_13:
    (sub_10002FB64)(a1, a2);
  }
}

uint64_t sub_10002C584()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v17 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v17];

  v3 = v17;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006C6C(v6, qword_10005A548);
    swift_errorRetain();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 136446466;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_10000604C(v10, v11, &v17);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      v13 = Dictionary.description.getter();
      v15 = sub_10000604C(v13, v14, &v17);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "JSON ERROR: %{public}s, payload:\n%{public}s", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

uint64_t sub_10002C84C(uint64_t a1)
{
  v1 = 7104878;
  if (a1)
  {
    v2 = sub_10002C584();
    if (v3 >> 60 != 15)
    {
      v4 = v2;
      v5 = v3;
      sub_100007F28(v2, v3);
      v6 = sub_100010724(v4, v5);
      if (v7)
      {
        v1 = v6;
        sub_100010C2C(v4, v5);
      }

      else
      {
        v12 = v4;
        v13 = v5;
        sub_100007F28(v4, v5);
        sub_100001FDC(&unk_1000578A0, &unk_100045C10);
        if (swift_dynamicCast())
        {
          sub_100010C50(v10, v14);
          sub_100010C68(v14, v15);
          HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
          sub_100010C2C(v4, v5);
          if (HasContiguous)
          {
            sub_100010C68(v14, v15);
            dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
            sub_100010C2C(v4, v5);
            v1 = *&v10[0];
            sub_100006D94(v14);
            return v1;
          }

          sub_100006D94(v14);
        }

        else
        {
          sub_100010C2C(v4, v5);
          v11 = 0;
          memset(v10, 0, sizeof(v10));
          sub_100007E2C(v10, &qword_100056C90, &qword_1000471D0);
        }

        v1 = sub_10000FDA4(v4, v5);
      }

      sub_100010C2C(v4, v5);
    }
  }

  return v1;
}

uint64_t sub_10002CA28(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v21[0] = 0;
  v6 = [v4 JSONObjectWithData:isa options:0 error:v21];

  if (v6)
  {
    v7 = v21[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100001FDC(&qword_1000578B0, &unk_100045C00);
    if (swift_dynamicCast())
    {
      return v20;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = v21[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006C6C(v10, qword_10005A548);
    swift_errorRetain();
    sub_100007F28(a1, a2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    sub_10000803C(a1, a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v13 = 136446466;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_10000604C(v14, v15, v21);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v17 = Data.description.getter();
      v19 = sub_10000604C(v17, v18, v21);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "JSON ERROR: %{public}s, payload:\n%{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }
}

unint64_t sub_10002CD18(uint64_t a1, uint64_t a2)
{
  *&v31 = a1;
  *(&v31 + 1) = a2;
  *&v30[0] = 10;
  *(&v30[0] + 1) = 0xE100000000000000;
  sub_10002FBD4();
  sub_10002FC28();
  v2 = Collection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
  v3 = v2[2];
  if (v3 != 2)
  {

    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006C6C(v18, qword_10005A548);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_20;
    }

    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v3;
    v22 = "Got os analytics event with unexpected number of elements: %ld";
    v23 = v20;
    v24 = v19;
    v25 = v21;
    v26 = 12;
    goto LABEL_19;
  }

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2;
  sub_100007F28(v4, v5);
  v7 = sub_10002CA28(v4, v5);
  sub_10000803C(v4, v5);
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v6[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = v6[6];
  v9 = v6[7];
  sub_100007F28(v8, v9);

  v10 = sub_10002CA28(v8, v9);
  sub_10000803C(v8, v9);
  if (!v10)
  {
LABEL_16:

    if (qword_10005A540 == -1)
    {
LABEL_17:
      v27 = type metadata accessor for Logger();
      sub_100006C6C(v27, qword_10005A548);
      v19 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v19, v28))
      {
LABEL_20:

        return 0;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v22 = "Found 2 elements in os analytics event, but failed to convert to json";
      v23 = v28;
      v24 = v19;
      v25 = v29;
      v26 = 2;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v24, v23, v22, v25, v26);

      goto LABEL_20;
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  sub_100001FDC(&unk_100056C70, &unk_100046890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045B60;
  *(inited + 32) = 0x726564616568;
  *(inited + 40) = 0xE600000000000000;
  v12 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
  *(inited + 48) = v7;
  *(inited + 72) = v12;
  *(inited + 80) = 2036625250;
  *(inited + 120) = v12;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v10;

  v13 = sub_100010AFC(inited);
  swift_setDeallocating();
  sub_100001FDC(&unk_100056C80, &unk_1000468A0);
  swift_arrayDestroy();
  if (*(v10 + 16) && (v14 = sub_10000FE4C(0x656D614E636F7270, 0xE800000000000000), (v15 & 1) != 0))
  {
    sub_10000717C(*(v10 + 56) + 32 * v14, &v31);

    if (swift_dynamicCast())
    {
      v32 = &type metadata for String;
      v31 = v30[0];
      sub_100010C40(&v31, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100010234(v30, 0x737365636F7270, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    }

    return v13;
  }

  else
  {

    return v13;
  }
}

uint64_t sub_10002D128@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001FDC(&qword_100056C18, &qword_100045BC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37[-1] - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = String._bridgeToObjectiveC()();
  v37[0] = 0;
  v12 = [v10 attributesOfItemAtPath:v11 error:v37];

  v13 = v37[0];
  if (v12)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_10002FF34(&unk_1000578D0, type metadata accessor for FileAttributeKey);
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v13;

    if (*(v14 + 16) && (v16 = sub_10002F744(NSFileModificationDate), (v17 & 1) != 0))
    {
      sub_10000717C(*(v14 + 56) + 32 * v16, v37);

      v18 = type metadata accessor for Date();
      v19 = swift_dynamicCast();
      v20 = *(v18 - 8);
      v21 = *(v20 + 56);
      v21(v9, v19 ^ 1u, 1, v18);
      if ((*(v20 + 48))(v9, 1, v18) != 1)
      {

        (*(v20 + 32))(a3, v9, v18);
        return (v21)(a3, 0, 1, v18);
      }
    }

    else
    {

      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    }

    sub_100007E2C(v9, &qword_100056C18, &qword_100045BC0);
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006C6C(v24, qword_10005A548);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_10000604C(a1, a2, v37);
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to fetch date from file attrs for '%{public}s', not setting timestamp", v27, 0xCu);
      sub_100006D94(v28);
    }
  }

  else
  {
    v29 = v37[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006C6C(v30, qword_10005A548);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_10000604C(a1, a2, v37);
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to fetch file attrs for '%{public}s', not setting timestamp", v33, 0xCu);
      sub_100006D94(v34);
    }
  }

  v35 = type metadata accessor for Date();
  return (*(*(v35 - 8) + 56))(a3, 1, 1, v35);
}

uint64_t sub_10002D6BC(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    return 0;
  }

  v10 = a1;
  sub_100008014(a1, a2, sub_100007F28);
  v11 = sub_100007F7C(v10, a2);
  if (!v11)
  {
    sub_10001A35C(v10, a2, 0);
    return 0;
  }

  v12 = v11;
  v13 = 0xEA00000000006570;
  v61 = &type metadata for String;
  *&v60 = a4;
  *(&v60 + 1) = a5;
  sub_100010C40(&v60, v59);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100010234(v59, 0x7865646E69, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v15 = v12;
  *&v60 = v10;
  *(&v60 + 1) = a2;
  v57 = a2;
  sub_100008014(v10, a2, sub_100007F28);
  sub_1000280D0();
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  sub_100008014(v60, *(&v60 + 1), sub_10000803C);
  v61 = &type metadata for String;
  *&v60 = v16;
  *(&v60 + 1) = v18;
  sub_100010C40(&v60, v59);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100010234(v59, 0x7974656372756F73, 0xEA00000000006570, v19);
  if (qword_10005A5B0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v20 = qword_10005B118;
    v21 = unk_10005B120;
    if (!unk_10005B120 && !*(a6 + 16))
    {
      break;
    }

    if (*(v15 + 16) && (v22 = sub_10000FE4C(0x746E657665, 0xE500000000000000), (v23 & 1) != 0) && (sub_10000717C(*(v15 + 56) + 32 * v22, &v60), sub_100001FDC(&qword_1000578B0, &unk_100045C00), (swift_dynamicCast() & 1) != 0))
    {
      v24 = *&v59[0];
    }

    else
    {
      v24 = sub_100010AFC(_swiftEmptyArrayStorage);
    }

    if (v21)
    {
      v61 = &type metadata for String;
      *&v60 = v20;
      *(&v60 + 1) = v21;
      sub_100010C40(&v60, v59);

      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_100010234(v59, 0x62614C6567617375, v13 + 1781, v25);
    }

    if (!*(a6 + 16))
    {
LABEL_35:
      v61 = sub_100001FDC(&qword_1000578B0, &unk_100045C00);
      *&v60 = v24;
      sub_100010C40(&v60, v59);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      sub_100010234(v59, 0x746E657665, 0xE500000000000000, v52);
      break;
    }

    v13 = a6 + 64;
    v26 = 1 << *(a6 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v15 = v27 & *(a6 + 64);
    v28 = (v26 + 63) >> 6;

    v29 = 0;
    v58 = v10;
    while (v15)
    {
      v32 = v29;
LABEL_24:
      v33 = (v32 << 10) | (16 * __clz(__rbit64(v15)));
      v34 = (*(a6 + 48) + v33);
      v10 = *v34;
      v35 = v34[1];
      v36 = (*(a6 + 56) + v33);
      v37 = *v36;
      v38 = v36[1];
      v61 = &type metadata for String;
      *&v60 = v37;
      *(&v60 + 1) = v38;
      sub_100010C40(&v60, v59);

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v40 = sub_10000FE4C(v10, v35);
      v42 = v24[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_41;
      }

      v46 = v41;
      if (v24[3] >= v45)
      {
        if ((v39 & 1) == 0)
        {
          v51 = v40;
          sub_1000103F0();
          v40 = v51;
        }
      }

      else
      {
        sub_10000FF7C(v45, v39);
        v40 = sub_10000FE4C(v10, v35);
        if ((v46 & 1) != (v47 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v15 &= v15 - 1;
      if (v46)
      {
        v30 = v40;

        v31 = (v24[7] + 32 * v30);
        sub_100006D94(v31);
        sub_100010C40(v59, v31);
      }

      else
      {
        v24[(v40 >> 6) + 8] |= 1 << v40;
        v48 = (v24[6] + 16 * v40);
        *v48 = v10;
        v48[1] = v35;
        sub_100010C40(v59, (v24[7] + 32 * v40));
        v49 = v24[2];
        v44 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v44)
        {
          goto LABEL_42;
        }

        v24[2] = v50;
      }

      v29 = v32;
      v10 = v58;
    }

    while (1)
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v32 >= v28)
      {

        goto LABEL_35;
      }

      v15 = *(v13 + 8 * v32);
      ++v29;
      if (v15)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v53 = sub_10002C584();
  if (v54 >> 60 == 15)
  {
    sub_10001A35C(v10, v57, 0);

    return 0;
  }

  v55 = v53;
  sub_10001A35C(v10, v57, 0);

  return v55;
}

uint64_t sub_10002DC90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  type metadata accessor for SecureConfigParameters();
  v12 = static SecureConfigParameters.loadContents()();
  if (v1)
  {
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006C6C(v13, qword_10005A548);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to load secure config logPolicyPath with exception %{public}@", v16, 0xCu);
      sub_100007E2C(v17, &qword_100056C40, &unk_100045BE0);
    }

    if (qword_10005A590 != -1)
    {
      swift_once();
    }

    if (byte_10005A598 == 1)
    {
      return swift_willThrow();
    }

    else
    {
      v27 = type metadata accessor for URL();
      (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
    }
  }

  else
  {
    v20 = v12;
    v31 = SecureConfigParameters.logPolicyPath.getter();
    v22 = v21;

    if (v22)
    {
      v23 = type metadata accessor for URL();
      v24 = *(v23 - 8);
      v30 = a1;
      v25 = *(v24 + 56);
      v25(v11, 1, 1, v23);
      (*(v4 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
      v26 = v30;
      URL.init(filePath:directoryHint:relativeTo:)();
      return (v25)(v26, 0, 1, v23);
    }

    else
    {
      v28 = type metadata accessor for URL();
      return (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
    }
  }
}

uint64_t sub_10002E07C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v54 = &v43 - v12;
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  if (qword_10005A5B8 != -1)
  {
    swift_once();
  }

  if (byte_10005A5C0 != 1)
  {
    goto LABEL_11;
  }

  if (qword_10005A5C8 != -1)
  {
    swift_once();
  }

  v17 = qword_10005A5D0;
  os_unfair_lock_lock((qword_10005A5D0 + 24));
  v18 = *(v17 + 16);

  os_unfair_lock_unlock((v17 + 24));
  if (v18)
  {
    v47 = a1;
    sub_10002FD00(v18 + OBJC_IVAR____TtC14splunkloggingd11TestingMock_logPolicyPath, v14);
    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006C6C(v19, qword_10005A548);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v45 = v22;
      v46 = swift_slowAlloc();
      v53[0] = v46;
      *v22 = 136446210;
      swift_beginAccess();
      v44 = v20;
      sub_10001102C(v14, v54, &unk_100056B40, &unk_100045890);
      v23 = String.init<A>(describing:)();
      v25 = sub_10000604C(v23, v24, v53);

      v26 = v45;
      *(v45 + 1) = v25;
      v27 = v21;
      v28 = v44;
      _os_log_impl(&_mh_execute_header, v44, v27, "Found mocked value for logPolicyPath, returning %{public}s", v26, 0xCu);
      sub_100006D94(v46);
    }

    else
    {
    }

    a1 = v47;
  }

  else
  {
LABEL_11:
    sub_10002DC90(v10);
    if (v1)
    {
      v29 = v14;
      return sub_100007E2C(v29, &unk_100056B40, &unk_100045890);
    }

    sub_10002FC90(v10, v14);
  }

  swift_beginAccess();
  if ((*(v16 + 48))(v14, 1, v15))
  {
    swift_endAccess();
  }

  else
  {
    v51 = 0xD000000000000014;
    v52 = 0x80000001000443F0;
    v31 = v48;
    v30 = v49;
    v32 = v50;
    (*(v49 + 104))(v48, enum case for URL.DirectoryHint.inferFromPath(_:), v50);
    sub_10001A48C();
    URL.append<A>(component:directoryHint:)();
    swift_endAccess();
    (*(v30 + 8))(v31, v32);
  }

  if (qword_10005A540 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100006C6C(v33, qword_10005A548);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v53[0] = v37;
    *v36 = 136446210;
    sub_10001102C(v14, v54, &unk_100056B40, &unk_100045890);
    v38 = String.init<A>(describing:)();
    v40 = a1;
    v41 = sub_10000604C(v38, v39, v53);

    *(v36 + 4) = v41;
    a1 = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "audit table path: found value of %{public}s from Secure Config", v36, 0xCu);
    sub_100006D94(v37);
  }

  sub_10001102C(v14, a1, &unk_100056B40, &unk_100045890);
  v29 = v14;
  return sub_100007E2C(v29, &unk_100056B40, &unk_100045890);
}