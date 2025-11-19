id sub_1000FBD30(id a1)
{
  if (qword_1001B8970 != -1)
  {
    swift_once();
  }

  [a1 setStateDescriptor:qword_1001BE8C0];

  return [a1 setServiceClass:33];
}

uint64_t sub_1000FBDBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100065020(&qword_1001BC128, &qword_1001729B0);
  v4 = sub_100002BDC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v23[-v9];
  v11 = sub_100065020(&qword_1001BC130, &qword_1001729B8);
  v12 = sub_100002F04(v11);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v23[-v18];
  v20 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider____lazy_storage___processEventStream;
  swift_beginAccess();
  sub_1000FCA04(v1 + v20, v19);
  v21 = sub_100065020(&qword_1001B9CB8, &qword_1001728F0);
  if (sub_10000C6C0(v19, 1, v21) != 1)
  {
    return (*(*(v21 - 8) + 32))(a1, v19, v21);
  }

  sub_10000ED30(v19, &qword_1001BC130, &qword_1001729B8);
  (*(v6 + 104))(v10, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(*(v21 - 8) + 16))(v17, a1, v21);
  sub_100009BFC(v17, 0, 1, v21);
  swift_beginAccess();
  sub_1000FCA7C(v17, v1 + v20);
  return swift_endAccess();
}

uint64_t sub_1000FC050(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BC138, &qword_1001729C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000FCAEC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1000FCC04;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D7E4;
  aBlock[3] = &unk_1001B1A20;
  v13 = _Block_copy(aBlock);

  [v9 updateConfiguration:v13];
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

void sub_1000FC278(void *a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BC138, &qword_1001729C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10001CD58;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CCB8;
  aBlock[3] = &unk_1001B1A70;
  v11 = _Block_copy(aBlock);

  [a1 setUpdateHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1000FC428()
{
  v1 = *(v0 + 32);

  if (qword_1001B8968 != -1)
  {
    sub_100005224();
  }

  v2 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  sub_100002FD0(v3, qword_1001BBF20);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  v8 = *(v0 + 24);
  if (v6)
  {
    v9 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = sub_100003788();
    *v10 = 67109378;
    *(v10 + 4) = v9;
    *(v10 + 8) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 10) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get RBSProcessHandle for %d: %@. Interpreting as process terminated", v10, 0x12u);
    sub_10000ED30(v11, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BB8();
    sub_100002BB8();
  }

  else
  {
  }

  sub_100001F7C();

  return v13(3);
}

uint64_t sub_1000FC5CC()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider__monitoredPids;
  v2 = sub_100065020(&qword_1001BC0B0, &qword_100172970);
  sub_1000055EC(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider__workQueue;
  v5 = sub_100065020(&qword_1001BC0A8, &qword_100172968);
  sub_1000055EC(v5);
  (*(v6 + 8))(v0 + v4);
  sub_10000ED30(v0 + OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider____lazy_storage___processEventStream, &qword_1001BC130, &qword_1001729B8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000FC6AC()
{
  sub_1000FC5CC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RunningBoardProvider()
{
  result = qword_1001BBF68;
  if (!qword_1001BBF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000FC72C()
{
  sub_1000FC848();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000FC8A0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1000FC934();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000FC848()
{
  if (!qword_1001BBF78)
  {
    v0 = type metadata accessor for CountedSet();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BBF78);
    }
  }
}

void sub_1000FC8A0()
{
  if (!qword_1001BBF80)
  {
    type metadata accessor for RunningBoardProvider();
    sub_10000E784(&qword_1001BBF88, type metadata accessor for RunningBoardProvider);
    v0 = type metadata accessor for WorkQueue();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BBF80);
    }
  }
}

void sub_1000FC934()
{
  if (!qword_1001BBF90)
  {
    sub_10006A614(&qword_1001B9CB8, &qword_1001728F0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BBF90);
    }
  }
}

void sub_1000FC998(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setEndowmentNamespaces:isa];
}

uint64_t sub_1000FCA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BC130, &qword_1001729B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FCA7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BC130, &qword_1001729B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000FCAEC(void *a1)
{
  v3 = sub_100065020(&qword_1001BC138, &qword_1001729C0);
  sub_100002F04(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1000FC278(a1, v5);
}

uint64_t sub_1000FCB64()
{
  v1 = sub_100065020(&qword_1001BC138, &qword_1001729C0);
  sub_1000055EC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000FCC08()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC168);
  sub_10000641C(v0, qword_1001BC168);
  return generalLogHandle.getter();
}

uint64_t sub_1000FCC88()
{
  v0 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100065A60(v0, qword_1001BE8E0);
  sub_10000641C(v0, qword_1001BE8E0);
  type metadata accessor for Assertion();
  return UUIDIdentifier.init()();
}

uint64_t sub_1000FCCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000FCD18, 0, 0);
}

uint64_t sub_1000FCD18()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  sub_100003370(v1, v2);
  v4 = *(v3 + 24);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1000FCE60;
  v7 = v0[2];
  v8 = v0[3];

  return v10(0xD00000000000001CLL, 0x8000000100177440, v7, v8, v2, v3);
}

uint64_t sub_1000FCE60()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100003960();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v0;
  *(v2 + 48) = v6;
  *(v2 + 56) = v7;

  return _swift_task_switch(sub_1000FCF5C, 0, 0);
}

void sub_1000FCF5C()
{
  v15 = v0;
  if ((*(v0 + 56) & 1) == 0)
  {
    if ((*(v0 + 48) & 0x8000000000000000) == 0)
    {
      __break(1u);
      return;
    }

    v1 = *(v0 + 24);
    v2 = type metadata accessor for Logger();
    v3 = *(v2 - 8);
    v4 = *(v3 + 64) + 15;
    v5 = swift_task_alloc();
    generalLogHandle.getter();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v13 = *(v0 + 48);
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_100004A3C(v9, v8, &v14);
      *(v10 + 12) = 2048;
      *(v10 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Illegal trial factor %s: %lld", v10, 0x16u);
      sub_100003324(v11);
    }

    (*(v3 + 8))(v5, v2);
  }

  v12 = *(v0 + 8);

  v12(0, 1);
}

uint64_t sub_1000FD15C()
{
  sub_100002BAC();
  v2 = v1;
  v0[2] = v3;
  v0[3] = v1;
  v4 = *(*(type metadata accessor for RequestPriority() - 8) + 64) + 15;
  v0[4] = swift_task_alloc();
  v5 = *(*(type metadata accessor for AssetPolicy() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1000FD260;

  return sub_1000FCCF4(0xD00000000000001BLL, 0x8000000100177400, v2);
}

uint64_t sub_1000FD260()
{
  v1 = *v0;
  v2 = *v0;
  sub_100003960();
  *v3 = v2;
  v4 = *(v1 + 48);
  v5 = *v0;
  sub_100003960();
  *v6 = v5;
  *(v2 + 56) = v7;
  *(v2 + 80) = v8;

  v9 = swift_task_alloc();
  *(v2 + 64) = v9;
  *v9 = v5;
  v9[1] = sub_1000FD3C0;
  v10 = *(v1 + 24);

  return sub_1000FCCF4(0xD00000000000001BLL, 0x8000000100177420, v10);
}

uint64_t sub_1000FD3C0()
{
  sub_100002BAC();
  v1 = *v0;
  sub_100003960();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v0;
  *(v2 + 72) = v6;
  *(v2 + 81) = v7;

  return _swift_task_switch(sub_1000FD4BC, 0, 0);
}

uint64_t sub_1000FD4BC()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  default argument 0 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  default argument 2 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
  v8 = type metadata accessor for Policy();
  sub_100009BFC(v7, 0, 1, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000FD5F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001B8980 != -1)
  {
    swift_once();
  }

  v2 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v3 = sub_10000641C(v2, qword_1001BE8E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000FD6A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000FD748;

  return sub_1000FD15C();
}

uint64_t sub_1000FD748()
{
  sub_100002BAC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100003960();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void *sub_1000FD8B4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(a3(0) - 8);
  v10 = a4(&v12, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v5, a1);
  sub_100007F18();
  if (v10 != v5)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_1000FD99C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC218);
  v1 = sub_10000641C(v0, qword_1001BC218);
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  generalLogHandle.getter();
  return (*(v2 + 32))(v1, v5, v0);
}

uint64_t sub_1000FDA80(int a1)
{
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = 1024;
  bzero((v2 + 32), 0x400uLL);
  if (proc_pidpath(a1, (v2 + 32), 0x400u) >= 1)
  {
    return sub_1000FDB04(v2);
  }

  return 0;
}

uint64_t sub_1000FDB04(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = static String._fromUTF8Repairing(_:)();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FDB8C(uint64_t a1)
{
  *(v2 + 152) = v1;
  *(v2 + 192) = a1;
  return sub_10000396C(a1, v1);
}

uint64_t sub_1000FDBA8()
{
  v3 = *(v1 + 192);
  v4 = *sub_100003370((*(v1 + 152) + 112), *(*(v1 + 152) + 136));
  sub_100021CF4(v3, v1 + 16);
  v5 = *(v1 + 32);
  if (v5 == 1)
  {
    if (qword_1001B8988 != -1)
    {
      sub_100005244();
    }

    v6 = type metadata accessor for Logger();
    sub_100002FD0(v6, qword_1001BC218);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!sub_100002F80(v8))
    {
      goto LABEL_8;
    }

    v9 = sub_100005730();
    sub_10000A300(v9, 1.5047e-36);
    v12 = "Failed to check assertion allowed: failed to get process handle for %d";
    goto LABEL_6;
  }

  if (*(v1 + 16))
  {
    if (v5)
    {
      v16 = *(v1 + 24);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_58;
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    v16 = *(v1 + 40);
LABEL_18:
    *(v1 + 160) = v5;
    *(v1 + 168) = v16;
    *(v1 + 176) = *(*(v1 + 152) + 152);

    sub_1000071A8();

    return _swift_task_switch(v17, v18, v19);
  }

  v17 = MobileGestalt_get_current_device();
  if (!v17)
  {
    __break(1u);
    return _swift_task_switch(v17, v18, v19);
  }

  v20 = v17;
  sub_1000FF14C(v1 + 16);
  v0 = MobileGestalt_copy_releaseType_obj();

  if (!v0)
  {
    goto LABEL_28;
  }

  v21 = 0x6C616E7265746E49;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == 0x6C616E7265746E49 && v24 == 0xE800000000000000)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
LABEL_28:
      if (qword_1001B8988 != -1)
      {
        sub_100005244();
      }

      v26 = type metadata accessor for Logger();
      sub_100002FD0(v26, qword_1001BC218);
      v7 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (!sub_100002F80(v27))
      {
        goto LABEL_8;
      }

      v28 = sub_100005730();
      sub_10000A300(v28, 1.5047e-36);
      v12 = "Not an internal build, assertion from process %d denied";
      goto LABEL_6;
    }
  }

  v29 = sub_1000FDA80(*(v1 + 192));
  if (v30)
  {
    if (sub_10001147C(v29))
    {
      goto LABEL_39;
    }

    if (sub_10000A668())
    {
      goto LABEL_39;
    }

    sub_100002CBC();
    String.lowercased()();
    v31._countAndFlagsBits = sub_100012B00();
    v32 = String.hasSuffix(_:)(v31);

    if (v32 || (v2 = 0xD000000000000010, *(v1 + 72) = v0, *(v1 + 80) = v21, *(v1 + 136) = 0xD000000000000010, *(v1 + 144) = 0x80000001001774A0, sub_1000E17B4(), (sub_100009C98(v1 + 136, &type metadata for String) & 1) != 0) || (sub_100007AC8("AppleInternal/Tests"), (sub_100009C98(v1 + 136, &type metadata for String) & 1) != 0))
    {
LABEL_39:
      if (qword_1001B8988 != -1)
      {
        sub_100005244();
      }

      v33 = type metadata accessor for Logger();
      sub_100002FD0(v33, qword_1001BC218);

      v34 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_100007DC8();
      if (!sub_100019A64())
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    *(v1 + 96) = &type metadata for ModelManager;
    *(v1 + 104) = sub_1000207F8();
    *(v1 + 72) = 0;
    v46 = isFeatureEnabled(_:)();
    sub_100003324((v1 + 72));
    if ((v46 & 1) == 0)
    {
      if (qword_1001B8988 != -1)
      {
        sub_100005244();
      }

      v48 = type metadata accessor for Logger();
      sub_100002FD0(v48, qword_1001BC218);

      v7 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      sub_100007DC8();
      if (!sub_100019A64())
      {

        goto LABEL_9;
      }

      v49 = *(v1 + 192);
      swift_slowAlloc();
      sub_10000359C();
      sub_10000EF08(1.5047e-36);
      v50 = sub_100002CBC();
      sub_100004A3C(v50, v51, v52);
      sub_100005F2C();

      MEMORY[0xD00000000000001A] = v0;
      sub_100003AB0();
      _os_log_impl(v53, v54, v55, v56, v57, 0x12u);
      sub_100002C88();
      goto LABEL_7;
    }

    if (qword_1001B8988 == -1)
    {
LABEL_49:
      v47 = type metadata accessor for Logger();
      sub_100002FD0(v47, qword_1001BC218);

      v34 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100007DC8();
      if (!sub_100019A64())
      {
LABEL_50:

        goto LABEL_51;
      }

LABEL_42:
      sub_100007698();
      sub_10000359C();
      *v2 = 136315138;
      v35 = sub_100002CBC();
      sub_100004A3C(v35, v36, v37);
      sub_100005F2C();

      *(v2 + 4) = v0;
      sub_100003AB0();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      sub_100002C88();
      sub_100002BB8();

LABEL_51:
      v13 = 1;
      goto LABEL_10;
    }

LABEL_58:
    sub_100005244();
    goto LABEL_49;
  }

  if (qword_1001B8988 != -1)
  {
    sub_100005244();
  }

  v43 = type metadata accessor for Logger();
  sub_100002FD0(v43, qword_1001BC218);
  v7 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (!sub_100002F80(v44))
  {
    goto LABEL_8;
  }

  v45 = sub_100005730();
  sub_10000A300(v45, 1.5047e-36);
  v12 = "cannot get executable Path assertion from process %d denied";
LABEL_6:
  sub_100002DA4(&_mh_execute_header, v10, v11, v12);
LABEL_7:
  sub_100002BB8();
LABEL_8:

LABEL_9:
  v13 = 0;
LABEL_10:
  v14 = *(v1 + 8);

  return v14(v13);
}

uint64_t sub_1000FE1C8()
{
  sub_100002BAC();
  v1 = v0[22];
  v2 = v0[19];
  swift_beginAccess();
  v0[23] = *(v1 + 304);

  sub_1000071A8();

  return _swift_task_switch(v3, v4, v5);
}

id sub_1000FE24C()
{
  v56 = v0;
  *(v0 + 72) = *(v0 + 168);
  v1 = *(v0 + 184);
  *(v0 + 80) = *(v0 + 160);
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 72;
  v3 = sub_100009A9C(sub_10001609C, v2, v1);

  if (v3)
  {
    sub_1000FF14C(v0 + 16);
    if (qword_1001B8988 != -1)
    {
      sub_100005244();
    }

    v4 = *(v0 + 160);
    v5 = type metadata accessor for Logger();
    sub_100002FD0(v5, qword_1001BC218);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 160);
      v8 = *(v0 + 168);
      sub_100007698();
      sub_10000359C();
      sub_100003DF0();
      *v2 = 136315138;
      v10 = sub_100004A3C(v8, v9, &v55);

      *(v2 + 4) = v10;
      v11 = "%s allowed to hold assertion";
      v12 = v7;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v6, v12, v11, v2, 0xCu);
      sub_100002C88();
      sub_100002BB8();

LABEL_45:
      v39 = 1;
      goto LABEL_46;
    }

    v28 = *(v0 + 160);
LABEL_44:

    goto LABEL_45;
  }

  v13 = *(v0 + 160);

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = sub_100005F2C();
  sub_1000FF14C(v15);
  v16 = MobileGestalt_copy_releaseType_obj();

  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = 0x6C616E7265746E49;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v2 == 0x6C616E7265746E49 && v19 == 0xE800000000000000)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_13:
      if (qword_1001B8988 != -1)
      {
        sub_100005244();
      }

      v21 = type metadata accessor for Logger();
      sub_100002FD0(v21, qword_1001BC218);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (!sub_100002F80(v23))
      {
        goto LABEL_37;
      }

      v24 = sub_100005730();
      sub_10000A300(v24, 1.5047e-36);
      v27 = "Not an internal build, assertion from process %d denied";
      goto LABEL_35;
    }
  }

  v29 = sub_1000FDA80(*(v0 + 192));
  if (v30)
  {
    if (sub_10001147C(v29))
    {
      goto LABEL_25;
    }

    if (sub_10000A668())
    {
      goto LABEL_25;
    }

    sub_100002CBC();
    LOBYTE(v16) = String.lowercased()()._object;
    v31._countAndFlagsBits = sub_100012B00();
    v2 = String.hasSuffix(_:)(v31);

    if (v2 & 1) != 0 || (v2 = 0xD000000000000010, *(v0 + 72) = v17, *(v0 + 80) = v19, *(v0 + 136) = 0xD000000000000010, *(v0 + 144) = 0x80000001001774A0, LOBYTE(v16) = sub_1000E17B4(), (sub_100009C98(v0 + 136, &type metadata for String)) || (sub_100007AC8("AppleInternal/Tests"), (sub_100009C98(v0 + 136, &type metadata for String)))
    {
LABEL_25:
      if (qword_1001B8988 != -1)
      {
        sub_100005244();
      }

      v32 = type metadata accessor for Logger();
      sub_100002FD0(v32, qword_1001BC218);

      v6 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_100007DC8();
      if (!sub_100019A64())
      {
        goto LABEL_44;
      }

      sub_100007698();
      sub_10000359C();
      sub_100003DF0();
      *v2 = 136315138;
      v33 = sub_100002CBC();
      sub_100004A3C(v33, v34, v35);
      sub_100005F2C();

      *(v2 + 4) = v17;
      v11 = "allowed executablePath %s";
    }

    else
    {
      *(v0 + 96) = &type metadata for ModelManager;
      *(v0 + 104) = sub_1000207F8();
      *(v0 + 72) = 0;
      LOBYTE(v16) = isFeatureEnabled(_:)();
      sub_100003324((v0 + 72));
      if ((v16 & 1) == 0)
      {
        if (qword_1001B8988 != -1)
        {
          sub_100005244();
        }

        v45 = type metadata accessor for Logger();
        sub_100002FD0(v45, qword_1001BC218);

        v22 = Logger.logObject.getter();
        static os_log_type_t.fault.getter();
        sub_100007DC8();
        if (!sub_100019A64())
        {

          goto LABEL_38;
        }

        v46 = *(v0 + 192);
        swift_slowAlloc();
        sub_10000359C();
        sub_100003DF0();
        sub_10000EF08(1.5047e-36);
        v47 = sub_100002CBC();
        sub_100004A3C(v47, v48, v49);
        sub_100005F2C();

        MEMORY[0xD00000000000001A] = v17;
        sub_100003AB0();
        _os_log_impl(v50, v51, v52, v53, v54, 0x12u);
        sub_100002C88();
        goto LABEL_36;
      }

      if (qword_1001B8988 != -1)
      {
        sub_100005244();
      }

      v40 = type metadata accessor for Logger();
      sub_100002FD0(v40, qword_1001BC218);

      v6 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_100007DC8();
      if (!sub_100019A64())
      {
        goto LABEL_44;
      }

      sub_100007698();
      sub_10000359C();
      sub_100003DF0();
      MEMORY[0xD000000000000010] = 136315138;
      v41 = sub_100002CBC();
      sub_100004A3C(v41, v42, v43);
      sub_100005F2C();

      MEMORY[0xD000000000000014] = v17;
      v11 = "Allowlist Blocked: Allowing typically blocked executablePath %s";
    }

    v12 = v16;
    goto LABEL_30;
  }

  if (qword_1001B8988 != -1)
  {
    sub_100005244();
  }

  v36 = type metadata accessor for Logger();
  sub_100002FD0(v36, qword_1001BC218);
  v22 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (!sub_100002F80(v37))
  {
    goto LABEL_37;
  }

  v38 = sub_100005730();
  sub_10000A300(v38, 1.5047e-36);
  v27 = "cannot get executable Path assertion from process %d denied";
LABEL_35:
  sub_100002DA4(&_mh_execute_header, v25, v26, v27);
LABEL_36:
  sub_100002BB8();
LABEL_37:

LABEL_38:
  v39 = 0;
LABEL_46:
  v44 = *(v0 + 8);

  return v44(v39);
}

uint64_t sub_1000FE87C()
{
  sub_100002BAC();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for Assertion.DaemonRep();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  sub_1000071A8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000FE938()
{
  sub_100002BAC();
  v1 = *(v0 + 24);
  v2 = AuditToken.processIdentifier.getter();
  *(v0 + 88) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1000FE9D8;
  v4 = *(v0 + 32);

  return sub_1000FDB8C(v2);
}

uint64_t sub_1000FE9D8()
{
  sub_100002BAC();
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 32);
  v8 = *v0;
  *(*v0 + 92) = v3;

  sub_1000071A8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000FEAE8()
{
  if (*(v0 + 92) == 1)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 56);
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    Assertion.DaemonRep.receivedFromPID(_:)();
    v5 = *(v3 + 152);
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_1000FECE8;
    v7 = *(v0 + 56);

    return sub_100073318();
  }

  else
  {
    if (qword_1001B8988 != -1)
    {
      sub_100005244();
    }

    v9 = type metadata accessor for Logger();
    sub_100002FD0(v9, qword_1001BC218);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (sub_100002F80(v11))
    {
      v12 = *(v0 + 88);
      v13 = swift_slowAlloc();
      sub_10000A300(v13, 1.5047e-36);
      sub_100002DA4(&_mh_execute_header, v14, v15, "Process %d denied to hold assertion");
      sub_100002BB8();
    }

    v16 = type metadata accessor for ModelManagerError();
    sub_1000FF0F4();
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, enum case for ModelManagerError.deniedAssertionBySystem(_:), v16);
    swift_willThrow();
    v18 = *(v0 + 56);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1000FECE8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1000FEE90;
  }

  else
  {
    v6 = sub_1000FEE14;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000FEE14()
{
  sub_100002BAC();
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000FEE90()
{
  sub_100002BAC();
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000FEF20(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 152);
  *(v1 + 24) = v2;
  return sub_10000396C(a1, v2);
}

uint64_t sub_1000FEF3C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_10014053C(*(v1 + 16), 0);
    v4 = *(*(type metadata accessor for Assertion.DaemonRep() - 8) + 80);
    sub_100149788();
    v6 = v5;

    sub_100007F18();
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v7 = *(v0 + 8);

  return v7(v3);
}

uint64_t sub_1000FF074()
{
  sub_100003324((v0 + 112));
  v1 = *(v0 + 152);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000FF0A4()
{
  sub_1000FF074();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1000FF0F4()
{
  result = qword_1001B8F50;
  if (!qword_1001B8F50)
  {
    type metadata accessor for ModelManagerError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8F50);
  }

  return result;
}

uint64_t sub_1000FF14C(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B9CF8, &qword_100172AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FF1B4()
{
  sub_100012B14();
  v2 = v1;
  v3 = sub_100065020(&qword_1001B9420, &qword_100170118);
  v4 = sub_100002F04(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000A4B0();
  v7 = type metadata accessor for Policy();
  v8 = sub_100002BDC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_100005D38();
  if (sub_10000C6C0(v11, v12, v7) == 1)
  {
    sub_10000ED30(v2, &qword_1001B9420, &qword_100170118);
    v13 = sub_10000EF1C();
    sub_10014D110(v13, v14, v15);

    v16 = sub_10000A920();
    return sub_10000ED30(v16, v17, v18);
  }

  else
  {
    v20 = sub_1000082A0();
    v21(v20);
    v22 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_100012854();
    sub_100117760(v23, v24, v25, v26);

    *v0 = v27;
  }

  return result;
}

uint64_t sub_1000FF310()
{
  sub_100012B14();
  if (*(v3 + 24))
  {
    sub_100004A04(v3, v16);
    v4 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v0;
    sub_1001179FC(v16, v2, v1);

    *v0 = v15;
  }

  else
  {
    sub_100006570();
    sub_10000ED30(v6, v7, v8);
    v9 = sub_10000EF1C();
    sub_10014D138(v9, v10, v11);

    sub_100006570();
    return sub_10000ED30(v12, v13, v14);
  }

  return result;
}

uint64_t sub_1000FF3CC()
{
  sub_100012B14();
  v2 = v1;
  v3 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v4 = sub_100002F04(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000A4B0();
  v7 = type metadata accessor for CustomAssetConfiguration();
  v8 = sub_100002BDC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_100005D38();
  if (sub_10000C6C0(v11, v12, v7) == 1)
  {
    sub_10000ED30(v2, &qword_1001B9D00, &qword_100171E00);
    v13 = sub_10000EF1C();
    sub_10014D208(v13, v14, v15);

    v16 = sub_10000A920();
    return sub_10000ED30(v16, v17, v18);
  }

  else
  {
    v20 = sub_1000082A0();
    v21(v20);
    v22 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_100012854();
    sub_100117D10(v23, v24, v25, v26);

    *v0 = v27;
  }

  return result;
}

uint64_t sub_1000FF528(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100004A04(a1, v11);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_100117FB8(v11, a2);
    *v2 = v10;
    v5 = type metadata accessor for UUID();
    sub_1000055EC(v5);
    return (*(v6 + 8))(a2);
  }

  else
  {
    sub_10014D450(v11);
    v8 = type metadata accessor for UUID();
    sub_1000055EC(v8);
    result = (*(v9 + 8))(a2);
    if (v11[3])
    {
      return sub_100003324(v11);
    }
  }

  return result;
}

uint64_t sub_1000FF614()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC310);
  sub_10000641C(v0, qword_1001BC310);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

double sub_1000FF684()
{
  sub_100065020(&qword_1001BC458, &qword_100172B98);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_10016FF40;
  *(v0 + 32) = &type metadata for AssetTransitionDelayTrial;
  *(v0 + 40) = &off_1001B1AF8;
  qword_1001BE8F8 = v0;
  return result;
}

uint64_t sub_1000FF700()
{
  sub_100001ED0();
  v1 = *(v0[2] + OBJC_IVAR____TtC13modelmanagerd12TrialManager_trials);
  v0[3] = v1;
  v2 = *(v1 + 16);
  v0[4] = v2;
  if (v2)
  {
    v0[5] = 0;
    sub_100007944(v1);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v4 = sub_1000114BC(v3);

    return sub_1000FFFAC(v4, v5);
  }

  else
  {
    sub_100001F00();

    return v7();
  }
}

uint64_t sub_1000FF7CC()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 64);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000FF8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  v16 = v14[6];
  v15 = v14[7];
  v17 = v14[2];
  v18 = v17[18];
  sub_100003370(v17 + 14, v17[17]);
  (*(v15 + 16))(v16, v15);
  v14[9] = v19;
  v20 = swift_allocObject();
  v14[10] = v20;
  v20[2] = v17;
  v20[3] = v16;
  v20[4] = v15;
  v21 = *(v18 + 32);

  v34 = v21 + *v21;
  v22 = v21[1];
  v23 = swift_task_alloc();
  v14[11] = v23;
  *v23 = v14;
  v23[1] = sub_1000FFA70;
  sub_100003540();

  return v30(v24, v25, v26, v27, v28, v29, v30, v31, a9, v34, v18 + 32, a12, a13, a14);
}

uint64_t sub_1000FFA70()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[2];
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  v8 = sub_100003DE0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000FFBA8()
{
  sub_100001ED0();
  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {
    sub_100001F00();

    return v2();
  }

  else
  {
    v0[5] = v1;
    sub_100007944(v0[3] + 16 * v1);
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v5 = sub_1000114BC();

    return sub_1000FFFAC(v5, v6);
  }
}

uint64_t sub_1000FFC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;

  return _swift_task_switch(sub_1000FFD00, 0, 0);
}

uint64_t sub_1000FFD00()
{
  sub_100002BAC();
  type metadata accessor for _OSActivity();
  v0[13] = swift_initStackObject();
  v0[14] = sub_10001B160("Trial Update", 12, 2);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1000FFDEC;
  v2 = v0[12];
  v3 = v0[10];
  v4 = sub_1000031B8(v0[11]);

  return sub_1000FFFAC(v4, v5);
}

uint64_t sub_1000FFDEC()
{
  sub_100002BAC();
  v1 = *(*v0 + 120);
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;

  return _swift_task_switch(sub_1000FFF08, 0, 0);
}

uint64_t sub_1000FFF08()
{
  sub_100002BAC();
  v1 = *(v0 + 112);
  sub_100004B50();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

uint64_t sub_1000FFFAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100002C10();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000FFFD8()
{
  sub_100001ED0();
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = *(v0 + 16);
  v3 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = sub_100065020(&qword_1001BC440, &qword_100172B78);
  *v4 = v0;
  v4[1] = sub_1000C1BF8;
  v6 = *(v0 + 32);

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v5, 0x726E456B63656863, 0xEF746E656D6C6C6FLL);
}

uint64_t sub_100100130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v6 = sub_100065020(&qword_1001BC448, &qword_100172B80);
  v4[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = *(*(sub_100065020(&qword_1001B9420, &qword_100170118) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v9 = type metadata accessor for Policy();
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v11 = *(v10 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001002A8, a2, 0);
}

uint64_t sub_1001002A8()
{
  sub_10000636C();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v3[18];
  sub_100003370(v3 + 14, v3[17]);
  v5 = *(v1 + 16);
  v6 = sub_100001F70();
  v7(v6);
  v0[19] = v8;
  v9 = *(v4 + 8);
  sub_100004B94();
  v16 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_100100400;
  v14 = sub_100001F70();

  return v16(v14);
}

uint64_t sub_100100400(char a1)
{
  sub_100001EF4();
  v4 = v3;
  sub_100004B40();
  *v5 = v4;
  v7 = *(v6 + 160);
  v8 = *(v6 + 152);
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;

  if (a1)
  {
    v11 = v4[5];
    v12 = *(v4[7] + 32);
    sub_100004B94();
    v25 = (v13 + *v13);
    v15 = *(v14 + 4);
    v16 = swift_task_alloc();
    v4[21] = v16;
    *v16 = v9;
    v16[1] = sub_100100638;
    v17 = v4[14];
    v18 = v4[6];
    v19 = v4[7];

    return v25(v17, v11 + 112);
  }

  else
  {
    v21 = swift_task_alloc();
    v4[25] = v21;
    *v21 = v9;
    v21[1] = sub_100101110;
    v23 = v4[6];
    v22 = v4[7];
    v24 = v4[5];
    sub_1000031B8(v23);

    return sub_100102044();
  }
}

uint64_t sub_100100638()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 168);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100100730()
{
  v2 = v0[14];
  v1 = v0[15];
  if (sub_10000C6C0(v2, 1, v1) == 1)
  {
    sub_10000ED30(v2, &qword_1001B9420, &qword_100170118);
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v4 = sub_100100C18;
LABEL_14:
    v3[1] = v4;
    v55 = v0[7];
    v56 = v0[5];
    sub_1000031B8(v0[6]);

    return sub_100102044();
  }

  v5 = v0[13];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v69 = *(v0[16] + 32);
  v69(v0[18], v2, v1);
  v9 = *(v6 + 8);
  v10 = (v9)(v7, v6);
  v11 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  sub_10000BF7C();
  v12 = *(v8 + v11);

  sub_100006570();
  sub_100072B60(v13, v14, v15, v16);

  sub_1000186C8();
  sub_10000ED30(v5, &qword_1001B9420, &qword_100170118);
  if (v10 != 1)
  {
    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[11];
    v25 = v0[12];
    v26 = v0[9];
    v65 = v26;
    v66 = v0[18];
    v67 = v0[8];
    v27 = v0[6];
    v28 = v0[7];
    v29 = v9();
    v31 = v30;
    v32 = *(v8 + v11);

    sub_100072B60(v29, v31, v32, v25);

    (*(v22 + 16))(v24, v66, v23);
    sub_100009BFC(v24, 0, 1, v23);
    v33 = *(v67 + 48);
    sub_100102B38(v25, v65);
    sub_100102B38(v24, v65 + v33);
    v34 = sub_10000C6C0(v65, 1, v23);
    v35 = v0[15];
    if (v34 == 1)
    {
      v36 = v0[11];
      v37 = v0[12];
      sub_100006570();
      sub_10000ED30(v38, v39, v40);
      sub_100006570();
      sub_10000ED30(v41, v42, v43);
      if (sub_10000C6C0(v65 + v33, 1, v35) == 1)
      {
        sub_10000ED30(v0[9], &qword_1001B9420, &qword_100170118);
        goto LABEL_4;
      }
    }

    else
    {
      sub_100102B38(v0[9], v0[10]);
      if (sub_10000C6C0(v65 + v33, 1, v35) != 1)
      {
        v58 = v0[16];
        v57 = v0[17];
        v59 = v0[15];
        v61 = v0[11];
        v60 = v0[12];
        v62 = v0[10];
        v68 = v0[9];
        v69(v57, v65 + v33, v59);
        sub_100102BA8(&qword_1001BC450, &type metadata accessor for Policy);
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        v64 = *(v58 + 8);
        v64(v57, v59);
        sub_10000ED30(v61, &qword_1001B9420, &qword_100170118);
        sub_10000ED30(v60, &qword_1001B9420, &qword_100170118);
        v64(v62, v59);
        sub_10000ED30(v68, &qword_1001B9420, &qword_100170118);
        if (v63)
        {
          goto LABEL_4;
        }

LABEL_13:
        v3 = swift_task_alloc();
        v0[23] = v3;
        *v3 = v0;
        v4 = sub_100100DF0;
        goto LABEL_14;
      }

      v44 = v0[15];
      v45 = v0[16];
      v46 = v0[11];
      v47 = v0[12];
      v48 = v0[10];
      sub_100006570();
      sub_10000ED30(v49, v50, v51);
      sub_100006570();
      sub_10000ED30(v52, v53, v54);
      (*(v45 + 8))(v48, v44);
    }

    sub_10000ED30(v0[9], &qword_1001BC448, &qword_100172B80);
    goto LABEL_13;
  }

LABEL_4:
  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  sub_100008480(v17);
  v18 = v0[18];
  v19 = v0[7];
  v20 = v0[5];
  sub_1000031B8(v0[6]);

  return sub_1001012E8();
}

uint64_t sub_100100C18()
{
  sub_10000636C();
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = v1[18];
  v6 = v1[17];
  v7 = v1[14];
  v8 = v1[13];
  v9 = v1[12];
  v10 = v1[11];
  v11 = v1[10];
  v12 = v1[9];

  sub_1000034B4();

  return v13();
}

uint64_t sub_100100DF0()
{
  sub_100001ED0();
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;
  v4 = v1[23];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[24] = v6;
  *v6 = v5;
  sub_100008480(v6);
  v7 = v1[18];
  v8 = v1[7];
  v9 = v1[6];
  v10 = v1[5];
  sub_1000031B8(v9);

  return sub_1001012E8();
}

uint64_t sub_100100F48()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 192);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100101040()
{
  sub_10000636C();
  (*(v0[16] + 8))(v0[18], v0[15]);
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];

  sub_100001F00();

  return v9();
}

uint64_t sub_100101110()
{
  sub_10000636C();
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = v1[18];
  v6 = v1[17];
  v7 = v1[14];
  v8 = v1[13];
  v9 = v1[12];
  v10 = v1[11];
  v11 = v1[10];
  v12 = v1[9];

  sub_1000034B4();

  return v13();
}

uint64_t sub_1001012E8()
{
  sub_100002BAC();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100002F04(v5);
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for Assertion.DaemonRep();
  v1[16] = v8;
  v9 = *(v8 - 8);
  sub_100004B94();
  v1[17] = v10;
  v12 = *(v11 + 64) + 15;
  v1[18] = swift_task_alloc();
  v13 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F04(v13);
  v15 = *(v14 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v16 = sub_100002C10();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100101410()
{
  v41 = v0;
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  v4 = *(v0[12] + 8);
  v0[21] = v4;
  v5 = v4();
  v6 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  v0[22] = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  sub_10000BF7C();
  v7 = *(v2 + v6);

  v8 = sub_100001F70();
  sub_100072B60(v8, v9, v7, v10);

  v11 = type metadata accessor for Policy();
  v0[23] = v11;
  sub_1000186C8();
  sub_10000ED30(v1, &qword_1001B9420, &qword_100170118);
  if (v5 == 1)
  {
    if (qword_1001B8990 != -1)
    {
      sub_1000030A4();
    }

    v12 = v4;
    v13 = type metadata accessor for Logger();
    v0[24] = sub_10000641C(v13, qword_1001BC310);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v39 = v4;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[11];
      v37 = v0[12];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 136315138;
      v19 = (v12)(v16, v37);
      v21 = sub_100004A3C(v19, v20, &v40);

      *(v17 + 4) = v21;
      sub_100013710(&_mh_execute_header, v22, v23, "Enabling Trial %s");
      sub_100003324(v18);
      sub_100002BB8();
      sub_100002BB8();
    }

    v24 = v0[19];
    v26 = v0[13];
    v25 = v0[14];
    v27 = v0[11];
    v38 = v0[12];
    v28 = sub_100007CC8();
    (v39)(v28);
    v36 = *(*(v11 - 8) + 16);
    v36(v24, v26, v11);
    sub_100012550();
    sub_100004B50();
    sub_1000FF1B4();
    swift_endAccess();
    v29 = sub_100003370((v25 + 152), *(v25 + 176));
    v30 = sub_100007CC8();
    (v39)(v30, v38);
    v0[25] = v31;
    v36(v24, v26, v11);
    sub_100012550();
    v32 = *v29;
    v33 = swift_task_alloc();
    v0[26] = v33;
    *v33 = v0;
    sub_100018A38(v33);

    return sub_100072F44();
  }

  else
  {
    sub_100013DAC();

    sub_100001F00();

    return v35();
  }
}

uint64_t sub_1001017A0()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[26];
  v3 = v1[25];
  v4 = v1[19];
  v5 = v1[14];
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  sub_10000ED30(v4, &qword_1001B9420, &qword_100170118);
  v8 = sub_100003DE0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1001018E8()
{
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v6 = v0[12];
  v7 = sub_100005E98();
  v1(v7);
  v8 = sub_100005E98();
  v1(v8);
  v9 = *(v6 + 24);
  v10 = sub_100005E98();
  v11(v10);
  Assertion.DaemonRep.init(policy:description:id:)();
  v12 = *sub_100003370((v4 + 152), *(v4 + 176));
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_100101A24;
  sub_1000031B8(v0[18]);

  return sub_100073318();
}

uint64_t sub_100101A24()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 216);
  *v4 = *v1;
  *(v3 + 224) = v0;

  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_100101BD0;
  }

  else
  {
    v7 = sub_100101B44;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100101B44()
{
  sub_100001ED0();
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_100013DAC();

  sub_100001F00();

  return v1();
}

uint64_t sub_100101BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[28];
  v26 = v22[24];
  (*(v22[17] + 8))(v22[18], v22[16]);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v22[28];
    v51 = v22[21];
    v30 = v22[11];
    v31 = v22[12];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    a11 = v34;
    *v32 = 136315394;
    v35 = v51(v30, v31);
    v37 = sub_100004A3C(v35, v36, &a11);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2112;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v38;
    *v33 = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to acquire %s assertion: %@", v32, 0x16u);
    sub_10000ED30(v33, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BB8();
    sub_100003324(v34);
    sub_100002BB8();
    sub_100002BB8();
  }

  v39 = v22[23];
  v40 = v22[21];
  v41 = v22[19];
  v42 = v22[11];
  v43 = v22[12] + 8;
  v44 = sub_100003370((v22[14] + 152), *(v22[14] + 176));
  v45 = sub_100005E98();
  v40(v45);
  v22[29] = v46;
  sub_100007AE0();
  v47 = *v44;
  v48 = swift_task_alloc();
  v22[30] = v48;
  *v48 = v22;
  sub_100018A38(v48);
  sub_100003540();

  return sub_100072F44();
}

uint64_t sub_100101E08()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[30];
  v3 = v1[29];
  v4 = v1[19];
  v5 = v1[14];
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  sub_10000ED30(v4, &qword_1001B9420, &qword_100170118);
  v8 = sub_100003DE0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100101F50()
{
  sub_10000636C();
  v1 = *(v0 + 224);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  (*(v0 + 168))();
  sub_100009BFC(v4, 1, 1, v2);
  sub_100004B50();
  sub_10000A920();
  sub_1000FF1B4();
  swift_endAccess();

  sub_100013DAC();

  sub_100001F00();

  return v8();
}

uint64_t sub_100102044()
{
  sub_100002BAC();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v4 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v1[11] = v4;
  v5 = *(v4 - 8);
  sub_100004B94();
  v1[12] = v6;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v9 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F04(v9);
  v11 = *(v10 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v12 = sub_100002C10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100102144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[15];
  v26 = v22[10];
  v27 = v22[8];
  v28 = *(v22[9] + 8);
  v22[16] = v28;
  v29 = v28();
  v30 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  sub_10000BF7C();
  v31 = *(v26 + v30);

  v32 = sub_100001F70();
  sub_100072B60(v32, v33, v31, v34);

  v22[17] = type metadata accessor for Policy();
  sub_1000186C8();
  sub_10000ED30(v25, &qword_1001B9420, &qword_100170118);
  if (v29 == 1)
  {
    v36 = v22[14];
    v35 = v22[15];
    v37 = v22[13];

    sub_100001F00();
    sub_100003540();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1001B8990 != -1)
    {
      sub_1000030A4();
    }

    v47 = type metadata accessor for Logger();
    sub_10000641C(v47, qword_1001BC310);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v22[8];
      v51 = v22[9];
      v52 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      a11 = v70;
      *v52 = 136315138;
      v53 = (v28)(v50, v51);
      v55 = sub_100004A3C(v53, v54, &a11);

      *(v52 + 4) = v55;
      sub_100013710(&_mh_execute_header, v56, v57, "Disabling Trial %s");
      sub_100003324(v70);
      sub_100002BB8();
      sub_100002BB8();
    }

    v58 = v22[14];
    v71 = v22[13];
    v60 = v22[9];
    v59 = v22[10];
    v61 = v22[8];
    v62 = sub_100007CC8();
    (v28)(v62, v60);
    sub_100007AE0();
    sub_100004B50();
    sub_1000FF1B4();
    swift_endAccess();
    v63 = sub_100003370((v59 + 152), *(v59 + 176));
    v64 = *(v60 + 24);
    v65 = sub_100007CC8();
    v66(v65, v60);
    v67 = *v63;
    v68 = swift_task_alloc();
    v22[18] = v68;
    *v68 = v22;
    v68[1] = sub_10010244C;
    sub_1000031B8(v22[13]);
    sub_100003540();

    return sub_100073748();
  }
}

uint64_t sub_10010244C()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[18];
  v3 = v1[13];
  v4 = v1[12];
  v5 = v1[11];
  v6 = v1[10];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v4 + 8);
  v10 = sub_100001F70();
  v11(v10);
  v12 = sub_100003DE0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10010259C()
{
  sub_10000636C();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[8];
  v5 = v0[9] + 8;
  v6 = sub_100003370((v0[10] + 152), *(v0[10] + 176));
  v7 = sub_100005E98();
  v2(v7);
  v0[19] = v8;
  sub_100007AE0();
  v9 = *v6;
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_100102690;
  v11 = v0[14];

  return sub_100072F44();
}

uint64_t sub_100102690()
{
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;
  v4 = v1[20];
  v5 = v1[19];
  v6 = v1[14];
  v7 = *v0;
  *v3 = *v0;

  sub_10000ED30(v6, &qword_1001B9420, &qword_100170118);
  v8 = v1[15];
  v9 = v2[14];
  v10 = v1[13];

  v11 = v7[1];

  return v11();
}

uint64_t sub_100102814()
{
  sub_100003324((v0 + 112));
  sub_100003324((v0 + 152));
  v1 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_workQueue;
  v2 = sub_100065020(&qword_1001BC440, &qword_100172B78);
  sub_1000055EC(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13modelmanagerd12TrialManager_trials);

  v5 = *(v0 + OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001028AC()
{
  sub_100102814();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TrialManager()
{
  result = qword_1001BC350;
  if (!qword_1001BC350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010292C()
{
  sub_1001029E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001029E4()
{
  if (!qword_1001BC360)
  {
    type metadata accessor for TrialManager();
    sub_100102BA8(&qword_1001B8BE8, type metadata accessor for TrialManager);
    v0 = type metadata accessor for WorkQueue();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BC360);
    }
  }
}

uint64_t sub_100102A78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10006F558;
  sub_100006570();

  return sub_100100130(v6, v7, v8, v4);
}

uint64_t sub_100102B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B9420, &qword_100170118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100102BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100102BF0()
{
  sub_100001ED0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10006F558;

  return sub_1000FFC6C(v2, v3, v4);
}

__n128 sub_100102C94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100102CA8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100102CE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100102D48(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogAsset(0);
  v3 = sub_100002F44(v2);
  v33 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100008624();
  v32 = v7;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002045C(0, v8, 0);
  result = sub_10001E724(a1);
  v12 = result;
  v13 = 0;
  v36 = a1 + 56;
  v29 = a1 + 64;
  v30 = v8;
  v31 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v12 < 1 << *(a1 + 32))
    {
      v14 = v12 >> 6;
      if ((*(v36 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v35 = v11;
      v34 = v10;
      sub_1001076CC(*(a1 + 48) + *(v33 + 72) * v12, v32, type metadata accessor for ModelCatalogAsset);
      v16 = *v32;
      v15 = v32[1];

      result = sub_10010772C(v32, type metadata accessor for ModelCatalogAsset);
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10002045C((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v16;
      v19[5] = v15;
      if (v35)
      {
        goto LABEL_29;
      }

      a1 = v31;
      v20 = 1 << *(v31 + 32);
      if (v12 >= v20)
      {
        goto LABEL_26;
      }

      v21 = *(v36 + 8 * v14);
      if ((v21 & (1 << v12)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v31 + 36) != v34)
      {
        goto LABEL_28;
      }

      v22 = v21 & (-2 << (v12 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v23 = v30;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v23 = v30;
        v26 = (v29 + 8 * v14);
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_100016E94(v12, v34, 0);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v12, v34, 0);
      }

LABEL_19:
      if (++v13 == v23)
      {
        return _swiftEmptyArrayStorage;
      }

      v11 = 0;
      v10 = *(v31 + 36);
      v12 = v20;
      if (v20 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void *sub_100103028(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = type metadata accessor for StateDump.AssetState();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_33:

    return _swiftEmptyArrayStorage;
  }

  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_3:
  v53 = _swiftEmptyArrayStorage;
  sub_100070CF8();
  v10 = v53;
  result = sub_10003DDD4(a1);
  v49 = result;
  v50 = v16;
  LOBYTE(v51) = v17 & 1;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v41 = v9;
    v42 = v45 + 32;
    if (a1 < 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = a1 + 56;
    v40 = v19;
    v37 = v2;
    v38 = a1 + 64;
    v47 = a1;
    while (!__OFADD__(v18++, 1))
    {
      v21 = v49;
      v22 = v50;
      v23 = v51;
      sub_10003DE34(v49, v50, v51, a1, v12, v13, v14, v15, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48[0], v48[1], v48[2], v48[3], v49, v50, v51, v52, v53, v54, v55);

      sub_100105AD0();
      v53 = v10;
      v24 = v10[2];
      if (v24 >= v10[3] >> 1)
      {
        sub_100070CF8();
        v10 = v53;
      }

      v10[2] = v24 + 1;
      result = (*(v45 + 32))(v10 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v24, v8, v44);
      if (v43)
      {
        a1 = v47;
        if (!v23)
        {
          goto LABEL_40;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v29 = v41;
        sub_100065020(&qword_1001BB460, &qword_100171E78);
        v30 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v30(v48, 0);
      }

      else
      {
        a1 = v47;
        if (v23)
        {
          goto LABEL_41;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v25 = 1 << *(v47 + 32);
        if (v21 >= v25)
        {
          goto LABEL_36;
        }

        v26 = v21 >> 6;
        v27 = *(v39 + 8 * (v21 >> 6));
        if (((v27 >> v21) & 1) == 0)
        {
          goto LABEL_37;
        }

        if (*(v47 + 36) != v22)
        {
          goto LABEL_38;
        }

        v28 = v27 & (-2 << (v21 & 0x3F));
        if (v28)
        {
          v25 = __clz(__rbit64(v28)) | v21 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v26 << 6;
          v32 = v26 + 1;
          v33 = (v38 + 8 * v26);
          while (v32 < (v25 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_100016E94(v21, v22, 0);
              v25 = __clz(__rbit64(v34)) + v31;
              goto LABEL_28;
            }
          }

          result = sub_100016E94(v21, v22, 0);
LABEL_28:
          a1 = v47;
        }

        v36 = *(a1 + 36);
        v49 = v25;
        v50 = v36;
        LOBYTE(v51) = 0;
        v29 = v41;
      }

      if (v18 == v29)
      {
        sub_100016E94(v49, v50, v51);

        return v10;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void *sub_1001033F4(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = type metadata accessor for StateDump.SessionState();
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_33:

    return _swiftEmptyArrayStorage;
  }

  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_3:
  v53 = _swiftEmptyArrayStorage;
  sub_100070D50();
  v10 = v53;
  result = sub_10003DDD4(a1);
  v49 = result;
  v50 = v16;
  LOBYTE(v51) = v17 & 1;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v41 = v9;
    v42 = v45 + 32;
    if (a1 < 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = a1 + 56;
    v40 = v19;
    v37 = v2;
    v38 = a1 + 64;
    v47 = a1;
    while (!__OFADD__(v18++, 1))
    {
      v21 = v49;
      v22 = v50;
      v23 = v51;
      sub_100149DB4(v49, v50, v51, a1, v12, v13, v14, v15, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48[0], v48[1], v48[2], v48[3], v49, v50, v51, v52, v53, v54, v55);

      sub_100105FD8();
      v53 = v10;
      v24 = v10[2];
      if (v24 >= v10[3] >> 1)
      {
        sub_100070D50();
        v10 = v53;
      }

      v10[2] = v24 + 1;
      result = (*(v45 + 32))(v10 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v24, v8, v44);
      if (v43)
      {
        a1 = v47;
        if (!v23)
        {
          goto LABEL_40;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v29 = v41;
        sub_100065020(&qword_1001BC4A0, &qword_100172C68);
        v30 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v30(v48, 0);
      }

      else
      {
        a1 = v47;
        if (v23)
        {
          goto LABEL_41;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v25 = 1 << *(v47 + 32);
        if (v21 >= v25)
        {
          goto LABEL_36;
        }

        v26 = v21 >> 6;
        v27 = *(v39 + 8 * (v21 >> 6));
        if (((v27 >> v21) & 1) == 0)
        {
          goto LABEL_37;
        }

        if (*(v47 + 36) != v22)
        {
          goto LABEL_38;
        }

        v28 = v27 & (-2 << (v21 & 0x3F));
        if (v28)
        {
          v25 = __clz(__rbit64(v28)) | v21 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v26 << 6;
          v32 = v26 + 1;
          v33 = (v38 + 8 * v26);
          while (v32 < (v25 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_100016E94(v21, v22, 0);
              v25 = __clz(__rbit64(v34)) + v31;
              goto LABEL_28;
            }
          }

          result = sub_100016E94(v21, v22, 0);
LABEL_28:
          a1 = v47;
        }

        v36 = *(a1 + 36);
        v49 = v25;
        v50 = v36;
        LOBYTE(v51) = 0;
        v29 = v41;
      }

      if (v18 == v29)
      {
        sub_100016E94(v49, v50, v51);

        return v10;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void *sub_1001037C0(uint64_t a1)
{
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v56 = sub_100002BDC(v3);
  v57 = v4;
  v6 = *(v5 + 64);
  sub_100004B1C();
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v55 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v64 = _swiftEmptyArrayStorage;
    sub_100070A50();
    v58 = v64;
    result = sub_10003DDD4(a1);
    v60 = result;
    v61 = v12;
    LOBYTE(v62) = v13 & 1;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v53 = v10;
      v54 = v57 + 32;
      if (a1 < 0)
      {
        v15 = a1;
      }

      else
      {
        v15 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v51 = a1 + 56;
      v52 = v15;
      v49 = v1;
      v50 = a1 + 64;
      while (!__OFADD__(v14++, 1))
      {
        v17 = v60;
        v18 = v61;
        v19 = v62;
        v20 = sub_100004CDC();
        sub_100149DF4(v20, v21, v19, a1, v22, v23, v24, v25, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59[0], v59[1], v59[2], v59[3], v60, v61, v62, v63, v64, v65, v66);
        RequestMetadata.id.getter();

        v26 = v58;
        v64 = v58;
        v27 = v58[2];
        if (v27 >= v58[3] >> 1)
        {
          sub_100070A50();
          v26 = v64;
        }

        v26[2] = v27 + 1;
        v28 = *(v57 + 80);
        sub_10000657C();
        v58 = v29;
        result = (*(v31 + 32))(v29 + v30 + *(v31 + 72) * v27, v9);
        if (v55)
        {
          if (!v19)
          {
            goto LABEL_39;
          }

          sub_100004CDC();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v36 = v53;
          sub_100065020(&qword_1001BC480, &qword_100172C58);
          v37 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v37(v59, 0);
        }

        else
        {
          if (v19)
          {
            goto LABEL_40;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          v32 = 1 << *(a1 + 32);
          if (v17 >= v32)
          {
            goto LABEL_35;
          }

          v33 = v17 >> 6;
          v34 = *(v51 + 8 * (v17 >> 6));
          if (((v34 >> v17) & 1) == 0)
          {
            goto LABEL_36;
          }

          if (*(a1 + 36) != v18)
          {
            goto LABEL_37;
          }

          v35 = v34 & (-2 << (v17 & 0x3F));
          if (v35)
          {
            v32 = __clz(__rbit64(v35)) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v38 = v33 << 6;
            v39 = v33 + 1;
            v40 = (v50 + 8 * v33);
            while (v39 < (v32 + 63) >> 6)
            {
              v42 = *v40++;
              v41 = v42;
              v38 += 64;
              ++v39;
              if (v42)
              {
                v43 = sub_100004CDC();
                result = sub_100016E94(v43, v44, 0);
                v32 = __clz(__rbit64(v41)) + v38;
                goto LABEL_30;
              }
            }

            v45 = sub_100004CDC();
            result = sub_100016E94(v45, v46, 0);
          }

LABEL_30:
          v47 = *(a1 + 36);
          v60 = v32;
          v61 = v47;
          LOBYTE(v62) = 0;
          v36 = v53;
        }

        if (v14 == v36)
        {
          sub_100016E94(v60, v61, v62);
          return v58;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_100103B5C(uint64_t a1)
{
  v52 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v3 = *(v52 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v52);
  v51 = &v40 - v5;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v40 = v1;
  v58 = _swiftEmptyArrayStorage;
  sub_100070A90();
  v7 = v58;
  v8 = sub_10001E724(a1);
  v10 = v9;
  v11 = a1 + 56;
  v49 = v3;
  v46 = v3 + 8;
  v47 = v3 + 16;
  result = type metadata accessor for UUID();
  v13 = 0;
  v45 = result;
  v14 = *(result - 8);
  v50 = *(v14 + 64);
  v43 = v14 + 32;
  v44 = v14;
  v41 = a1 + 64;
  v42 = v6;
  v53 = a1;
  v48 = a1 + 56;
  while (1)
  {
    result = __chkstk_darwin(result);
    v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8 < 0 || v8 >= v16 << *(a1 + 32))
    {
      break;
    }

    v54 = v13;
    v20 = v8 >> 6;
    v21 = v16 << v8;
    if ((*(v11 + 8 * (v8 >> 6)) & (v16 << v8)) == 0)
    {
      goto LABEL_25;
    }

    if (*(a1 + 36) != v15)
    {
      goto LABEL_26;
    }

    v55 = v15;
    v56 = v17;
    v57 = v10;
    v22 = v7;
    v23 = v49;
    v24 = *(a1 + 48) + *(v49 + 72) * v8;
    v26 = v51;
    v25 = v52;
    (*(v49 + 16))(v51, v24, v52);
    swift_getKeyPath();
    swift_getAtKeyPath();

    v27 = *(v23 + 8);
    v7 = v22;
    v27(v26, v25);
    v58 = v22;
    v28 = v22[2];
    if (v28 >= v22[3] >> 1)
    {
      sub_100070A90();
      v7 = v58;
    }

    v7[2] = v28 + 1;
    result = (*(v44 + 32))(v7 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v28, v19, v45);
    v11 = v48;
    if (v57)
    {
      goto LABEL_30;
    }

    a1 = v53;
    v29 = 1 << *(v53 + 32);
    if (v8 >= v29)
    {
      goto LABEL_27;
    }

    v30 = *(v48 + 8 * v20);
    if ((v30 & v21) == 0)
    {
      goto LABEL_28;
    }

    if (*(v53 + 36) != v55)
    {
      goto LABEL_29;
    }

    v31 = v30 & (-2 << (v8 & 0x3F));
    if (v31)
    {
      v29 = __clz(__rbit64(v31)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v32 = v42;
      v33 = v54;
    }

    else
    {
      v34 = v20 << 6;
      v35 = v20 + 1;
      v32 = v42;
      v36 = (v41 + 8 * v20);
      v33 = v54;
      while (v35 < (v29 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_100016E94(v8, v55, 0);
          v29 = __clz(__rbit64(v37)) + v34;
          goto LABEL_20;
        }
      }

      result = sub_100016E94(v8, v55, 0);
LABEL_20:
      a1 = v53;
    }

    v13 = v33 + 1;
    if (v13 == v32)
    {
      return v7;
    }

    v10 = 0;
    v39 = *(a1 + 36);
    v8 = v29;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100103F78(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_100103F98()
{
  sub_100002BAC();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for StateDump.InferenceProviderState();
  v1[11] = v3;
  sub_100002F44(v3);
  v1[12] = v4;
  v6 = *(v5 + 64);
  v1[13] = sub_10000F0C0();
  v1[14] = swift_task_alloc();
  v7 = type metadata accessor for StateDump.ExecutionGroupsState();
  v1[15] = v7;
  sub_100002F44(v7);
  v1[16] = v8;
  v10 = *(v9 + 64);
  v1[17] = sub_10000F0C0();
  v1[18] = swift_task_alloc();
  v11 = type metadata accessor for Policy();
  v1[19] = v11;
  sub_100002F44(v11);
  v1[20] = v12;
  v14 = *(v13 + 64);
  v1[21] = sub_10000F0C0();
  v15 = swift_task_alloc();
  v16 = *(v0 + 16);
  v1[22] = v15;
  v1[23] = v16;
  v17 = sub_10000A30C();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_1001040FC()
{
  sub_100002BAC();
  v1 = *(*(v0 + 184) + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions);

  *(v0 + 192) = sub_1000FD834(v2);
  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100104170()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[10];
  v6 = OBJC_IVAR____TtC13modelmanagerd13PolicyManager__currentPolicy;
  sub_100004BA0();
  v7 = *(v4 + 16);
  v0[25] = v7;
  v0[26] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v2 + v6, v3);
  v0[27] = *v5;
  v8 = sub_10000A30C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10010422C()
{
  sub_100002BAC();
  v1 = v0[27];
  v2 = v0[10];
  sub_100104AB0();
  v0[28] = v3;
  v0[29] = *(v2 + 24);
  v4 = sub_10000A30C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100104298()
{
  sub_100002BAC();
  v1 = v0[29];
  v2 = v0[10];
  sub_100104B24();
  v0[30] = v3;
  v0[31] = *(v2 + 40);
  v4 = sub_10000A30C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100104304()
{
  v1 = v0[31];
  v2 = v0[18];
  v3 = v0[10];
  sub_1001061E8();
  v0[32] = v4;
  sub_100106CE8();
  v0[33] = v5;
  sub_100106D50();
  v0[34] = *(v3 + 32);
  v6 = sub_10000A30C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100104390()
{
  sub_100002BAC();
  v1 = v0[34];
  v2 = v0[10];
  sub_100104B8C();
  v0[35] = v3;
  v0[8] = &_swiftEmptySetSingleton;
  v0[36] = *(v2 + 8);
  v4 = sub_10000A30C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100104408()
{
  sub_100002BAC();
  v1 = *(v0 + 288);
  *(v0 + 296) = sub_100104F78();
  v2 = sub_100003000();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100104468()
{
  sub_100002BAC();
  v1 = sub_10000E8DC(v0[37]);
  v0[38] = v1;
  if (!v1)
  {
    v6 = v0[37];
    v7 = v0[10];

    v1 = sub_100003C20();

    return _swift_task_switch(v1, v2, v3);
  }

  if (v1 < 1)
  {
    __break(1u);
    return _swift_task_switch(v1, v2, v3);
  }

  v4 = v0[37];
  v0[39] = 0;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v0[40] = v5;

  v8 = swift_task_alloc();
  v0[41] = v8;
  *v8 = v0;
  sub_1000084A0(v8);

  return sub_1001050B0();
}

uint64_t sub_100104560()
{
  sub_100002BAC();
  v1 = *(*v0 + 328);
  v6 = *v0;

  v2 = sub_100003000();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100104650()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[39] + 1;
  sub_10007E704();

  (*(v6 + 8))(v4, v5);
  if (v7 == v2)
  {
    v8 = v0[37];
    v9 = v0[10];

    v10 = sub_100003C20();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v0[39] + 1;
    v0[39] = v13;
    v14 = v0[37];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v14 + 8 * v13 + 32);
    }

    v0[40] = v15;

    v16 = swift_task_alloc();
    v0[41] = v16;
    *v16 = v0;
    sub_1000084A0();

    return sub_1001050B0();
  }
}

uint64_t sub_1001047A4()
{
  sub_100002BAC();
  v1 = v0[10];
  v0[43] = *(v0[42] + 192);
  v2 = *(v1 + 56);
  v0[44] = v2;

  return _swift_task_switch(sub_100104820, v2, 0);
}

uint64_t sub_100104820()
{
  sub_100002BAC();
  v1 = *(v0 + 352);
  v2 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  sub_100004BA0();
  *(v0 + 360) = *(v1 + v2);

  return _swift_task_switch(sub_1001048A8, 0, 0);
}

uint64_t sub_1001048A8()
{
  v20 = v0[43];
  v21 = v0[45];
  v24 = v0[33];
  v25 = v0[35];
  v23 = v0[32];
  v22 = v0[30];
  v19 = v0[28];
  v15 = v0[25];
  v16 = v0[26];
  v18 = v0[24];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v26 = v0[14];
  v27 = v0[13];
  v17 = v0[9];
  v13 = *(*sub_100003370((v0[27] + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog), *(v0[27] + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog + 24)) + 112);
  type metadata accessor for _OSTransaction();
  v8 = static _OSTransaction.transactions.getter();
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  v15(v1, v2, v14);
  (*(v7 + 16))(v4, v5, v6);
  v12 = v0[8];
  StateDump.init(assertions:currentPolicy:assets:sessions:requests:runningRequests:remoteRequests:executionGroups:inferenceProviders:disabledUseCases:trials:budget:transactions:)();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v14);

  v10 = v0[1];

  return v10();
}

void sub_100104AB0()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0();
  v2 = *&v1[v0];

  sub_100103028(v3, v0);
  sub_100003170();

  sub_100077310();
}

void sub_100104B24()
{
  sub_100004BA0();
  v1 = *(v0 + 112);

  sub_1001033F4(v2, v0);
  sub_100003170();

  sub_100077448();
}

void sub_100104B8C()
{
  sub_1000055B0();
  v53 = type metadata accessor for RemoteInterfaceInformation();
  v1 = sub_100002BDC(v53);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100008624();
  v52 = v6;
  v51 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v51);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100004B1C();
  __chkstk_darwin(v11);
  sub_10000A930();
  v50 = v12;
  v49 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v49);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_100004B1C();
  __chkstk_darwin(v17);
  sub_10000A930();
  v48 = v18;
  v47 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  v19 = sub_100002BDC(v47);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_100002B8C();
  v26 = v25 - v24;
  v46 = type metadata accessor for StateDump.RemoteRequestState();
  v27 = sub_100002BDC(v46);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_100002B8C();
  v34 = v33 - v32;
  sub_100004BA0();
  v35 = *(v0 + 240);
  v36 = *(v35 + 16);
  if (v36)
  {

    sub_100070E58();
    v37 = *(v21 + 80);
    sub_10000657C();
    v38 = v21;
    v40 = v35 + v39;
    v45 = *(v38 + 72);
    do
    {
      sub_1001076CC(v40, v26, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      (*(v14 + 16))(v48, v26, v49);
      (*(v8 + 16))(v50, v26 + *(v47 + 20), v51);
      (*(v3 + 16))(v52, v26 + *(v47 + 24), v53);
      StateDump.RemoteRequestState.init(sessionID:requestID:interface:)();
      sub_10010772C(v26, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      v42 = _swiftEmptyArrayStorage[2];
      v41 = _swiftEmptyArrayStorage[3];
      if (v42 >= v41 >> 1)
      {
        sub_1000127D4(v41);
        sub_100070E58();
      }

      _swiftEmptyArrayStorage[2] = v42 + 1;
      v43 = *(v29 + 80);
      sub_10000657C();
      (*(v29 + 32))(_swiftEmptyArrayStorage + v44 + *(v29 + 72) * v42, v34, v46);
      v40 += v45;
      --v36;
    }

    while (v36);
  }

  sub_100077864();
  sub_100002EEC();
}

void *sub_100104F78()
{
  v0 = InferenceProviderManager.allConnections.getter();
  v8 = _swiftEmptyArrayStorage;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    v3 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000480AC(v2, v7);
      sub_100004A04(v7, v6);
      sub_100065020(&qword_1001BA8F8, "ޅ");
      type metadata accessor for InferenceProviderExtensionConnection(0);
      if ((swift_dynamicCast() & 1) != 0 && v6[5])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v4 >> 1)
        {
          sub_1000127D4(v4);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v3 = v8;
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_1001050B0()
{
  sub_100002BAC();
  v0[8] = v1;
  v0[9] = v2;
  v3 = sub_100065020(&qword_1001BC460, &qword_100172C38);
  v0[10] = v3;
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  v0[11] = sub_10000F0C0();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  active = type metadata accessor for StateDump.InferenceProviderState.ActiveRequest();
  v0[17] = active;
  sub_100002F44(active);
  v0[18] = v7;
  v9 = *(v8 + 64) + 15;
  v0[19] = swift_task_alloc();
  v10 = type metadata accessor for RequestPriority();
  v0[20] = v10;
  sub_100002F44(v10);
  v0[21] = v11;
  v13 = *(v12 + 64) + 15;
  v0[22] = swift_task_alloc();
  v14 = type metadata accessor for InferenceProviderDescriptor();
  v0[23] = v14;
  sub_100002F44(v14);
  v0[24] = v15;
  v17 = *(v16 + 64) + 15;
  v0[25] = swift_task_alloc();
  v18 = sub_100002C10();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_100105274()
{
  sub_100002BAC();
  v1 = *(*(v0 + 72) + 120);
  if (v1)
  {
    v2 = [v1 pid];
  }

  else
  {
    v2 = -1;
  }

  *(v0 + 232) = v2;
  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001052EC()
{
  sub_100002BAC();
  (*(v0[24] + 16))(v0[25], v0[9] + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_descriptor, v0[23]);
  v1 = sub_100002C10();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10010536C()
{
  sub_100002BAC();
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest;
  sub_100004BA0();
  *(v0 + 208) = *(v1 + v2);

  return _swift_task_switch(sub_1001053F4, 0, 0);
}

uint64_t sub_1001053F4()
{
  v1 = v0;
  v2 = v0[26];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[21];
    v5 = v0[18];
    v51 = v0[10];
    sub_100070EB0();
    v6 = sub_10014AFA0(v2);
    v9 = v6;
    v10 = 0;
    v11 = v2 + 64;
    v63 = v4;
    v46 = v7;
    v47 = v3;
    v45 = v2 + 72;
    v48 = v2 + 64;
    v49 = v2;
    v50 = v1;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v2 + 32))
    {
      if ((*(v11 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v2 + 36) != v7)
      {
        goto LABEL_27;
      }

      v55 = 1 << v9;
      v56 = v9 >> 6;
      v53 = v10;
      v54 = v7;
      v52 = v8;
      v12 = *(v51 + 48);
      v13 = v1[20];
      v14 = v1[16];
      v64 = v1[15];
      v59 = v1[14];
      v57 = v1[13];
      v60 = v1[12];
      v61 = v1[11];
      v15 = *(v2 + 48);
      v16 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
      sub_100002BDC(v16);
      v18 = v15 + *(v17 + 72) * v9;
      v20 = v19;
      v58 = v19;
      (*(v19 + 16))(v14, v18, v16);
      v62 = v9;
      (*(v63 + 16))(v14 + v12, *(v2 + 56) + *(v63 + 72) * v9, v13);
      v21 = *(v20 + 32);
      v21(v64, v14, v16);
      v22 = *(v63 + 32);
      v22(v64 + *(v51 + 48), v14 + v12, v13);
      sub_10002E90C(v64, v59, &qword_1001BC460, &qword_100172C38);
      v23 = *(v51 + 48);
      v21(v57, v59, v16);
      v22(v57 + *(v51 + 48), v59 + v23, v13);
      sub_10002E90C(v57, v60, &qword_1001BC460, &qword_100172C38);
      v24 = *(v51 + 48);
      sub_10002E90C(v57, v61, &qword_1001BC460, &qword_100172C38);
      v25 = v61 + *(v51 + 48);
      StateDump.InferenceProviderState.ActiveRequest.init(request:priority:)();
      sub_10000ECD8(v57, &qword_1001BC460, &qword_100172C38);
      sub_10000ECD8(v64, &qword_1001BC460, &qword_100172C38);
      (*(v58 + 8))(v61, v16);
      (*(v63 + 8))(v60 + v24, v13);
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_1000127D4(v26);
        sub_100070EB0();
      }

      v1 = v50;
      v28 = v50[19];
      v29 = v50[17];
      _swiftEmptyArrayStorage[2] = v27 + 1;
      v30 = *(v5 + 80);
      sub_10000657C();
      (*(v32 + 32))(_swiftEmptyArrayStorage + v31 + *(v32 + 72) * v27);
      v2 = v49;
      v9 = 1 << *(v49 + 32);
      v6 = v62;
      if (v62 >= v9)
      {
        goto LABEL_28;
      }

      v11 = v48;
      v33 = *(v48 + 8 * v56);
      if ((v33 & v55) == 0)
      {
        goto LABEL_29;
      }

      v7 = v54;
      if (*(v49 + 36) != v54)
      {
        goto LABEL_30;
      }

      v34 = v33 & (-2 << (v62 & 0x3F));
      if (v34)
      {
        v9 = __clz(__rbit64(v34)) | v62 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v56 << 6;
        v36 = (v45 + 8 * v56);
        v37 = v56 + 1;
        while (v37 < (v9 + 63) >> 6)
        {
          v39 = *v36++;
          v38 = v39;
          v35 += 64;
          ++v37;
          if (v39)
          {
            v6 = sub_100016E94(v62, v54, v52 & 1);
            v9 = __clz(__rbit64(v38)) + v35;
            goto LABEL_19;
          }
        }

        v6 = sub_100016E94(v62, v54, v52 & 1);
      }

LABEL_19:
      v8 = 0;
      v10 = v53 + 1;
      v7 = v46;
      if (v53 + 1 == v47)
      {
        v40 = v50[26];

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v41 = v0[26];

LABEL_22:
    v42 = v1[9];
    sub_10007799C();
    v1[27] = v43;
    v6 = sub_100105918;
    v7 = v42;
    v8 = 0;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100105918()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activePriority;
  sub_100004BA0();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v0[28] = *(v4 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_loadingCount);
  v6 = sub_100003000();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001059D4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 96);
  v16 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  StateDump.InferenceProviderState.init(pid:descriptor:activeRequests:activePriority:loadingCount:)();

  v14 = *(v0 + 8);

  return v14();
}

void sub_100105AD0()
{
  sub_1000055B0();
  v74 = v1;
  v75 = v0;
  v3 = v2;
  State = type metadata accessor for LoadState();
  v5 = sub_100002BDC(State);
  v71 = v6;
  v72 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_100008624();
  v77 = v9;
  v10 = type metadata accessor for InferenceProviderDescriptor();
  v11 = sub_100002F04(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100008624();
  v76 = v14;
  v15 = type metadata accessor for AssetCost();
  v16 = sub_100002BDC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100002B8C();
  v23 = v22 - v21;
  v68 = v22 - v21;
  v24 = type metadata accessor for InferenceProviderAssetDescriptor();
  v25 = sub_100002BDC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_100002B8C();
  v32 = v31 - v30;
  v70 = v31 - v30;
  v33 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v34 = (v33 - 8);
  v35 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  sub_100002B8C();
  v38 = v37 - v36;
  v39 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  swift_beginAccess();
  v73 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState;
  sub_1001076CC(v39 + v3, v38, type metadata accessor for InferenceProviderAsset.ManagerOwnedState);
  (*(v27 + 16))(v32, v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor, v24);
  v40 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path + 8);
  v69 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path);
  v64[1] = v40;
  (*(v18 + 16))(v23, v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_cost, v15);
  v67 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_isCacheable);
  v66 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed);
  v65 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_useEnergyEfficientMode);
  v41 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
  v42 = *(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100003370((v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v41);
  v43 = *(v42 + 8);

  v43(v41, v42);
  (*(v71 + 16))(v77, v38, v72);
  v44 = (v38 + v34[17]);
  v45 = v44[4];
  sub_100003370(v44, v44[3]);
  v46 = *(v45 + 16);
  v47 = sub_100003170();
  LODWORD(v72) = v48(v47, v45);
  v49 = v34[10];
  v50 = type metadata accessor for Date();
  v51 = sub_100002BDC(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  __chkstk_darwin(v51);
  v56 = v64 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v53 + 16);
  v58 = v57(v56, v38 + v49, v50);
  v59 = v34[11];
  __chkstk_darwin(v58);
  v57(v56, v38 + v60, v50);
  v61 = *(v38 + v34[12]);
  v62 = *(v38 + v34[13]);
  v63 = *(v38 + v34[14]);

  sub_100103B5C(v63);
  sub_100077D78();
  StateDump.AssetState.init(descriptor:path:cost:isCacheable:dynamicModeAllowed:useEnergyEfficientMode:inferenceProvider:loadState:isLocked:timeLastRequestEnded:timeLastForegroundSessionEnded:requiredByOtherAssets:foregroundSessions:executionGroups:)();

  sub_10010772C(v38, v73);
  sub_100002EEC();
}

void sub_100105FD8()
{
  sub_1000055B0();
  v1 = v0;
  v2 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002F04(v2);
  v4 = *(v3 + 64);
  sub_100004B1C();
  __chkstk_darwin(v5);
  Session.Metadata.id.getter();
  sub_100065020(&qword_1001B9090, &unk_100172C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016FF40;
  v7 = type metadata accessor for URL();
  v8 = sub_100002BDC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100002B8C();
  v15 = v14 - v13;
  Session.Metadata.assetBundleURI.getter();
  v16 = URL.absoluteString.getter();
  v18 = v17;
  (*(v10 + 8))(v15, v7);
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  sub_100077254(inited);
  Session.Metadata.useCaseID.getter();
  Session.Metadata.onBehalfOfPID.getter();
  AuditToken.processIdentifier.getter();
  v19 = v1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState;
  v20 = *(v1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState + 8);

  sub_1001037C0(v21);

  sub_1000776B8();
  v22 = *(v19 + 16);
  StateDump.SessionState.init(identifier:supportedAssets:useCaseIdentifier:onBehalfOfPID:createdByPID:requests:isCancelled:)();

  sub_100002EEC();
}

void sub_1001061E8()
{
  sub_1000055B0();
  v1 = 0;
  v2 = type metadata accessor for Version();
  v3 = sub_100002F04(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100008624();
  sub_100002DC4(v6);
  v112 = type metadata accessor for InferenceProviderRequestConfiguration();
  v7 = sub_100002BDC(v112);
  v105 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100008624();
  sub_100002DC4(v11);
  v12 = type metadata accessor for RequestPriority();
  v13 = sub_100002F04(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100008624();
  v17 = sub_100002DC4(v16);
  v18 = type metadata accessor for DaemonRequest.ManagerOwnedState(v17);
  v19 = sub_100002F04(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_100008624();
  sub_100002DC4(v22);
  v23 = type metadata accessor for InferenceProviderDescriptor();
  v24 = sub_100002F04(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100008624();
  v27 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002F04(v27);
  v29 = *(v28 + 64);
  sub_100004B1C();
  __chkstk_darwin(v30);
  sub_10000A930();
  v31 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002F04(v31);
  v33 = *(v32 + 64);
  sub_100004B1C();
  __chkstk_darwin(v34);
  sub_10000A930();
  sub_100002DC4(v35);
  v109 = type metadata accessor for StateDump.RequestState();
  v36 = sub_100002BDC(v109);
  v114 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_100008624();
  v113 = v40;
  sub_100065020(&qword_1001BC488, &qword_100172C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100172BA0;
  v42 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_100004BA0();
  v44 = *v42;
  v43 = v42[1];
  *(inited + 32) = v44;
  v45 = inited + 32;
  *(inited + 40) = v43;
  v46 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  sub_100004BA0();
  v48 = *v46;
  v47 = v46[1];
  *(inited + 48) = v48;
  *(inited + 56) = v47;
  v49 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
  sub_100004BA0();
  v51 = *v49;
  v50 = v49[1];
  *(inited + 64) = v51;
  *(inited + 72) = v50;
  v123 = _swiftEmptyArrayStorage;

  v106 = inited + 32;
LABEL_2:
  if (v1 == 3)
  {
    goto LABEL_57;
  }

  v52 = (v45 + 16 * v1);
  v108 = v1 + 1;
  v53 = v52[1];
  v117 = *(v53 + 16);
  v115 = v53 + 32;
  v107 = *v52;

  v119 = v53;

  v54 = 0;
  v55 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v54 == v117)
    {

      sub_100140864(v55);
      v45 = v106;
      v1 = v108;
      goto LABEL_2;
    }

    if (v54 >= *(v119 + 16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v56 = *(v115 + 8 * v54) + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
    sub_100004BA0();
    v57 = *(v56 + 32);
    v58 = *(v57 + 16);
    if (!v58)
    {
      v59 = _swiftEmptyArrayStorage;
      goto LABEL_20;
    }

    v121 = v54;
    sub_100065020(&dword_1001BA4A8, &qword_100171010);
    v59 = swift_allocObject();
    v60 = j__malloc_size(v59);
    v61 = 0;
    v62 = 0;
    *(v59 + 16) = v58;
    *(v59 + 24) = (2 * ((v60 - 32) / 8)) | 1;
    v63 = 1 << *(v57 + 32);
    v64 = v63 < 64 ? ~(-1 << v63) : -1;
    v65 = v64 & *(v57 + 64);
    v66 = (v59 + 32);
    v67 = (v63 + 63) >> 6;
    if (!v65)
    {
      break;
    }

    while (1)
    {
      v68 = v62;
LABEL_15:
      ++v61;
      *v66 = *(*(v57 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v65)))));
      if (v61 == v58)
      {
        break;
      }

      v65 &= v65 - 1;
      ++v66;

      v62 = v68;
      if (!v65)
      {
        goto LABEL_12;
      }
    }

    v54 = v121;
LABEL_20:
    v69 = v59 < 0 || (v59 & 0x4000000000000000) != 0;
    if (v69)
    {
      v70 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v70 = *(v59 + 16);
    }

    v71 = v55 >> 62;
    if (v55 >> 62)
    {
      v72 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v72 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = v72 + v70;
    if (__OFADD__(v72, v70))
    {
      goto LABEL_68;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v71)
      {
LABEL_35:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v74 = v55 & 0xFFFFFFFFFFFFFF8;
LABEL_34:
        v75 = *(v74 + 16);
      }

      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v74 = v55 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_37;
    }

    if (v71)
    {
      goto LABEL_35;
    }

    v74 = v55 & 0xFFFFFFFFFFFFFF8;
    if (v73 > *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_34;
    }

LABEL_37:
    v76 = *(v74 + 16);
    v77 = *(v74 + 24);
    if (v69)
    {
      v78 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v78 = *(v59 + 16);
    }

    ++v54;

    if (v78)
    {
      if (((v77 >> 1) - v76) < v70)
      {
        goto LABEL_70;
      }

      v79 = v74 + 8 * v76 + 32;
      if (v69)
      {
        if (v78 < 1)
        {
          goto LABEL_73;
        }

        sub_100107668();
        for (i = 0; i != v78; ++i)
        {
          sub_100065020(&qword_1001BC490, &qword_100174200);
          v81 = sub_1001494CC(v122, i, v59);
          v83 = *v82;

          v81(v122, 0);
          *(v79 + 8 * i) = v83;
        }
      }

      else
      {
        type metadata accessor for DaemonRequest(0);
        swift_arrayInitWithCopy();
      }

      if (v70 > 0)
      {
        v84 = *(v74 + 16);
        v85 = __OFADD__(v84, v70);
        v86 = v84 + v70;
        if (v85)
        {
          goto LABEL_72;
        }

        *(v74 + 16) = v86;
      }
    }

    else
    {

      if (v70 > 0)
      {
        goto LABEL_69;
      }
    }
  }

LABEL_12:
  while (1)
  {
    v68 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v68 >= v67)
    {
      goto LABEL_71;
    }

    v65 = *(v57 + 64 + 8 * v68);
    ++v62;
    if (v65)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_57:
  swift_setDeallocating();
  sub_1000D5FB0();
  v87 = v123;
  v88 = sub_10000E8DC(v123);
  if (v88)
  {
    v89 = v88;
    v123 = _swiftEmptyArrayStorage;
    sub_100070DA8();
    if ((v89 & 0x8000000000000000) == 0)
    {
      v90 = 0;
      v91 = v123;
      v116 = v87 & 0xC000000000000001;
      v120 = v87;
      v118 = v89;
      do
      {
        if (v116)
        {
          v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v92 = *(v87 + 8 * v90 + 32);
        }

        RequestMetadata.id.getter();
        RequestMetadata.sessionID.getter();
        v93 = *(v92 + 2);

        v95 = sub_100102D48(v94);

        sub_100077254(v95);
        v96 = *(v92 + 7);
        v97 = *(v92 + 8);
        sub_100003370(v92 + 4, v96);
        (*(v97 + 8))(v96, v97);
        v98 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
        sub_100004BA0();
        sub_1001076CC(&v92[v98], v110, type metadata accessor for DaemonRequest.ManagerOwnedState);
        InferenceProviderRequestConfiguration.requestPriority.getter();
        sub_10010772C(v110, type metadata accessor for DaemonRequest.ManagerOwnedState);
        (*(v105 + 16))(v111, &v92[v98], v112);
        InferenceProviderRequestConfiguration.requestVersion.getter();
        (*(v105 + 8))(v111, v112);
        v99 = v113;
        StateDump.RequestState.init(identifier:session:asset:inferenceProvider:priority:requestVersion:)();

        v123 = v91;
        v101 = v91[2];
        v100 = v91[3];
        if (v101 >= v100 >> 1)
        {
          sub_1000127D4(v100);
          sub_100070DA8();
          v99 = v113;
          v91 = v123;
        }

        ++v90;
        v91[2] = v101 + 1;
        v102 = *(v114 + 80);
        sub_10000657C();
        (*(v104 + 32))(v91 + v103 + *(v104 + 72) * v101, v99, v109);
        v87 = v120;
      }

      while (v118 != v90);
      goto LABEL_66;
    }

LABEL_74:
    __break(1u);
  }

  else
  {
LABEL_66:

    sub_100077580();
    sub_100002EEC();
  }
}

void sub_100106CE8()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_extantRequests;
  sub_100004BA0();
  v2 = *(v0 + v1);

  sub_1001037C0(v3);
  sub_100003170();

  sub_1000776B8();
}

void sub_100106D50()
{
  sub_1000055B0();
  v1 = v0;
  v56[1] = v2;
  v60 = type metadata accessor for StateDump.ExecutionGroupState();
  v3 = sub_100002BDC(v60);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v57 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v56 - v11;
  __chkstk_darwin(v10);
  v14 = v56 - v13;
  v15 = (v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_100004BA0();
  v16 = v15[1];
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *v15;
    v63 = _swiftEmptyArrayStorage;
    v56[0] = v18;

    sub_100008974();
    v19 = 0;
    v58 = v5 + 32;
    v59 = v63;
    while (v19 < *(v16 + 16))
    {
      v20 = *(v16 + 8 * v19 + 32);

      sub_100107198();
      v21 = v59;
      v63 = v59;
      v23 = v59[2];
      v22 = v59[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000127D4(v22);
        sub_100070E00();
        v21 = v63;
      }

      ++v19;
      v21[2] = v23 + 1;
      v24 = *(v5 + 80);
      sub_10000657C();
      v59 = v25;
      v27 = sub_100003AC0(v25 + v26);
      v28(v27, v14, v60);
      if (v17 == v19)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_9:
  v29 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  sub_100004BA0();
  v30 = v29[1];
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = *v29;
    v62 = _swiftEmptyArrayStorage;
    v56[0] = v32;

    sub_100008974();
    v33 = 0;
    v34 = v62;
    v58 = v5 + 32;
    while (v33 < *(v30 + 16))
    {
      v35 = *(v30 + 8 * v33 + 32);

      sub_100107198();
      v62 = v34;
      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        sub_1000127D4(v36);
        sub_100070E00();
        v34 = v62;
      }

      ++v33;
      v34[2] = v37 + 1;
      v38 = *(v5 + 80);
      sub_10000657C();
      v40 = sub_100003AC0(v34 + v39);
      v41(v40, v12, v60);
      if (v31 == v33)
      {

        goto LABEL_16;
      }
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_16:
  v42 = (v1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
  sub_100004BA0();
  v43 = v42[1];
  v44 = *(v43 + 16);
  if (!v44)
  {
LABEL_23:
    StateDump.ExecutionGroupsState.init(active:pendingForeground:pendingBackground:)();
    sub_100002EEC();
    return;
  }

  v45 = *v42;
  v61 = _swiftEmptyArrayStorage;
  v56[0] = v45;

  sub_100008974();
  v46 = 0;
  v47 = v61;
  v58 = v5 + 32;
  v48 = v57;
  while (v46 < *(v43 + 16))
  {
    v49 = *(v43 + 8 * v46 + 32);

    sub_100107198();
    v61 = v47;
    v51 = v47[2];
    v50 = v47[3];
    if (v51 >= v50 >> 1)
    {
      sub_1000127D4(v50);
      sub_100070E00();
      v47 = v61;
    }

    ++v46;
    v47[2] = v51 + 1;
    v52 = *(v5 + 80);
    sub_10000657C();
    v54 = sub_100003AC0(v47 + v53);
    v55(v54, v48, v60);
    if (v44 == v46)
    {

      goto LABEL_23;
    }
  }

LABEL_26:
  __break(1u);
}

void sub_100107198()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v44);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004B1C();
  __chkstk_darwin(v10);
  sub_10000A930();
  v12 = v11;
  v13 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  sub_100002BDC(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_100004B1C();
  __chkstk_darwin(v18);
  v20 = v43 - v19;
  v21 = v3 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  sub_100004BA0();
  v22 = *(v21 + 1);
  v48 = *v21;
  v49 = v22;
  v50 = *(v21 + 4);
  v51 = *(&v48 + 1);
  v52 = v22;
  v53[0] = v50;
  v47 = v3;
  sub_10002E90C(&v51, &v46, &qword_1001BC468, &qword_100172C40);
  sub_10002E90C(&v52, &v46, &qword_1001BC468, &qword_100172C40);
  sub_10002E90C(&v52 + 8, &v46, &qword_1001BC470, &unk_100172C48);
  sub_10002E90C(v53, &v46, &qword_1001B8F40, &unk_10016FB20);
  _s14ExecutionGroupCMa();
  sub_100107610();

  UUIDIdentifier.init(_:)();
  v23 = type metadata accessor for UUID();
  v24 = sub_100002F04(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100008624();
  v43[5] = v27;
  UUIDIdentifier.uuid.getter();
  (*(v15 + 8))(v20, v13);
  v28 = *(v3 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

  sub_100102D48(v29);
  sub_100003170();

  v30 = sub_100077254(v20);
  v31 = sub_10006CF3C();
  v32 = sub_10000E8DC(v31);
  if (!v32)
  {
LABEL_10:

    sub_10006C844(v48);
    StateDump.ExecutionGroupState.init(id:assets:requests:state:)();

    sub_10000ECD8(&v51, &qword_1001BC468, &qword_100172C40);
    sub_10000ECD8(&v52, &qword_1001BC468, &qword_100172C40);
    sub_10000ECD8(&v52 + 8, &qword_1001BC470, &unk_100172C48);
    sub_10000ECD8(v53, &qword_1001B8F40, &unk_10016FB20);

    sub_100002EEC();
    return;
  }

  v33 = v32;
  v45 = v31;
  v47 = _swiftEmptyArrayStorage;
  sub_100070A50();
  if ((v33 & 0x8000000000000000) == 0)
  {
    v43[1] = v30;
    v43[2] = v5;
    v43[3] = v1;
    v43[4] = v3;
    v34 = 0;
    v35 = v47;
    v36 = v45;
    v37 = v45 & 0xC000000000000001;
    do
    {
      if (v37)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v36 + 8 * v34 + 32);
      }

      RequestMetadata.id.getter();

      v47 = v35;
      v40 = v35[2];
      v39 = v35[3];
      if (v40 >= v39 >> 1)
      {
        sub_1000127D4(v39);
        sub_100070A50();
        v35 = v47;
      }

      ++v34;
      v35[2] = v40 + 1;
      v41 = *(v7 + 80);
      sub_10000657C();
      (*(v7 + 32))(v35 + v42 + *(v7 + 72) * v40, v12, v44);
      v36 = v45;
    }

    while (v33 != v34);
    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_100107610()
{
  result = qword_1001BC478;
  if (!qword_1001BC478)
  {
    _s14ExecutionGroupCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC478);
  }

  return result;
}

unint64_t sub_100107668()
{
  result = qword_1001BC498;
  if (!qword_1001BC498)
  {
    sub_10006A614(&qword_1001BC490, &qword_100174200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC498);
  }

  return result;
}

uint64_t sub_1001076CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100002C00(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10010772C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002C00(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100107784()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC4A8);
  sub_10000641C(v0, qword_1001BC4A8);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t IPCCachedSession.sendAsyncWithRetry<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v10 = type metadata accessor for ModelManagerError();
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = sub_100005204(&async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:));
  v5[11] = v13;
  *v13 = v5;
  v13[1] = sub_10010791C;

  return v15(a1, a2, a3, a4);
}

uint64_t sub_10010791C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v5 = v2[7];
    type metadata accessor for IPCCachedSession();
    sub_100107F08();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v2[13] = v7;
    v2[14] = v6;

    return _swift_task_switch(sub_100107A94, v7, v6);
  }

  else
  {
    v8 = v2[10];

    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_100107A94()
{
  v0[2] = v0[12];
  v1 = v0[10];
  v2 = v0[8];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (swift_dynamicCast())
  {
    if ((*(v0[9] + 88))(v0[10], v0[8]) == enum case for ModelManagerError.ipcError(_:))
    {
      v3 = v0[12];
      v5 = v0[9];
      v4 = v0[10];
      v6 = v0[8];

      (*(v5 + 8))(v4, v6);
      if (qword_1001B89A0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000641C(v7, qword_1001BC4A8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "IPCCachedSession performing a retry on sendAsync", v10, 2u);
      }

      v11 = sub_100005204(&async function pointer to dispatch thunk of IPCCachedSession.sendAsync<A>(_:));
      v0[15] = v11;
      *v11 = v0;
      v11[1] = sub_100107CF0;
      v12 = v0[6];
      v13 = v0[7];
      v14 = v0[4];
      v15 = v0[5];
      v16 = v0[3];

      return v22(v16, v14, v15, v12);
    }

    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[2];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100107CF0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_100107E98;
  }

  else
  {
    v7 = sub_100107E2C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100107E2C()
{
  v1 = v0[2];

  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100107E98()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[2];

  v4 = v0[1];

  return v4();
}

unint64_t sub_100107F08()
{
  result = qword_1001BC4C0;
  if (!qword_1001BC4C0)
  {
    type metadata accessor for IPCCachedSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC4C0);
  }

  return result;
}

uint64_t sub_100107F60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *sub_100003370(a3, a3[3]);
  sub_10006AE54(v18);

  if (v5)
  {
  }

  else
  {
    v10 = sub_100003370(v18, v19);
    sub_1000480AC(a3, v17);
    v11 = swift_allocObject();
    sub_100004A04(v17, v11 + 16);
    *(v11 + 56) = a4;
    *(v11 + 64) = a5;
    v12 = *v10;
    v16[4] = sub_100108608;
    v16[5] = v11;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_1000BCB44;
    v16[3] = &unk_1001B1C30;
    v13 = _Block_copy(v16);

    xpc_remote_connection_set_event_handler();
    _Block_release(v13);

    v14 = *sub_100003370(v18, v19);
    xpc_remote_connection_activate();

    sub_100003324(v18);
  }

  return sub_100003324(a3);
}

uint64_t sub_100108108()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC4D0);
  sub_10000641C(v0, qword_1001BC4D0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t (*sub_100108174(uint64_t a1, uint64_t a2))()
{
  sub_100065020(&qword_1001BC5A0, &qword_100172D28);
  v3 = *(a2 + 16);
  type metadata accessor for RemoteXPCMessageHandler();
  *(swift_allocObject() + 16) = v3;

  TaskCancellingIPCPeerHandler.__allocating_init(handler:)();

  return sub_1001089F8;
}

uint64_t sub_10010822C()
{
  sub_100065020(&qword_1001BC5A0, &qword_100172D28);
  sub_100108A08();
  return dispatch thunk of IPCPeerHandler.handleCancellation()();
}

uint64_t sub_100108280(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  sub_100065020(&qword_1001BC5A0, &qword_100172D28);
  sub_100108A08();
  dispatch thunk of IPCPeerHandler.handleIncomingRequest(_:)();
  return sub_100108A6C(v3);
}

uint64_t sub_100108314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v15 = &type metadata for RemoteXPCConnection;
  v16 = &off_1001B1F68;
  *&aBlock = sub_10010D2F4();
  sub_100004A04(&aBlock, v19);
  v7 = sub_100003370(v19, v20);
  sub_1000480AC(a2, v18);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_100004A04(v18, v8 + 32);
  v9 = *v7;
  v16 = sub_1001089A4;
  v17 = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v14 = sub_1000BCB44;
  v15 = &unk_1001B1C80;
  v10 = _Block_copy(&aBlock);

  xpc_remote_connection_set_event_handler();
  _Block_release(v10);

  v11 = *sub_100003370(v19, v20);
  xpc_remote_connection_activate();
  return sub_100003324(v19);
}

uint64_t sub_100108614(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  type metadata accessor for RemoteXPCListener.IncomingSessionRequest();
  swift_allocObject();
  v7 = a2();
  v9 = v8;

  type = xpc_get_type(a1);
  if (type == XPC_TYPE_ERROR.getter())
  {
    if (qword_1001B89A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000641C(v16, qword_1001BC4D0);
    swift_unknownObjectRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29[0] = v20;
      *v19 = 136315138;
      swift_unknownObjectRetain();
      sub_100065020(&qword_1001BC588, &qword_100172D20);
      v21 = String.init<A>(describing:)();
      v23 = sub_100004A3C(v21, v22, v29);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Received remoteXPC error, assuming cancellation: %s", v19, 0xCu);
      sub_100003324(v20);
    }

    v24 = type metadata accessor for ModelManagerError();
    sub_1001089B0(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
    v25 = swift_allocError();
    v27 = v26;
    v29[0] = a1;
    swift_unknownObjectRetain();
    sub_100065020(&qword_1001BC588, &qword_100172D20);
    *v27 = String.init<A>(describing:)();
    v27[1] = v28;
    (*(*(v24 - 8) + 104))(v27, enum case for ModelManagerError.remoteXPCError(_:), v24);
    v7(v25);
  }

  else
  {
    v11 = type metadata accessor for RemoteXPCReceivedMessage();
    v29[3] = v11;
    v29[4] = sub_1001089B0(&unk_1001BC590, type metadata accessor for RemoteXPCReceivedMessage);
    v12 = sub_10000366C(v29);
    sub_1000480AC(a4, v12);
    v13 = v11[5];
    swift_unknownObjectRetain();
    XPCDictionary.init(_:)();
    *(v12 + v11[6]) = 1;
    *(v12 + v11[7]) = 0;
    v14 = (v12 + v11[8]);
    *v14 = 0u;
    v14[1] = 0u;
    v9(v29);

    return sub_100003324(v29);
  }
}

uint64_t sub_1001089B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100108A08()
{
  result = qword_1001BC5A8;
  if (!qword_1001BC5A8)
  {
    sub_10006A614(&qword_1001BC5A0, &qword_100172D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC5A8);
  }

  return result;
}

uint64_t sub_100108A6C(uint64_t a1)
{
  v2 = sub_100065020(&unk_1001BC5B0, qword_100172D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100108B20(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(type metadata accessor for XPCSession.InitializationOptions() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100108BB0, 0, 0);
}

uint64_t sub_100108BB0()
{
  v1 = v0[3];
  static RemoteIPCRequest.simulatorServiceName.getter();
  v2 = String.utf8CString.getter();

  xpc_connection_create_mach_service((v2 + 32), 0, 0);

  xpc_connection_enable_sim2host_4sim();
  v3 = type metadata accessor for XPCSession();
  swift_unknownObjectRetain();
  static XPCSession.InitializationOptions.inactive.getter();
  v4 = XPCSession.__allocating_init(fromConnection:targetQueue:options:cancellationHandler:)();
  v6 = v0[2];
  v5 = v0[3];
  v6[3] = v3;
  v6[4] = &protocol witness table for XPCSession;
  swift_unknownObjectRelease();
  *v6 = v4;

  v7 = v0[1];

  return v7();
}

void sub_100108D28()
{
  sub_10000A274();
  v1 = v0;
  v2 = type metadata accessor for ModelCatalogAsset(0);
  v3 = sub_100002F44(v2);
  v33 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v32 = (v8 - v7);
  v9 = *(v1 + 16);
  if (v9)
  {
    sub_10002045C(0, v9, 0);
    v12 = sub_10001E724(v1);
    v13 = 0;
    v36 = v1 + 56;
    v29 = v1 + 64;
    v30 = v9;
    v31 = v1;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(v1 + 32))
      {
        v14 = v12 >> 6;
        if ((*(v36 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v1 + 36) != v10)
        {
          goto LABEL_25;
        }

        v35 = v11;
        v34 = v10;
        sub_100009370(*(v1 + 48) + *(v33 + 72) * v12, v32, type metadata accessor for ModelCatalogAsset);
        v16 = *v32;
        v15 = v32[1];

        sub_1000125E8(v32, type metadata accessor for ModelCatalogAsset);
        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_10002045C((v17 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * v18];
        *(v19 + 4) = v16;
        *(v19 + 5) = v15;
        if (v35)
        {
          goto LABEL_29;
        }

        v1 = v31;
        v20 = 1 << *(v31 + 32);
        if (v12 >= v20)
        {
          goto LABEL_26;
        }

        v21 = *(v36 + 8 * v14);
        if ((v21 & (1 << v12)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v31 + 36) != v34)
        {
          goto LABEL_28;
        }

        v22 = v21 & (-2 << (v12 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v23 = v30;
        }

        else
        {
          v24 = v14 << 6;
          v25 = v14 + 1;
          v23 = v30;
          v26 = (v29 + 8 * v14);
          while (v25 < (v20 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              sub_100016E94(v12, v34, 0);
              v20 = __clz(__rbit64(v27)) + v24;
              goto LABEL_19;
            }
          }

          sub_100016E94(v12, v34, 0);
        }

LABEL_19:
        if (++v13 == v23)
        {
          goto LABEL_22;
        }

        v11 = 0;
        v10 = *(v31 + 36);
        v12 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_100005874();
  }
}

uint64_t sub_100108FFC(uint64_t a1)
{
  v3 = sub_10000EF2C(OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState);

  sub_10007D34C(&v4, a1);

  sub_10000A93C(v3);
}

uint64_t sub_100109080()
{
  v1 = *v0;
  v2 = type metadata accessor for InferenceProviderDescriptor();
  v3 = sub_100002BDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v10 = v9 - v8;
  v11 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
  v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v11 + v13));
  sub_100109AC0(v11 + v12, &v27);
  os_unfair_lock_unlock((v11 + v13));
  if (!v27)
  {
    sub_100021248(_swiftEmptyArrayStorage);
    sub_100003AD0();
    return sub_1000062B0();
  }

  sub_10001F04C(v27, 1, v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_sysctl, v14, v15, v16, v17, v18, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v20 = v19;
  v22 = v21;

  v27 = v20;
  v28 = v22;
  if (*(v22 + 16))
  {
    if (v20)
    {

      sub_10010BE98();
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    sub_100144030(0, v25);
    (*(v5 + 8))(v10, v2);
    return sub_1000062B0();
  }

  __break(1u);
  return result;
}

uint64_t sub_10010929C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1001092BC, a2, 0);
}

uint64_t sub_1001092BC()
{
  v1 = v0[2];
  v2 = *(v0[5] + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState + 8);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;

  v4 = sub_10012819C(sub_10010C508, v3, v2);
  v0[6] = v4;

  if (v4)
  {
    v5 = *(v0[5] + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_requestManager);
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_1001094C8;
    v7 = v0[4];

    return sub_10013C4DC();
  }

  else
  {
    v9 = v0[2];
    v10 = type metadata accessor for ModelManagerError();
    sub_1000114EC();
    sub_1000218A0(v11, v12);
    swift_allocError();
    v14 = v13;
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    UUIDIdentifier.uuid.getter();
    (*(*(v10 - 8) + 104))(v14, enum case for ModelManagerError.requestNotFound(_:), v10);
    swift_willThrow();
    sub_100001F00();

    return v15();
  }
}

uint64_t sub_1001094C8()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 56);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  return _swift_task_switch(sub_1001095C8, v3, 0);
}

uint64_t sub_1001095C8()
{
  sub_100002BAC();
  v1 = *(v0 + 48);

  sub_100001F00();

  return v2();
}

uint64_t sub_100109624(uint64_t a1)
{
  v6 = variable initialization expression of InferenceProviderManager.updatesReceived();
  result = sub_1000216AC(&v39, a1, 0, 1, v6, &type metadata accessor for UUID, sub_10010B368, sub_10010AB30);
  v8 = *(a1 + 16);
  v9 = v39;
  if (v39 != v8)
  {
    if ((v39 & 0x8000000000000000) != 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v30 = result;
    v1 = sub_10010C2C4(0, v39, a1, &type metadata accessor for UUID);
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = _swiftEmptyArrayStorage;
      }

      v15 = v14[2];

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_31;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_32;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = _swiftEmptyArrayStorage;
      goto LABEL_11;
    }

    while (1)
    {
      sub_10010A594(v1, v2, v3, v4, sub_100140520, &type metadata accessor for UUID);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v40 = v30;
      v41 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_unknownObjectRelease();
    }

    v29[1] = sub_10010C2C4(v9, v8, a1, &type metadata accessor for UUID);
    v31 = v16;
    v9 = v17;
    v8 = v18;

    v32 = v8 >> 1;
    while (1)
    {
      if (v9 == v32)
      {
        swift_unknownObjectRelease();

        return v40;
      }

      if (v9 >= v32)
      {
        __break(1u);
        goto LABEL_29;
      }

      v3 = type metadata accessor for UUID();
      v34 = v29;
      v19 = sub_100002BDC(v3);
      v1 = v20;
      v2 = *(v21 + 72);
      v35 = v9;
      v22 = *(v21 + 64);
      __chkstk_darwin(v19);
      v4 = *(v1 + 16);
      v23 = (v4)(v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      a1 = v41 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      v24 = v41[2];
      v33 = v1;
      v38 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (!v40)
      {
        break;
      }

      sub_100142BF4();
      a1 = v25;
      v8 = v26;

      if (a1)
      {
        goto LABEL_25;
      }

LABEL_26:
      v9 = v35 + 1;
      (*(v33 + 8))(v38, v3);
    }

    v36 = v4;
    v37 = v2;
    v2 = (v1 + 8);
    v27 = v24 + 1;
    while (--v27)
    {
      v4 = v29;
      v1 = v37 + a1;
      __chkstk_darwin(v23);
      v8 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v36(v8, a1, v3);
      sub_10005F300(&qword_1001B94A8);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = (*v2)(v8, v3);
      a1 = v1;
      if (v28)
      {
        goto LABEL_26;
      }
    }

    v8 = 0;
LABEL_25:
    a1 = &v40;
    sub_100141198();
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_100109A4C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC6C0);
  sub_10000641C(v0, qword_1001BC6C0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_100109AC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for DaemonSession.LazyState(0);
  sub_10010C4AC(a1 + *(v8 + 24), v7, &qword_1001B9CD0, &qword_100170778);
  v9 = type metadata accessor for InferenceProviderDescriptor();
  v10 = sub_10000C6C0(v7, 1, v9);
  sub_10000ECD8(v7, &qword_1001B9CD0, &qword_100170778);
  if (v10 == 1)
  {
    if (qword_1001B89B0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000641C(v11, qword_1001BC6C0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Fallback inference provider not allowed: main inference provider not yet selected";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

LABEL_12:

    *a2 = 0;
    return;
  }

  if (*(a1 + *(v8 + 28)))
  {
    if (qword_1001B89B0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000641C(v16, qword_1001BC6C0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Fallback inference provider not allowed: inference provider selection has been locked";
    goto LABEL_11;
  }

  *a2 = *(a1 + 16);
}

uint64_t sub_100109D18(void *a1)
{
  v2 = a1[1];

  *a1 = 0;
  a1[1] = 0;
  v3 = a1[2];

  a1[2] = 0;
  v4 = type metadata accessor for DaemonSession.LazyState(0);
  v5 = *(v4 + 24);
  sub_10000ECD8(a1 + v5, &qword_1001B9CD0, &qword_100170778);
  v6 = type metadata accessor for InferenceProviderDescriptor();
  result = sub_100009BFC(a1 + v5, 1, 1, v6);
  *(a1 + *(v4 + 32)) = 0;
  return result;
}

uint64_t sub_100109DAC(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return _swift_task_switch(sub_100109DD4, 0, 0);
}

uint64_t sub_100109DD4()
{
  sub_100002BAC();
  v1 = *(v0[2] + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_requestManager);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100109E74;
  v3 = v0[3];
  v4 = v0[4];

  return sub_10013C4DC();
}

uint64_t sub_100109E74()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_100001F00();

  return v5();
}

uint64_t sub_100109F54(void *a1)
{
  v2 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = *a1 + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  RequestMetadata.id.getter();
  type metadata accessor for RequestMetadata();
  LOBYTE(v7) = static UUIDIdentifier.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_10010A078()
{
  result = type metadata accessor for Session.Metadata();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for AuditToken();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_10010A198()
{
  sub_10010A244();
  if (v0 <= 0x3F)
  {
    sub_10010A294();
    if (v1 <= 0x3F)
    {
      sub_10010A2F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10010A244()
{
  if (!qword_1001BC830)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BC830);
    }
  }
}

void sub_10010A294()
{
  if (!qword_1001BC838)
  {
    sub_10006A614(&qword_1001BC840, &qword_100172E50);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BC838);
    }
  }
}

void sub_10010A2F8()
{
  if (!qword_1001BC848)
  {
    type metadata accessor for InferenceProviderDescriptor();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BC848);
    }
  }
}

__n128 sub_10010A350(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10010A364(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010A3A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_10010A43C()
{
  Hasher.init(_seed:)();
  sub_100012C1C();
  return Hasher._finalize()();
}

Swift::Int sub_10010A4C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100012C1C();
  return Hasher._finalize()();
}

uint64_t sub_10010A504(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000372F8() & 1;
}

void sub_10010A594(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      v9 = *(a6(0) - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = *(v9 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_10010A680(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100065020(&qword_1001B90C8, &unk_10016FD40);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_10010A754(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100065020(&dword_1001BA4A8, &qword_100171010);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for InferenceProviderAsset(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_10010A830(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_1000106D0(v1, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void sub_10010A8CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = a4 >> 1;
  while (a3 != v8)
  {
    if (a3 >= v8)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v9 = *(a2 + 8 * a3++);
    v11 = *v5;
    v10 = v5[1];
    v12 = (v10 + 32);
    v13 = *(v10 + 16);
    if (*v5)
    {

      sub_100143334(v9, v12, v13, (v11 + 16));
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {

      while (v13)
      {
        type metadata accessor for InferenceProviderAsset(0);
        v16 = *v12++;

        v18 = sub_100019CE4(v17, v9);

        --v13;
        if (v18)
        {
          goto LABEL_27;
        }
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *(v5[1] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v20 = v5[1];
    v21 = *(v20 + 16);
    if (v11)
    {
      swift_beginAccess();
      v22 = *(v11 + 16);
      if (static _HashTable.maximumCapacity(forScale:)() >= v21)
      {
        v25 = *v5;
        isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
        v27 = *v5;
        if ((isUniquelyReferenced_native & 1) == 0)
        {
          if (!v27)
          {
            goto LABEL_30;
          }

          v28 = *v5;
          v29 = _HashTable.copy()();

          *v5 = v29;
          v27 = v29;
        }

        if (!v27)
        {
          goto LABEL_29;
        }

        v30 = *(v27 + 16);
        v31 = *(v20 + 16) + ~(*(v27 + 24) >> 6);
        _HashTable.UnsafeHandle.subscript.setter();
LABEL_27:
      }

      else
      {
        if (v21 > 0xF || (*(v11 + 24) & 0x3FLL) != 0)
        {
          goto LABEL_21;
        }

        *v5 = 0;
      }
    }

    else
    {
      if (v21 <= 0xF)
      {
        goto LABEL_27;
      }

LABEL_21:
      static _HashTable.scale(forCapacity:)();
      v24 = sub_100141B78(v20);

      *v5 = v24;
    }
  }
}

void sub_10010AB30(uint64_t a1, uint64_t a2)
{
  v29 = _swiftEmptyArrayStorage;
  sub_100070A90();
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  v21 = a1;
  for (i = a2; ; a2 = i)
  {
    if (v4 == a2)
    {

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v26 = v4 + 1;
    v6 = type metadata accessor for UUID();
    v28 = &v20;
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    __chkstk_darwin(v6);
    v25 = v9;
    v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = *(v11 + 72);
    v13 = *(v7 + 16);
    v23 = v4;
    v24 = v13;
    v14 = (v13)(v10, a1 + v12 * v4, v6);
    v15 = v5[2] + 1;
    v27 = v5;
    while (--v15)
    {
      v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      sub_10005F300(&qword_1001B94A8);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v5 = (v5 + v12);
      if (v14)
      {
        (*(v7 + 8))(v10, v6);

        return;
      }
    }

    __chkstk_darwin(v14);
    v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24(v18, v10, v6);
    v29 = v27;
    v19 = v27[2];
    if (v19 >= v27[3] >> 1)
    {
      sub_100070A90();
    }

    (*(v7 + 8))(v10, v6);
    v5 = v29;
    v29[2] = v19 + 1;
    (*(v7 + 32))(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v19 * v12, v18, v6);
    v4 = v26;
    a1 = v21;
  }

  __break(1u);
}

void sub_10010AE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceProviderDescriptor();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v20 - v9;
  v30 = &_swiftEmptyArrayStorage;
  sub_100021200();
  v11 = 0;
  v12 = v30;
  v29 = v5 + 16;
  v27 = (v5 + 8);
  v20[1] = v5 + 32;
  v21 = a1;
  v22 = a2;
  while (1)
  {
    if (v11 == a2)
    {
LABEL_11:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v13 = *(v5 + 72);
    v24 = v11;
    v25 = *(v5 + 16);
    v26 = v11 + 1;
    v25(v10, a1 + v13 * v11, v4);
    v14 = v12[2] + 1;
    v28 = v12;
    while (--v14)
    {
      v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_1000218A0(&qword_1001BBE20, &type metadata accessor for InferenceProviderDescriptor);
      v12 = (v12 + v13);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (*v27)(v10, v4);
        goto LABEL_11;
      }
    }

    v16 = v23;
    v25(v23, v10, v4);
    v30 = v28;
    v17 = v28[2];
    a2 = v22;
    if (v17 >= v28[3] >> 1)
    {
      sub_100021200();
      v16 = v23;
    }

    (*(v5 + 8))(v10, v4);
    v18 = v30;
    v30[2] = v17 + 1;
    v19 = v16;
    v12 = v18;
    (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v17 * v13, v19, v4);
    v11 = v26;
    a1 = v21;
  }

  __break(1u);
}

uint64_t sub_10010B0EC(uint64_t a1, uint64_t a2)
{
  result = sub_10000C958(0, a2 & ~(a2 >> 63), 0);
  v4 = &_swiftEmptyArrayStorage;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v22 = a2;
      while (!__OFADD__(v5, 1))
      {
        v24 = v5 + 1;
        v25 = v4;
        v6 = (a1 + 40 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = v6[2];
        v10 = v6[3];
        v26 = *(v6 + 32);
        v11 = *(v4 + 2);
        if (v11)
        {
          v21 = v5;
          v12 = (v4 + 64);
          while (1)
          {
            v14 = *(v12 - 2);
            v13 = *(v12 - 1);
            v15 = *v12;
            v16 = v7 == *(v12 - 4) && v8 == *(v12 - 3);
            if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_24;
            }

            if (!v10)
            {
              break;
            }

            if (!v13)
            {
              goto LABEL_24;
            }

            if (v9 != v14 || v10 != v13)
            {
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_24;
              }

LABEL_21:
              if (((v26 ^ v15) & 1) == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_24;
            }

            if (v26 == v15)
            {
LABEL_29:

              return v21;
            }

LABEL_24:
            v12 += 40;
            if (!--v11)
            {
              goto LABEL_25;
            }
          }

          if (v13)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

LABEL_25:
        v4 = v25;
        v19 = *(v25 + 2);
        v18 = *(v25 + 3);

        if (v19 >= v18 >> 1)
        {
          result = sub_10000C958((v18 > 1), v19 + 1, 1);
          v4 = v25;
        }

        *(v4 + 2) = v19 + 1;
        v20 = &v4[40 * v19];
        *(v20 + 4) = v7;
        *(v20 + 5) = v8;
        *(v20 + 6) = v9;
        *(v20 + 7) = v10;
        v20[64] = v26;
        v5 = v24;
        if (v24 == v22)
        {

          return v22;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_10010B2E8(void *a1, int64_t a2, uint64_t *a3)
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v4 = sub_10010C18C(a2, sub_10010C490);
  }

  else
  {
    v4 = sub_10010BCDC((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3);
  }

  *a1 = v5;
  return v4 & 1;
}

uint64_t sub_10010B368(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v37 = a4;
  v54 = result;
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = a3;
    v5 = 0;
    v35 = a2;
    v34 = a3;
    while (2)
    {
      if (__OFADD__(v5, 1))
      {
        __break(1u);
      }

      else
      {
        v36 = v5 + 1;
        v6 = type metadata accessor for UUID();
        v7 = *(v6 - 8);
        v8 = v7[8];
        __chkstk_darwin(v6);
        v41 = v9;
        v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = *(v11 + 72);
        v39 = v5;
        v45 = v12;
        v13 = v54 + v12 * v5;
        v14 = v7[2];
        v43 = v7 + 2;
        v44 = v13;
        v42 = v14;
        (v14)(v10);
        v15 = *v4;
        sub_10005F300(&qword_1001B8C00);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v16 = 1 << *v4;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (!v17)
        {
          v19 = v18 & result;
          v20 = v37;
          v21 = _HashTable.UnsafeHandle._startIterator(bucket:)();
          v23 = v22;
          v38 = v24;
          v40 = v7[1];
          v40(v10, v6);
          *&v46 = v4;
          *(&v46 + 1) = v20;
          *&v47 = v19;
          *(&v47 + 1) = v21;
          *&v48 = v23;
          *(&v48 + 1) = v38;
          v49 = 0;
          while (1)
          {
            v50 = v46;
            v51 = v47;
            v52 = v48;
            v53 = v49;
            v25 = _HashTable.BucketIterator.currentValue.getter();
            if (v26)
            {
              break;
            }

            v27 = v41;
            v28 = __chkstk_darwin(v25);
            v29 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
            v30 = v42;
            v31 = (v42)(v29, v54 + v28 * v45, v6);
            __chkstk_darwin(v31);
            v30(v29, v44, v6);
            sub_10005F300(&qword_1001B94A8);
            v32 = dispatch thunk of static Equatable.== infix(_:_:)();
            v33 = v40;
            v40(v29, v6);
            v33(v29, v6);
            if (v32)
            {
              return 0;
            }

            _HashTable.BucketIterator.advance()();
          }

          result = _HashTable.BucketIterator.currentValue.setter();
          v5 = v36;
          v4 = v34;
          if (v36 != v35)
          {
            continue;
          }

          return 1;
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10010B6FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a4;
  v55 = a1;
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v15 = &v34 - v14;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v45 = a3;
  v37 = v4;
  v16 = 0;
  v17 = (v13 + 8);
  v36 = a2;
  v35 = v13;
  while (2)
  {
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v38 = v16 + 1;
    v18 = *(v13 + 72);
    v44 = v16;
    v46 = v18;
    v19 = v55 + v18 * v16;
    v20 = *(v13 + 16);
    v20(v15, v19, v7);
    v21 = v45;
    v22 = *v45;
    sub_1000218A0(&qword_1001BB6C0, &type metadata accessor for InferenceProviderDescriptor);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v23 = 1 << *v21;
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v24)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v43 = v25 & result;
    v26 = v39;
    v27 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    v41 = v28;
    v42 = v27;
    v40 = v29;
    v30 = *v17;
    (*v17)(v15, v7);
    *&v47 = v45;
    *(&v47 + 1) = v26;
    *&v48 = v43;
    *(&v48 + 1) = v42;
    *&v49 = v41;
    *(&v49 + 1) = v40;
    v50 = 0;
    while (1)
    {
      v51 = v47;
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v31 = _HashTable.BucketIterator.currentValue.getter();
      if (v32)
      {
        break;
      }

      v20(v15, v55 + v31 * v46, v7);
      v20(v11, v19, v7);
      sub_1000218A0(&qword_1001BBE20, &type metadata accessor for InferenceProviderDescriptor);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30(v11, v7);
      v30(v15, v7);
      if (v33)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    v16 = v38;
    v13 = v35;
    if (v38 != v36)
    {
      continue;
    }

    return 1;
  }
}

Swift::Int sub_10010BA6C(Swift::Int result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    v32 = v6 + 1;
    v7 = v5 + 40 * v6;
    v44 = *(v7 + 32);
    v8 = *(v7 + 16);
    v42 = *v7;
    v43 = v8;
    v45 = v42;
    v46[0] = v8;
    v9 = *v4;
    Hasher.init(_seed:)();
    sub_100020E14(&v45, v33);
    sub_10010C4AC(v46, v33, &qword_1001BC8C8, &qword_100172F48);
    AssetInferenceProvider.hash(into:)();
    result = Hasher._finalize()();
    v10 = 1 << *v4;
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v13 = v12 & result;
    v14 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    v16 = v15;
    v47 = v17;
    sub_100021010(&v45);
    sub_10000ECD8(v46, &qword_1001BC8C8, &qword_100172F48);
    *&v34 = v4;
    *(&v34 + 1) = a4;
    *&v35 = v13;
    *(&v35 + 1) = v14;
    *&v36 = v16;
    *(&v36 + 1) = v47;
    v37 = 0;
    while (1)
    {
      v38 = v34;
      v39 = v35;
      v40 = v36;
      v41 = v37;
      v18 = _HashTable.BucketIterator.currentValue.getter();
      if (v19)
      {
        break;
      }

      v20 = v5 + 40 * v18;
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      v23 = *(v20 + 32);
      v25 = *(v7 + 16);
      v24 = *(v7 + 24);
      v26 = *(v7 + 32);
      v27 = *v20 == *v7 && *(v20 + 8) == *(v7 + 8);
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }

      if (!v22)
      {
        if (v24)
        {
          goto LABEL_25;
        }

LABEL_22:
        if (((v23 ^ v26) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_25;
      }

      if (!v24)
      {
        goto LABEL_25;
      }

      if (v21 != v25 || v22 != v24)
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      if (v23 == v26)
      {
        return 0;
      }

LABEL_25:
      _HashTable.BucketIterator.advance()();
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    v6 = v32;
    v4 = a3;
    if (v32 != a2)
    {
      continue;
    }

    return 1;
  }
}

Swift::Int sub_10010BCDC(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v4 = result;
  v5 = 0;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v6 = *(v4 + 8 * v5);
    v7 = *a3;
    Hasher.init(_seed:)();

    sub_10001214C();
    result = Hasher._finalize()();
    if (__OFSUB__(1 << *a3, 1))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v14 = v5 + 1;
    _HashTable.UnsafeHandle._startIterator(bucket:)();

    while (1)
    {
      v8 = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
        break;
      }

      v10 = *(v4 + 8 * v8);
      v11 = *(v4 + 8 * v5);
      type metadata accessor for InferenceProviderAsset(0);

      v12 = sub_100019CE4(v10, v11);

      if (v12)
      {
        return 0;
      }

      _HashTable.BucketIterator.advance()();
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    ++v5;
    if (v14 != v13)
    {
      continue;
    }

    return 1;
  }
}

void sub_10010BE98()
{
  sub_10000A274();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for InferenceProviderDescriptor();
  v7 = sub_100002BDC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100002B8C();
  v14 = v13 - v12;
  sub_100020444(v1, v3, v13 - v12);
  v15 = *v5;
  sub_10000A6A0();
  sub_1000218A0(v16, v17);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  if (__OFSUB__(1 << *v5, 1))
  {
    __break(1u);
  }

  else
  {
    v18 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    (*(v9 + 8))(v14, v6);
    if (!v18)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v21 = v18;
      v19 = _HashTable.BucketIterator.currentValue.getter();
      if ((v20 & 1) == 0 && v19 == v1)
      {
        break;
      }

      _HashTable.BucketIterator.advance()();
    }

    while (!v21)
    {
LABEL_6:
      __break(1u);
    }

    sub_100005874();
  }
}

Swift::Int sub_10010C050(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  Hasher.init(_seed:)();
  AssetInferenceProvider.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (_HashTable.UnsafeHandle._startIterator(bucket:)())
    {
      while (1)
      {
        _HashTable.BucketIterator.advance()();
      }
    }

    v8 = *(*(a4 + 8) + 16);
    return _HashTable.BucketIterator.currentValue.setter();
  }

  return result;
}

void *sub_10010C120(int64_t a1, void *(*a2)(uint64_t *__return_ptr, void *, uint64_t))
{
  v4 = sub_10010C208(a1);
  v5 = v4[2];

  result = a2(&v7, v4 + 4, v5);
  if (!v2)
  {
    return v7;
  }

  return result;
}

uint64_t sub_10010C18C(int64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t))
{
  v4 = sub_10010C208(a1);
  v5 = v4[2];

  a2(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void *sub_10010C208(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_10010A830(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

unint64_t sub_10010C2C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    sub_100002F04(v6);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10010C36C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10010C3D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_10010C430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10002D12C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

Swift::Int sub_10010C45C@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_10010BCDC(a1, a2, a3);
  if (!v4)
  {
    *a4 = result & 1;
    *(a4 + 8) = v7;
  }

  return result;
}

uint64_t sub_10010C4AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100065020(a3, a4);
  sub_100002C00(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000062B0();
  v9(v8);
  return a2;
}

uint64_t sub_10010C528(void *a1)
{
  v4 = type metadata accessor for RequestCancellationReason();
  sub_100002F04(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006F558;

  return sub_100109DAC(a1, v7, v1 + v6);
}

__n128 sub_10010C608(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10010C61C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010C65C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *sub_10010C6AC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for XPCSession.InitializationOptions();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for XPCEndpoint();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100065020(&qword_1001BC8D8, &unk_1001730C0);
  v12 = swift_allocObject();
  type metadata accessor for XPCSession();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  (*(v8 + 16))(v11, a1, v7);
  static XPCSession.InitializationOptions.inactive.getter();
  v13 = XPCSession.__allocating_init(endpoint:targetQueue:options:cancellationHandler:)();
  if (v2)
  {
    v14 = type metadata accessor for AuditToken();
    sub_1000055EC(v14);
    (*(v15 + 8))(a2);
    v16 = sub_100002DD4();
    v17(v16);
  }

  else
  {
    v11 = v13;

    v26 = a2;
    v18 = AuditToken.processIdentifier.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    *(v19 + 24) = v18;
    *(v19 + 32) = v12;
    swift_retain_n();
    swift_retain_n();
    dispatch thunk of XPCSession.setCancellationHandler(_:)();

    dispatch thunk of XPCSession.activate()();

    v21 = type metadata accessor for AuditToken();
    sub_1000055EC(v21);
    (*(v22 + 8))(v26);
    v23 = sub_100002DD4();
    v24(v23);
  }

  return v11;
}

void sub_10010C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  os_unfair_lock_lock((a4 + 32));
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = &unk_1001730F0;
    *(v12 + 24) = v11;
    v9 = swift_allocObject();
    *(v9 + 16) = &unk_1001730F0;
    *(v9 + 24) = v11;

    v13 = &unk_1001730F8;
    v14 = &unk_100173100;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = *(a4 + 24);
  }

  *(a4 + 16) = v14;
  *(a4 + 24) = v9;
  os_unfair_lock_unlock((a4 + 32));
  if (v10)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v12;
    v16 = type metadata accessor for TaskPriority();
    sub_100009BFC(v8, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = &unk_1001730D8;
    v17[5] = v15;
    sub_1000652FC();
  }
}

uint64_t sub_10010CBA4(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10010D2F0;

  return v5();
}

uint64_t sub_10010CC8C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10010D2F0;

  return v6();
}

uint64_t sub_10010CD74(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10010CE5C;

  return v8();
}

uint64_t sub_10010CE5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10010CF50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = a1[1];
    sub_100016484(v6);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *a1 = &unk_1001730B8;
  a1[1] = v8;
}

Swift::Int sub_10010D000(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10010D058()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_10010D0AC()
{
  result = qword_1001BC8D0;
  if (!qword_1001BC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC8D0);
  }

  return result;
}

uint64_t sub_10010D100()
{
  sub_100001ED0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v6 = sub_100004F40(v4);

  return v7(v6);
}

uint64_t sub_10010D1A4()
{
  sub_100001ED0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_100011504(v4);

  return v6(v5);
}

uint64_t sub_10010D238(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_100004B00(v7);
  *v8 = v9;
  v8[1] = sub_10010CE5C;

  return sub_10010CD74(a1, v3, v4, v6);
}

uint64_t sub_10010D2F4()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    if (qword_1001B89B8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000641C(v1, qword_1001BC8E0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "xpc_object_t casting error into xpc_remote_connection_t", v4, 2u);
    }

    v5 = type metadata accessor for ModelManagerError();
    sub_1000FF0F4();
    swift_allocError();
    *v6 = 0xD000000000000037;
    v6[1] = 0x80000001001776C0;
    (*(*(v5 - 8) + 104))(v6, enum case for ModelManagerError.remoteXPCError(_:), v5);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t sub_10010D494()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC8E0);
  sub_10000641C(v0, qword_1001BC8E0);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010D510(uint64_t result)
{
  v2 = *(result + 16);
  v3 = (result + 40);
  if (v2)
  {
    while (1)
    {
      v4 = *v3;
      v5[0] = *(v3 - 1);
      v5[1] = v4;

      sub_1001140B8(v5);
      if (v1)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10010D5A0()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BC8F8);
  sub_10000641C(v0, qword_1001BC8F8);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010D610(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10010D630, 0, 0);
}

uint64_t sub_10010D630()
{
  sub_100001ED0();
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for CoherentAssetLock();
  sub_100065020(&qword_1001B9090, &unk_100172C70);
  sub_1000119E4();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = xmmword_10016FF40;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = async function pointer to static CoherentAssetLock.createUnlockedAssetLock(resources:)[1];

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_10010D71C;

  return static CoherentAssetLock.createUnlockedAssetLock(resources:)(v3);
}

uint64_t sub_10010D71C()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 32);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v10 + 48) = v9;
  *(v10 + 56) = v0;

  sub_1000059F8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10010D838()
{
  sub_100001ED0();
  v1 = v0[6];
  v2 = v0[7];

  dispatch thunk of CoherentAssetLock.lock()();
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];

    sub_100001F00();

    return v5();
  }

  else
  {
    v7 = v0[6];

    v8 = v0[1];
    v9 = v0[6];
    v10 = v0[2];
    v11 = v0[3];

    return v8(v9, v10, v11, 1);
  }
}

uint64_t sub_10010D90C()
{
  sub_100002BAC();
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  sub_100001F00();

  return v3();
}

uint64_t sub_10010D968()
{
  sub_100002BAC();
  v1[2] = v0;
  v1[3] = *v0;
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_10010DA28;
  v3 = sub_1000062B0();

  return sub_10010D610(v3, v4);
}

uint64_t sub_10010DA28(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_100001EF4();
  v11 = v10;
  sub_100003960();
  *v12 = v11;
  v14 = *(v13 + 32);
  v15 = *v5;
  sub_100002B9C();
  *v16 = v15;
  *(v11 + 40) = v4;

  if (!v4)
  {
    *(v11 + 72) = a4;
    *(v11 + 48) = a3;
    *(v11 + 56) = a2;
    *(v11 + 64) = a1;
  }

  sub_1000059F8();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_10010DB60()
{
  sub_100003884();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  v5 = *(v0 + 16);
  sub_100065020(&qword_1001BCB88, &unk_100173360);
  sub_1000119E4();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 44) = 0;
  *(v5 + 16) = v6;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);

  return v7(v8);
}

uint64_t sub_10010DC08()
{
  sub_100002BAC();
  v1 = v0[2];
  v2 = v0[3];
  swift_deallocPartialClassInstance();
  sub_100001F00();
  v4 = v0[5];

  return v3();
}

uint64_t sub_10010DC88()
{
  v1 = *(v0[2] + 16);
  os_unfair_lock_lock((v1 + 44));
  v0[3] = *(v1 + 16);
  v0[4] = *(v1 + 24);
  v0[5] = *(v1 + 32);

  os_unfair_lock_unlock((v1 + 44));
  if (qword_1001B89C0 != -1)
  {
    sub_100005264();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[6] = sub_100002FD0(v2, qword_1001BC8F8);

  v3 = Logger.logObject.getter();
  static os_log_type_t.info.getter();

  if (sub_100010C0C())
  {
    sub_10000A05C();
    v4 = swift_slowAlloc();
    sub_1000033D0();
    v17 = swift_slowAlloc();
    *v4 = 136315138;
    v5 = sub_100003754();
    *(v4 + 4) = sub_100004A3C(v5, v6, v7);
    sub_10000A318();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100003324(v17);
    sub_100005864();

    sub_100007C2C();
  }

  v13 = *(&async function pointer to dispatch thunk of CoherentAssetLock.updateAvailable() + 1);
  v16 = (&async function pointer to dispatch thunk of CoherentAssetLock.updateAvailable() + async function pointer to dispatch thunk of CoherentAssetLock.updateAvailable());
  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_10010DE58;

  return v16();
}

uint64_t sub_10010DE58()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  sub_1000059F8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10010DF48()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);
    v9 = swift_slowAlloc();
    sub_1000033D0();
    v19 = swift_slowAlloc();
    sub_1000456DC(4.8151e-34);
    v10 = sub_100004CA4();
    v13 = sub_100004A3C(v10, v11, v12);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "updateAvailable for %s returned: [%{BOOL}d]", v9, 0x12u);
    sub_100003324(v19);
    sub_100005864();

    sub_100007C2C();
  }

  else
  {
    v14 = *(v0 + 40);
    v15 = *(v0 + 24);
  }

  v16 = *(v0 + 8);
  v17 = *(v0 + 64);

  return v16(v17);
}

uint64_t sub_10010E0B8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 44));
  v2 = *(v1 + 40);
  os_unfair_lock_unlock((v1 + 44));
  if (v2)
  {
    os_unfair_lock_lock((v1 + 44));
    sub_10010E128((v1 + 16));
    os_unfair_lock_unlock((v1 + 44));
  }

  return v0;
}

uint64_t sub_10010E128(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(a1 + 6);
  if (qword_1001B89C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000641C(v5, qword_1001BC8F8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315394;
    v10 = sub_100004A3C(v3, v2, &v13);

    *(v8 + 4) = v10;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "Lock deinited for %s while locked [%u]", v8, 0x12u);
    sub_100003324(v9);
  }

  else
  {
  }

  v11 = *a1;
  return dispatch thunk of CoherentAssetLock.unlock()();
}

uint64_t sub_10010E2A8()
{
  sub_10010E0B8();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10010E300()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100013EFC;

  return sub_10010DC6C();
}

void sub_10010E3A8(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_1001B89C0 != -1)
  {
    sub_100005264();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002FD0(v6, qword_1001BC8F8);

  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    sub_10000A05C();
    v8 = swift_slowAlloc();
    sub_1000033D0();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100004A3C(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, oslog, v7, a3, v8, 0xCu);
    sub_100003324(v9);
    sub_1000039CC();

    sub_100002BD0();
  }
}

uint64_t sub_10010E534()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014870;

  return sub_10010E390();
}

uint64_t sub_10010E5C0()
{
  result = static Catalog.modelManagerDefaultMemoryBudget.getter();
  qword_1001BE960 = result;
  return result;
}

uint64_t sub_10010E5E0()
{
  result = static Catalog.modelManagerForegroundOvercommitBudget.getter();
  qword_1001BE968 = result;
  return result;
}

uint64_t sub_10010E600()
{
  v0 = type metadata accessor for CatalogClient();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = CatalogClient.init()();
  qword_1001BE970 = result;
  return result;
}

void sub_10010E640()
{
  v1 = v0;
  v56 = type metadata accessor for ModelCatalogAsset(0);
  v2 = sub_100002BDC(v56);
  v58 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100009C24();
  v55 = v6;
  sub_100002F1C();
  __chkstk_darwin(v7);
  sub_1000079F8();
  v59 = v8;
  sub_100002F1C();
  __chkstk_darwin(v9);
  v11 = v52 - v10;
  v54 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = sub_100002BDC(v54);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100002B8C();
  *&v53 = v18 - v17;
  sub_100003B1C();
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  v20 = sub_100002C00(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_100002B8C();
  v23 = type metadata accessor for DispatchQoS();
  v24 = sub_100002F04(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100002B8C();
  swift_defaultActor_initialize();
  if (qword_1001B89C8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v57 = v11;
  v1[14] = qword_1001BE960;
  if (qword_1001B89D0 != -1)
  {
    swift_once();
  }

  v1[15] = qword_1001BE968;
  sub_10006A92C();
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_100015F54(&qword_1001B8BC8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100065020(&qword_1001B8BD0, &qword_10016F7A0);
  sub_10011681C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v53, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v54);
  v1[16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for AssetLock();
  sub_100003978();
  sub_100009BFC(v27, v28, v29, v30);
  *(v1 + OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_ignoreAssetUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_onAssetUpdateHandlers) = _swiftEmptyArrayStorage;
  if (qword_1001B89C0 != -1)
  {
    sub_100005264();
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100002FD0(v31, qword_1001BC8F8);
  v32 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v11))
  {
    sub_10000A05C();
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    if (qword_1001B8A68 != -1)
    {
      sub_1000030C4();
    }

    *(v33 + 4) = *(qword_1001BEB10 + 16);
    _os_log_impl(&_mh_execute_header, v32, v11, "%ld builtin test assets", v33, 0xCu);
    sub_100005864();
  }

  v52[1] = v1;

  if (qword_1001B8A68 != -1)
  {
    sub_1000030C4();
  }

  v35 = 0;
  v1 = qword_1001BEB10;
  v36 = *(qword_1001BEB10 + 16);
  *&v34 = 136315138;
  v53 = v34;
  v14 = v59;
  v37 = v57;
  v54 = qword_1001BEB10;
  while (v36 != v35)
  {
    if (v35 >= v1[2])
    {
      __break(1u);
      goto LABEL_21;
    }

    v38 = *(v58 + 80);
    sub_10000657C();
    v40 = *(v39 + 72);
    sub_100012570();
    sub_100116600(v41, v37);
    sub_100116600(v37, v14);
    v42 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v11))
    {
      sub_10000A05C();
      v43 = swift_slowAlloc();
      sub_1000033D0();
      v44 = v36;
      v45 = swift_slowAlloc();
      v60 = v45;
      *v43 = v53;
      sub_100116600(v14, v55);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      sub_100116658(v59, type metadata accessor for ModelCatalogAsset);
      v49 = sub_100004A3C(v46, v48, &v60);
      v14 = v59;

      *(v43 + 4) = v49;
      v37 = v57;
      _os_log_impl(&_mh_execute_header, v42, v11, "%s", v43, 0xCu);
      sub_100003324(v45);
      v36 = v44;
      v1 = v54;
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {

      sub_10000574C();
      sub_100116658(v14, v50);
    }

    sub_10000574C();
    sub_100116658(v37, v51);
    ++v35;
  }

  sub_100002EEC();
}

uint64_t sub_10010EC34()
{
  static Catalog.Resource.DisabledUseCaseList.All()();
  v0 = v3[4];
  sub_100003370(v3, v3[3]);
  v1 = *(*(v0 + 8) + 8);
  sub_100003170();
  dispatch thunk of CatalogResource.id.getter();
  sub_100003324(v3);
  return sub_1000062B0();
}

uint64_t sub_10010EC94(uint64_t a1, uint64_t (*a2)(void))
{
  v6 = sub_100065020(&qword_1001BCB68, &unk_100173328);
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  sub_100004B1C();
  __chkstk_darwin(v9);
  v10 = sub_100057858();
  v11 = sub_100002BDC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002B8C();
  v18 = v17 - v16;
  type metadata accessor for ModelCatalogProvider(0);
  sub_10011275C(a1, a2, v3);
  if (sub_10000C6C0(v3, 1, v10) == 1)
  {
    sub_10000ECD8(v3, &qword_1001BCB68, &unk_100173328);
    if (qword_1001B89C0 != -1)
    {
      sub_100005264();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000641C(v19, qword_1001BC8F8);
    sub_100003170();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_100007958();
      v22 = swift_slowAlloc();
      v41 = v22;
      *v3 = 136315138;
      *(v3 + 4) = sub_100004A3C(a1, a2, &v41);
      sub_100019C20();
      _os_log_impl(v23, v24, v25, v26, v27, v28);
      sub_100003324(v22);
      sub_100007C2C();

      sub_1000039CC();
    }

    v29 = type metadata accessor for ModelManagerError();
    sub_100008744();
    sub_100015F54(v30, v31);
    sub_100007894();
    swift_allocError();
    *v32 = a1;
    v32[1] = a2;
    sub_100006098(v29);
    (*(v33 + 104))();
    swift_willThrow();
  }

  else
  {
    sub_100012570();
    sub_10000C43C(v3, v18);
    sub_100065020(&qword_1001BCB90, &qword_100173370);
    v35 = *(v13 + 72);
    v36 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10016FF40;
    sub_100116600(v18, v37 + v36);
    sub_1000089FC();
    v41 = v38;
    v39 = *(v18 + 16);

    sub_10010D510(v40);
    sub_100116658(v18, a2);

    result = v41;
    if (v2)
    {
    }
  }

  return result;
}

uint64_t sub_10010EFD4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CatalogErrors.AssetErrors();
  v8 = sub_100002BDC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100002B8C();
  if (qword_1001B89D8 != -1)
  {
    sub_100002DE4();
    swift_once();
  }

  sub_100004CA4();
  dispatch thunk of CatalogClient.resource(for:)();
  if (v3)
  {
    v63 = a3;
    v62[0] = v3;
    swift_errorRetain();
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    if (swift_dynamicCast())
    {
      v13 = *(v10 + 88);
      v14 = sub_100005980();
      if (v15(v14) == enum case for CatalogErrors.AssetErrors.failedToFindAsset(_:))
      {

        v16 = *(v10 + 8);
        v17 = sub_100005980();
        v18(v17);
        type metadata accessor for URL();
        sub_100003978();
        sub_100009BFC(v19, v20, v21, v22);
      }

      v23 = *(v10 + 8);
      v24 = sub_100005980();
      v25(v24);
    }

    v62[0] = v3;
    swift_errorRetain();
    v26 = String.init<A>(describing:)();
    v28 = v27;
    if (qword_1001B89C0 != -1)
    {
      sub_100005264();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000641C(v29, qword_1001BC8F8);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      sub_100002F10();
      v32 = swift_slowAlloc();
      sub_100011828();
      v62[0] = swift_slowAlloc();
      *v32 = 136315394;
      *(v32 + 4) = sub_100004A3C(a1, a2, v62);
      *(v32 + 12) = 2080;
      v33 = sub_100004A3C(v26, v28, v62);

      *(v32 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to get asset location for %s: %s", v32, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();
    }

    else
    {
    }

    v34 = type metadata accessor for ModelManagerError();
    sub_100008744();
    sub_100015F54(v35, v36);
    sub_10000EF40();
    swift_allocError();
    v38 = v37;
    v62[0] = v3;
    swift_errorRetain();
    *v38 = String.init<A>(describing:)();
    v38[1] = v39;
    sub_100006098(v34);
    (*(v40 + 104))(v38);
    swift_willThrow();
  }

  if (v58)
  {
    sub_100065020(&qword_1001BCB38, &qword_1001732E0);
    sub_100065020(&qword_1001BCB40, &qword_1001732E8);
    if (swift_dynamicCast())
    {
      if (*(&v60 + 1))
      {
        v63 = a3;
        sub_100004A04(&v59, v62);
        sub_100003370(v62, v62[3]);
        *(&v60 + 1) = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_10000366C(&v59);
        dispatch thunk of AssetBackedResource.fetchAsset()();
        sub_100003370(&v59, *(&v60 + 1));
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        sub_100002BDC(AssociatedTypeWitness);
        v47 = v46;
        v49 = *(v48 + 64);
        sub_100004B1C();
        __chkstk_darwin(v50);
        dispatch thunk of CatalogAssetProtocol.contents.getter();
        sub_100004CA4();
        swift_getAssociatedConformanceWitness();
        v51 = v63;
        dispatch thunk of AssetContents.baseURL.getter();
        v52 = *(v47 + 8);
        v53 = sub_100019678();
        v54(v53);
        v55 = type metadata accessor for URL();
        sub_100009BFC(v51, 0, 1, v55);
        sub_100003324(&v59);
        return sub_100003324(v62);
      }
    }

    else
    {
      AssociatedConformanceWitness = 0;
      v59 = 0u;
      v60 = 0u;
    }
  }

  else
  {
    sub_10000ECD8(v57, &qword_1001BCB70, &qword_100173338);
    v59 = 0u;
    v60 = 0u;
    AssociatedConformanceWitness = 0;
  }

  sub_10000ECD8(&v59, &qword_1001BCB48, &unk_1001732F0);
  type metadata accessor for URL();
  sub_100003978();
  return sub_100009BFC(v41, v42, v43, v44);
}

uint64_t sub_10010F63C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  sub_100004B1C();
  __chkstk_darwin(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_onAssetUpdateHandlers;
  swift_beginAccess();

  sub_10013F9D0();
  v12 = *(*(v2 + v11) + 16);
  sub_10013FA6C(v12);
  v13 = *(v2 + v11);
  *(v13 + 16) = v12 + 1;
  v14 = v13 + 16 * v12;
  *(v14 + 32) = &unk_100173380;
  *(v14 + 40) = v10;
  *(v2 + v11) = v13;
  swift_endAccess();
  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v15, v16, v17, v18);
  sub_100013EC8();
  v21 = sub_100015F54(v19, v20);
  v22 = swift_allocObject();
  v22[2] = v3;
  v22[3] = v21;
  v22[4] = v3;
  v22[5] = a1;
  v22[6] = a2;
  swift_retain_n();

  sub_10000C65C();
  sub_1000652FC();
}

uint64_t sub_10010F7EC(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, int *a4)
{
  v5 = *a2;
  v6 = *a3;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10006F558;

  return v10(v5, v6);
}

uint64_t sub_10010F8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[39] = a5;
  v6[40] = a6;
  v6[38] = a4;
  v8 = sub_100065020(&qword_1001BCB58, &qword_100173318);
  v6[41] = v8;
  v9 = *(v8 - 8);
  v6[42] = v9;
  v10 = *(v9 + 64) + 15;
  v6[43] = swift_task_alloc();
  v11 = sub_100065020(&qword_1001BCB50, &qword_100173310);
  v6[44] = v11;
  v12 = *(v11 - 8);
  v6[45] = v12;
  v13 = *(v12 + 64) + 15;
  v6[46] = swift_task_alloc();

  return _swift_task_switch(sub_10010FA54, a4, 0);
}

uint64_t sub_10010FA54()
{
  if (qword_1001B89D8 != -1)
  {
    sub_100002DE4();
    swift_once();
  }

  v1 = dispatch thunk of CatalogClient.resources()();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      sub_100007130(v3, v0 + 16);
      sub_100004A04((v0 + 16), v0 + 136);
      sub_100065020(&qword_1001BCB38, &qword_1001732E0);
      sub_100065020(&qword_1001BCB40, &qword_1001732E8);
      if (swift_dynamicCast())
      {
        if (*(v0 + 120))
        {
          sub_100004A04((v0 + 96), v0 + 56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = v4[2];
            sub_1000080E4();
            sub_100140454();
            v4 = v8;
          }

          v6 = v4[2];
          v5 = v4[3];
          if (v6 >= v5 >> 1)
          {
            sub_1000127D4(v5);
            sub_100140454();
            v4 = v9;
          }

          v4[2] = v6 + 1;
          sub_100004A04((v0 + 56), &v4[5 * v6 + 4]);
          goto LABEL_14;
        }
      }

      else
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }

      sub_10000ECD8(v0 + 96, &qword_1001BCB48, &unk_1001732F0);
LABEL_14:
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v10 = *(v0 + 344);
  static Catalog.monitorUpdates(for:on:)();
  v11 = *(v0 + 368);
  v13 = *(v0 + 336);
  v12 = *(v0 + 344);
  v14 = *(v0 + 328);

  AsyncStream.makeAsyncIterator()();
  v15 = *(v13 + 8);
  v16 = sub_100003754();
  v17(v16);
  sub_100013EC8();
  v20 = sub_100015F54(v18, v19);
  v21 = OBJC_IVAR____TtC13modelmanagerd20ModelCatalogProvider_ignoreAssetUpdates;
  *(v0 + 376) = v20;
  *(v0 + 384) = v21;
  v22 = *(v0 + 304);
  v23 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v24 = swift_task_alloc();
  *(v0 + 392) = v24;
  *v24 = v0;
  sub_10000A6B8(v24);
  v25 = sub_100018A4C();

  return AsyncStream.Iterator.next(isolation:)(v25);
}

uint64_t sub_10010FEDC()
{
  sub_100002BAC();
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 304);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_10011000C, v2, 0);
}

uint64_t sub_10011000C()
{
  v1 = v0[36];
  if (!v1)
  {
    (*(v0[45] + 8))(v0[46], v0[44]);
    if (qword_1001B89C0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

  if ((*(v0[38] + v0[48]) & 1) == 0)
  {
    type metadata accessor for _OSActivity();
    v0[50] = swift_initStackObject();
    v0[51] = sub_10001B160("Received asset update notifications from ModelCatalog", 53, 2);
    v17 = *(v1 + 16);
    if (v17)
    {
      v0[37] = _swiftEmptyArrayStorage;
      sub_10002045C(0, v17, 0);
      v18 = v0[37];
      v19 = v1 + 32;
      do
      {
        sub_100007130(v19, (v0 + 27));
        v20 = v0[31];
        sub_100003370(v0 + 27, v0[30]);
        v21 = *(v20 + 8);
        sub_100019498();
        v22 = dispatch thunk of CatalogResource.id.getter();
        v24 = v23;
        sub_100003324(v0 + 27);
        v0[37] = v18;
        v26 = v18[2];
        v25 = v18[3];
        if (v26 >= v25 >> 1)
        {
          v28 = sub_1000127D4(v25);
          sub_10002045C(v28, v26 + 1, 1);
          v18 = v0[37];
        }

        v18[2] = v26 + 1;
        v27 = &v18[2 * v26];
        v27[4] = v22;
        v27[5] = v24;
        v19 += 40;
        --v17;
      }

      while (v17);
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    v29 = sub_100077254(v18);
    v30 = v29;
    v0[52] = v29;
    v31 = v29 + 56;
    v32 = -1;
    v33 = -1 << *(v29 + 32);
    if (-v33 < 64)
    {
      v32 = ~(-1 << -v33);
    }

    v34 = v32 & *(v29 + 56);
    v35 = (63 - v33) >> 6;

    v37 = 0;
    v58 = v31;
    v60 = v36;
    while (v34)
    {
      v38 = v37;
LABEL_27:
      v39 = (*(v30 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v34)))));
      v41 = *v39;
      v40 = v39[1];
      v42 = qword_1001B89C0;

      if (v42 != -1)
      {
        sub_100005264();
        swift_once();
      }

      v34 &= v34 - 1;
      v43 = type metadata accessor for Logger();
      sub_100002FD0(v43, qword_1001BC8F8);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v44, v45))
      {
        sub_10000A05C();
        v46 = swift_slowAlloc();
        sub_1000033D0();
        v61 = swift_slowAlloc();
        *v46 = 136315138;
        v47 = sub_100019678();
        v50 = sub_100004A3C(v47, v48, v49);

        *(v46 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v44, v45, "Received asset update notification for %s", v46, 0xCu);
        sub_100003324(v61);
        v30 = v60;
        sub_100002BD0();

        v31 = v58;
        sub_100002BD0();
      }

      else
      {
      }

      v37 = v38;
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        v51 = v0[39];

        v59 = v51 + *v51;
        v52 = v51[1];
        v53 = swift_task_alloc();
        v0[53] = v53;
        *v53 = v0;
        v53[1] = sub_1001105B8;
        v54 = v0[40];
        sub_1000037A0();

        __asm { BRAA            X2, X16 }
      }

      v34 = *(v31 + 8 * v38);
      ++v37;
      if (v34)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_37:
    sub_100005264();
    swift_once();
LABEL_7:
    v9 = type metadata accessor for Logger();
    sub_100002FD0(v9, qword_1001BC8F8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "ModelCatalog asset update stream ended unexpectedly", v12, 2u);
      sub_100002BD0();
    }

    v13 = v0[46];
    v14 = v0[43];

    sub_100001F00();
    sub_1000037A0();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[36];

  v3 = v0[47];
  v4 = v0[38];
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[49] = v6;
  *v6 = v0;
  sub_10000A6B8();
  sub_100018A4C();
  sub_1000037A0();

  return AsyncStream.Iterator.next(isolation:)(v7);
}

uint64_t sub_1001105B8()
{
  sub_100001ED0();
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 304);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  return _swift_task_switch(sub_10011070C, v3, 0);
}

uint64_t sub_10011070C()
{
  sub_100001ED0();
  v1 = v0[51];
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  v2 = v0[47];
  v3 = v0[38];
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[49] = v5;
  *v5 = v0;
  sub_10000A6B8();
  v6 = sub_100018A4C();

  return AsyncStream.Iterator.next(isolation:)(v6);
}

uint64_t sub_1001107EC()
{
  sub_100002BAC();
  *(v1 + 616) = v2;
  *(v1 + 416) = v3;
  *(v1 + 424) = v0;
  *(v1 + 400) = v4;
  *(v1 + 408) = v5;
  v6 = type metadata accessor for CatalogErrors.AssetErrors();
  *(v1 + 432) = v6;
  sub_100002F44(v6);
  *(v1 + 440) = v7;
  v9 = *(v8 + 64);
  *(v1 + 448) = sub_100002C58();
  v10 = type metadata accessor for ModelManagerError();
  *(v1 + 456) = v10;
  sub_100002F44(v10);
  *(v1 + 464) = v11;
  v13 = *(v12 + 64) + 15;
  *(v1 + 472) = swift_task_alloc();
  *(v1 + 480) = swift_task_alloc();
  v14 = sub_100065020(&qword_1001BCB68, &unk_100173328);
  sub_100002F04(v14);
  v16 = *(v15 + 64);
  *(v1 + 488) = sub_100002C58();
  v17 = sub_100065020(&qword_1001B9F18, &qword_1001708D0);
  sub_100002F04(v17);
  v19 = *(v18 + 64);
  *(v1 + 496) = sub_100002C58();
  v20 = type metadata accessor for FilePath();
  *(v1 + 504) = v20;
  sub_100002F44(v20);
  *(v1 + 512) = v21;
  v23 = *(v22 + 64);
  *(v1 + 520) = sub_100002C58();
  v24 = type metadata accessor for AssetVersion();
  *(v1 + 528) = v24;
  sub_100002F44(v24);
  *(v1 + 536) = v25;
  v27 = *(v26 + 64);
  *(v1 + 544) = sub_100002C58();
  v28 = type metadata accessor for ModelCatalogProvider.CatalogAssetProtocolData(0);
  *(v1 + 552) = v28;
  sub_100002F04(v28);
  v30 = *(v29 + 64) + 15;
  *(v1 + 560) = swift_task_alloc();
  *(v1 + 568) = swift_task_alloc();
  *(v1 + 576) = swift_task_alloc();

  return _swift_task_switch(sub_100110A34, v0, 0);
}

uint64_t sub_100110A34()
{
  if (qword_1001B89D8 != -1)
  {
    sub_100002DE4();
    swift_once();
  }

  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  dispatch thunk of CatalogClient.resource(for:)();
  if (!*(v0 + 80))
  {
    v47 = *(v0 + 488);
    v49 = *(v0 + 408);
    v48 = *(v0 + 416);
    sub_10000ECD8(v0 + 56, &qword_1001BCB70, &qword_100173338);
    type metadata accessor for ModelCatalogProvider(0);
    sub_10011275C(v49, v48, v47);
    v50 = type metadata accessor for ModelCatalogAsset(0);
    v51 = sub_10000C6C0(v47, 1, v50);
    sub_10000ECD8(v47, &qword_1001BCB68, &unk_100173328);
    if (v51 == 1)
    {
      sub_100011DE8();
      if (!v18)
      {
        sub_100005264();
        swift_once();
      }

      v52 = *(v0 + 416);
      v53 = type metadata accessor for Logger();
      sub_100002FD0(v53, qword_1001BC8F8);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v57 = *(v0 + 408);
        v56 = *(v0 + 416);
        sub_10000A05C();
        swift_slowAlloc();
        sub_100007958();
        v163 = swift_slowAlloc();
        *v1 = 136315138;
        *(v1 + 4) = sub_1000126CC(v163);
        sub_100019C20();
        _os_log_impl(v58, v59, v60, v61, v62, v63);
        sub_100003324(v163);
        sub_100007C2C();

        sub_1000039CC();
      }

      v64 = *(v0 + 456);
      v65 = *(v0 + 464);
      v67 = *(v0 + 408);
      v66 = *(v0 + 416);
      sub_100008744();
      sub_100015F54(v68, v69);
      sub_10000EF40();
      v70 = swift_allocError();
      v72 = sub_100003624(v70, v71);
      (*(v65 + 104))(v72, enum case for ModelManagerError.assetNotFound(_:), v64);
      v73 = v70;
      swift_willThrow();

LABEL_4:
      sub_10000AA64();
      sub_100065020(&qword_1001B8F60, &unk_100171260);
      if (sub_10000F1E0())
      {
        v4 = sub_10000EF54();
        v5(v4);
        sub_100008744();
        sub_100015F54(v6, v7);
        v8 = sub_100012B30();
        v10 = sub_100008990(v8, v9);
        v11(v10);
        swift_willThrow();

        v12 = sub_10000C9F4();
        v13(v12);
        v14 = *(v0 + 376);
      }

      else
      {
        sub_100009B94();
        *(v0 + 384) = v70;
        swift_errorRetain();
        if (sub_10000F1E0())
        {
          v15 = sub_10000CE84();
          v16(v15);
          sub_100011980();
          if (v18)
          {
            (*(v17 + 96))(v73);
            v20 = *v73;
            v19 = v73[1];
            sub_100011DE8();
            if (!v18)
            {
              sub_100005264();
              swift_once();
            }

            v21 = sub_1000111C8();
            sub_10000641C(v21, qword_1001BC8F8);
            sub_100019498();

            v22 = Logger.logObject.getter();
            static os_log_type_t.error.getter();
            sub_10001E6A4();

            if (sub_100010C0C())
            {
              v24 = *(v0 + 408);
              v23 = *(v0 + 416);
              sub_100002F10();
              v25 = swift_slowAlloc();
              sub_100011828();
              swift_slowAlloc();
              sub_1000456DC(4.8151e-34);
              v26 = sub_100005980();
              v29 = sub_100004A3C(v26, v27, v28);
              v31 = sub_100007E88(v29, v30);

              *(v25 + 14) = v31;
              sub_10000A318();
              _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
              swift_arrayDestroy();
              sub_100005864();

              sub_100007C2C();
            }

            else
            {
            }

            v132 = *(v0 + 456);
            v131 = *(v0 + 464);
            v134 = *(v0 + 408);
            v133 = *(v0 + 416);
            sub_100008744();
            sub_100015F54(v135, v136);
            sub_100007894();
            v137 = swift_allocError();
            v139 = sub_100003624(v137, v138);
            (*(v131 + 104))(v139, enum case for ModelManagerError.assetNotFound(_:), v132);
            sub_100036E50();

            v140 = *(v0 + 384);
            goto LABEL_43;
          }

          v95 = sub_10000C75C(v17);
          v96(v95);
        }

        v97 = *(v0 + 384);

        *(v0 + 392) = v70;
        swift_errorRetain();
        swift_errorRetain();
        v98 = String.init<A>(describing:)();
        v100 = v99;
        sub_100011DE8();
        if (!v18)
        {
          sub_100005264();
          swift_once();
        }

        v101 = sub_1000111C8();
        sub_10000641C(v101, qword_1001BC8F8);
        sub_100019498();

        v102 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_10001E6A4();

        if (sub_100010C0C())
        {
          v104 = *(v0 + 408);
          v103 = *(v0 + 416);
          sub_100002F10();
          v105 = swift_slowAlloc();
          sub_100011828();
          swift_slowAlloc();
          sub_1000456DC(4.8151e-34);
          v106 = sub_100019678();
          v109 = sub_100004A3C(v106, v107, v108);
          *(v105 + 14) = sub_100007E88(v109, v110);
          sub_10000A318();
          _os_log_impl(v111, v112, v113, v114, v115, 0x16u);
          sub_1000188F0();
          sub_100002BD0();

          sub_100007C2C();
        }

        v117 = *(v0 + 456);
        v116 = *(v0 + 464);
        sub_100008744();
        sub_100015F54(v118, v119);
        sub_100012B30();
        *v120 = v98;
        v120[1] = v100;
        (*(v116 + 104))(v120, enum case for ModelManagerError.modelCatalogError(_:), v117);
        sub_100036E50();
      }

LABEL_43:

      sub_10000A950();

      sub_100001F00();
LABEL_44:
      sub_100003540();

      __asm { BRAA            X1, X16 }
    }

    v122 = *(v0 + 408);
    v121 = *(v0 + 416);
    v123 = *(v0 + 400);
    v124 = type metadata accessor for ModelCatalogAssetVersionedData(0);
    sub_1001169A8(v124);
    v125 = (v123 + *(v51 + 24));
    v125[3] = &type metadata for NonAssetBackedResourceVersionLock;
    v125[4] = &off_1001B21B8;
    *v125 = v122;
    v125[1] = v121;
    *v123 = 0;
    v123[1] = v1;

LABEL_40:
    sub_100006138();

    sub_100001F00();
    goto LABEL_44;
  }

  sub_100004A04((v0 + 56), v0 + 16);
  sub_100007130(v0 + 16, v0 + 136);
  sub_100065020(&qword_1001BCB38, &qword_1001732E0);
  v37 = sub_100065020(&qword_1001BCB78, &qword_100173340);
  if (!swift_dynamicCast())
  {
    *(v0 + 208) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    sub_10000ECD8(v0 + 176, &qword_1001BCB80, &qword_100173348);
    sub_100011DE8();
    if (!v18)
    {
      sub_100005264();
      swift_once();
    }

    v74 = *(v0 + 416);
    v75 = type metadata accessor for Logger();
    sub_100002FD0(v75, qword_1001BC8F8);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v79 = *(v0 + 408);
      v78 = *(v0 + 416);
      sub_10000A05C();
      swift_slowAlloc();
      sub_100007958();
      v164 = swift_slowAlloc();
      *v1 = 136315138;
      *(v1 + 4) = sub_1000126CC(v164);
      sub_100019C20();
      _os_log_impl(v80, v81, v82, v83, v84, v85);
      sub_100003324(v164);
      sub_100007C2C();

      sub_1000039CC();
    }

    v86 = *(v0 + 456);
    v87 = *(v0 + 464);
    v89 = *(v0 + 408);
    v88 = *(v0 + 416);
    sub_100008744();
    sub_100015F54(v90, v91);
    sub_10000EF40();
    v70 = swift_allocError();
    v93 = sub_100003624(v70, v92);
    (*(v87 + 104))(v93, enum case for ModelManagerError.unrecognizedModelCatalogResource(_:), v86);
    v73 = v70;
    swift_willThrow();

    v94 = (v0 + 16);
    goto LABEL_32;
  }

  v38 = *(v0 + 616);
  sub_100004A04((v0 + 176), v0 + 96);
  v39 = *(v0 + 128);
  sub_100003370((v0 + 96), *(v0 + 120));
  v40 = *(v39 + 8);
  if (dispatch thunk of CatalogResource.assetBacked.getter() & 1) == 0 || (v38)
  {
    v127 = *(v0 + 408);
    v126 = *(v0 + 416);
    v128 = *(v0 + 400);
    v129 = type metadata accessor for ModelCatalogAssetVersionedData(0);
    sub_1001169A8(v129);
    v130 = (v128 + *(v37 + 24));
    v130[3] = &type metadata for NonAssetBackedResourceVersionLock;
    v130[4] = &off_1001B21B8;
    *v130 = v127;
    v130[1] = v126;

    sub_100003324((v0 + 16));
    *v128 = 0;
    v128[1] = v1;
    sub_100003324((v0 + 96));
    goto LABEL_40;
  }

  sub_100007130(v0 + 96, v0 + 256);
  sub_100065020(&qword_1001BCB40, &qword_1001732E8);
  if (!swift_dynamicCast())
  {
    *(v0 + 328) = 0;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    sub_10000ECD8(v0 + 296, &qword_1001BCB48, &unk_1001732F0);
    sub_100011DE8();
    if (!v18)
    {
      sub_100005264();
      swift_once();
    }

    v143 = *(v0 + 416);
    v144 = type metadata accessor for Logger();
    sub_100002FD0(v144, qword_1001BC8F8);

    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v145, v146))
    {
      v148 = *(v0 + 408);
      v147 = *(v0 + 416);
      sub_10000A05C();
      swift_slowAlloc();
      sub_100007958();
      v165 = swift_slowAlloc();
      *v1 = 136315138;
      *(v1 + 4) = sub_1000126CC(v165);
      sub_100019C20();
      _os_log_impl(v149, v150, v151, v152, v153, v154);
      sub_100003324(v165);
      sub_100007C2C();

      sub_1000039CC();
    }

    v155 = *(v0 + 456);
    v156 = *(v0 + 464);
    v158 = *(v0 + 408);
    v157 = *(v0 + 416);
    sub_100008744();
    sub_100015F54(v159, v160);
    sub_10000EF40();
    v70 = swift_allocError();
    v162 = sub_100003624(v70, v161);
    (*(v156 + 104))(v162, enum case for ModelManagerError.unrecognizedModelCatalogResource(_:), v155);
    v73 = v70;
    swift_willThrow();

    sub_100003324((v0 + 16));
    v94 = (v0 + 96);
LABEL_32:
    sub_100003324(v94);
    goto LABEL_4;
  }

  v41 = *(v0 + 416);
  sub_100004A04((v0 + 296), v0 + 216);
  *(v0 + 584) = type metadata accessor for AssetBackedResourceVersionLock();
  swift_allocObject();

  v42 = swift_task_alloc();
  *(v0 + 592) = v42;
  *v42 = v0;
  v42[1] = sub_10011161C;
  v44 = *(v0 + 408);
  v43 = *(v0 + 416);
  sub_100003540();

  return sub_10010D968();
}

uint64_t sub_10011161C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  v5 = *(v2 + 592);
  v6 = *v1;
  sub_100003960();
  *v7 = v6;
  *(v9 + 600) = v8;
  *(v9 + 608) = v0;

  v10 = *(v2 + 424);
  if (v0)
  {
    v11 = sub_100112288;
  }

  else
  {
    v11 = sub_100111748;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100111748()
{
  v163 = v0;
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[31];
  sub_100003370(v0 + 27, v0[30]);
  v4 = *(v2 + 16);
  os_unfair_lock_lock((v4 + 44));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 44));
  v0[45] = swift_getAssociatedTypeWitness();
  v0[46] = swift_getAssociatedConformanceWitness();
  sub_10000366C(v0 + 42);
  dispatch thunk of AssetBackedResource.fetchLockedAsset(with:)();
  v6 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
  if (v1)
  {
    v7 = v1;
    v8 = v0[75];

    sub_1000B5008(v0 + 42);
    sub_1000284A0();
    swift_willThrow();
  }

  else
  {
    v153 = v0[69];
    v154 = v0[71];
    v155 = v0[68];
    v156 = v0[67];
    v157 = v0[66];
    v158 = v0[72];
    v159 = v0[62];
    v160 = v0[63];

    v9 = v0[46];
    sub_100003370(v0 + 42, v0[45]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_100002BDC(AssociatedTypeWitness);
    v12 = v11;
    v14 = *(v13 + 64);
    v15 = sub_100002C58();
    dispatch thunk of CatalogAssetProtocol.contents.getter();
    sub_100003754();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of AssetContents.baseURL.getter();
    (*(v12 + 8))(v15, AssociatedTypeWitness);

    dispatch thunk of CatalogAssetProtocol.version.getter();
    v16 = AssetVersion.number.getter();
    v18 = v17;
    (*(v156 + 8))(v155, v157);
    v19 = (v154 + *(v153 + 20));
    *v19 = v16;
    v19[1] = v18;
    sub_100003324(v0 + 42);
    sub_100019528();
    sub_10000C43C(v154, v158);
    v20 = type metadata accessor for URL();
    sub_100002BDC(v20);
    v22 = v21;
    v24 = *(v23 + 64);
    sub_100002C58();
    (*(v22 + 16))();
    FilePath.init(_:)();

    if (sub_10000C6C0(v159, 1, v160) != 1)
    {
      v44 = v0[75];
      v45 = v0[73];
      v46 = v0[72];
      v47 = v0[65];
      v48 = v0[63];
      v49 = v0[64];
      v50 = v0[50];
      (*(v49 + 32))(v47, v0[62], v48);
      v51 = (v46 + *(v153 + 20));
      v52 = v51[1];
      v161 = *v51;
      v53 = type metadata accessor for ModelCatalogAssetVersionedData(0);
      (*(v49 + 16))(&v50[*(v53 + 20)], v47, v48);
      v54 = &v50[*(v53 + 24)];
      v54[3] = v45;
      v54[4] = &off_1001B2030;
      *v54 = v44;
      v55 = *(v49 + 8);

      v55(v47, v48);
      sub_100011520();
      sub_100116658(v46, v56);
      sub_100003324(v0 + 2);
      *v50 = v161;
      *(v50 + 1) = v52;
      sub_100003324(v0 + 27);
      sub_100003324(v0 + 12);
      sub_100006138();

      sub_100001F00();
      goto LABEL_28;
    }

    sub_10000ECD8(v0[62], &qword_1001B9F18, &qword_1001708D0);
    if (qword_1001B89C0 != -1)
    {
      sub_100005264();
      swift_once();
    }

    v25 = v0[72];
    v26 = v0[70];
    v27 = v0[52];
    v28 = type metadata accessor for Logger();
    sub_10000641C(v28, qword_1001BC8F8);
    sub_100019528();
    sub_100116600(v25, v26);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[70];
    if (v31)
    {
      v34 = v0[51];
      v33 = v0[52];
      sub_100002F10();
      v35 = swift_slowAlloc();
      sub_100011828();
      v162 = swift_slowAlloc();
      *v35 = 136315394;
      v36 = sub_100019678();
      *(v35 + 4) = sub_100004A3C(v36, v37, v38);
      *(v35 + 12) = 2080;
      sub_100007238();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_100011520();
      sub_100116658(v32, v42);
      v43 = sub_100004A3C(v39, v41, &v162);

      *(v35 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to convert asset %s URL %s to file path", v35, 0x16u);
      swift_arrayDestroy();
      sub_100007C2C();

      sub_1000039CC();
    }

    else
    {

      sub_100011520();
      sub_100116658(v32, v58);
    }

    v59 = v0[75];
    v60 = v0[72];
    v61 = v0[57];
    v62 = v0[58];
    v64 = v0[51];
    v63 = v0[52];
    sub_1000284A0();
    sub_100008744();
    sub_100015F54(v65, v66);
    sub_100007894();
    v7 = swift_allocError();
    *v67 = v64;
    v67[1] = v63;
    (*(v62 + 104))(v67, enum case for ModelManagerError.assetNotAvailableInModelCatalog(_:), v61);
    v1 = v7;
    swift_willThrow();

    sub_100011520();
    sub_100116658(v60, v68);
    v6 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
  }

  sub_100003324(v0 + 2);
  sub_100003324(v0 + 27);
  sub_100003324(v0 + 12);
  sub_10000AA64();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (sub_10000F1E0())
  {
    v69 = sub_10000EF54();
    v70(v69);
    sub_100008744();
    sub_100015F54(v71, v72);
    v73 = sub_100012B30();
    v75 = sub_100008990(v73, v74);
    v76(v75);
    swift_willThrow();

    v77 = sub_10000C9F4();
    v78(v77);
    v79 = v0[47];
  }

  else
  {
    sub_100009B94();
    v0[48] = v7;
    swift_errorRetain();
    if (sub_10000F1E0())
    {
      v80 = sub_10000CE84();
      v81(v80);
      sub_100011980();
      if (v83)
      {
        (*(v82 + 96))(v1);
        v85 = *v1;
        v84 = v1[1];
        if (v6[312] != -1)
        {
          sub_100005264();
          swift_once();
        }

        v86 = sub_1000111C8();
        sub_10000641C(v86, qword_1001BC8F8);
        sub_100019498();

        v87 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_10001E6A4();

        if (sub_100010C0C())
        {
          v89 = v0[51];
          v88 = v0[52];
          sub_100002F10();
          v90 = swift_slowAlloc();
          sub_100011828();
          v162 = swift_slowAlloc();
          *v90 = 136315394;
          v91 = sub_100019678();
          v94 = sub_100004A3C(v91, v92, v93);
          v102 = sub_10002AB8C(v94, v95, v96, v97, v98, v99, v100, v101, v152, v153);

          *(v90 + 14) = v102;
          sub_10000A318();
          _os_log_impl(v103, v104, v105, v106, v107, 0x16u);
          sub_1000188F0();
          sub_100002BD0();

          sub_100007C2C();
        }

        else
        {
        }

        v142 = v0[57];
        v141 = v0[58];
        v144 = v0[51];
        v143 = v0[52];
        sub_100008744();
        sub_100015F54(v145, v146);
        sub_100007894();
        v147 = swift_allocError();
        v149 = sub_100003624(v147, v148);
        (*(v141 + 104))(v149, enum case for ModelManagerError.assetNotFound(_:), v142);
        swift_willThrow();

        v150 = v0[48];
        goto LABEL_27;
      }

      v108 = sub_10000C75C(v82);
      v109(v108);
    }

    v110 = v0[48];

    v0[49] = v7;
    swift_errorRetain();
    swift_errorRetain();
    v111 = String.init<A>(describing:)();
    v113 = v112;
    if (v6[312] != -1)
    {
      sub_100005264();
      swift_once();
    }

    v114 = sub_1000111C8();
    sub_10000641C(v114, qword_1001BC8F8);
    sub_100019498();

    v115 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_10001E6A4();

    if (sub_100010C0C())
    {
      v116 = v111;
      v118 = v0[51];
      v117 = v0[52];
      sub_100002F10();
      v119 = swift_slowAlloc();
      sub_100011828();
      v162 = swift_slowAlloc();
      *v119 = 136315394;
      v120 = sub_100019678();
      v111 = v116;
      v123 = sub_100004A3C(v120, v121, v122);
      *(v119 + 14) = sub_10002AB8C(v123, v124, v125, v126, v127, v128, v129, v130, v152, v153);
      sub_10000A318();
      _os_log_impl(v131, v132, v133, v134, v135, 0x16u);
      sub_1000188F0();
      sub_100002BD0();

      sub_100007C2C();
    }

    v137 = v0[57];
    v136 = v0[58];
    sub_100008744();
    sub_100015F54(v138, v139);
    sub_100012B30();
    *v140 = v111;
    v140[1] = v113;
    (*(v136 + 104))(v140, enum case for ModelManagerError.modelCatalogError(_:), v137);
    swift_willThrow();
  }

LABEL_27:

  sub_10000A950();

  sub_100001F00();
LABEL_28:

  return v57();
}