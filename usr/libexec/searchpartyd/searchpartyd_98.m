uint64_t sub_100A3B47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for OwnedBeaconRecord();
  v3[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100A3B520, 0, 0);
}

uint64_t sub_100A3B520()
{
  v1 = v0[5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v0[11] = result;
  if (result)
  {
    v3 = *(result + 40);
    v0[12] = v3;
    if (v3)
    {

      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v4[1] = sub_100A3B638;
      v6 = v0[6];
      v5 = v0[7];

      return sub_100570620(v6, v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[9];
    v7 = v0[10];

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_100A3B638()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_100A3B99C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_100A3B754;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100A3B754()
{
  v23 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  sub_100A4E410(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[10];
  v7 = v0[11];
  if (v6)
  {
    v10 = v0[8];
    v9 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    sub_100A4E410(v8, v9, type metadata accessor for OwnedBeaconRecord);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_100A4DCAC(v8, type metadata accessor for OwnedBeaconRecord);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished pushing changes to shares: %s ", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {
    v17 = v0[11];

    sub_100A4DCAC(v8, type metadata accessor for OwnedBeaconRecord);
  }

  v19 = v0[9];
  v18 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100A3B99C()
{
  v1 = v0[12];

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v8 = v0[11];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error from updateSharedBeaconRecord: %{public}@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v13 = v0[9];
  v12 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100A3BB6C(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v43 - v5;
  v49 = type metadata accessor for OwnedBeaconRecord();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v49);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v13 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v2[7];
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v43 = v11;
    v44 = v6;
    v47 = dispatch_group_create();
    v24 = v50;
    sub_1000D2A70(v50, v15, &unk_1016A9A20, &qword_10138B280);
    v25 = v2[35];
    v26 = *(v25 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v27 = v51;
    v28 = type metadata accessor for LocalBeaconingManager();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v48 = v15;
    v31 = sub_100F81CCC(v15, v27);
    v32 = v2[4];
    v2[4] = v31;

    sub_1000D2A70(v24, v13, &unk_1016A9A20, &qword_10138B280);
    if ((*(v7 + 48))(v13, 1, v49) == 1)
    {
      sub_10000B3A8(v13, &unk_1016A9A20, &qword_10138B280);
    }

    else
    {
      v33 = v45;
      sub_10002AC44(v13, v45, type metadata accessor for OwnedBeaconRecord);
      sub_100A3C374(v33);
      sub_100A4DCAC(v33, type metadata accessor for OwnedBeaconRecord);
    }

    v34 = *(v25 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v35 = *(v51 + 40);
    QueueSynchronizer.conditionalSync<A>(_:)();

    v37 = v47;
    v36 = v48;
    if (v51 == 1)
    {
      dispatch_group_enter(v47);
      v38 = type metadata accessor for TaskPriority();
      v39 = v44;
      (*(*(v38 - 8) + 56))(v44, 1, 1, v38);
      sub_1000D2A70(v50, v36, &unk_1016A9A20, &qword_10138B280);
      v40 = (*(v46 + 80) + 48) & ~*(v46 + 80);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = v37;
      v41[5] = v2;
      sub_1000D2AD8(v36, v41 + v40, &unk_1016A9A20, &qword_10138B280);
      v42 = v37;

      sub_100A838D4(0, 0, v39, &unk_1013D35F8, v41);

      OS_dispatch_group.wait()();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A3C100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_100A3C198;

  return sub_100A4978C(a6);
}

uint64_t sub_100A3C198()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_100A3C310;
  }

  else
  {
    v3 = sub_100A3C2AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A3C2AC()
{
  dispatch_group_leave(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A3C310()
{
  dispatch_group_leave(*(v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);

  return v1();
}

uint64_t sub_100A3C374(uint64_t a1)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_1000BC4D4(&qword_10169F458, &unk_1013D35E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v66 - v5;
  v7 = type metadata accessor for OfflineFindingInfo();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016B2720, "r\a\a");
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v68 = &v66 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v70[0] = 0x7365547265646E75;
  v70[1] = 0xE900000000000074;
  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v69 & 1) == 0)
  {
    v23 = *(v1 + 56);
    *v21 = v23;
    (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
    v24 = v23;
    LOBYTE(v23) = _dispatchPreconditionTest(_:)();
    v26 = *(v18 + 8);
    v25 = (v18 + 8);
    result = v26(v21, v17);
    if (v23)
    {
      v27 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked;
      if (*(v2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked))
      {
        return result;
      }

      *(v2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked) = 1;
      v25 = v68;
      sub_101032844(v68);
      sub_1000D2A70(v25, v15, &unk_1016B2720, "r\a\a");
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_10000B3A8(v25, &unk_1016B2720, "r\a\a");
        v32 = v15;
        return sub_10000B3A8(v32, &unk_1016B2720, "r\a\a");
      }

      sub_101032F08();
      *(v2 + v27) = 0;
      sub_1003DE85C(v66, v6);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_10002AC44(v6, v67, type metadata accessor for OfflineFindingInfo);
        sub_100B9925C();
        if (qword_101694840 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_1000076D4(v33, qword_10177B060);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v70[0] = v37;
          *v36 = 136315138;
          v38 = Dictionary.description.getter();
          v40 = sub_1000136BC(v38, v39, v70);

          *(v36 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v34, v35, "offineFindingInfo: %s", v36, 0xCu);
          sub_100007BAC(v37);
        }

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v70[0] = v44;
          *v43 = 136315138;
          v45 = Dictionary.description.getter();
          v47 = sub_1000136BC(v45, v46, v70);

          *(v43 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v41, v42, "dict: %s", v43, 0xCu);
          sub_100007BAC(v44);
        }

        v48 = objc_opt_self();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v70[0] = 0;
        v50 = [v48 dataWithPropertyList:isa format:200 options:0 error:v70];

        v51 = v70[0];
        if (v50)
        {

          v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          sub_101033300(v52, v54);
          sub_100016590(v52, v54);
        }

        else
        {
          v55 = v51;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          swift_errorRetain();
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v70[0] = swift_slowAlloc();
            *v58 = 136315394;
            v59 = Dictionary.description.getter();
            v61 = v60;

            v62 = sub_1000136BC(v59, v61, v70);

            *(v58 + 4) = v62;
            *(v58 + 12) = 2080;
            swift_getErrorValue();
            v63 = Error.localizedDescription.getter();
            v65 = sub_1000136BC(v63, v64, v70);

            *(v58 + 14) = v65;
            _os_log_impl(&_mh_execute_header, v56, v57, "Error converting offlineFindingInfo to data: %s error: %s", v58, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        sub_100A4DCAC(v67, type metadata accessor for OfflineFindingInfo);
        v32 = v68;
        return sub_10000B3A8(v32, &unk_1016B2720, "r\a\a");
      }

      sub_10000B3A8(v6, &qword_10169F458, &unk_1013D35E0);
      if (qword_101694840 == -1)
      {
LABEL_9:
        v28 = type metadata accessor for Logger();
        sub_1000076D4(v28, qword_10177B060);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "offineFindingInfo retured nil", v31, 2u);
        }

        v32 = v25;
        return sub_10000B3A8(v32, &unk_1016B2720, "r\a\a");
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_9;
  }

  return result;
}

void sub_100A3CCE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &aBlock[-1] - v10;
  XPCSession.proxy.getter();
  v12 = v19;
  if (v19)
  {
    if (a4 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    (*(v8 + 16))(v11, a1, v7);
    v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    (*(v8 + 32))(v15 + v14, v11, v7);
    aBlock[4] = sub_100A4C230;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10077732C;
    aBlock[3] = &unk_101643F48;
    v16 = _Block_copy(aBlock);

    [v12 pushLocalBeaconInfo:isa completion:v16];
    swift_unknownObjectRelease();
    _Block_release(v16);
  }
}

uint64_t sub_100A3CEF8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B7F8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138543362;
      v6 = _convertErrorToNSError(_:)();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error from pushLocalBeaconInfo: %{public}@", v4, 0xCu);
      sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
    }

    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100A3D09C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 stringForKey:v3];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();
  }

  else
  {
    v6 = type metadata accessor for UUID();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

void sub_100A3D1C8(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  v3 = a1 + *(type metadata accessor for OwnedBeaconRecord() + 20);
  v4 = UUID.uuidString.getter();
  v6 = v5;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100008C00();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  os_log(_:dso:log:_:_:)();

  sub_100A3D354();
  sub_101032F08();
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  [v7 removeObjectForKey:v8];
}

uint64_t sub_100A3D354()
{
  v1 = v0;
  v36 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v36);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UUID();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v33);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = dispatch_group_create();
  v30 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);
  v10 = *(v0 + 280);
  v31 = sub_100AA5C88();
  sub_1003D7440();
  v11 = sub_100AA5C88();
  v12 = v11[2];
  if (v12)
  {
    v29 = v0;
    v37 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v12, 0);
    v13 = v37;
    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v28[1] = v11;
    v15 = v11 + v14;
    v16 = *(v2 + 72);
    v34 = v6 + 32;
    v35 = v16;
    v17 = v33;
    do
    {
      sub_100A4E410(v15, v5, type metadata accessor for OwnedBeaconRecord);
      (*(v6 + 16))(v9, &v5[*(v36 + 20)], v17);
      sub_100A4DCAC(v5, type metadata accessor for OwnedBeaconRecord);
      v37 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_101123D4C(v18 > 1, v19 + 1, 1);
        v17 = v33;
        v13 = v37;
      }

      v13[2] = v19 + 1;
      (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v9, v17);
      v15 += v35;
      --v12;
    }

    while (v12);

    v1 = v29;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  v21 = Array.description.getter();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100008C00();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  os_log(_:dso:log:_:_:)();

  v24 = type metadata accessor for Transaction();
  __chkstk_darwin(v24);
  v26 = v31;
  v25 = v32;
  v28[-6] = v13;
  v28[-5] = v25;
  v28[-4] = v1;
  v28[-3] = v26;
  v28[-2] = v30;
  static Transaction.named<A>(_:with:)();
}

void sub_100A3D784()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v61 - v4;
  v6 = type metadata accessor for UUID();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v63 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v9 = *(*(v68 - 8) + 64);
  v10 = __chkstk_darwin(v68);
  v69 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v70 = &v61 - v13;
  __chkstk_darwin(v12);
  v15 = &v61 - v14;
  v16 = type metadata accessor for OwnedBeaconRecord();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v62 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = (&v61 - v21);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v1 + 56);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    static os_log_type_t.default.getter();
    if (qword_101695028 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v66 = qword_10177C370;
  os_log(_:dso:log:_:_:)();
  sub_1003DB678(v15);
  v30 = v16;
  v67 = *(v17 + 48);
  if (v67(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_5;
  }

  sub_10002AC44(v15, v22, type metadata accessor for OwnedBeaconRecord);
  v39 = *(v1 + 280);
  v40 = *(v39 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  v61 = v39;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v41 = *(v71 + 40);
  QueueSynchronizer.conditionalSync<A>(_:)();

  if (v71 != 1)
  {
    *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked) = 0;
    goto LABEL_19;
  }

  sub_100A3D09C(v5);
  v43 = v64;
  v42 = v65;
  if ((*(v64 + 48))(v5, 1, v65) == 1)
  {
    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
    goto LABEL_15;
  }

  v44 = v63;
  (*(v43 + 32))(v63, v5, v42);
  v45 = *(v16 + 20);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    (*(v43 + 8))(v44, v42);
LABEL_15:
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    if (*(v22 + *(v16 + 44) + 8) >> 60 == 15)
    {
      v46 = v22;
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_101385D80;
      v48 = v46;
      v49 = v46;
      v50 = v62;
      sub_100A4E410(v48, v62, type metadata accessor for OwnedBeaconRecord);
      v51 = String.init<A>(describing:)();
      v69 = v30;
      v52 = v51;
      v54 = v53;
      *(v47 + 56) = &type metadata for String;
      *(v47 + 64) = sub_100008C00();
      *(v47 + 32) = v52;
      *(v47 + 40) = v54;
      os_log(_:dso:log:_:_:)();

      sub_1005CAD68(&v71);
      v55 = v71;
      v56 = v72;
      v57 = v49;
      sub_100A9146C(v49, v71, v72, v50);
      sub_100016590(v55, v56);
      v58 = v70;
      sub_100A4E410(v50, v70, type metadata accessor for OwnedBeaconRecord);
      (*(v17 + 56))(v58, 0, 1, v69);
      sub_100A3BB6C(v58);
      sub_10000B3A8(v58, &unk_1016A9A20, &qword_10138B280);
      sub_100A4DCAC(v50, type metadata accessor for OwnedBeaconRecord);
      v59 = v57;
      goto LABEL_20;
    }

LABEL_19:
    v60 = v70;
    sub_100A4E410(v22, v70, type metadata accessor for OwnedBeaconRecord);
    (*(v17 + 56))(v60, 0, 1, v16);
    sub_100A3BB6C(v60);
    sub_10000B3A8(v60, &unk_1016A9A20, &qword_10138B280);
    v59 = v22;
LABEL_20:
    sub_100A4DCAC(v59, type metadata accessor for OwnedBeaconRecord);
    return;
  }

  sub_100A3D1C8(v22);
  (*(v43 + 8))(v44, v42);
  sub_100A4DCAC(v22, type metadata accessor for OwnedBeaconRecord);
LABEL_5:
  v31 = dispatch_group_create();
  dispatch_group_enter(v31);
  v32 = swift_allocBox();
  v34 = v33;
  (*(v17 + 56))(v33, 1, 1, v16);
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = v1;
  v35[4] = v32;
  v36 = v31;

  sub_1003D9EB4(sub_100A4C7A4, v35);

  OS_dispatch_group.wait()();
  *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked) = 0;
  swift_beginAccess();
  v37 = v70;
  sub_1000D2A70(v34, v70, &unk_1016A9A20, &qword_10138B280);
  sub_100A3BB6C(v37);
  sub_10000B3A8(v37, &unk_1016A9A20, &qword_10138B280);
  v38 = v69;
  sub_1000D2A70(v34, v69, &unk_1016A9A20, &qword_10138B280);
  if (v67(v38, 1, v16) == 1)
  {
    sub_10000B3A8(v38, &unk_1016A9A20, &qword_10138B280);
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {

    sub_10000B3A8(v38, &unk_1016A9A20, &qword_10138B280);
  }
}

void sub_100A3E160(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_projectBox();
  v17 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v17 - 8) + 48))(a1, 1, v17) != 1)
  {
    v23 = *(a3 + 56);
    aBlock[4] = sub_100A4C820;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101644290;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    v18 = sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    v24 = a2;
    v20 = v18;
    v21 = v11;
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    a2 = v24;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v21);
  }

  swift_beginAccess();
  sub_100A4C7B0(a1, v16);
  dispatch_group_leave(a2);
}

void sub_100A3E4B4()
{
  v1 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 56);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
LABEL_5:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v12 = *(v0 + 32);
  *(v0 + 32) = 0;

  sub_1003D7440();
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = v0;
  v16 = v13;

  sub_100A838D4(0, 0, v4, &unk_1013D35D8, v15);

  OS_dispatch_group.wait()();
}

uint64_t sub_100A3E738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(v7 + 80);
    v10 = a2 + ((v9 + 32) & ~v9);
    v13 = *(v7 + 72);
    do
    {
      sub_100A4E410(v10, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
      v11 = swift_allocObject();
      *(v11 + 16) = a1;
      sub_10002AC44(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + ((v9 + 24) & ~v9), type metadata accessor for OwnedBeaconRecord);

      sub_1003DF44C(v10, 0, sub_100A4C6E8, v11);

      v10 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_100A3E8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OwnedBeaconRecord();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_101385D80;
    v18[1] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_100A4E410(a3, v8, type metadata accessor for OwnedBeaconRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100A3EB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 56);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v12, v9);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_100A3EE5C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 56);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = *(v1 + 280);
    v11 = sub_100A90DAC();
    v12 = type metadata accessor for Transaction();
    __chkstk_darwin(v12);
    *&v13[-16] = v11;
    *&v13[-8] = v1;
    static Transaction.named<A>(_:with:)();

    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100A3F020(uint64_t a1, uint64_t a2)
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v3 = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v17)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v4 = [objc_opt_self() locationServicesEnabled];
    objc_autoreleasePoolPop(v5);
  }

  v6 = *(*(*(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_fmipStateManager) + 32) + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue);
  __chkstk_darwin(v3);
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v7 = qword_10177B348;
  v8 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v9 = sub_101073BE8(0x7365547265646E75);

  v10 = *(v7 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v11 = sub_100A490E0();

  v12 = sub_1004F21B4();
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138C0D0;
  *(v13 + 56) = &type metadata for Bool;
  *(v13 + 64) = &protocol witness table for Bool;
  *(v13 + 32) = v12 & 1;
  *(v13 + 96) = &type metadata for Bool;
  *(v13 + 104) = &protocol witness table for Bool;
  *(v13 + 72) = v9 & 1;
  *(v13 + 136) = &type metadata for Bool;
  *(v13 + 144) = &protocol witness table for Bool;
  *(v13 + 112) = v11;
  *(v13 + 176) = &type metadata for Bool;
  *(v13 + 184) = &protocol witness table for Bool;
  *(v13 + 152) = v4;
  *(v13 + 216) = &type metadata for Bool;
  *(v13 + 224) = &protocol witness table for Bool;
  *(v13 + 192) = 0;
  os_log(_:dso:log:_:_:)();

  sub_100A3E4B4();
  if ((v12 & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_nvramAlreadyChecked) = 0;
  }

  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v14)
  {
    v15 = v14;
    v16 = SPBeaconingStateChangedNotification;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    CFNotificationCenterPostNotification(v15, v16, 0, 0, 1u);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  Transaction.capture()();
}

uint64_t sub_100A3F4E8()
{
  v1 = v0;
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pruneActivity);
  if (!v2)
  {
    goto LABEL_5;
  }

  *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pruneActivity) = 0;
  v3 = *(v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10058A7BC;
  *(v4 + 24) = v2;
  v17 = sub_10040B9F8;
  v18 = v4;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10013FE14;
  v16 = &unk_1016441F0;
  v5 = _Block_copy(&v13);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if ((v3 & 1) == 0)
  {
LABEL_5:
    v7 = *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_wildModeAssociationManager);
    static os_log_type_t.default.getter();
    if (qword_1016950B0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100887D6C();
    sub_10073B7C8();

    v8 = *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateScheduler);
    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100235D80();
    sub_10073B7C8();

    v9 = *(v1 + 40);
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = *(v9 + 56);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_100A4C6A8;
    *(v11 + 24) = v9;
    v17 = sub_10040B9F8;
    v18 = v11;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10013FE14;
    v16 = &unk_1016441A0;
    v12 = _Block_copy(&v13);
    swift_retain_n();

    dispatch_sync(v10, v12);
    _Block_release(v12);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void **sub_100A3F8D4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v57 = *(v8 + 8);
  v57(v11, v7);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v12 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = sub_10107355C(aBlock);

  v14 = *(v1 + 280);
  v15 = sub_100AB035C();
  if (v15 >= v13)
  {
    v40 = v15;
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10138BBE0;
    *(v41 + 56) = &type metadata for Int;
    *(v41 + 64) = &protocol witness table for Int;
    *(v41 + 32) = v13;
    *(v41 + 96) = &type metadata for Int;
    *(v41 + 104) = &protocol witness table for Int;
    *(v41 + 72) = v40;
    os_log(_:dso:log:_:_:)();

    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v43;
    aBlock = 0;
    v59 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    aBlock = 0xD000000000000015;
    v59 = 0x80000001013687A0;
    v64 = v13;
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._object = 0x80000001013687C0;
    v45._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v45);
    v46 = v59;
    *(inited + 48) = aBlock;
    *(inited + 56) = v46;
    v47 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    v64 = 17;
    sub_1006953B0(v47);

    sub_100A4BFC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    return aBlock;
  }

  v54 = v6;
  v55 = v3;
  v56 = v2;
  v16 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v17 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyHundredMeters, 0);
  v18 = *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingValidator);
  v19 = *(v1 + 144);
  v20 = type metadata accessor for ItemPairingCoordinator();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = v17;

  v24 = v19;
  v25 = sub_100FC5EEC(v23, v18, v24);
  if (!v25)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_101385D80;
    *(v48 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v48 + 40) = v49;
    *(v48 + 48) = 0xD00000000000003FLL;
    *(v48 + 56) = 0x8000000101368810;
    v50 = sub_100907E70(v48);
    swift_setDeallocating();
    sub_10000B3A8(v48 + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    v64 = 3;
    sub_1006953B0(v50);

    sub_100A4BFC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();

    return aBlock;
  }

  v26 = v25;
  v53 = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  *(v27 + 24) = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100A4C6A0;
  *(v28 + 24) = v27;
  v52 = v27;
  v62 = sub_10040B9F8;
  v63 = v28;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_10013FE14;
  v61 = &unk_101644150;
  v29 = _Block_copy(&aBlock);

  dispatch_sync(v24, v29);
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v51[1] = static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_101385D80;
    v33 = [*(v26 + 16) identifier];
    v34 = v54;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100A4BFC4(&qword_101696930, &type metadata accessor for UUID);
    v35 = v56;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v55 + 8))(v34, v35);
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100008C00();
    *(v32 + 32) = v36;
    *(v32 + 40) = v38;
    os_log(_:dso:log:_:_:)();

    static os_signpost_type_t.end.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v57(v11, v7);
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    v39 = *(v26 + 16);

    return v39;
  }

  return result;
}

uint64_t sub_100A4026C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(a2 + 16) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingSessionCoordinators;
  swift_beginAccess();

  v11 = *(a1 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_1010009B8(a2, v8, isUniquelyReferenced_nonNull_native);
  (*(v5 + 8))(v8, v4);
  *(a1 + v10) = v14;
  return swift_endAccess();
}

uint64_t sub_100A403C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 48);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_100A4C674;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016440D8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_100A406AC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 280);
  type metadata accessor for Transaction();
  v4 = static Transaction.named<A>(_:with:)();
  return a2(v4);
}

void sub_100A40740(int a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = type metadata accessor for DispatchQoS();
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v37);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v34[-v17];
  v19 = [objc_opt_self() currentConnection];
  if (v19)
  {
    v20 = v19;
    v35 = a1;
    v36 = a3;
    v21 = v3;
    v22 = sub_1000BC4D4(&unk_1016B26F0, &qword_1013D35C0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = v20;
    v26 = XPCSession.init(connection:)();
    if (v26)
    {
      v27 = v26;
      v28 = type metadata accessor for TaskPriority();
      (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = v21;
      *(v29 + 40) = v27;
      *(v29 + 48) = v35 & 1;
      v30 = v36;
      *(v29 + 56) = a2;
      *(v29 + 64) = v30;

      sub_10025EDD4(0, 0, v18, &unk_1013D35D0, v29);

      return;
    }

    a3 = v36;
  }

  v31 = *(v3 + 152);
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  aBlock[4] = sub_100A4C588;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101644060;
  v33 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v38 + 8))(v10, v7);
  (*(v11 + 8))(v14, v37);
}

uint64_t sub_100A40BB0(void (*a1)(uint64_t))
{
  type metadata accessor for BluetoothCommunicationCoordinator.Error();
  sub_100A4BFC4(&qword_1016A95D0, type metadata accessor for BluetoothCommunicationCoordinator.Error);
  v2 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a1(v2);
}

uint64_t sub_100A40C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 112) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  return _swift_task_switch(sub_100A40C8C, 0, 0);
}

uint64_t sub_100A40C8C()
{
  v1 = *(v0 + 24);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100A40D54;
  v5 = *(v0 + 24);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_100A4C66C, v5, v4);
}

uint64_t sub_100A40D54()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_100A40E6C, 0, 0);
}

uint64_t sub_100A40E6C()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[8] = v2;
  type metadata accessor for BeaconScanner();
  swift_allocObject();

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100A40F48;
  v4 = v0[4];

  return sub_100F3AA64(v4, v2);
}

uint64_t sub_100A40F48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100A411E4, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v4 + 96) = v7;
    *v7 = v6;
    v7[1] = sub_100A410D0;
    v8 = *(v4 + 112);

    return sub_100F3B388(v8);
  }
}

uint64_t sub_100A410D0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100A4141C;
  }

  else
  {
    v3 = sub_100A41394;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A411E4()
{
  v1 = v0[11];
  v2 = v0[8];

  if (qword_101694B78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7E0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Beacon scan error: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v10 = v0[5];
  v9 = v0[6];

  swift_errorRetain();
  v10(v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100A41394()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  (*(v0 + 40))(0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100A4141C()
{
  v1 = v0[8];

  v2 = v0[13];
  v3 = v0[10];

  if (qword_101694B78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B7E0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Beacon scan error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v11 = v0[5];
  v10 = v0[6];

  swift_errorRetain();
  v11(v2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100A415D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + 280) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *a2 = v5;
  return result;
}

uint64_t sub_100A4165C(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating;
  os_unfair_lock_lock(v7);
  sub_100A41798((v7 + 8), a1);
  os_unfair_lock_unlock(v7);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;

  sub_10025EDD4(0, 0, v6, &unk_1013D35B0, v9);
}

uint64_t sub_100A41798(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v63 = &v55 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v70 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v55 - v12;
  __chkstk_darwin(v11);
  v61 = &v55 - v15;
  v62 = v14;
  v16 = a2 + 56;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;
  v68 = v14 + 16;
  v59 = v14 + 32;
  v65 = a2;
  v66 = (v14 + 8);

  v22 = 0;
  *&v23 = 141558275;
  v56 = v23;
  v64 = a1;
  v71 = v7;
  v60 = v20;
  v69 = v13;
  v57 = a2 + 56;
  while (v19)
  {
    v25 = v22;
LABEL_11:
    v26 = v61;
    v27 = v62;
    v28 = *(v62 + 72);
    v29 = *(v65 + 48) + v28 * (__clz(__rbit64(v19)) | (v25 << 6));
    v67 = *(v62 + 16);
    v67(v61, v29, v7);
    (*(v27 + 32))(v13, v26, v7);
    v30 = *a1;
    v31 = sub_1000210EC(v13);
    if (v32)
    {
      v33 = v31;
      v34 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *a1;
      v72 = *a1;
      v37 = a1;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_101008408();
        v36 = v72;
      }

      (*v66)(*(v36 + 48) + v33 * v28, v7);
      v38 = *(v36 + 56);
      v39 = type metadata accessor for Date();
      v40 = *(v39 - 8);
      v41 = v38 + *(v40 + 72) * v33;
      v42 = v63;
      (*(v40 + 32))(v63, v41, v39);
      sub_100AF85EC(v33, v36);
      *v37 = v36;
      (*(v40 + 56))(v42, 0, 1, v39);
    }

    else
    {
      v43 = type metadata accessor for Date();
      v42 = v63;
      (*(*(v43 - 8) + 56))(v63, 1, 1, v43);
    }

    v44 = v67;
    sub_10000B3A8(v42, &unk_101696900, &unk_10138B1E0);
    v45 = v69;
    v46 = v70;
    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v19 &= v19 - 1;
    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177AE10);
    v7 = v71;
    (v44)(v46, v45, v71);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v72 = v67;
      *v50 = v56;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      sub_100A4BFC4(&qword_101696930, &type metadata accessor for UUID);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      v58 = *v66;
      v58(v70, v71);
      v54 = sub_1000136BC(v51, v53, &v72);

      *(v50 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Removed ACSN locating state for beacon: %{private,mask.hash}s.", v50, 0x16u);
      sub_100007BAC(v67);
      v7 = v71;

      v13 = v69;
      result = (v58)(v69, v7);
      v16 = v57;
    }

    else
    {

      v24 = *v66;
      (*v66)(v46, v7);
      v13 = v69;
      result = (v24)(v69, v7);
    }

    v22 = v25;
    a1 = v64;
    v20 = v60;
  }

  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
    }

    v19 = *(v16 + 8 * v25);
    ++v22;
    if (v19)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100A41D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100A41E1C;

  return daemon.getter();
}

uint64_t sub_100A41E1C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100A4BFC4(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100A41FF8;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100A41FF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_100A4219C, 0, 0);
  }

  else
  {
    v8 = v4[4];

    v4[6] = a1;
    v9 = swift_task_alloc();
    v4[7] = v9;
    *v9 = v6;
    v9[1] = sub_100A422B0;
    v10 = v4[2];

    return sub_10094DB94(v10);
  }
}

uint64_t sub_100A4219C()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cannot update beacon locating state without SimpleBeaconUpdateService.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A422B0()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_1004D4490, 0, 0);
}

void sub_100A423AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating));
  v6 = *(v5 + 8);
  if (*(v6 + 16) && (v7 = sub_1000210EC(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a2, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  os_unfair_lock_unlock(v5);
}

uint64_t sub_100A4250C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v126 = &v123 - v4;
  v5 = type metadata accessor for BeaconObservation();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v159 = &v123 - v12;
  v13 = __chkstk_darwin(v11);
  v158 = &v123 - v14;
  __chkstk_darwin(v13);
  v162 = &v123 - v15;
  v16 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v139 = &v123 - v18;
  v19 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v144 = &v123 - v21;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v124 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v151 = &v123 - v28;
  v29 = __chkstk_darwin(v27);
  v150 = &v123 - v30;
  __chkstk_darwin(v29);
  v149 = &v123 - v31;
  v156 = type metadata accessor for UUID();
  v32 = *(*(v156 - 8) + 64);
  v33 = __chkstk_darwin(v156);
  v154 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v157 = &v123 - v36;
  __chkstk_darwin(v35);
  v141 = &v123 - v38;
  v40 = a1 + 56;
  v39 = *(a1 + 56);
  v41 = 1 << *(a1 + 32);
  v42 = -1;
  v164 = &_swiftEmptyDictionarySingleton;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v39;
  v44 = (v41 + 63) >> 6;
  v155 = v37 + 16;
  v140 = v37 + 32;
  v138 = (v6 + 56);
  v137 = (v6 + 48);
  v146 = (v23 + 16);
  v136 = (v23 + 56);
  v135 = (v23 + 32);
  v129 = (v23 + 48);
  v142 = v37;
  v133 = (v37 + 8);
  v143 = (v23 + 8);
  v134 = v23;
  v128 = v23 + 40;

  v45 = v43;
  v46 = v44;
  v47 = 0;
  v152 = 0;
  v148 = v22;
  v132 = a1 + 56;
  v131 = v46;
  v130 = a1;
  v160 = v5;
  v161 = v10;
  while (1)
  {
    if (!v45)
    {
      while (1)
      {
        v52 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_60;
        }

        if (v52 >= v46)
        {

          v114 = swift_allocObject();
          *(v114 + 16) = &_swiftEmptySetSingleton;
          v115 = v124;
          static Date.trustedNow.getter(v124);
          v116 = v22;
          v117 = v125 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating;
          os_unfair_lock_lock((v125 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating));
          sub_100A43518((v117 + 8), a1, &v164, v115, v114 + 16);
          os_unfair_lock_unlock(v117);
          v118 = type metadata accessor for TaskPriority();
          v119 = v126;
          (*(*(v118 - 8) + 56))(v126, 1, 1, v118);
          v120 = swift_allocObject();
          v120[2] = 0;
          v120[3] = 0;
          v120[4] = v114;

          sub_10025EDD4(0, 0, v119, &unk_1013D35A0, v120);

          (*v143)(v115, v116);
          swift_beginAccess();
          v121 = *(v114 + 16);

          return v121;
        }

        v45 = *(v40 + 8 * v52);
        ++v47;
        if (v45)
        {
          v47 = v52;
          break;
        }
      }
    }

    v147 = v45;
    v53 = *(a1 + 48);
    v54 = v142;
    v145 = *(v142 + 72);
    v55 = v141;
    v56 = v156;
    v153 = *(v142 + 16);
    v153(v141, v53 + v145 * (__clz(__rbit64(v45)) | (v47 << 6)), v156);
    (*(v54 + 32))(v157, v55, v56);
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v57 = qword_10177B2E8;
    v58 = objc_autoreleasePoolPush();
    v59 = *(v57 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
    sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
    v60 = v152;
    OS_dispatch_queue.sync<A>(execute:)();
    v152 = v60;
    v61 = v163;
    v62 = v158;
    if (!v163[2])
    {

      v70 = _swiftEmptyArrayStorage;
      v64 = v160;
      goto LABEL_34;
    }

    v63 = sub_1000210EC(v157);
    v64 = v160;
    if ((v65 & 1) == 0)
    {

      v70 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }

    v66 = *(v61[7] + 8 * v63);

    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = sub_100034824(*(v66 + 16), 0);
      v69 = sub_1000364B4(&v163, v68 + 4, v67, v66);
      sub_1000128F8();
      if (v69 != v67)
      {
        goto LABEL_64;
      }
    }

    else
    {

      v68 = _swiftEmptyArrayStorage;
    }

    v127 = v58;
    v71 = sub_100034838(v68);

    v72 = *(v71 + 16);
    if (v72)
    {
      break;
    }

    v70 = _swiftEmptyArrayStorage;
LABEL_33:

    a1 = v130;
    v22 = v148;
    v64 = v160;
    v58 = v127;
LABEL_34:
    objc_autoreleasePoolPop(v58);
    v81 = v70[2];
    if (v81)
    {
      v82 = v70 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      sub_100A4E410(v82, v162, type metadata accessor for BeaconObservation);
      if (v81 != 1)
      {
        v108 = 1;
        while (1)
        {
          v109 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            break;
          }

          v110 = v161;
          sub_100A4E410(v82 + *(v6 + 72) * v108, v161, type metadata accessor for BeaconObservation);
          v111 = *(v64 + 20);
          v112 = v162;
          if (static Date.< infix(_:_:)())
          {
            sub_100A4DCAC(v112, type metadata accessor for BeaconObservation);
            sub_10002AC44(v110, v112, type metadata accessor for BeaconObservation);
          }

          else
          {
            sub_100A4DCAC(v110, type metadata accessor for BeaconObservation);
          }

          ++v108;
          if (v109 == v81)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

LABEL_36:
      v83 = v139;
      sub_10002AC44(v162, v139, type metadata accessor for BeaconObservation);
      (*v138)(v83, 0, 1, v64);

      v22 = v148;
      a1 = v130;
    }

    else
    {
      v83 = v139;
      (*v138)(v139, 1, 1, v64);
    }

    if ((*v137)(v83, 1, v64) == 1)
    {
      sub_10000B3A8(v83, &qword_1016A42E0, &qword_1013B0010);
      v84 = v144;
      (*v136)(v144, 1, 1, v22);
      static Date.distantPast.getter();
      if ((*v129)(v84, 1, v22) != 1)
      {
        sub_10000B3A8(v144, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v85 = v83 + *(v64 + 20);
      v86 = v144;
      (*v146)(v144, v85, v22);
      sub_100A4DCAC(v83, type metadata accessor for BeaconObservation);
      (*v136)(v86, 0, 1, v22);
      (*v135)(v149, v86, v22);
    }

    v87 = v150;
    Date.addingTimeInterval(_:)();
    v88 = v154;
    v153(v154, v157, v156);
    (*v146)(v151, v87, v22);
    v89 = v164;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = v89;
    v91 = sub_1000210EC(v88);
    v93 = v89[2];
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      goto LABEL_62;
    }

    v97 = v92;
    if (v89[3] < v96)
    {
      sub_100FECDA8(v96, isUniquelyReferenced_nonNull_native);
      v91 = sub_1000210EC(v154);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_65;
      }

LABEL_47:
      v99 = v163;
      if (v97)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_47;
    }

    v113 = v91;
    sub_101008408();
    v91 = v113;
    v99 = v163;
    if (v97)
    {
LABEL_4:
      v48 = v134;
      v22 = v148;
      (*(v134 + 40))(v99[7] + *(v134 + 72) * v91, v151, v148);
      v49 = *v133;
      v50 = v156;
      (*v133)(v154, v156);
      v51 = *(v48 + 8);
      v51(v150, v22);
      v51(v149, v22);
      v49(v157, v50);
      goto LABEL_5;
    }

LABEL_48:
    v99[(v91 >> 6) + 8] |= 1 << v91;
    v100 = v91;
    v101 = v154;
    v102 = v156;
    v153((v99[6] + v91 * v145), v154, v156);
    v103 = v134;
    v22 = v148;
    (*(v134 + 32))(v99[7] + *(v134 + 72) * v100, v151, v148);
    v104 = *v133;
    (*v133)(v101, v102);
    v105 = *(v103 + 8);
    v105(v150, v22);
    v105(v149, v22);
    v104(v157, v102);
    v106 = v99[2];
    v95 = __OFADD__(v106, 1);
    v107 = v106 + 1;
    if (v95)
    {
      goto LABEL_63;
    }

    v99[2] = v107;
LABEL_5:
    v45 = (v147 - 1) & v147;
    v164 = v99;
    v40 = v132;
    v46 = v131;
  }

  v73 = 0;
  v70 = _swiftEmptyArrayStorage;
  v74 = *(v71 + 16);
  while (v73 < *(v71 + 16))
  {
    v75 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v76 = v6;
    v77 = *(v6 + 72);
    sub_100A4E410(v71 + v75 + v77 * v73, v62, type metadata accessor for BeaconObservation);
    if (*(v62 + *(v160 + 24)) == 5)
    {
      sub_10002AC44(v62, v159, type metadata accessor for BeaconObservation);
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v163 = v70;
      if ((v78 & 1) == 0)
      {
        sub_101124308(0, v70[2] + 1, 1);
        v70 = v163;
      }

      v80 = v70[2];
      v79 = v70[3];
      if (v80 >= v79 >> 1)
      {
        sub_101124308(v79 > 1, v80 + 1, 1);
        v70 = v163;
      }

      v70[2] = v80 + 1;
      sub_10002AC44(v159, v70 + v75 + v80 * v77, type metadata accessor for BeaconObservation);
      v62 = v158;
      v72 = v74;
    }

    else
    {
      sub_100A4DCAC(v62, type metadata accessor for BeaconObservation);
    }

    ++v73;
    v6 = v76;
    if (v72 == v73)
    {
      goto LABEL_33;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A43518(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v141 = a5;
  v167 = a4;
  v156 = a3;
  v164 = a1;
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v162 = &v133[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v155 = &v133[-v11];
  __chkstk_darwin(v10);
  v161 = &v133[-v12];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v154 = &v133[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v160 = &v133[-v19];
  v20 = __chkstk_darwin(v18);
  v153 = &v133[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v133[-v23];
  v25 = __chkstk_darwin(v22);
  v166 = &v133[-v26];
  v27 = __chkstk_darwin(v25);
  v144 = &v133[-v28];
  __chkstk_darwin(v27);
  v30 = &v133[-v29];
  v168 = type metadata accessor for UUID();
  v31 = *(*(v168 - 8) + 64);
  v32 = __chkstk_darwin(v168);
  v150 = &v133[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = __chkstk_darwin(v32);
  v140 = &v133[-v35];
  v36 = __chkstk_darwin(v34);
  v139 = &v133[-v37];
  v38 = __chkstk_darwin(v36);
  v138 = &v133[-v39];
  v40 = __chkstk_darwin(v38);
  v173 = &v133[-v41];
  __chkstk_darwin(v40);
  v149 = &v133[-v43];
  v44 = a2 + 56;
  v45 = 1 << *(a2 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(a2 + 56);
  v48 = (v45 + 63) >> 6;
  v171 = v42 + 16;
  v146 = v42 + 32;
  v145 = (v14 + 56);
  v170 = (v14 + 16);
  v49 = (v14 + 48);
  v165 = (v14 + 8);
  v142 = v14;
  v157 = (v14 + 32);
  v151 = v42;
  v159 = v42 + 8;

  v51 = 0;
  *&v52 = 141558275;
  v135 = v52;
  *&v52 = 141558787;
  v134 = v52;
  v158 = a2;
  v152 = v24;
  v172 = v30;
  v53 = v168;
  v148 = a2 + 56;
  v147 = v48;
  v163 = (v14 + 48);
  while (v47)
  {
    v57 = v173;
LABEL_13:
    v59 = v151;
    v60 = *(v158 + 48) + *(v151 + 72) * (__clz(__rbit64(v47)) | (v51 << 6));
    v61 = v149;
    v169 = *(v151 + 16);
    (v169)(v149, v60, v53);
    (*(v59 + 32))(v57, v61, v53);
    v62 = *v164;
    v63 = v145;
    if (*(*v164 + 16) && (v64 = sub_1000210EC(v57), (v65 & 1) != 0))
    {
      v66 = *(v62 + 56) + *(v142 + 72) * v64;
      v67 = v155;
      (*(v142 + 16))(v155, v66, v13);
      v68 = 0;
    }

    else
    {
      v68 = 1;
      v67 = v155;
    }

    v69 = *v63;
    (*v63)(v67, v68, 1, v13);
    v70 = *v49;
    if ((*v49)(v67, 1, v13))
    {
      sub_10000B3A8(v67, &unk_101696900, &unk_10138B1E0);
      v71 = v161;
      v69(v161, 1, 1, v13);
      static Date.distantPast.getter();
      if (v70(v71, 1, v13) != 1)
      {
        sub_10000B3A8(v161, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v72 = v144;
      (*v170)(v144, v67, v13);
      sub_10000B3A8(v67, &unk_101696900, &unk_10138B1E0);
      v73 = v161;
      Date.addingTimeInterval(_:)();
      (*v165)(v72, v13);
      v69(v73, 0, 1, v13);
      (*v157)(v172, v73, v13);
    }

    v74 = *v156;
    if (*(*v156 + 16) && (v75 = sub_1000210EC(v173), (v76 & 1) != 0))
    {
      v77 = v142;
      v78 = *(v74 + 56) + *(v142 + 72) * v75;
      v79 = v162;
      (*(v142 + 16))(v162, v78, v13);
      v69(v79, 0, 1, v13);
      v80 = v152;
      (*(v77 + 32))(v152, v79, v13);
    }

    else
    {
      v81 = v162;
      v69(v162, 1, 1, v13);
      v80 = v152;
      static Date.distantPast.getter();
      if (v70(v81, 1, v13) != 1)
      {
        sub_10000B3A8(v162, &unk_101696900, &unk_10138B1E0);
      }
    }

    sub_100A4BFC4(&qword_1016C9070, &type metadata accessor for Date);
    v82 = v172;
    v83 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v84 = v160;
    v85 = v166;
    if (v83)
    {
      (*v165)(v80, v13);
      (*v170)(v85, v82, v13);
    }

    else
    {
      (*v157)(v166, v80, v13);
    }

    v86 = v168;
    v47 &= v47 - 1;
    if (static Date.< infix(_:_:)())
    {
      if (qword_101694770 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_1000076D4(v87, qword_10177AE10);
      v88 = v138;
      (v169)(v138, v173, v86);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();
      v91 = os_log_type_enabled(v89, v90);
      v92 = v86;
      v93 = v159;
      v143 = v159 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v91)
      {
        v94 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v174 = v137;
        *v94 = v135;
        *(v94 + 4) = 1752392040;
        *(v94 + 12) = 2081;
        sub_100A4BFC4(&qword_101696930, &type metadata accessor for UUID);
        LODWORD(v136) = v90;
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v88;
        v98 = v97;
        v99 = *v93;
        v99(v96, v92);
        v100 = sub_1000136BC(v95, v98, &v174);

        *(v94 + 14) = v100;
        _os_log_impl(&_mh_execute_header, v89, v136, "Added ACSN locating state for beacon: %{private,mask.hash}s.", v94, 0x16u);
        sub_100007BAC(v137);
      }

      else
      {

        v99 = *v93;
        v99(v88, v92);
      }

      v125 = v144;
      (*v170)(v144, v167, v13);
      v126 = v164;
      v127 = *v164;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = *v126;
      v129 = v173;
      sub_100FFD694(v125, v173, isUniquelyReferenced_nonNull_native);
      *v126 = v174;
      v130 = v140;
      (v169)(v140, v129, v92);
      v131 = v139;
      sub_100DE8BCC(v139, v130);
      v99(v131, v92);
      v132 = *v165;
      (*v165)(v166, v13);
      v132(v172, v13);
      result = (v99)(v129, v92);
      v53 = v92;
    }

    else
    {
      v101 = v150;
      if (qword_101694770 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      sub_1000076D4(v102, qword_10177AE10);
      (v169)(v101, v173, v86);
      v103 = *v170;
      v104 = v172;
      v105 = v13;
      (*v170)(v153, v172, v13);
      v103(v84, v104, v13);
      v103(v154, v167, v13);
      v106 = Logger.logObject.getter();
      LODWORD(v143) = static os_log_type_t.default.getter();
      v169 = v106;
      if (os_log_type_enabled(v106, v143))
      {
        v107 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v174 = v136;
        *v107 = v134;
        *(v107 + 4) = 1752392040;
        *(v107 + 12) = 2081;
        sub_100A4BFC4(&qword_101696930, &type metadata accessor for UUID);
        v108 = v150;
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = v110;
        v112 = v153;
        v137 = *v159;
        (v137)(v108, v168);
        v113 = sub_1000136BC(v109, v111, &v174);

        *(v107 + 14) = v113;
        *(v107 + 22) = 2082;
        v114 = Date.debugDescription.getter();
        v116 = v115;
        v117 = *v165;
        (*v165)(v112, v105);
        v118 = v117;
        v119 = sub_1000136BC(v114, v116, &v174);
        v13 = v105;
        v120 = v154;

        *(v107 + 24) = v119;
        *(v107 + 32) = 2050;
        v121 = v160;
        Date.timeIntervalSince(_:)();
        v123 = v122;
        v118(v120, v13);
        v118(v121, v13);
        *(v107 + 34) = v123;
        v124 = v169;
        _os_log_impl(&_mh_execute_header, v169, v143, "Not fetching locations for beacon %{private,mask.hash}s.\nWaiting until %{public}s, %{public}f seconds due to locating in progress.", v107, 0x2Au);
        swift_arrayDestroy();

        v53 = v168;

        v118(v166, v13);
        v118(v172, v13);
        result = (v137)(v173, v53);
      }

      else
      {

        v54 = *v165;
        (*v165)(v154, v13);
        v54(v84, v13);
        v54(v153, v13);
        v55 = *v159;
        v56 = v104;
        v53 = v168;
        (*v159)(v150, v168);
        v54(v166, v13);
        v54(v56, v13);
        result = (v55)(v173, v53);
      }
    }

    v44 = v148;
    v48 = v147;
    v49 = v163;
  }

  v57 = v173;
  while (1)
  {
    v58 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v58 >= v48)
    {
    }

    v47 = *(v44 + 8 * v58);
    ++v51;
    if (v47)
    {
      v51 = v58;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100A44504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_100A44598;

  return daemon.getter();
}

uint64_t sub_100A44598(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100A4BFC4(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100A44774;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100A44774(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 64);
  v7 = *v2;

  v8 = *(v4 + 56);
  if (v1)
  {

    v9 = sub_100A448C8;
  }

  else
  {

    *(v5 + 72) = a1;
    v9 = sub_100A449DC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100A448C8()
{
  if (qword_101694770 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cannot update beacon locating state without SimpleBeaconUpdateService.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A449DC()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[10] = v2;

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100A44AA4;
  v4 = v0[9];

  return sub_10094DB94(v2);
}

uint64_t sub_100A44AA4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_100A4E938, 0, 0);
}

uint64_t sub_100A44BBC(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating));
  v8 = *(v7 + 8);
  if (*(a1 + 16) <= v8[2] >> 3)
  {
    v14 = *(v7 + 8);
    sub_10087D5B4(a1);
    v9 = v14;
  }

  else
  {
    v9 = sub_100610BC8(a1, v8);
  }

  *(v7 + 8) = v9;
  os_unfair_lock_unlock(v7);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;

  sub_10025EDD4(0, 0, v6, &unk_1013D3588, v11);
}

uint64_t sub_100A44D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100A44DB4;

  return daemon.getter();
}

uint64_t sub_100A44DB4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100A4BFC4(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100A44F90;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100A44F90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_100A4E8E4, 0, 0);
  }

  else
  {
    v8 = v4[4];

    v4[6] = a1;
    v9 = swift_task_alloc();
    v4[7] = v9;
    *v9 = v6;
    v9[1] = sub_100A45134;
    v10 = v4[2];

    return sub_10094DB94(v10);
  }
}

uint64_t sub_100A45134()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_1008347FC, 0, 0);
}

uint64_t sub_100A45230(void *a1)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = &_swiftEmptySetSingleton;
  v8 = v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating));
  v9 = *(v8 + 8);
  if (*(v9 + 16) <= a1[2] >> 3)
  {
    v18 = a1;

    sub_10087D5B4(v9);
    v10 = v18;
  }

  else
  {

    v10 = sub_100610BC8(v9, a1);
  }

  *(v7 + 16) = v10;

  v11 = *(v8 + 8);

  *(v8 + 8) = sub_10039DA70(v12, v11);
  os_unfair_lock_unlock(v8);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v7;

  sub_10025EDD4(0, 0, v6, &unk_1013D3578, v14);

  swift_beginAccess();
  v15 = *(v7 + 16);

  return v15;
}

uint64_t sub_100A45430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_100A454C4;

  return daemon.getter();
}

uint64_t sub_100A454C4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100A4BFC4(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100A456A0;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100A456A0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 64);
  v7 = *v2;

  v8 = *(v4 + 56);
  if (v1)
  {

    v9 = sub_100A4E8E4;
  }

  else
  {

    *(v5 + 72) = a1;
    v9 = sub_100A457F4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100A457F4()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[10] = v2;

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100A458BC;
  v4 = v0[9];

  return sub_10094DB94(v2);
}

uint64_t sub_100A458BC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_1001884B4, 0, 0);
}

uint64_t sub_100A459D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 80);

  v5 = *(v0 + 176);

  v6 = *(v0 + 184);

  v7 = *(v0 + 192);

  v8 = *(v0 + 200);

  v9 = *(v0 + 208);

  v10 = *(v0 + 216);

  v11 = *(v0 + 224);

  v12 = *(v0 + 232);

  v13 = *(v0 + 240);

  v14 = *(v0 + 256);

  v15 = *(v0 + 264);

  v16 = *(v0 + 280);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_configSubscription, &qword_1016B28A0, &unk_101393D00);
  v17 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_transactionManager;
  v18 = type metadata accessor for PressuredExitTransactionManager();
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_afterFirstUnlockActivity);

  v20 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pruneActivity);

  v21 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_fmipStateManager);

  v22 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_appActivity);

  v23 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_locationFetchService);

  v24 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_locatableStateMonitor);

  v25 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_keySyncMetadataStateCapture);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_observationSubscription, &unk_1016B2820, &qword_1013D3710);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocalLocating + 8, &qword_1016AF8E0, &qword_101393130);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconUUIDsLocating + 8, &qword_1016A5700, &qword_1013B2B10);
  sub_100A4E478(*(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_beaconKeyManagerURLChangedSubscription));
  v26 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_checkInPostInstallXPCActivity);

  v27 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_wildModeAssociationManager);

  v28 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___unauthorizedTracking);

  v29 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_productInfoManager);

  v30 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_accessoryMetadataManager);

  v31 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_classicPairingSupport);

  v32 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingSessionCoordinators);

  v33 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateService);

  v34 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_firmwareUpdateScheduler);

  v35 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___maskedIdentifierService);

  v36 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier);

  v37 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_pairingValidator);

  v38 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___accessoryPairingValidator);

  v39 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedSubject);

  v40 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedPublisher);

  v41 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___payloadDecodingBlock + 8);
  sub_1000BB27C(*(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService____lazy_storage___payloadDecodingBlock));
  v42 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_messagingDevicesChangedSubscription);

  v43 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_recordDeletedSubscription);

  v44 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_meDeviceChangedSubscription);

  v45 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_triggerFamilyUpdateSubscription);

  v46 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_bluetoothCommunicatorCoordinator);

  v47 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager);

  v48 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);

  sub_100A4E488(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_cbPeripheralManager);
  return v0;
}

uint64_t sub_100A45E10()
{
  sub_100A459D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100A45E70()
{
  sub_1002ECE54(319, &qword_10169A430, &qword_1016B1E70, &qword_10138CDB0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for PressuredExitTransactionManager();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1002ECE54(319, &qword_1016B1E78, &unk_1016B1E80, &qword_10138CDE0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100A4610C()
{
  v1 = *v0;
  *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_shouldForceFetch) = 1;
  v2 = *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager);
  return sub_100EFAA70();
}

uint64_t sub_100A4614C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000D2118;

  return sub_1009A2510(a1);
}

uint64_t sub_100A461F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return (sub_100A4A3C4)(a1, a2);
}

uint64_t sub_100A462AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100A4A8F4(a1);
}

uint64_t sub_100A46354(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100A4B230(a1);
}

uint64_t sub_100A463FC(uint64_t a1)
{
  result = type metadata accessor for BeaconObservation();
  v4 = *(a1 + *(result + 24));
  if (v4 == 42 || v4 == 33)
  {
    v5 = *v1;
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v6 = type metadata accessor for UUID();
    v7 = *(v6 - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    (*(v7 + 16))(v10 + v9, a1, v6);
    v11 = sub_100B05044(v10);
    swift_setDeallocating();
    (*(v7 + 8))(v10 + v9, v6);
    swift_deallocClassInstance();
    sub_1009D5310(v11);
  }

  return result;
}

uint64_t sub_100A46598(char a1)
{
  v2 = v1;
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 64) = &protocol witness table for Bool;
  *(v4 + 32) = a1 & 1;
  os_log(_:dso:log:_:_:)();

  if ((a1 & 1) == 0)
  {
    sub_100A3D354();
  }

  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  v5 = *(v2 + 48);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100A4C078;
  *(v6 + 24) = v2;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101643EA8;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v5, v7);
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A467E4(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchTime();
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  v17 = __chkstk_darwin(v15);
  v34 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v35 = &v33 - v19;
  v20 = *(a2 + 16);
  if (v20)
  {
    v46 = *(v12 + 80);
    v21 = (v46 + 32) & ~v46;
    v22 = a2 + v21;
    v23 = *(v12 + 72);
    v43 = (v12 + 16);
    v44 = v23;
    v45 = v21;
    v42 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v12 + 32);
    do
    {
      v48 = v20;
      dispatch_group_enter(a3);
      (*v43)(v14, v22, v11);
      v24 = v40;
      v25 = swift_allocObject();
      *(v25 + 16) = a1;
      *(v25 + 24) = a3;
      (*v38)(v25 + v45, v14, v11);
      v26 = v41;
      *(v25 + v42) = a4;
      *(v25 + v26) = a5;
      *(v25 + v24) = v47;

      v27 = a3;

      v14 = v39;

      sub_1003DDE30(v22, 0, sub_100A4C0AC, v25);

      v22 += v44;
      v20 = v48 - 1;
    }

    while (v48 != 1);
  }

  v28 = v34;
  static DispatchTime.now()();
  v29 = v35;
  + infix(_:_:)();
  v30 = v37;
  v31 = *(v36 + 8);
  v31(v28, v37);
  OS_dispatch_group.wait(timeout:)();
  v31(v29, v30);
  result = static DispatchTimeoutResult.== infix(_:_:)();
  if (result)
  {
    static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  return result;
}

void sub_100A46BA4(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v27 - v12;
  Transaction.capture()();
  if (a1)
  {
    static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v28 = a6;
    static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    type metadata accessor for UUID();
    sub_100A4BFC4(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = dispatch_group_create();
    dispatch_group_enter(v18);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = a5;
    v21 = v18;

    sub_100A838D4(0, 0, v13, &unk_1013D3540, v20);

    OS_dispatch_group.wait()();

    v22 = v28;
    v23 = *(v28 + 16);
    if (v23)
    {
      v24 = *(type metadata accessor for OwnedBeaconRecord() - 8);
      v25 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v26 = *(v24 + 72);
      do
      {
        sub_100A5188C(v25);
        v25 += v26;
        --v23;
      }

      while (v23);
    }
  }

  dispatch_group_leave(a3);
}

uint64_t sub_100A46F64(char a1)
{
  v3 = *v1;
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 64) = &protocol witness table for Bool;
  *(v4 + 32) = a1 & 1;
  os_log(_:dso:log:_:_:)();

  type metadata accessor for Transaction();
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100A470A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B810);
  sub_1000076D4(v0, qword_10177B810);
  return Logger.init(subsystem:category:)();
}

void sub_100A47124(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      return;
    }
  }

  else if (v4)
  {
    if (v2 == v2 >> 32)
    {
      return;
    }
  }

  else if ((v3 & 0xFF000000000000) == 0)
  {
    return;
  }

  v5 = objc_autoreleasePoolPush();
  sub_101122FBC(v2, v3, &v8);
  if (v1)
  {
    objc_autoreleasePoolPop(v5);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    v6 = v8;
    if (v8)
    {
      v7 = [v8 recordChangeTag];

      if (v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }
  }
}

uint64_t sub_100A47234()
{
  v0 = sub_1000BC4D4(&qword_1016B27D8, &qword_1013D3618);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1016B27E0;
    v3 = &unk_1013D3620;
  }

  else
  {
    v2 = &unk_10169BAE0;
    v3 = &unk_10138C430;
  }

  return sub_1000BC4D4(v2, v3);
}

Swift::Int sub_100A472AC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for KeySyncMetadataDisplay();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for KeySyncMetadataDisplay() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100A4763C(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100A473D8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100A473D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for KeySyncMetadataDisplay();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_100A4E410(v24, v18, type metadata accessor for KeySyncMetadataDisplay);
      sub_100A4E410(v21, v14, type metadata accessor for KeySyncMetadataDisplay);
      v25 = *(v8 + 32);
      v26 = static Date.> infix(_:_:)();
      sub_100A4DCAC(v14, type metadata accessor for KeySyncMetadataDisplay);
      result = sub_100A4DCAC(v18, type metadata accessor for KeySyncMetadataDisplay);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_10002AC44(v24, v37, type metadata accessor for KeySyncMetadataDisplay);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002AC44(v27, v21, type metadata accessor for KeySyncMetadataDisplay);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100A4763C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for KeySyncMetadataDisplay();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_100A47FA0(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_100A4E410(v114 + v25 * v24, v19, type metadata accessor for KeySyncMetadataDisplay);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_100A4E410(v27, v120, type metadata accessor for KeySyncMetadataDisplay);
      v30 = *(v9 + 32);
      LODWORD(v115) = static Date.> infix(_:_:)();
      sub_100A4DCAC(v29, type metadata accessor for KeySyncMetadataDisplay);
      result = sub_100A4DCAC(v19, type metadata accessor for KeySyncMetadataDisplay);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_100A4E410(v32, v19, type metadata accessor for KeySyncMetadataDisplay);
        v33 = v120;
        sub_100A4E410(v5, v120, type metadata accessor for KeySyncMetadataDisplay);
        v34 = *(v121 + 32);
        v35 = static Date.> infix(_:_:)() & 1;
        sub_100A4DCAC(v33, type metadata accessor for KeySyncMetadataDisplay);
        result = sub_100A4DCAC(v19, type metadata accessor for KeySyncMetadataDisplay);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_10002AC44(v42 + v41, v111, type metadata accessor for KeySyncMetadataDisplay);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002AC44(v111, v42 + v36, type metadata accessor for KeySyncMetadataDisplay);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_100A4E410(v5, v19, type metadata accessor for KeySyncMetadataDisplay);
    v96 = v120;
    sub_100A4E410(v93, v120, type metadata accessor for KeySyncMetadataDisplay);
    v97 = *(v9 + 32);
    a4 = static Date.> infix(_:_:)();
    sub_100A4DCAC(v96, type metadata accessor for KeySyncMetadataDisplay);
    result = sub_100A4DCAC(v19, type metadata accessor for KeySyncMetadataDisplay);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_100A47FA0(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100B31E68(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_100B31DDC(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for KeySyncMetadataDisplay;
    v98 = v119;
    sub_10002AC44(v5, v119, type metadata accessor for KeySyncMetadataDisplay);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_10002AC44(v98, v93, type metadata accessor for KeySyncMetadataDisplay);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_100A47FA0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for KeySyncMetadataDisplay();
  v8 = *(*(v49 - 8) + 64);
  v9 = __chkstk_darwin(v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_100A4E410(v33, v47, type metadata accessor for KeySyncMetadataDisplay);
          v35 = v48;
          sub_100A4E410(v29, v48, type metadata accessor for KeySyncMetadataDisplay);
          v36 = *(v31 + 32);
          v37 = static Date.> infix(_:_:)();
          sub_100A4DCAC(v35, type metadata accessor for KeySyncMetadataDisplay);
          sub_100A4DCAC(v34, type metadata accessor for KeySyncMetadataDisplay);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_100A4E410(a2, v47, type metadata accessor for KeySyncMetadataDisplay);
        v22 = v48;
        sub_100A4E410(a4, v48, type metadata accessor for KeySyncMetadataDisplay);
        v23 = *(v49 + 32);
        v24 = static Date.> infix(_:_:)();
        sub_100A4DCAC(v22, type metadata accessor for KeySyncMetadataDisplay);
        sub_100A4DCAC(v21, type metadata accessor for KeySyncMetadataDisplay);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AC00(&v52, &v51, &v50);
  return 1;
}

void sub_100A484D0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v15)
  {
    v16 = v15;
    v27 = v5;
    v17 = SPSelfBeaconingChangedNotification;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v26 = v1;
    v18 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v25 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v14, v10);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v17;
    aBlock[4] = sub_100A4E8F0;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101643E08;
    v20 = _Block_copy(aBlock);
    v21 = v16;
    v22 = v17;
    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v25;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v26 + 8))(v4, v0);
    (*(v6 + 8))(v9, v27);
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v27 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    v24 = v27;
  }
}

void sub_100A48990()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v15)
  {
    v16 = v15;
    v27 = v5;
    v17 = SPServiceSettingsChangedNotification;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v26 = v1;
    v18 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);
    v25 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v14, v10);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v17;
    aBlock[4] = sub_100A4C064;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101643E58;
    v20 = _Block_copy(aBlock);
    v21 = v16;
    v22 = v17;
    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_100A4BFC4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v25;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v26 + 8))(v4, v0);
    (*(v6 + 8))(v9, v27);
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v27 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    v24 = v27;
  }
}

void sub_100A48E50(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  type metadata accessor for AnyKeyPath();
  swift_getKeyPath();
  v4 = static AnyKeyPath.== infix(_:_:)();

  if (v4 & 1) != 0 || (swift_getKeyPath(), v5 = static AnyKeyPath.== infix(_:_:)(), , (v5) || (swift_getKeyPath(), v6 = static AnyKeyPath.== infix(_:_:)(), , (v6))
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    v7 = *(v2 + 280);
    sub_100A907FC();
    sub_100A83364(0);
  }

  swift_getKeyPath();
  v8 = static AnyKeyPath.== infix(_:_:)();

  if (v8)
  {
    sub_100A484D0();
  }

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  v10 = *(v3 + class metadata base offset for KeyPath + 8);
  type metadata accessor for KeyPath();

  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  os_log(_:dso:log:_:_:)();

  sub_100A48990();
}

BOOL sub_100A490E0()
{
  if (qword_101694940 != -1)
  {
LABEL_25:
    swift_once();
  }

  v0 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = sub_10107406C(v20);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = sub_10107416C(v20);

  v9 = *(v8 + 16);
  if (v9)
  {
    for (i = 0; v9 != i; ++i)
    {
      if (i >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v11 = *(v8 + 8 * i + 32);
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {

          v18 = 0;
          result = 0;
          if (v7)
          {
            return v18;
          }

          return result;
        }
      }
    }
  }

  return (v7 & 1) != 0;
}

void sub_100A492E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v24 - v10;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v12 = sub_100035730(a1, 0, 0);
  v13 = v12[2];
  if (v13)
  {
    v25 = a2;
    v26 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = *(v5 + 80);
    v24[1] = v12;
    v15 = v12 + ((v14 + 32) & ~v14);
    v16 = *(v5 + 72);
    do
    {
      sub_100A4E410(v15, v11, type metadata accessor for BeaconObservation);
      sub_100A4E410(v11, v9, type metadata accessor for BeaconObservation);
      v17 = objc_allocWithZone(SPBeaconObservation);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v19 = qword_1013D39A0[v9[*(v4 + 24)]];
      v20 = &v9[*(v4 + 20)];
      v21 = Date._bridgeToObjectiveC()().super.isa;
      [v17 initWithBeaconIdentifier:isa type:v19 date:v21 location:0];

      sub_100A4DCAC(v9, type metadata accessor for BeaconObservation);
      sub_100A4DCAC(v11, type metadata accessor for BeaconObservation);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v22 = v26[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += v16;
      --v13;
    }

    while (v13);

    a2 = v25;
  }

  else
  {
  }

  sub_100008BB8(0, &qword_1016B27C0, SPBeaconObservation_ptr);
  v23 = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, v23);
}

unint64_t sub_100A495B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C4C8, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void sub_100A49600()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0 = qword_10177B348;
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = *(v0 + 48);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  [v2 removeObjectForKey:v3];
}

uint64_t sub_100A4978C(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for XPCServiceDescription();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for MachServiceName();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v1[19] = v11;
  v12 = *(v11 - 8);
  v1[20] = v12;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v14 = type metadata accessor for LocalBeaconKeyInfo();
  v1[23] = v14;
  v15 = *(v14 - 8);
  v1[24] = v15;
  v16 = *(v15 + 64) + 15;
  v1[25] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v18 = type metadata accessor for OwnedBeaconRecord();
  v1[27] = v18;
  v19 = *(v18 - 8);
  v1[28] = v19;
  v20 = *(v19 + 64) + 15;
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_100A49A74, 0, 0);
}

uint64_t sub_100A49A74()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100A4BFC4(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.tribeca(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v3 = v0[27];
    v4 = v0[28];
    v5 = v0[26];
    sub_1000D2A70(v0[7], v5, &unk_1016A9A20, &qword_10138B280);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_10000B3A8(v0[26], &unk_1016A9A20, &qword_10138B280);
      v6 = 0;
      v7 = 0xF000000000000000;
    }

    else
    {
      v19 = v0[29];
      v20 = v0[27];
      v21 = v0[22];
      v58 = v0[25];
      v60 = v0[23];
      v22 = v0[20];
      v23 = v0[21];
      v24 = v0[18];
      v25 = v0[19];
      v27 = v0[16];
      v26 = v0[17];
      sub_10002AC44(v0[26], v19, type metadata accessor for OwnedBeaconRecord);
      v28 = getuid();
      sub_1000294F0(v28);
      (*(v22 + 16))(v23, v19 + v20[5], v25);
      (*(v26 + 16))(v24, v19 + v20[8], v27);
      v29 = (v19 + v20[13]);
      v30 = *v29;
      v31 = v29[1];
      v32 = (v19 + v20[9]);
      v33 = *v32;
      v34 = v32[1];
      sub_100017D5C(v30, v31);
      sub_100017D5C(v33, v34);
      LocalBeaconKeyInfo.init(userIdentifier:beaconIdentifier:pairDate:publicKey:sharedSecretKey:)();
      v35 = type metadata accessor for PropertyListEncoder();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      PropertyListEncoder.init()();
      sub_100A4BFC4(&qword_1016B26D8, &type metadata accessor for LocalBeaconKeyInfo);
      v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v7 = v38;
      v39 = v0[29];
      (*(v0[24] + 8))(v0[25], v0[23]);

      sub_100A4DCAC(v39, type metadata accessor for OwnedBeaconRecord);
    }

    v59 = v7;
    v61 = v6;
    v0[30] = v6;
    v0[31] = v7;
    v42 = v0[14];
    v41 = v0[15];
    v44 = v0[12];
    v43 = v0[13];
    v45 = v0[10];
    v46 = v0[11];
    v48 = v0[8];
    v47 = v0[9];
    MachServiceName.init(_:)();
    v49 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP7SPOwner33FindMyBeaconDaemonPushXPCProtocol_];
    (*(v43 + 16))(v42, v41, v44);
    v50 = v49;
    XPCServiceDescription.init(name:options:remoteObjectInterface:interruptionHandler:invalidationHandler:)();
    (*(v47 + 16))(v45, v46, v48);
    v51 = sub_1000BC4D4(&qword_1016B26D0, &unk_1013D3560);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v54 = XPCSession.init(service:)();
    v0[32] = v54;
    XPCSession.resume()();

    (*(v47 + 8))(v46, v48);
    (*(v43 + 8))(v41, v44);
    v55 = swift_task_alloc();
    v0[33] = v55;
    v55[2] = v54;
    v55[3] = v61;
    v55[4] = v59;
    v56 = async function pointer to withCancellableCheckedThrowingContinuation<A>(_:)[1];
    v57 = swift_task_alloc();
    v0[34] = v57;
    *v57 = v0;
    v57[1] = sub_100A4A09C;

    return withCancellableCheckedThrowingContinuation<A>(_:)();
  }

  else
  {
    v8 = v0[29];
    v9 = v0[25];
    v10 = v0[26];
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[18];
    v15 = v0[14];
    v14 = v0[15];
    v17 = v0[10];
    v16 = v0[11];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100A4A09C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);

  if (v0)
  {
    v6 = sub_100A4A2C4;
  }

  else
  {
    v6 = sub_100A4A1D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100A4A1D0()
{
  v1 = v0[32];
  sub_100006654(v0[30], v0[31]);

  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[10];
  v10 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100A4A2C4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];

  sub_100006654(v3, v2);
  v16 = v0[35];
  v4 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[10];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100A4A3C4(uint64_t a1, int a2)
{
  *(v2 + 64) = a2;
  *(v2 + 16) = a1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100A4A45C;

  return daemon.getter();
}

uint64_t sub_100A4A45C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LeechScanningService();
  v9 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100A4BFC4(&unk_1016B1170, type metadata accessor for LeechScanningService);
  *v6 = v12;
  v6[1] = sub_100A4A638;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A4A638(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 32);

    return _swift_task_switch(sub_100A4A7E0, 0, 0);
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 48) = a1;
    v9 = swift_task_alloc();
    *(v4 + 56) = v9;
    *v9 = v6;
    v9[1] = sub_100A45134;
    v10 = *(v4 + 64);
    v11 = *(v4 + 16);

    return sub_10020632C(v11, v10);
  }
}

uint64_t sub_100A4A7E0()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get LeechScanningService!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100A4A8F4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100A4A9C0, 0, 0);
}

uint64_t sub_100A4A9C0()
{
  v21 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C418);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101368490, &v20);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v20);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s identifier %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v0[6] = v18;
  *v18 = v0;
  v18[1] = sub_100A4AC60;

  return daemon.getter();
}

uint64_t sub_100A4AC60(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100A4BFC4(&qword_10169A090, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_100A4AE3C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A4AE3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100A4B150, 0, 0);
  }

  else
  {
    v7 = v4[7];

    v8 = swift_task_alloc();
    v4[11] = v8;
    *v8 = v6;
    v8[1] = sub_100A4AFCC;
    v9 = v4[2];

    return sub_100D75AC8(v9);
  }
}

uint64_t sub_100A4AFCC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100A4B1C0;
  }

  else
  {
    v3 = sub_100A4B0E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A4B0E0()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100A4B150()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A4B1C0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A4B230(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100A4B2FC, 0, 0);
}

uint64_t sub_100A4B2FC()
{
  v29 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[11] = v5;
  sub_1000076D4(v5, qword_10177C418);
  (*(v1 + 16))(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101368460, v28);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    v16 = sub_1000136BC(v13, v15, v28);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s identifier %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100A4BFC4(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v18 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v18, enum case for Feature.FindMy.lineUp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v19 = async function pointer to daemon.getter[1];
    v20 = swift_task_alloc();
    v0[12] = v20;
    *v20 = v0;
    v20[1] = sub_100A4B770;

    return daemon.getter();
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v5, qword_10177C0A8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Feature.FindMy.lineUp is disabled!", v23, 2u);
    }

    sub_1003FD838();
    swift_allocError();
    *v24 = 13;
    swift_willThrow();
    v25 = v0[10];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_100A4B770(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_100A4BFC4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100A4BFC4(&qword_10169A090, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_100A4B94C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A4B94C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v8 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = sub_100A4BEEC;
  }

  else
  {
    v6 = v3[13];

    v5 = sub_100A4BA68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A4BA68()
{
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C218;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3 && (v4 = String._bridgeToObjectiveC()(), v5 = [v1 BOOLForKey:v4], v4, (v5 & 1) != 0))
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[11], qword_10177C0A8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[15];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Ignoring unpairing notification user defaults is set.", v10, 2u);
    }

    v11 = v0[10];

    v12 = v0[1];

    return v12();
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[11], qword_10177C0A8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unpairing pencil...", v16, 2u);
    }

    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_100A4BD6C;
    v18 = v0[15];
    v19 = v0[7];

    return sub_100D75188(v19, 0);
  }
}

uint64_t sub_100A4BD6C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100A4BF58;
  }

  else
  {
    v3 = sub_100A4BE80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A4BE80()
{
  v1 = v0[15];

  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100A4BEEC()
{
  v1 = v0[13];

  v2 = v0[16];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A4BF58()
{
  v1 = v0[15];

  v2 = v0[18];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A4BFC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100A4C0AC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100A46BA4(a1, v8, v9, v1 + v4, v7, v10);
}

uint64_t sub_100A4C164(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100A3997C(a1, v4, v5, v7);
}

uint64_t sub_100A4C230(uint64_t a1)
{
  v3 = *(*(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_100A3CEF8(a1);
}

uint64_t sub_100A4C2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100A45430(a1, v4, v5, v6);
}

uint64_t sub_100A4C36C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100A44D20(a1, v4, v5, v6);
}

uint64_t sub_100A4C420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100A44504(a1, v4, v5, v6);
}

uint64_t sub_100A4C4D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100A41D88(a1, v4, v5, v6);
}

uint64_t sub_100A4C590(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_100A40C64(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100A4C6E8(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100A3E8C8(a1, v4, v5);
}

uint64_t sub_100A4C75C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100A4C7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A4C824(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014650;

  return sub_100A3C100(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100A4C934()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100A3B47C(v4, v5, v0 + v3);
}

uint64_t sub_100A4CA68@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result == 2)
  {
    v4 = (v2 + 16);
    v5 = vld1q_dup_f64(v4);
    v6 = 576;
    v3 = 257;
  }

  else
  {
    v6 = *(result + 32);
    v5 = *(result + 8);
    v2 = result;
  }

  v7 = *(v2 + 24);
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_100A4CAC4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A344AC(a1, v1);
}

uint64_t sub_100A4CB5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1002ECF7C();
}

uint64_t sub_100A4CC10(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A344AC(a1, v1);
}

uint64_t sub_100A4CCA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100A4CD5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A344AC(a1, v1);
}

uint64_t sub_100A4CDF4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100A4CEA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A345E8(a1, v1);
}

uint64_t sub_100A4CF40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100A4CFF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A344AC(a1, v1);
}

uint64_t sub_100A4D08C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100264040();
}

uint64_t sub_100A4D140(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&unk_1016B27F0, &qword_1013D3630) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100A34668(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100A4D26C()
{
  v1 = sub_1000BC4D4(&unk_1016B27F0, &qword_1013D3630);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100A4D350(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&unk_1016B27F0, &qword_1013D3630) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100A34E18(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100A4D4B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100E9BC20();
}

uint64_t sub_100A4D564(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100A35558(a1, a2, v2);
}

unint64_t sub_100A4D610()
{
  result = qword_1016B2850;
  if (!qword_1016B2850)
  {
    sub_1000BC580(&qword_1016B2848, &qword_1013D3740);
    sub_100A4BFC4(&qword_101698330, &type metadata accessor for UUID);
    sub_1001E8254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2850);
  }

  return result;
}

uint64_t sub_100A4D6EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100A30EF4();
}

uint64_t sub_100A4D790(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_1000BC4D4(&qword_1016B2A70, &unk_1013D37D0);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_100A4D7E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1007E2BE8(a1, v4, v5, v6);
}

uint64_t sub_100A4D898(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A30F84(a1, v1);
}

uint64_t sub_100A4D99C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1002502A8();
}

unint64_t sub_100A4DA50()
{
  result = qword_1016B29A0;
  if (!qword_1016B29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B29A0);
  }

  return result;
}

uint64_t sub_100A4DAB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1008AA1C8(v2, v3);
}

uint64_t sub_100A4DB64(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_productInfoManager);

  sub_101094E54(j___s10FindMyBase11TransactionC7captureyyF, a1);
}

uint64_t sub_100A4DBD4(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8 + 8);
  return sub_100A3A470(a1, (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v7 + 8), *(v1 + v8));
}

uint64_t sub_100A4DCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100A4DD14()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v35 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v34 = (v2 + 32) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v34;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v34 = (v2 + 32) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v31 = *(v5 + v1[14] + 8);

  v32 = *(v5 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v35);
}

uint64_t sub_100A4E080()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t sub_100A4E114(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_100A4E1CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, v3 + v6, v8, v10, v11);
}

uint64_t sub_100A4E304(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_100A4E3C8(uint64_t (*a1)(void))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  Transaction.capture()();
  return a1();
}

uint64_t sub_100A4E410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A4E478(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BeaconManagerEntitlement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeaconManagerEntitlement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BeaconManagerService.BeaconManagerServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeaconManagerService.BeaconManagerServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100A4E788()
{
  result = qword_1016B2AA0;
  if (!qword_1016B2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2AA0);
  }

  return result;
}

unint64_t sub_100A4E7E0()
{
  result = qword_1016B2AA8;
  if (!qword_1016B2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2AA8);
  }

  return result;
}

unint64_t sub_100A4E838()
{
  result = qword_1016B2AB0;
  if (!qword_1016B2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2AB0);
  }

  return result;
}

uint64_t sub_100A4E94C(unint64_t *a1)
{
  v2 = v1;
  v4 = *(v1 + 248);
  if (*(v4 + 16) > a1[2] >> 3)
  {
    v5 = *(v1 + 248);

    v6 = sub_10060E4E0(v4, a1);

    if (v6[2])
    {
      goto LABEL_3;
    }

LABEL_41:
  }

  v55 = a1;

  sub_10087D23C(v4);

  v6 = v55;
  if (!v55[2])
  {
    goto LABEL_41;
  }

LABEL_3:
  v7 = *(v6 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 <= 0xD)
  {
    goto LABEL_4;
  }

  while (1)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_4:
    __chkstk_darwin(v11);
    bzero(&v54[-((v10 + 15) & 0x3FFFFFFFFFFFFFF0)], v10);
    v12 = 0;
    v13 = 0;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v6[7];
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v18 = v17 | (v13 << 6);
LABEL_14:
      if ((*(v6[6] + 24 * v18 + 16) & 1) == 0)
      {
        *&v54[((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)] |= 1 << v18;
        v21 = __OFADD__(v12++, 1);
        if (v21)
        {
          __break(1u);
LABEL_18:
          v22 = sub_10060B4EC(&v54[-((v10 + 15) & 0x3FFFFFFFFFFFFFF0)], v9, v12, v6);
          v9 = 0;
          goto LABEL_19;
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= ((v14 + 63) >> 6))
      {
        goto LABEL_18;
      }

      v20 = v6[v13 + 7];
      ++v19;
      if (v20)
      {
        v16 = (v20 - 1) & v20;
        v18 = __clz(__rbit64(v20)) | (v13 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  v49 = swift_slowAlloc();
  v50 = v9;
  v9 = 0;
  v51 = sub_100A4F1DC(v49, v50, v6, sub_100A4F110);

  v22 = v51;
LABEL_19:
  v23 = *(v22 + 16);

  v25 = *(v6 + 32);
  v26 = ((1 << v25) + 63) >> 6;
  if ((v25 & 0x3Fu) <= 0xD)
  {
LABEL_20:
    __chkstk_darwin(v24);
    v10 = &v54[-((v27 + 15) & 0x3FFFFFFFFFFFFFF0)];
    bzero(v10, v27);
    v28 = 0;
    v29 = 0;
    v30 = 1 << *(v6 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v6[7];
    while (v32)
    {
      v33 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v34 = v33 | (v29 << 6);
LABEL_30:
      if (*(v6[6] + 24 * v34 + 16) == 1)
      {
        *(v10 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v21 = __OFADD__(v28++, 1);
        if (v21)
        {
          __break(1u);
LABEL_34:
          v37 = sub_10060B4EC(v10, v26, v28, v6);
          goto LABEL_35;
        }
      }
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_45;
      }

      if (v29 >= ((v30 + 63) >> 6))
      {
        goto LABEL_34;
      }

      v36 = v6[v29 + 7];
      ++v35;
      if (v36)
      {
        v32 = (v36 - 1) & v36;
        v34 = __clz(__rbit64(v36)) | (v29 << 6);
        goto LABEL_30;
      }
    }
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_20;
  }

  v52 = swift_slowAlloc();
  v53 = sub_100A4F1DC(v52, v26, v6, sub_100A4F120);

  v37 = v53;
LABEL_35:
  v38 = *(v37 + 16);

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177A560);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    *(v42 + 4) = v23;
    *(v42 + 12) = 2048;
    *(v42 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v40, v41, "Display identifiers contain unexpected prefix. Owner: %ld, member: %ld.", v42, 0x16u);
  }

  type metadata accessor for Transaction();
  v43 = swift_allocObject();
  *(v43 + 16) = v23;
  *(v43 + 24) = v38;
  static Transaction.asyncTask(name:block:)();

  v44 = *(v2 + 248);

  v46 = sub_10039D87C(v45, a1);
  v47 = *(v2 + 248);
  *(v2 + 248) = v46;
}

Swift::Int sub_100A4EF5C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100A4EFC0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100A4EFF8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100A4F058(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_100A4F0BC()
{
  result = qword_1016B2B80;
  if (!qword_1016B2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2B80);
  }

  return result;
}

uint64_t sub_100A4F128(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return (sub_100ECCA58)(a1, a2);
}

void *sub_100A4F1DC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10061B638(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100A4F26C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100A4F128(v2, v3);
}

uint64_t sub_100A4F304(uint64_t a1, unint64_t a2)
{

  v4 = String.count.getter();
  if (v4 < String.count.getter())
  {

LABEL_3:

    v5 = String.count.getter();
    if (v5 < String.count.getter())
    {

LABEL_5:

      return a1;
    }

    String.count.getter();
    v6 = String.index(_:offsetBy:)();
    String.subscript.getter();
    v12 = Substring.lowercased()();

    v13 = String.lowercased()();

    if (v12._countAndFlagsBits == v13._countAndFlagsBits && v12._object == v13._object)
    {
      goto LABEL_14;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  String.count.getter();
  v6 = String.index(_:offsetBy:)();
  String.subscript.getter();
  v7 = Substring.lowercased()();

  v8 = String.lowercased()();

  if (v7._countAndFlagsBits == v8._countAndFlagsBits && v7._object == v8._object)
  {
LABEL_14:

    goto LABEL_15;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_15:
  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v14 >= v6 >> 14)
  {
    String.subscript.getter();
    a1 = static String._fromSubstring(_:)();

    return a1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100A4F5BC()
{
  result = qword_1016B2B88;
  if (!qword_1016B2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2B88);
  }

  return result;
}

uint64_t sub_100A4F610()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_100A4F638()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t sub_100A4F660()
{
  v1 = *v0;
  v2 = v0[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_100A4F688()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return swift_unknownObjectRetain();
}

uint64_t sub_100A4F6B0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return swift_unknownObjectRetain();
}

uint64_t sub_100A4F6D8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return swift_unknownObjectRetain();
}

uint64_t sub_100A4F700()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  return swift_unknownObjectRetain();
}

uint64_t sub_100A4F728()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  return swift_unknownObjectRetain();
}

uint64_t sub_100A4F750()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  return swift_unknownObjectRetain();
}

uint64_t sub_100A4F780(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

__n128 sub_100A4F7CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a19;
  *(a9 + 16) = a2;
  *(a9 + 24) = a22;
  *(a9 + 32) = a3;
  *(a9 + 40) = a21;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  *(a9 + 88) = a10;
  *(a9 + 104) = a11;
  *(a9 + 120) = a20;
  *(a9 + 128) = a12;
  *(a9 + 136) = a23;
  *(a9 + 144) = a13;
  return result;
}

uint64_t sub_100A4F80C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100A4F8A0;

  return daemon.getter();
}

uint64_t sub_100A4F8A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DiscoveryService();
  v9 = sub_100019618(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019618(&unk_1016B7D70, type metadata accessor for DiscoveryService);
  *v6 = v12;
  v6[1] = sub_100A4FA7C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A4FA7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_10037EF20;
  }

  else
  {
    v8 = *(v4 + 40);

    *(v4 + 64) = a1;
    v7 = sub_100A4FBAC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100A4FBAC()
{
  v1 = v0[8];
  type metadata accessor for EmptyPairingPolicyVerifier();
  v0[9] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for EmptyPairingPeripheralProvider();
  v0[10] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for EmptyAccessoryMetadataProvider();
  v0[11] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[12] = sub_100019618(&qword_1016B2C00, type metadata accessor for DiscoveryService);
  v2 = type metadata accessor for PairingUIManager();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100A4FCF8;

  return sub_100C05AD4();
}

uint64_t sub_100A4FCF8(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100A4FDF8, 0, 0);
}

uint64_t sub_100A4FDF8()
{
  v23 = v0[12];
  v24 = v0[14];
  v21 = v0[10];
  v22 = v0[11];
  v20 = v0[9];
  v1 = v0[8];
  v3 = v0[2];
  v2 = v0[3];
  v19 = sub_100019618(&qword_1016B2B90, type metadata accessor for PairingUIManager);
  v18 = sub_100019618(&qword_1016B2B98, type metadata accessor for DiscoveryService);
  v4 = sub_100019618(&qword_1016B2BA0, type metadata accessor for DiscoveryService);
  v5 = type metadata accessor for MultiDetectionPairingInfoStore();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v9 = sub_100655204(v8);
  type metadata accessor for EmptyPairingExecutorFactory();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  v11 = sub_100019618(&qword_1016B2C08, type metadata accessor for EmptyPairingPolicyVerifier);
  v12 = sub_100019618(&qword_1016B2C10, type metadata accessor for EmptyPairingPeripheralProvider);
  v13 = sub_100019618(&qword_1016B2C18, type metadata accessor for EmptyAccessoryMetadataProvider);
  v14 = sub_100019618(&qword_1016A6DB8, type metadata accessor for MultiDetectionPairingInfoStore);
  v15 = sub_100019618(&qword_1016B2C20, type metadata accessor for EmptyPairingExecutorFactory);
  *v3 = v20;
  v3[1] = v11;
  v3[2] = v21;
  v3[3] = v12;
  v3[4] = v22;
  v3[5] = v13;
  v3[6] = v1;
  v3[7] = v23;
  v3[8] = v24;
  v3[9] = v19;
  v3[10] = v1;
  v3[11] = v18;
  v3[12] = v1;
  v3[13] = v4;
  v3[14] = v9;
  v3[15] = v14;
  v3[16] = v10;
  v3[17] = v15;
  v3[18] = _swiftEmptyArrayStorage;
  v16 = v0[1];

  return v16();
}

uint64_t sub_100A500D4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100A50168;

  return daemon.getter();
}

uint64_t sub_100A50168(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DiscoveryService();
  v9 = sub_100019618(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019618(&unk_1016B7D70, type metadata accessor for DiscoveryService);
  *v6 = v12;
  v6[1] = sub_100A50344;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A50344(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v4 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003BF928, 0, 0);
  }

  else
  {
    v5 = v4[5];

    type metadata accessor for AirTagPairingValidator();
    v4[9] = swift_allocObject();
    swift_defaultActor_initialize();
    v4[10] = type metadata accessor for AirTagPeripheralProvider();
    v4[11] = swift_allocObject();
    swift_defaultActor_initialize();
    type metadata accessor for CentralManager();
    v6 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
    v7 = swift_task_alloc();
    v4[12] = v7;
    *v7 = v4;
    v7[1] = sub_100A50500;

    return static CentralManager.pairingCentralManager.getter();
  }
}

uint64_t sub_100A50500(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_100A50628;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_100A50714;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100A50628()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100A506A8, 0, 0);
}

uint64_t sub_100A506A8()
{
  v1 = v0[7];

  v2 = v0[13];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A50714()
{
  *(v0[11] + 112) = v0[14];
  type metadata accessor for AirTagMetadataProvider();
  v0[15] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = type metadata accessor for PairingUIManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_100A507E0;

  return sub_100C05AD4();
}

uint64_t sub_100A507E0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100A508E0, 0, 0);
}

uint64_t sub_100A508E0()
{
  v19 = v0[15];
  v20 = v0[17];
  v17 = v0[9];
  v18 = v0[11];
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  v16 = sub_100019618(&qword_1016B2B90, type metadata accessor for PairingUIManager);
  v15 = sub_100019618(&qword_1016B2B98, type metadata accessor for DiscoveryService);
  v4 = sub_100019618(&qword_1016B2BA0, type metadata accessor for DiscoveryService);
  sub_1000BC4D4(&qword_1016B2BA8, &unk_1013EACE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  sub_10001F280(v2, v5 + 32);
  type metadata accessor for AirTagPairingInfoStore();
  swift_allocObject();

  v6 = sub_100BAAB58(v5, 3, 0);
  type metadata accessor for AirTagExecutorsFactory();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = sub_100019618(&qword_1016B2BB0, type metadata accessor for AirTagPairingValidator);
  v9 = sub_100019618(&qword_1016B2BB8, type metadata accessor for AirTagPeripheralProvider);
  v10 = sub_100019618(&qword_1016B2BC0, type metadata accessor for AirTagMetadataProvider);
  v11 = sub_100019618(&qword_1016B2BC8, type metadata accessor for AirTagPairingInfoStore);
  v12 = sub_100019618(&qword_1016B2BD0, type metadata accessor for AirTagExecutorsFactory);
  *v3 = v17;
  v3[1] = v8;
  v3[2] = v18;
  v3[3] = v9;
  v3[4] = v19;
  v3[5] = v10;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = v20;
  v3[9] = v16;
  v3[10] = v1;
  v3[11] = v15;
  v3[12] = v1;
  v3[13] = v4;
  v3[14] = v6;
  v3[15] = v11;
  v3[16] = v7;
  v3[17] = v12;
  v3[18] = _swiftEmptyArrayStorage;
  v13 = v0[1];

  return v13();
}

uint64_t sub_100A50BF4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 144) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for HawkeyeV2MetadataProvider();
  *(v3 + 32) = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  *(v3 + 40) = v5;
  *v5 = v3;
  v5[1] = sub_100A50CA8;

  return daemon.getter();
}

uint64_t sub_100A50CA8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DiscoveryService();
  v9 = sub_100019618(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019618(&unk_1016B7D70, type metadata accessor for DiscoveryService);
  *v6 = v12;
  v6[1] = sub_100A50E84;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A50E84(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[8] = a1;
  v5[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100A5175C, 0, 0);
  }

  else
  {
    type metadata accessor for ProximityPairingValidator();
    v5[10] = swift_allocObject();
    swift_defaultActor_initialize();
    v5[11] = type metadata accessor for ProximityPeripheralProvider();
    v5[12] = swift_allocObject();
    swift_defaultActor_initialize();
    type metadata accessor for CentralManager();
    v6 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
    v7 = swift_task_alloc();
    v5[13] = v7;
    *v7 = v5;
    v7[1] = sub_100A51064;

    return static CentralManager.pairingCentralManager.getter();
  }
}

uint64_t sub_100A51064(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_100A5118C;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_100A5128C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100A5118C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100A51220, 0, 0);
}

uint64_t sub_100A51220()
{
  v1 = v0[8];

  v2 = v0[14];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A5128C()
{
  *(v0[12] + 112) = v0[15];
  v1 = type metadata accessor for PairingUIManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_100A5133C;

  return sub_100C05AD4();
}

uint64_t sub_100A5133C(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100A5143C, 0, 0);
}

uint64_t sub_100A5143C()
{
  v23 = *(v0 + 96);
  v24 = *(v0 + 136);
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v21 = *(v0 + 80);
  v22 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 144);
  v20 = sub_100019618(&qword_1016B2B90, type metadata accessor for PairingUIManager);
  v19 = sub_100019618(&qword_1016B2B98, type metadata accessor for DiscoveryService);
  v5 = sub_100019618(&qword_1016B2BA0, type metadata accessor for DiscoveryService);
  sub_1000BC4D4(&qword_1016B2BA8, &unk_1013EACE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  sub_10001F280(v2, v6 + 32);
  v7 = type metadata accessor for ProximityPairingInfoStore();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = sub_100C12EA0(v6, v4, v4);
  type metadata accessor for ProximityExecutorFactory();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  v12 = sub_100019618(&qword_1016B2BD8, type metadata accessor for ProximityPairingValidator);
  v13 = sub_100019618(&qword_1016B2BE0, type metadata accessor for ProximityPeripheralProvider);
  v14 = sub_100019618(&qword_1016B2BE8, type metadata accessor for HawkeyeV2MetadataProvider);
  v15 = sub_100019618(&qword_1016B2BF0, type metadata accessor for ProximityPairingInfoStore);
  v16 = sub_100019618(&qword_1016B2BF8, type metadata accessor for ProximityExecutorFactory);
  *v3 = v21;
  v3[1] = v12;
  v3[2] = v23;
  v3[3] = v13;
  v3[4] = v22;
  v3[5] = v14;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = v24;
  v3[9] = v20;
  v3[10] = v1;
  v3[11] = v19;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v10;
  v3[15] = v15;
  v3[16] = v11;
  v3[17] = v16;
  v3[18] = _swiftEmptyArrayStorage;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100A5175C()
{
  v1 = v0[9];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100A517C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100A51808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100A5189C(uint64_t a1, const char *a2)
{
  v33 = a2;
  v3 = type metadata accessor for PairingEvent();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnedBeaconRecord();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v31 - v12;
  if (qword_101694BA0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B930);
  sub_100A51D68(a1, v13);
  sub_100A51D68(a1, v11);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31[1] = v3;
    v18 = v17;
    v31[0] = swift_slowAlloc();
    v35 = v31[0];
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v19 = *(v7 + 20);
    type metadata accessor for UUID();
    sub_1002FFBAC();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v32 = a1;
    sub_100A51DCC(v13, type metadata accessor for OwnedBeaconRecord);
    v23 = sub_1000136BC(v20, v22, &v35);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    v24 = sub_100D60CD0();
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    a1 = v32;
    sub_100A51DCC(v11, type metadata accessor for OwnedBeaconRecord);
    v28 = sub_1000136BC(v25, v27, &v35);

    *(v18 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, v33, v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100A51DCC(v11, type metadata accessor for OwnedBeaconRecord);
    sub_100A51DCC(v13, type metadata accessor for OwnedBeaconRecord);
  }

  v29 = *(v34 + 16);
  sub_100A51D68(a1, v6);
  swift_storeEnumTagMultiPayload();
  PassthroughSubject.send(_:)();
  return sub_100A51DCC(v6, type metadata accessor for PairingEvent);
}

uint64_t type metadata accessor for PairingEvent()
{
  result = qword_1016B2D50;
  if (!qword_1016B2D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A51C88()
{
  result = type metadata accessor for OwnedBeaconRecord();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100A51CE8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B930);
  sub_1000076D4(v0, qword_10177B930);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A51D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A51DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for AirPodsLEPairingLockCheckEndPoint()
{
  result = qword_1016B2DE0;
  if (!qword_1016B2DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A51EA0()
{
  result = type metadata accessor for FMNAccountType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100A51F14()
{
  v1 = type metadata accessor for FMNAccountType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for AirPodsLEPairingLockCheckEndPoint() + 20)) == 1)
  {
    (*(v2 + 104))(v5, enum case for FMNAccountType.none(_:), v1);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();
    v6 = sub_1010B32C8(v5)[2];
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    OS_dispatch_queue.sync<A>(execute:)();
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.host.setter();
    URLComponents.path.setter();

    v7 = URLComponents.path.modify();
    v8._countAndFlagsBits = 0xD00000000000002ALL;
    v8._object = 0x80000001013697E0;
    String.append(_:)(v8);
    v7(&v18, 0);
  }

  else
  {
    (*(v2 + 16))(v5, v0, v1);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();
    v9 = sub_1010B32C8(v5)[2];
    sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
    OS_dispatch_queue.sync<A>(execute:)();
    URLComponents.init()();
    URLComponents.scheme.setter();
    URLComponents.host.setter();
    URLComponents.path.setter();

    v10 = URLComponents.path.modify();
    v11._countAndFlagsBits = 0xD00000000000001BLL;
    v11._object = 0x80000001013697C0;
    String.append(_:)(v11);
    v10(&v18, 0);
    if (qword_101694F58 != -1)
    {
      swift_once();
    }

    v12 = qword_10177C218;
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 isInternalBuild];

    if (v14)
    {
      v15 = String._bridgeToObjectiveC()();
      v16 = [v12 stringForKey:v15];

      if (v16)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        URLComponents.host.setter();
      }
    }
  }
}

uint64_t sub_100A52308()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B948);
  v1 = sub_1000076D4(v0, qword_10177B948);
  if (qword_101694FB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C2C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100A523D0()
{
  v1 = *v0;
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100A52490(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100A5252C, 0, 0);
}

uint64_t sub_100A5252C()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for TaskPriority();
  v8 = *(v0 + 16);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v8;

  v4 = sub_100BB9ADC(0, 0, v1, &unk_1013D3EC0, v3);
  sub_10000B3A8(v1, &qword_101698C00, &qword_10138B570);
  v5 = *(v8 + 40);
  *(v8 + 40) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100A52660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a4;
  v5 = type metadata accessor for UUID();
  v4[32] = v5;
  v6 = *(v5 - 8);
  v4[33] = v6;
  v7 = *(v6 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v9 = type metadata accessor for LocalFindableAccessoryRecord();
  v4[37] = v9;
  v10 = *(v9 - 8);
  v4[38] = v10;
  v11 = *(v10 + 64) + 15;
  v4[39] = swift_task_alloc();
  v12 = type metadata accessor for CloudStorageStore.State(0);
  v4[40] = v12;
  v13 = *(v12 - 8);
  v4[41] = v13;
  v14 = *(v13 + 64) + 15;
  v4[42] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_1016AA530, &unk_1013CAF90) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_1016B2F50, &unk_1013BD140);
  v4[44] = v16;
  v17 = *(v16 - 8);
  v4[45] = v17;
  v18 = *(v17 + 64) + 15;
  v4[46] = swift_task_alloc();
  v19 = sub_1000BC4D4(&qword_1016AA538, &unk_1013BD130);
  v4[47] = v19;
  v20 = *(v19 - 8);
  v4[48] = v20;
  v21 = *(v20 + 64) + 15;
  v4[49] = swift_task_alloc();
  v22 = sub_1000BC4D4(&unk_1016AA540, &unk_1013CAFA0);
  v4[50] = v22;
  v23 = *(v22 - 8);
  v4[51] = v23;
  v24 = *(v23 + 64) + 15;
  v4[52] = swift_task_alloc();

  return _swift_task_switch(sub_100A5298C, 0, 0);
}

uint64_t sub_100A5298C()
{
  static Task<>.checkCancellation()();
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 424) = v2;
  *v2 = v0;
  v2[1] = sub_100A52AEC;

  return daemon.getter();
}

uint64_t sub_100A52AEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 424);
  v12 = *v1;
  *(v3 + 432) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 440) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100019660(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019660(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100A52CC8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100A52CC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 448) = a1;

  v7 = *(v4 + 432);
  if (v1)
  {

    v8 = sub_100A52E20;
    v9 = 0;
  }

  else
  {

    v8 = sub_100A52FA8;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100A52E20()
{
  if (qword_101694BA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B948);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing CloudStorageService!", v4, 2u);
  }

  v5 = v0[52];
  v6 = v0[49];
  v7 = v0[46];
  v9 = v0[42];
  v8 = v0[43];
  v10 = v0[39];
  v12 = v0[35];
  v11 = v0[36];
  v13 = v0[34];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100A52FA8()
{
  v1 = *(*(v0 + 448) + 128);
  *(v0 + 456) = v1;
  return _swift_task_switch(sub_100A52FCC, v1, 0);
}

uint64_t sub_100A52FCC()
{
  v1 = v0[57];
  v2 = v0[52];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];
  v6 = v0[40];
  swift_allocObject();
  swift_weakInit();
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100A530D4, 0, 0);
}

uint64_t sub_100A530D4()
{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[46];
  AsyncStream.makeAsyncIterator()();
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[58] = v5;
  *v5 = v0;
  v5[1] = sub_100A53188;
  v6 = v0[46];
  v7 = v0[43];
  v8 = v0[44];

  return AsyncStream.Iterator.next(isolation:)(v7, 0, 0, v8);
}

uint64_t sub_100A53188()
{
  v1 = *(*v0 + 464);
  v3 = *v0;

  return _swift_task_switch(sub_100A53284, 0, 0);
}

uint64_t sub_100A53284()
{
  v78 = v0;
  v1 = v0[43];
  if ((*(v0[41] + 48))(v1, 1, v0[40]) == 1)
  {
    v2 = v0[56];
    v4 = v0[51];
    v3 = v0[52];
    v5 = v0[50];
    v7 = v0[45];
    v6 = v0[46];
    v8 = v0[44];

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
    v9 = v0[52];
    v10 = v0[49];
    v11 = v0[46];
    v13 = v0[42];
    v12 = v0[43];
    v14 = v0[39];
    v16 = v0[35];
    v15 = v0[36];
    v17 = v0[34];

    v18 = v0[1];

    return v18();
  }

  sub_100A545C4(v1, v0[42], type metadata accessor for CloudStorageStore.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v0[33] + 32))(v0[35], v0[42], v0[32]);
      if (qword_101694BA8 != -1)
      {
        swift_once();
      }

      v21 = v0[34];
      v22 = v0[35];
      v23 = v0[32];
      v24 = v0[33];
      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_10177B948);
      (*(v24 + 16))(v21, v22, v23);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[34];
      v30 = v0[35];
      v32 = v0[32];
      v31 = v0[33];
      if (v28)
      {
        v76 = v0[35];
        v33 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v33 = 136315394;
        *(v33 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101369890, &v77);
        *(v33 + 12) = 2080;
        sub_100019660(&qword_101696930, &type metadata accessor for UUID);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        v37 = *(v31 + 8);
        v37(v29, v32);
        v38 = sub_1000136BC(v34, v36, &v77);

        *(v33 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v26, v27, "Deleted CK record type: %s id:%s", v33, 0x16u);
        swift_arrayDestroy();

        v37(v76, v32);
      }

      else
      {

        v48 = *(v31 + 8);
        v48(v29, v32);
        v48(v30, v32);
      }
    }

    goto LABEL_22;
  }

  sub_100031694(v0[42], (v0 + 7));
  if (qword_101694BA8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177B948);
  sub_10001F280((v0 + 7), (v0 + 12));
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v77 = v43;
    *v42 = 136315138;
    sub_10001F280((v0 + 12), (v0 + 22));
    sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    sub_100007BAC(v0 + 12);
    v47 = sub_1000136BC(v44, v46, &v77);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "Received modified CK record: [%s]", v42, 0xCu);
    sub_100007BAC(v43);
  }

  else
  {

    sub_100007BAC(v0 + 12);
  }

  v49 = v0[36];
  v50 = v0[37];
  sub_10001F280((v0 + 7), (v0 + 17));
  sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v68 = v0[37];
    v69 = v0[38];
    v70 = v0[36];
    sub_100007BAC(v0 + 7);
    (*(v69 + 56))(v70, 1, 1, v68);
    sub_10000B3A8(v70, &qword_1016A9A30, &unk_1013BD120);
LABEL_22:
    v71 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v72 = swift_task_alloc();
    v0[58] = v72;
    *v72 = v0;
    v72[1] = sub_100A53188;
    v73 = v0[46];
    v74 = v0[43];
    v75 = v0[44];

    return AsyncStream.Iterator.next(isolation:)(v74, 0, 0, v75);
  }

  v51 = v0[39];
  v53 = v0[36];
  v52 = v0[37];
  (*(v0[38] + 56))(v53, 0, 1, v52);
  sub_100A545C4(v53, v51, type metadata accessor for LocalFindableAccessoryRecord);
  v54 = [objc_allocWithZone(SPPeripheralConnectionMaterial) init];
  v0[59] = v54;
  v55 = v51 + *(v52 + 52);
  v56 = (v55 + *(type metadata accessor for PeripheralConnectionMaterial(0) + 20));
  v57 = *v56;
  v58 = v56[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v54 setIrkData:isa];

  v60 = MACAddress.bluetoothAddressWithType.getter();
  v62 = v61;
  v63 = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v60, v62);
  [v54 setBtAddressWithTypeData:v63];

  v64 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v65 = swift_task_alloc();
  v0[60] = v65;
  v66 = sub_1000BC4D4(&qword_1016B2F58, &qword_1013D3EC8);
  *v65 = v0;
  v65[1] = sub_100A53A88;
  v67 = v0[31];

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 27, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, sub_100A5462C, v67, v66);
}

uint64_t sub_100A53A88()
{
  v1 = *(*v0 + 480);
  v3 = *v0;

  return _swift_task_switch(sub_100A53B84, 0, 0);
}

uint64_t sub_100A53B84(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3[27];
  if ((v4 & 0xC000000000000001) == 0)
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v9 = v11 & *(v4 + 56);
    v3[62] = v6;
    v3[63] = ~v12;
    v3[61] = v4;
    v10 = 63 - v12;
    goto LABEL_9;
  }

  if (v4 < 0)
  {
    v5 = v3[27];
  }

  __CocoaSet.makeIterator()();
  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  sub_100A54634();
  a1 = Set.Iterator.init(_cocoa:)();
  v4 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v3[62] = v6;
  v3[63] = v7;
  v3[61] = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v10 = v7 + 64;
LABEL_9:
    v13 = v9;
    v14 = v8;
    if (!v9)
    {
      v15 = v10 >> 6;
      v16 = v8;
      while (1)
      {
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v14 >= v15)
        {
          goto LABEL_21;
        }

        v13 = *(v6 + 8 * v14);
        ++v16;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(a1, a2, a3);
    }

LABEL_14:
    v17 = (v13 - 1) & v13;
    v18 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    goto LABEL_15;
  }

  v21 = __CocoaSet.Iterator.next()();
  if (!v21)
  {
    goto LABEL_21;
  }

  v3[30] = v21;
  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  swift_dynamicCast();
  v18 = v3[29];
  v14 = v8;
  v17 = v9;
LABEL_15:
  v3[66] = v17;
  v3[65] = v14;
  v3[64] = v18;
  if (v18)
  {
    v19 = async function pointer to XPCSession.proxy(errorHandler:)[1];
    v20 = swift_task_alloc();
    v3[67] = v20;
    *v20 = v3;
    v20[1] = sub_100A53E84;
    a2 = SharingCircleWildAdvertisementKey.init(key:);
    a1 = (v3 + 28);
    a3 = 0;

    return XPCSession.proxy(errorHandler:)(a1, a2, a3);
  }

LABEL_21:
  v23 = v3[62];
  v22 = v3[63];
  v24 = v3[61];
  v25 = v3[59];
  v26 = v3[39];
  sub_100007BAC(v3 + 7);

  sub_1000128F8();
  sub_100A54698(v26);
  v27 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v28 = swift_task_alloc();
  v3[58] = v28;
  *v28 = v3;
  v28[1] = sub_100A53188;
  v29 = v3[46];
  v30 = v3[43];
  v31 = v3[44];

  return AsyncStream.Iterator.next(isolation:)(v30, 0, 0, v31);
}

uint64_t sub_100A53E84()
{
  v1 = *(*v0 + 536);
  v3 = *v0;

  return _swift_task_switch(sub_100A53F80, 0, 0);
}

uint64_t sub_100A53F80()
{
  v1 = v0[28];
  v2 = v0[64];
  if (v1)
  {
    v3 = v0[59];
    v4 = v0[39];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v1 updatedConnectionMaterialForAccessory:isa connectionMaterial:v3];

    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v9 = v0[64];
  }

  v10 = v0[66];
  v11 = v0[65];
  v12 = v0[61];
  if (v12 < 0)
  {
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
      goto LABEL_17;
    }

    v0[30] = v18;
    sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
    swift_dynamicCast();
    v17 = v0[29];
    v14 = v11;
    v16 = v10;
  }

  else
  {
    v13 = v0[66];
    v14 = v0[65];
    if (!v10)
    {
      v15 = v0[65];
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= ((v0[63] + 64) >> 6))
        {
          goto LABEL_17;
        }

        v13 = *(v0[62] + 8 * v14);
        ++v15;
        if (v13)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(v6, v7, v8);
    }

LABEL_10:
    v16 = (v13 - 1) & v13;
    v17 = *(*(v12 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
  }

  v0[66] = v16;
  v0[65] = v14;
  v0[64] = v17;
  if (v17)
  {
    v19 = async function pointer to XPCSession.proxy(errorHandler:)[1];
    v20 = swift_task_alloc();
    v0[67] = v20;
    *v20 = v0;
    v20[1] = sub_100A53E84;
    v7 = SharingCircleWildAdvertisementKey.init(key:);
    v6 = (v0 + 28);
    v8 = 0;

    return XPCSession.proxy(errorHandler:)(v6, v7, v8);
  }

LABEL_17:
  v21 = v0[62];
  v22 = v0[63];
  v23 = v0[61];
  v24 = v0[59];
  v25 = v0[39];
  sub_100007BAC(v0 + 7);

  sub_1000128F8();
  sub_100A54698(v25);
  v26 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v27 = swift_task_alloc();
  v0[58] = v27;
  *v27 = v0;
  v27[1] = sub_100A53188;
  v28 = v0[46];
  v29 = v0[43];
  v30 = v0[44];

  return AsyncStream.Iterator.next(isolation:)(v29, 0, 0, v30);
}

void sub_100A54240()
{
  v1 = v0;
  if (qword_101694BA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B948);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TRACE: stopMonitoring()", v5, 2u);
  }

  if (*(v1 + 40))
  {

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();
  }
}

uint64_t sub_100A5438C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalFindableConnectionMaterialMonitoringSession()
{
  result = qword_1016B2E48;
  if (!qword_1016B2E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A5446C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100A52490(v2, v3);
}

uint64_t sub_100A54504(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100A52660(a1, v4, v5, v7);
}

uint64_t sub_100A545C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100A54634()
{
  result = qword_1016BC4E0;
  if (!qword_1016BC4E0)
  {
    sub_1000BC580(&qword_1016B2F60, &qword_1013D3ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC4E0);
  }

  return result;
}

uint64_t sub_100A54698(uint64_t a1)
{
  v2 = type metadata accessor for LocalFindableAccessoryRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A54704(uint64_t a1)
{
  v2 = sub_100A54890();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A54740(uint64_t a1)
{
  v2 = sub_100A54890();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100A5477C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016B2F68, &qword_1013D3F40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A54890();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100A54890()
{
  result = qword_1016B2F70;
  if (!qword_1016B2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2F70);
  }

  return result;
}

unint64_t sub_100A548F8()
{
  result = qword_1016B2F78;
  if (!qword_1016B2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2F78);
  }

  return result;
}

unint64_t sub_100A54950()
{
  result = qword_1016B2F80;
  if (!qword_1016B2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2F80);
  }

  return result;
}

uint64_t sub_100A549B4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BatteryLevel.unknown(_:);
  v3 = type metadata accessor for BatteryLevel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100A54A34(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = *v2;
  sub_10002E98C(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_100A54A70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19[-v4];
  v6 = type metadata accessor for DetectedAccessory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AirPodsLEPairingInfoStore(0);
  sub_100A567A8(&qword_1016B31B0, type metadata accessor for AirPodsLEPairingInfoStore);
  PairingInfoStore.accessory.getter();
  if ((*(v7 + 88))(v10, v6) == enum case for DetectedAccessory.single(_:))
  {
    (*(v7 + 96))(v10, v6);
    sub_10000A748(v10, v20);
    sub_1000035D0(v20, v20[3]);
    dispatch thunk of Accessory.transport.getter();
    sub_1000BC4D4(&qword_1016B31E8, &qword_1013D4328);
    v11 = type metadata accessor for MACAddress();
    v12 = swift_dynamicCast();
    v13 = *(*(v11 - 8) + 56);
    if (v12)
    {
      v14 = *(v11 - 8);
      v13(v5, 0, 1, v11);
      (*(v14 + 32))(a1, v5, v11);
    }

    else
    {
      v13(v5, 1, 1, v11);
      sub_10000B3A8(v5, &qword_1016A40D0, &unk_10138BE70);
      sub_100A56910();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
    }

    return sub_100007BAC(v20);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v15 = type metadata accessor for PairingCoordinatorError();
    sub_100A567A8(&qword_1016B31E0, &type metadata accessor for PairingCoordinatorError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, enum case for PairingCoordinatorError.notAllowedForMultiDetection(_:), v15);
    return swift_willThrow();
  }
}

uint64_t sub_100A54E10@<X0>(void *a1@<X8>)
{
  v100 = a1;
  v1 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v99 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v104 = &v94 - v5;
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v102 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v94 - v10;
  v12 = type metadata accessor for AccessoryProductInfo();
  v109 = *(v12 - 8);
  v110 = v12;
  v13 = *(v109 + 64);
  __chkstk_darwin(v12);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for AccessoryMetadata(0);
  v16 = *(v111 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v111);
  v105 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v94 - v20;
  v22 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v101 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v94 - v27;
  __chkstk_darwin(v26);
  v30 = &v94 - v29;
  v31 = static Data.random(bytes:)();
  v33 = v32;
  v34 = type metadata accessor for AccessoryPairingInfo(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v98 = v34;
  swift_allocObject();
  sub_100017D5C(v31, v33);
  v37 = sub_10024C9E8(v31, v33);
  if (!v37)
  {
    sub_100A56910();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();
    v43 = v31;
    v44 = v33;
    return sub_100016590(v43, v44);
  }

  v106 = v37;
  v107 = v31;
  v108 = v33;
  v97 = v15;
  v38 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryMetadata;
  v39 = v112;
  swift_beginAccess();
  sub_1000D2A70(v39 + v38, v30, &qword_1016A62A0, &unk_101396E10);
  v40 = *(v16 + 48);
  if (v40(v30, 1, v111))
  {
    sub_10000B3A8(v30, &qword_1016A62A0, &unk_101396E10);
    sub_100A56910();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();
LABEL_7:

    v43 = v107;
    v44 = v108;
    return sub_100016590(v43, v44);
  }

  v95 = v16;
  sub_100A569CC(v30, v21, type metadata accessor for AccessoryMetadata);
  sub_10000B3A8(v30, &qword_1016A62A0, &unk_101396E10);
  v45 = &v21[*(v111 + 20)];
  v46 = v45[1];
  v47 = *v45;
  sub_100017D5C(*v45, v46);
  sub_10028602C(v21, type metadata accessor for AccessoryMetadata);
  v48 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryProductInfo;
  v49 = v112;
  swift_beginAccess();
  sub_1000D2A70(v49 + v48, v11, &qword_101697268, &qword_101394FE0);
  if ((*(v109 + 48))(v11, 1, v110) == 1)
  {
    sub_10000B3A8(v11, &qword_101697268, &qword_101394FE0);
    sub_100A56910();
    swift_allocError();
    *v50 = 3;
    swift_willThrow();
    sub_100016590(v47, v46);
    goto LABEL_7;
  }

  v96 = v47;
  v94 = v46;
  v52 = v97;
  sub_100A56964(v11, v97, type metadata accessor for AccessoryProductInfo);
  sub_1000D2A70(v112 + v38, v28, &qword_1016A62A0, &unk_101396E10);
  if (v40(v28, 1, v111) == 1)
  {
    sub_10000B3A8(v28, &qword_1016A62A0, &unk_101396E10);
    sub_100A56910();
    swift_allocError();
    *v53 = 4;
    swift_willThrow();

    sub_100016590(v96, v94);
    sub_100016590(v107, v108);
    v54 = v52;
  }

  else
  {
    v55 = v105;
    sub_100A56964(v28, v105, type metadata accessor for AccessoryMetadata);
    v56 = v101;
    sub_100A569CC(v55, v101, type metadata accessor for AccessoryMetadata);
    v57 = v111;
    (*(v95 + 56))(v56, 0, 1, v111);
    v58 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata;
    v59 = v106;
    swift_beginAccess();
    sub_10002311C(v56, v59 + v58, &qword_1016A62A0, &unk_101396E10);
    swift_endAccess();
    v60 = v102;
    sub_100A569CC(v52, v102, type metadata accessor for AccessoryProductInfo);
    v61 = v110;
    (*(v109 + 56))(v60, 0, 1, v110);
    v62 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    swift_beginAccess();
    sub_10002311C(v60, v59 + v62, &qword_101697268, &qword_101394FE0);
    swift_endAccess();
    v63 = v59[13];
    v64 = v59[14];
    v65 = v96;
    v66 = v94;
    v59[13] = v96;
    v59[14] = v66;
    sub_100017D5C(v65, v66);
    sub_100006654(v63, v64);
    v67 = *(v55 + *(v57 + 32));
    v68 = sub_10098E010();
    v69 = v59[12];
    v59[11] = v68;
    v59[12] = v70;

    v71 = (v52 + *(v61 + 52));
    v73 = *v71;
    v72 = v71[1];
    v74 = (v59 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
    v75 = *(v59 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName + 8);
    *v74 = v73;
    v74[1] = v72;

    *(v59 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productID) = *(v112 + 152);
    v76 = v103;
    v77 = v104;
    sub_100A54A70(v104);
    v78 = v52;
    v80 = v107;
    v79 = v108;
    if (v76)
    {

      sub_100016590(v96, v66);
      sub_100016590(v80, v79);
      sub_10028602C(v55, type metadata accessor for AccessoryMetadata);
      v54 = v78;
    }

    else
    {
      v81 = type metadata accessor for MACAddress();
      v82 = *(v81 - 8);
      v111 = *(v82 + 56);
      (v111)(v77, 0, 1, v81);
      v83 = v77;
      v84 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress;
      swift_beginAccess();
      sub_10002311C(v83, v59 + v84, &qword_1016A40D0, &unk_10138BE70);
      swift_endAccess();
      v85 = v112;
      v86 = v99;
      (*(v82 + 16))(v99, v112 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_classicMacAddress, v81);
      (v111)(v86, 0, 1, v81);
      v87 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
      swift_beginAccess();
      sub_10002311C(v86, v59 + v87, &qword_1016A40D0, &unk_10138BE70);
      swift_endAccess();
      v88 = *(v85 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken);
      v89 = *(v85 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken + 8);
      v90 = (v59 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
      v91 = *(v59 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
      v92 = *(v59 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8);
      *v90 = v88;
      v90[1] = v89;
      sub_10002E98C(v88, v89);
      sub_100006654(v91, v92);
      *(v59 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) = *(v85 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_standalonePairing);
      *(v59 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) = *(v85 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_forceRepair);
      v93 = v100;
      v100[3] = v98;
      v93[4] = sub_100A567A8(&qword_1016ACE88, type metadata accessor for AccessoryPairingInfo);
      sub_100016590(v96, v66);
      sub_100016590(v107, v108);
      *v93 = v59;
      sub_10028602C(v105, type metadata accessor for AccessoryMetadata);
      v54 = v97;
    }
  }

  return sub_10028602C(v54, type metadata accessor for AccessoryProductInfo);
}

uint64_t sub_100A55920()
{
  sub_100007BAC((v0 + 112));
  v1 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_classicMacAddress;
  v2 = type metadata accessor for MACAddress();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100006654(*(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken), *(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken + 8));
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessories);

  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPeripheral);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryMetadata, &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryProductInfo, &qword_101697268, &qword_101394FE0);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPairingConfiguration, &qword_1016A12E0, &qword_1013A51D0);
  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_beaconCreationInfo);

  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryDetails);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingUIInfo, &qword_1016B31D0, &unk_1013D4318);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100A55A74()
{
  sub_100A55920();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100A55AC8()
{
  v0 = type metadata accessor for MACAddress();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100A55C6C(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100A55C6C(319, &qword_10169AC10, type metadata accessor for AccessoryProductInfo);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100A55C6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100A55D08@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPeripheral;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_100A55D60(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPeripheral;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t sub_100A55EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *a4;
  swift_beginAccess();
  sub_10002311C(a1, v6 + v10, a5, a6);
  return swift_endAccess();
}

id sub_100A55FBC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_100A56020(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryUserConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
}

uint64_t sub_100A560E4()
{
  type metadata accessor for AirPodsLEPairingInfoStore(0);

  return PairingInfoStore.accessory.getter();
}

uint64_t sub_100A56130()
{
  v1 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessories;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100A56178(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessories;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100A56230()
{
  v0 = type metadata accessor for AirPodsLEPairingInfoStore(0);
  v1 = sub_100A567A8(&qword_1016B31C8, type metadata accessor for AirPodsLEPairingInfoStore);

  return TypedPairingInfoStore.productIDValue.getter(v0, v1);
}

uint64_t sub_100A562EC()
{
  v0 = type metadata accessor for AirPodsLEPairingInfoStore(0);
  v1 = sub_100A567A8(&qword_1016B31C8, type metadata accessor for AirPodsLEPairingInfoStore);

  return TypedPairingInfoStore.pairingPolicyInformationValue.getter(v0, v1);
}

uint64_t sub_100A56370(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100A56390, v1, 0);
}

uint64_t sub_100A56390()
{
  sub_1000D2A70(v0[3] + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingUIInfo, v0[2], &qword_1016B31D0, &unk_1013D4318);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100A56428(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = type metadata accessor for AirPodsLEPairingInfoStore(0);
  v4 = sub_100A567A8(&qword_1016B31C8, type metadata accessor for AirPodsLEPairingInfoStore);

  return a3(v3, v4);
}

uint64_t sub_100A564C0()
{
  v1 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryDetails;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100A56508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryDetails;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100A566C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for AirPodsLEPairingInfoStore(0);
  v11 = sub_100A567A8(&qword_1016B31C8, type metadata accessor for AirPodsLEPairingInfoStore);
  return a6(a1, v10, a2, v11, a3);
}

uint64_t sub_100A567A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100A56910()
{
  result = qword_1016B31D8;
  if (!qword_1016B31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B31D8);
  }

  return result;
}

uint64_t sub_100A56964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A569CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100A56A8C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100A56B30();
    if (v1 <= 0x3F)
    {
      sub_1003955F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100A56B30()
{
  result = qword_1016B3258;
  if (!qword_1016B3258)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016B3258);
  }

  return result;
}

unint64_t sub_100A56B98()
{
  result = qword_1016B3290;
  if (!qword_1016B3290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B3290);
  }

  return result;
}

uint64_t sub_100A56BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = v72 + 1;
  v12 = _swiftEmptyDictionarySingleton;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v5 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = HIBYTE(v18) & 0xF;
    v20 = v17 & 0xFFFFFFFFFFFFLL;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v18) & 0xF;
    }

    else
    {
      v21 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v22 = *(a3 + 56);
      v23 = *(v22 + 8 * v15);
      if ((v18 & 0x1000000000000000) != 0)
      {
        v68 = a3;
        v70 = v12;
        v59 = v4;
        v60 = *(v22 + 8 * v15);

        v26 = sub_1010DDF3C(v17, v18, 10);
        v62 = v61;

        v23 = v60;
        v4 = v59;
        a3 = v68;
        v12 = v70;
        if ((v62 & 1) == 0)
        {
LABEL_71:
          v69 = v11;
          v71 = v23;
          v44 = v4;
          v45 = a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72[0] = v12;
          v47 = sub_100771C58(v26);
          v49 = v12[2];
          v50 = (v48 & 1) == 0;
          v51 = __OFADD__(v49, v50);
          v52 = v49 + v50;
          if (v51)
          {
            goto LABEL_92;
          }

          v53 = v48;
          if (v12[3] >= v52)
          {
            v56 = v71;
            if (isUniquelyReferenced_nonNull_native)
            {
              v55 = v44;
              a3 = v45;
            }

            else
            {
              v66 = v47;
              sub_1010071C0();
              v56 = v71;
              v47 = v66;
              a3 = v45;
              v55 = v44;
            }

            v11 = v69;
          }

          else
          {
            sub_100FEAA14(v52, isUniquelyReferenced_nonNull_native);
            v47 = sub_100771C58(v26);
            if ((v53 & 1) != (v54 & 1))
            {
              goto LABEL_94;
            }

            v55 = v44;
            a3 = v45;
            v11 = v69;
            v56 = v71;
          }

          v12 = v72[0];
          v4 = v55;
          if (v53)
          {
            *(*(v72[0] + 56) + 8 * v47) = v56;
          }

          else
          {
            *(v72[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
            *(v12[6] + 8 * v47) = v26;
            *(v12[7] + 8 * v47) = v56;
            v57 = v12[2];
            v51 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v51)
            {
              goto LABEL_93;
            }

            v12[2] = v58;
          }
        }
      }

      else
      {
        if ((v18 & 0x2000000000000000) != 0)
        {
          v72[0] = v17;
          v72[1] = v18 & 0xFFFFFFFFFFFFFFLL;
          if (v17 == 43)
          {
            if (!v19)
            {
              goto LABEL_88;
            }

            if (--v19)
            {
              v26 = 0;
              v36 = v11;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  break;
                }

                v26 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  break;
                }

                ++v36;
                if (!--v19)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v17 == 45)
          {
            if (!v19)
            {
              goto LABEL_89;
            }

            if (--v19)
            {
              v26 = 0;
              v30 = v11;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  break;
                }

                v32 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  break;
                }

                v26 = v32 - v31;
                if (__OFSUB__(v32, v31))
                {
                  break;
                }

                ++v30;
                if (!--v19)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v19)
          {
            v26 = 0;
            v41 = v72;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              v43 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                break;
              }

              ++v41;
              if (!--v19)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

        if ((v17 & 0x1000000000000000) != 0)
        {
          v24 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v63 = v4;
          v64 = a3;
          v65 = *(v22 + 8 * v15);
          v24 = _StringObject.sharedUTF8.getter();
          v23 = v65;
          a3 = v64;
          v4 = v63;
        }

        v25 = *v24;
        if (v25 == 43)
        {
          if (v20 < 1)
          {
            goto LABEL_90;
          }

          v19 = v20 - 1;
          if (v20 == 1)
          {
            goto LABEL_69;
          }

          v26 = 0;
          if (v24)
          {
            v33 = v24 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                goto LABEL_69;
              }

              v35 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_69;
              }

              v26 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_69;
              }

              ++v33;
              if (!--v19)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v25 == 45)
        {
          if (v20 < 1)
          {
            goto LABEL_91;
          }

          v19 = v20 - 1;
          if (v20 == 1)
          {
            goto LABEL_69;
          }

          v26 = 0;
          if (v24)
          {
            v27 = v24 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v19)
              {
                goto LABEL_70;
              }
            }

LABEL_69:
            v26 = 0;
            LOBYTE(v19) = 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (!v20)
          {
            goto LABEL_69;
          }

          v26 = 0;
          if (v24)
          {
            do
            {
              v39 = *v24 - 48;
              if (v39 > 9)
              {
                goto LABEL_69;
              }

              v40 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_69;
              }

              v26 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_69;
              }

              ++v24;
            }

            while (--v20);
          }
        }

        LOBYTE(v19) = 0;
LABEL_70:
        v73 = v19;
        if ((v19 & 1) == 0)
        {
          goto LABEL_71;
        }
      }
    }
  }

  while (1)
  {
    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      *(v4 + 16) = v12;
      return v4;
    }

    v9 = *(v6 + 8 * v13);
    ++v5;
    if (v9)
    {
      v5 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}