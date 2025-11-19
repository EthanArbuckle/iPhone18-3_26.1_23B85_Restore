void sub_100A6F0E0(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v37 = a3;
  v7 = type metadata accessor for OwnedBeaconRecord();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v35 - v16);
  v18 = swift_projectBox();
  swift_beginAccess();
  sub_1001DA61C(a1, v18, &unk_1016B15A0, &qword_1013A0900);
  sub_1000D2A70(a1, v17, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v17;
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v38 = v19;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_10002ACAC(v17, v13, type metadata accessor for OwnedBeaconRecord);
    static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    sub_100A70318(v13, v11, type metadata accessor for OwnedBeaconRecord);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100008C00();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)();

    sub_100A5187C(v13);
    v28 = v36;
    v29 = *(*(v36 + 72) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_locationMonitor);
    v30 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v31 = *(v29 + v30);
    if (v31)
    {
      v32 = &v13[*(v7 + 20)];
      v33 = type metadata accessor for Transaction();
      __chkstk_darwin(v33);
      *(&v35 - 4) = v32;
      *(&v35 - 3) = v31;
      *(&v35 - 2) = v28;
      v34 = v31;
      static Transaction.named<A>(_:with:)();
    }

    else
    {
      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
    }

    sub_100A718E4(v13, type metadata accessor for OwnedBeaconRecord);
  }

  dispatch_group_leave(v37);
}

uint64_t sub_100A6F580(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryMetadataRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016B4280, ",W\t");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v20 - v8);
  sub_1000D2A70(a1, v20 - v8, &qword_1016B4280, ",W\t");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    v20[1] = v10;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_10002ACAC(v9, v5, type metadata accessor for AccessoryMetadataRecord);
    static os_log_type_t.info.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v17 = sub_10109C94C();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    return sub_100A718E4(v5, type metadata accessor for AccessoryMetadataRecord);
  }
}

uint64_t sub_100A6F87C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43 = a1;
  v41 = a4;
  v36 = a2;
  v6 = type metadata accessor for UUID();
  v37 = *(v6 - 8);
  v7 = v37;
  v42 = *(v37 + 64);
  __chkstk_darwin(v6);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BeaconEstimatedLocation();
  v10 = (v9 - 8);
  v39 = *(v9 - 8);
  v11 = *(v39 + 64);
  v12 = __chkstk_darwin(v9);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = &v35 + v10[7] - v13;
  UUID.init()();
  v16 = *(v7 + 16);
  v16(&v14[v10[8]], a2, v6);
  [a3 coordinate];
  v18 = v17;
  [a3 coordinate];
  v20 = v19;
  [a3 horizontalAccuracy];
  v22 = v21;
  v23 = [a3 timestamp];
  v24 = &v14[v10[12]];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = v10[14];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 56))(&v14[v25], 1, 1, v26);
  *v14 = xmmword_10138C660;
  *&v14[v10[9]] = v18;
  *&v14[v10[10]] = v20;
  *&v14[v10[11]] = v22;
  v14[v10[13]] = 1;
  *&v14[v10[15]] = 0;
  v41 = *(v41 + 24);
  v27 = v38;
  sub_100A70318(v14, v38, type metadata accessor for BeaconEstimatedLocation);
  v28 = v40;
  v29 = v6;
  v16(v40, v36, v6);
  v30 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v31 = v37;
  v32 = (v11 + *(v37 + 80) + v30) & ~*(v37 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v43;
  sub_10002ACAC(v27, v33 + v30, type metadata accessor for BeaconEstimatedLocation);
  (*(v31 + 32))(v33 + v32, v28, v29);

  sub_100A9DA2C(v14, sub_100A70380, v33);

  return sub_100A718E4(v14, type metadata accessor for BeaconEstimatedLocation);
}

uint64_t sub_100A6FC38(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v26 - v4);
  Transaction.capture()();
  sub_1000D2A70(a1, v5, &qword_10169F438, &unk_1013B3300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10138B360;
    v8 = *(type metadata accessor for BeaconEstimatedLocation() + 40);
    type metadata accessor for Date();
    sub_100A71EC8(&qword_1016969A0, &type metadata accessor for Date);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    *(v7 + 56) = &type metadata for String;
    v12 = sub_100008C00();
    *(v7 + 64) = v12;
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    type metadata accessor for UUID();
    sub_100A71EC8(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v12;
    *(v7 + 72) = v13;
    *(v7 + 80) = v14;
    v26[1] = v6;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    *(v7 + 136) = &type metadata for String;
    *(v7 + 144) = v12;
    *(v7 + 112) = v15;
    *(v7 + 120) = v16;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10138BBE0;
    v19 = *(type metadata accessor for BeaconEstimatedLocation() + 40);
    type metadata accessor for Date();
    sub_100A71EC8(&qword_1016969A0, &type metadata accessor for Date);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    *(v18 + 56) = &type metadata for String;
    v23 = sub_100008C00();
    *(v18 + 64) = v23;
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    type metadata accessor for UUID();
    sub_100A71EC8(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v23;
    *(v18 + 72) = v24;
    *(v18 + 80) = v25;
    os_log(_:dso:log:_:_:)();

    return sub_10000B3A8(v5, &qword_10169F438, &unk_1013B3300);
  }
}

uint64_t sub_100A70060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26[3] = a4;
  v26[4] = a5;
  v15 = sub_1000280DC(v26);
  (*(*(a4 - 8) + 16))(v15, a1, a4);
  v16 = *(a3 + 16);
  *v14 = v16;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v16)
  {
    v19 = swift_allocObject();
    swift_weakInit();
    sub_10001F280(v26, v25);
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    sub_10000A748(v25, v20 + 24);
    *(v20 + 64) = a2;
    v21 = sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();

    v24 = Future.init(_:)();
    sub_100007BAC(v26);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A7027C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A70318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A70380(uint64_t a1)
{
  v3 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100A6FC38(a1);
}

uint64_t sub_100A70458(void (*a1)(_BYTE *))
{
  sub_100101AA8(v1 + 16, v4);
  v4[41] = 1;
  a1(v4);
  return sub_10000B3A8(v4, &qword_1016B1CA0, &qword_1013918C0);
}

uint64_t sub_100A704D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = a4;
  v106 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v108 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v109 = *(v11 - 8);
  v12 = *(v109 + 64);
  __chkstk_darwin(v11);
  v107 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for DispatchQoS.QoSClass();
  v103 = *(v104 - 8);
  v14 = *(v103 + 64);
  __chkstk_darwin(v104);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D2A70(a1, &v119, &qword_1016B1CA0, &qword_1013918C0);
  if (v121)
  {
    v22 = v4;
    v102 = v8;
    v117 = v119;
    v118[0] = *v120;
    *(v118 + 9) = *&v120[9];
    v23 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C410;
    sub_100101AA8(&v117, &aBlock);
    v25 = os_log_type_enabled(v24, v23);
    v101 = v7;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v114 = v27;
      *v26 = 136446210;
      v28 = sub_1013181BC();
      v30 = v29;
      sub_100101B04(&aBlock);
      v31 = sub_1000136BC(v28, v30, &v114);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v23, "Pairing error %{public}s", v26, 0xCu);
      sub_100007BAC(v27);
    }

    else
    {
      sub_100101B04(&aBlock);
    }

    sub_100101AA8(&v117, &aBlock);
    v36 = aBlock;
    if (v113 == 9)
    {
      v55 = v111.i64[0];
      type metadata accessor for SPPairingSessionError(0);
      v116 = 3;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v39 = v114;
      v114 = 0;
      v115 = 0xE000000000000000;
      v33 = &v114;
      _StringGuts.grow(_:)(42);

      v114 = 0xD000000000000028;
      v115 = 0x800000010136A460;
      v56._countAndFlagsBits = v36;
      v56._object = v55;
      String.append(_:)(v56);

      v57 = v115;
      v58 = v22;
LABEL_37:
      v78 = v39;
      v79 = v58[11];
      v58[11] = 0;

      v80 = v58[12];
      v58[12] = 0;

      v82 = v58[4];
      if (*(v82 + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
      {
        v100 = v57;
        v83 = v58[8];
        v84 = *(v82 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
        __chkstk_darwin(v81);
        v99 = v58;
        *(&v98 - 2) = v85;
        type metadata accessor for SharedPairingAgent();
        Lock.callAsFunction<A>(_:)();
        v86 = aBlock;
        sub_10104E044(v83);

        sub_1000BC488();
        v87 = v103;
        v88 = v104;
        (*(v103 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v104);
        v98 = static OS_dispatch_queue.global(qos:)();
        (*(v87 + 8))(v16, v88);
        v89 = swift_allocObject();
        v90 = v105;
        v89[2] = v106;
        v89[3] = v90;
        v89[4] = v78;
        v112.i64[1] = sub_1002EF79C;
        v113 = v89;
        aBlock = _NSConcreteStackBlock;
        v111.i64[0] = 1107296256;
        v111.i64[1] = sub_100006684;
        v112.i64[0] = &unk_101645200;
        v91 = _Block_copy(&aBlock);

        v92 = v78;
        v93 = v107;
        static DispatchQoS.unspecified.getter();
        v114 = _swiftEmptyArrayStorage;
        sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v94 = v108;
        v95 = v101;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v96 = v98;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v91);

        (*(v102 + 8))(v94, v95);
        (*(v109 + 8))(v93, v11);

        v97 = v99[6];
        sub_100243F38();

        return sub_100101B04(&v117);
      }

      __break(1u);
      goto LABEL_41;
    }

    if (v113 == 11)
    {
      v37 = vorrq_s8(v111, v112);
      v38 = vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
      if (aBlock == 5 && !*&v38)
      {
        type metadata accessor for SPPairingSessionError(0);
        v116 = 12;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v39 = v114;
        v114 = 0;
        v115 = 0xE000000000000000;
        v33 = &v114;
        _StringGuts.grow(_:)(52);
        v40._countAndFlagsBits = 0xD000000000000032;
        v40._object = 0x800000010136A490;
        String.append(_:)(v40);
LABEL_28:
        v58 = v22;
        v73._countAndFlagsBits = sub_10110A934(*(v22[9] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
        String.append(_:)(v73);

        v57 = v115;
        goto LABEL_37;
      }

      if (aBlock == 7 && !*&v38)
      {
        type metadata accessor for SPPairingSessionError(0);
        v116 = 6;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v39 = v114;
        v114 = 0;
        v115 = 0xE000000000000000;
        v33 = &v114;
        _StringGuts.grow(_:)(35);

        v114 = 0xD000000000000021;
        v115 = 0x800000010136A400;
        goto LABEL_28;
      }

      if (aBlock == 9 && !*&v38)
      {
        type metadata accessor for SPPairingSessionError(0);
        v33 = v74;
        v116 = 18;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v39 = v114;
        v57 = 0x800000010136A430;
        v58 = v22;
        goto LABEL_37;
      }

      if (aBlock == 11 && !*&v38)
      {
        if (*(v22[9] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) > 5u)
        {
          return sub_100101B04(&v117);
        }

        v58 = v22;
        type metadata accessor for SPPairingSessionError(0);
        v33 = v75;
        v116 = 13;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v39 = v114;
        v57 = 0x800000010136A4D0;
        goto LABEL_37;
      }
    }

    type metadata accessor for SPPairingSessionError(0);
    v116 = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A71EC8(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = v114;
    v114 = 0;
    v115 = 0xE000000000000000;
    v33 = &v114;
    _StringGuts.grow(_:)(55);
    v76._countAndFlagsBits = 0xD000000000000035;
    v76._object = 0x800000010136A3C0;
    String.append(_:)(v76);
    v58 = v22;
    v77._countAndFlagsBits = sub_10110A934(*(v22[9] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
    String.append(_:)(v77);

    v57 = v115;
    sub_100101B04(&aBlock);
    goto LABEL_37;
  }

  v100 = v11;
  v32 = v4;
  v33 = v4[9];
  v11 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState;
  v34 = *(v33 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState);
  if (v34 == 5)
  {
    v102 = v8;
    v101 = v7;
    static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v8 = qword_10177C410;
    os_log(_:dso:log:_:_:)();
    *(v33 + v11) = 6;
    v41 = v32[11];
    v32[11] = 0;

    v42 = v32[12];
    v32[12] = 0;

    v43 = v33[3];
    *v21 = v43;
    (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
    v44 = v43;
    v7 = _dispatchPreconditionTest(_:)();
    (*(v18 + 8))(v21, v17);
    if (v7)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      *(v33 + v11) = 8;
      sub_10110C658(0, 0);
      v45 = *(a2 + 16);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      aBlock = 13;
      v111 = 0u;
      v112 = 0u;
      LOBYTE(v113) = 11;
      sub_100A5A2B8(&aBlock);
      sub_100101B04(&aBlock);
      sub_1000BC488();
      v46 = v103;
      v47 = v104;
      (*(v103 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v104);
      v48 = static OS_dispatch_queue.global(qos:)();
      (*(v46 + 8))(v16, v47);
      v49 = swift_allocObject();
      v50 = v105;
      *(v49 + 16) = v106;
      *(v49 + 24) = v50;
      v112.i64[1] = sub_10041ABC0;
      v113 = v49;
      aBlock = _NSConcreteStackBlock;
      v111.i64[0] = 1107296256;
      v111.i64[1] = sub_100006684;
      v112.i64[0] = &unk_1016452A0;
      v51 = _Block_copy(&aBlock);

      v52 = v107;
      static DispatchQoS.unspecified.getter();
      *&v117 = _swiftEmptyArrayStorage;
      sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v53 = v108;
      v54 = v101;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v51);

      (*(v102 + 8))(v53, v54);
LABEL_24:
      (*(v109 + 8))(v52, v100);
    }

    __break(1u);
    goto LABEL_43;
  }

  if (v34 == 3)
  {
    static os_log_type_t.default.getter();
    if (qword_1016950C8 == -1)
    {
LABEL_9:
      result = os_log(_:dso:log:_:_:)();
      *(v33 + v11) = 4;
      return result;
    }

LABEL_41:
    swift_once();
    goto LABEL_9;
  }

  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v102 = v8;
  os_log(_:dso:log:_:_:)();
  v59 = v32[11];
  v32[11] = 0;

  v60 = v32[12];
  v32[12] = 0;

  v61 = v32[4];
  if (*(v61 + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
  {
    v62 = v32[8];
    v63 = *(v61 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
    __chkstk_darwin(result);
    *(&v98 - 2) = v64;
    type metadata accessor for SharedPairingAgent();
    Lock.callAsFunction<A>(_:)();
    v65 = aBlock;
    sub_10104E044(v62);

    sub_1000BC488();
    v66 = v103;
    v67 = v104;
    (*(v103 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v104);
    v68 = static OS_dispatch_queue.global(qos:)();
    (*(v66 + 8))(v16, v67);
    v69 = swift_allocObject();
    v70 = v105;
    *(v69 + 16) = v106;
    *(v69 + 24) = v70;
    v112.i64[1] = sub_100A71FC4;
    v113 = v69;
    aBlock = _NSConcreteStackBlock;
    v111.i64[0] = 1107296256;
    v111.i64[1] = sub_100006684;
    v112.i64[0] = &unk_101645250;
    v71 = _Block_copy(&aBlock);

    v52 = v107;
    static DispatchQoS.unspecified.getter();
    *&v117 = _swiftEmptyArrayStorage;
    sub_100A71EC8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v72 = v108;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v71);

    (*(v102 + 8))(v72, v7);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A718E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100A71958()
{
  result = qword_1016B42A8;
  if (!qword_1016B42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B42A8);
  }

  return result;
}

uint64_t sub_100A719D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100A69DA8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100A71A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  return sub_100A6B984(a1, a2);
}

uint64_t sub_100A71A30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_100A6D73C(a1, v4);
  *a2 = result;
  return result;
}

uint64_t sub_100A71B10()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_100A674B0(v1);
}

uint64_t sub_100A71B38@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_100A71B68()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  return sub_10131FAE0(v1);
}

uint64_t sub_100A71B94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_100A71BE8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1(0);
  }

  return result;
}

uint64_t sub_100A71C1C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  return sub_100A65CEC(v1, v2, v3);
}

unint64_t sub_100A71DD0()
{
  result = qword_1016B43C8;
  if (!qword_1016B43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B43C8);
  }

  return result;
}

unint64_t sub_100A71E24()
{
  result = qword_1016B43D8;
  if (!qword_1016B43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B43D8);
  }

  return result;
}

uint64_t sub_100A71E78(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32);
}

uint64_t sub_100A71EC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100A71F24()
{
  result = qword_1016B43E0;
  if (!qword_1016B43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B43E0);
  }

  return result;
}

uint64_t sub_100A72014(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for HashAlgorithm();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v11 = sub_100A2A7C8();
  v13 = v12;
  v14 = sub_100A2A12C(*v3, *(v3 + 8));
  v16 = v15;
  sub_100016590(v11, v13);
  if (v2)
  {
    return sub_100007BAC(v38);
  }

  v17 = *v3;
  v18 = *(v3 + 8);
  (*(v6 + 104))(v9, enum case for HashAlgorithm.sha256(_:), v5);
  v19 = Data.hash(algorithm:)();
  v21 = v20;
  v23 = *(v6 + 8);
  v22 = v6 + 8;
  v23(v9, v5);
  v36 = v19;
  v37 = v21;
  sub_10015049C(v38, v39);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v36, v37);
  v24 = type metadata accessor for BeaconPayloadV2();
  v25 = v3 + *(v24 + 20);
  Date.timeIntervalSinceReferenceDate.getter();
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v26 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v26 < 4294967300.0)
  {
    LODWORD(v36) = bswap32(v26);
    sub_10015049C(v38, v39);
    sub_100101824();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    v27 = *(v24 + 44);
    v35 = v40;
    sub_10015049C(v38, v39);
    type metadata accessor for BeaconPayloadMetaDataV2();
    v34 = v24;
    sub_100A72FF4();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    v22 = v34;
    v36 = v14;
    v37 = v16;
    sub_10015049C(v38, v39);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    if (qword_101694940 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  swift_once();
LABEL_6:
  v28 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v29 = sub_101074ED4(v36);

  if (v29)
  {
    goto LABEL_10;
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v36 = 0x7365547265646E75;
  v37 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v41 == 1)
  {
LABEL_10:
    v30 = (v3 + *(v22 + 40));
    v31 = *v30;
    BYTE4(v36) = *(v30 + 4);
    LODWORD(v36) = v31;
    sub_10015049C(v38, v39);
    sub_100A7304C();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  sub_100016590(v14, v16);
  return sub_100007BAC(v38);
}

uint64_t sub_100A724B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = type metadata accessor for Bit();
  v67 = *(v71 - 8);
  v5 = *(v67 + 64);
  v6 = __chkstk_darwin(v71);
  v68 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v70 = &v56[-v8];
  v69 = type metadata accessor for BeaconPayloadMetaDataV2();
  v9 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v11 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v56[-v14];
  v16 = type metadata accessor for ObservedAdvertisement.Location(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for ObservedAdvertisement(0);
  sub_100A72CCC(a1 + *(v21 + 48), v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100A72D3C(v15);
    sub_100A72DA4();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return sub_100034554(a1, type metadata accessor for ObservedAdvertisement);
  }

  sub_100A72E44(v15, v20, type metadata accessor for ObservedAdvertisement.Location);
  v24 = *(a1 + 24);
  if ((v24 & 0x2000000000000000) != 0)
  {
    sub_100A72DA4();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
    sub_100034554(a1, type metadata accessor for ObservedAdvertisement);
    return sub_100034554(v20, type metadata accessor for ObservedAdvertisement.Location);
  }

  v64 = v11;
  v61 = *(a1 + 16);
  v62 = v24;
  sub_100017D5C(v61, v24);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v25 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v63 = v2;
  v26 = sub_101074ED4(v72);

  v27 = a1;
  v65 = v20;
  v66 = a2;
  if ((v26 & 1) == 0)
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v72 = 0x7365547265646E75;
    v73 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v27 = a1;
    if (v74 != 1)
    {
      goto LABEL_11;
    }
  }

  if (v27[35])
  {
LABEL_11:
    v28 = *(v20 + 2);
    if (v28 >= 0.0)
    {
      if (v28 < 65.0)
      {
        v31 = 1;
        LOBYTE(v29) = 3;
LABEL_34:
        v60 = 3;
        goto LABEL_42;
      }
    }

    else if (v28 < 65.0)
    {
      v29 = 1;
      v60 = 3;
      v30 = v28 < 400.0 || v28 > 9.22337204e18;
      v31 = 1;
      if (!v30)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (v28 < 400.0)
    {
      v31 = 1;
      LOBYTE(v29) = 2;
      goto LABEL_34;
    }

    v29 = 1;
    v60 = 3;
    v31 = 1;
    if (v28 <= 9.22337204e18)
    {
      goto LABEL_42;
    }

LABEL_41:
    v31 = v29;
    LOBYTE(v29) = 0;
    goto LABEL_42;
  }

  v33 = 2;
  if (v27[*(v21 + 56)])
  {
    v33 = 0;
  }

  v60 = v33 | (v27[33] << 24) | (v27[34] << 32);
  v28 = *(v20 + 2);
  if (v28 >= 0.0 && v28 < 65.0)
  {
    LOBYTE(v29) = 3;
    v31 = 2;
    goto LABEL_42;
  }

  if (v28 >= 65.0)
  {
    LOBYTE(v29) = 2;
    v31 = 2;
    if (v28 < 400.0)
    {
      goto LABEL_42;
    }

    if (v28 <= 9.22337204e18)
    {
      LOBYTE(v29) = 1;
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (v28 < 400.0 || v28 > 9.22337204e18)
  {
LABEL_40:
    v29 = 2;
    goto LABEL_41;
  }

  LOBYTE(v29) = 1;
  v31 = 2;
LABEL_42:
  v58 = v31;
  v59 = v27[32];
  v57 = (v59 >> 4) & 3;
  v35 = sub_10001993C(v59 & 0xB);
  v36 = v21;
  v37 = v27[*(v21 + 56)];
  v39 = v67;
  v38 = v68;
  if (v37)
  {
    v40 = &enum case for Bit.one(_:);
  }

  else
  {
    v40 = &enum case for Bit.zero(_:);
  }

  v41 = v71;
  (*(v67 + 104))(v68, *v40, v71);
  v42 = *(v39 + 32);
  v43 = v70;
  v42(v70, v38, v41);
  v44 = v64;
  *v64 = v29;
  v44[1] = v57;
  v44[2] = v35;
  v44[3] = BYTE1(v35) & 1;
  v44[4] = BYTE2(v35) & 1;
  v44[5] = HIBYTE(v35) & 1;
  v44[6] = v58;
  v45 = v69;
  v42(&v44[*(v69 + 32)], v43, v41);
  v44[*(v45 + 36)] = 0;
  v46 = *(v36 + 44);
  v47 = type metadata accessor for BeaconPayloadV2();
  v48 = v47[5];
  v49 = type metadata accessor for Date();
  v50 = v66;
  (*(*(v49 - 8) + 16))(v66 + v48, &v27[v46], v49);
  v51 = *v65;
  v52 = v65[1];
  sub_100034554(v65, type metadata accessor for ObservedAdvertisement.Location);
  sub_100034554(v27, type metadata accessor for ObservedAdvertisement);
  v53 = v62;
  *v50 = v61;
  v50[1] = v53;
  *(v50 + v47[6]) = v51;
  *(v50 + v47[7]) = v52;
  *(v50 + v47[8]) = v28;
  *(v50 + v47[9]) = v59;
  v54 = v50 + v47[10];
  v55 = v60;
  v54[4] = BYTE4(v60);
  *v54 = v55;
  return sub_100A72E44(v44, v50 + v47[11], type metadata accessor for BeaconPayloadMetaDataV2);
}

uint64_t sub_100A72CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A72D3C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100A72DA4()
{
  result = qword_1016B43E8;
  if (!qword_1016B43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B43E8);
  }

  return result;
}

uint64_t type metadata accessor for BeaconPayloadV2()
{
  result = qword_1016B4448;
  if (!qword_1016B4448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A72E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A72EE4()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BeaconPayloadMetaDataV2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100A72FA0()
{
  result = qword_1016B4498;
  if (!qword_1016B4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4498);
  }

  return result;
}

unint64_t sub_100A72FF4()
{
  result = qword_1016B44A0;
  if (!qword_1016B44A0)
  {
    type metadata accessor for BeaconPayloadMetaDataV2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B44A0);
  }

  return result;
}

unint64_t sub_100A7304C()
{
  result = qword_1016B44A8;
  if (!qword_1016B44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B44A8);
  }

  return result;
}

uint64_t sub_100A730A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100A730C4, 0, 0);
}

uint64_t sub_100A730C4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd41LocalFindableConnectionMaterialTrampoline_implementation);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100A73168;
  v3 = v0[3];

  return sub_100F03968(v3);
}

uint64_t sub_100A73168()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_100A732E4;
  }

  else
  {
    v3 = sub_100A7327C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A7327C()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A732E4()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v4 = v0[5];
  (v0[4])(0);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100A733EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100A73410, 0, 0);
}

uint64_t sub_100A73410()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd41LocalFindableConnectionMaterialTrampoline_implementation);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100A734AC;

  return sub_100F03B60();
}

uint64_t sub_100A734AC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100A73628;
  }

  else
  {
    v3 = sub_100A735C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A735C0()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A73628()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  swift_errorRetain();
  v3(v1);

  v4 = v0[4];
  (v0[3])(0);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100A7380C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_100A73830, 0, 0);
}

uint64_t sub_100A73830()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC12searchpartyd41LocalFindableConnectionMaterialTrampoline_implementation);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_100A738D4;
  v3 = v0[4];

  return sub_100F03D48(v3);
}

uint64_t sub_100A738D4(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 56);
  v7 = *v3;
  *(*v3 + 64) = a1;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v5 + 72) = a2;

    return _swift_task_switch(sub_100A73A24, 0, 0);
  }
}

uint64_t sub_100A73A24()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  if (*(v0 + 72))
  {
    *(v0 + 16) = v1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_errorRetain();
    v3(0, v1);
    sub_1000BB578(v1, 1);
    sub_1000BB578(v1, 1);
  }

  else
  {
    v4 = v1;
    v3(v1, 0);
    sub_1000BB578(v1, 0);
    sub_1000BB578(v1, 0);
  }

  v5 = *(v0 + 8);

  return v5();
}

id sub_100A73E04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalFindableConnectionMaterialTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100A73E6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014650;

  return sub_100A7380C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100A73FA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100A733EC(a1, v4, v5, v6, v7, v8);
}

void sub_100A74070(void *a1, void (**a2)(void, void))
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v17 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = objc_opt_self();
  _Block_copy(a2);
  v10 = [v9 currentConnection];
  if (v10)
  {
    v11 = v10;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v11;
    v13[6] = sub_10026AE30;
    v13[7] = v8;
    v14 = a1;

    sub_10025EDD4(0, 0, v7, &unk_1013D5118, v13);
  }

  else
  {
    type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError(0);
    v17[0] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A7427C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = v17[1];
    v16 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v16);
  }
}

unint64_t sub_100A7427C()
{
  result = qword_1016961D0;
  if (!qword_1016961D0)
  {
    type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016961D0);
  }

  return result;
}

uint64_t sub_100A742D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100A730A0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100A743A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v39[-1] - v7;
  CCCKG2ParamsP224Sha256Version2();
  v43 = 0;
  v9 = CCCKG2OwnerCreate();
  v40 = v9;
  if (v9 || (v17 = v43) == 0)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    *(v10 + 56) = &type metadata for Int32;
    *(v10 + 64) = &protocol witness table for Int32;
    *(v10 + 32) = v9;
    os_log(_:dso:log:_:_:)();

    CryptoError.init(rawValue:)();
    v11 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v13 = v12;
    v14 = *(v11 - 8);
    v15 = *(v14 + 48);
    if (v15(v8, 1, v11) == 1)
    {
      (*(v14 + 104))(v13, enum case for CryptoError.unspecifiedError(_:), v11);
      if (v15(v8, 1, v11) != 1)
      {
        sub_100A80D74(v8);
      }
    }

    else
    {
      (*(v14 + 32))(v13, v8, v11);
    }

    return swift_willThrow();
  }

  type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
  *(swift_allocObject() + 16) = v17;
  CommitmentSize = CCCKG2GetCommitmentSize();
  ShareSize = CCCKG2GetShareSize();
  v20 = ShareSize;
  v21 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v21)
    {
      v39[0] = a1;
      LOWORD(v39[1]) = a2;
      BYTE2(v39[1]) = BYTE2(a2);
      BYTE3(v39[1]) = BYTE3(a2);
      BYTE4(v39[1]) = BYTE4(a2);
      ShareSize = ShareSize;
      BYTE5(v39[1]) = BYTE5(a2);
LABEL_26:
      v41 = sub_100845C88(ShareSize);
      v42 = v35;
      v34 = v39;
LABEL_27:
      sub_100A7B328(&v41, &v40, &v43, v34, CommitmentSize, v20);
      result = v41;
      v28 = v42;
      if (v2)
      {
        goto LABEL_28;
      }

      return result;
    }

    if (a1 <= a1 >> 32)
    {
      v29 = __DataStorage._bytes.getter();
      if (v29)
      {
        v30 = v29;
        v31 = __DataStorage._offset.getter();
        if (!__OFSUB__(a1, v31))
        {
          v32 = (a1 - v31 + v30);
          __DataStorage._length.getter();
          if (v32)
          {
            v41 = sub_100845C88(v20);
            v42 = v33;
            v34 = v32;
            goto LABEL_27;
          }

LABEL_30:
          v36 = type metadata accessor for CryptoError();
          sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
          swift_allocError();
          (*(*(v36 - 8) + 104))(v37, enum case for CryptoError.memoryFailure(_:), v36);
          swift_willThrow();
        }

LABEL_35:
        __break(1u);
      }

LABEL_29:
      __DataStorage._length.getter();
      goto LABEL_30;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v21 != 2)
  {
    memset(v39, 0, 14);
    ShareSize = ShareSize;
    goto LABEL_26;
  }

  v22 = *(a1 + 16);
  v23 = __DataStorage._bytes.getter();
  if (!v23)
  {
    goto LABEL_29;
  }

  v24 = v23;
  v25 = __DataStorage._offset.getter();
  if (__OFSUB__(v22, v25))
  {
    goto LABEL_34;
  }

  v26 = v22 - v25 + v24;
  __DataStorage._length.getter();
  if (!v26)
  {
    goto LABEL_30;
  }

  v41 = sub_100845C88(v20);
  v42 = v27;
  sub_100A7B328(&v41, &v40, &v43, v26, CommitmentSize, v20);
  if (v2)
  {
    result = v41;
    v28 = v42;
LABEL_28:
    sub_100016590(result, v28);
  }

  return v41;
}

uint64_t sub_100A7491C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v38[-1] - v7;
  v42 = 0;
  v9 = CCCKGOwnerCreate();
  v39 = v9;
  if (v9 || (v17 = v42) == 0)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    *(v10 + 56) = &type metadata for Int32;
    *(v10 + 64) = &protocol witness table for Int32;
    *(v10 + 32) = v9;
    os_log(_:dso:log:_:_:)();

    CryptoError.init(rawValue:)();
    v11 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v13 = v12;
    v14 = *(v11 - 8);
    v15 = *(v14 + 48);
    if (v15(v8, 1, v11) == 1)
    {
      (*(v14 + 104))(v13, enum case for CryptoError.unspecifiedError(_:), v11);
      if (v15(v8, 1, v11) != 1)
      {
        sub_100A80D74(v8);
      }
    }

    else
    {
      (*(v14 + 32))(v13, v8, v11);
    }

    return swift_willThrow();
  }

  type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
  *(swift_allocObject() + 16) = v17;
  v18 = CCCKGGetShareSize();
  v19 = v18;
  v20 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      v38[0] = a1;
      LOWORD(v38[1]) = a2;
      BYTE2(v38[1]) = BYTE2(a2);
      BYTE3(v38[1]) = BYTE3(a2);
      BYTE4(v38[1]) = BYTE4(a2);
      v18 = v18;
      BYTE5(v38[1]) = BYTE5(a2);
LABEL_26:
      v40 = sub_100845C88(v18);
      v41 = v34;
      v33 = v38;
LABEL_27:
      sub_100A7BFB8(&v40, &v39, &v42, v33, v19);
      result = v40;
      v27 = v41;
      if (v2)
      {
        goto LABEL_28;
      }

      return result;
    }

    if (a1 <= a1 >> 32)
    {
      v28 = __DataStorage._bytes.getter();
      if (v28)
      {
        v29 = v28;
        v30 = __DataStorage._offset.getter();
        if (!__OFSUB__(a1, v30))
        {
          v31 = (a1 - v30 + v29);
          __DataStorage._length.getter();
          if (v31)
          {
            v40 = sub_100845C88(v19);
            v41 = v32;
            v33 = v31;
            goto LABEL_27;
          }

LABEL_30:
          v35 = type metadata accessor for CryptoError();
          sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
          swift_allocError();
          (*(*(v35 - 8) + 104))(v36, enum case for CryptoError.memoryFailure(_:), v35);
          swift_willThrow();
        }

LABEL_35:
        __break(1u);
      }

LABEL_29:
      __DataStorage._length.getter();
      goto LABEL_30;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v20 != 2)
  {
    memset(v38, 0, 14);
    v18 = v18;
    goto LABEL_26;
  }

  v21 = *(a1 + 16);
  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
    goto LABEL_29;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v21, v24))
  {
    goto LABEL_34;
  }

  v25 = v21 - v24 + v23;
  __DataStorage._length.getter();
  if (!v25)
  {
    goto LABEL_30;
  }

  v40 = sub_100845C88(v19);
  v41 = v26;
  sub_100A7BFB8(&v40, &v39, &v42, v25, v19);
  if (v2)
  {
    result = v40;
    v27 = v41;
LABEL_28:
    sub_100016590(result, v27);
  }

  return v40;
}

__n128 sub_100A74E80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  CCCKG2ParamsP224Sha256Version2();
  OpeningSize = CCCKG2GetOpeningSize();

  sub_1001003F4(a2, a3, a1, OpeningSize, v13);
  if (!v5)
  {
    v12 = v13[3];
    *(a4 + 32) = v13[2];
    *(a4 + 48) = v12;
    *(a4 + 64) = v13[4];
    result = v13[1];
    *a4 = v13[0];
    *(a4 + 16) = result;
  }

  return result;
}

__n128 sub_100A74F14@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = CCCKGGetOpeningSize();

  sub_1003F141C(a2, a3, a1, v10, v13);
  if (!v5)
  {
    v12 = v13[3];
    *(a4 + 32) = v13[2];
    *(a4 + 48) = v12;
    *(a4 + 64) = v13[4];
    result = v13[1];
    *a4 = v13[0];
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t sub_100A74FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7)
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  type metadata accessor for CFString(0);
  v11 = v10;
  *(inited + 72) = v10;
  *(inited + 48) = kSecAttrKeyClassPublic;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  *(inited + 120) = v11;
  *(inited + 96) = kSecAttrKeyTypeEC;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v13;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 256;
  v14 = kSecAttrKeyClassPublic;
  v15 = kSecAttrKeyTypeEC;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  error = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v17 = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = SecKeyCreateWithData(isa, v17, &error);

  if (v18)
  {
    if (SecKeyIsAlgorithmSupported(v18, kSecKeyOperationTypeVerify, a7))
    {
      v39 = 0;
      v19 = Data._bridgeToObjectiveC()().super.isa;
      v20 = Data._bridgeToObjectiveC()().super.isa;
      v21 = SecKeyVerifySignature(v18, a7, v19, v20, &v39);

      if (v21)
      {
LABEL_18:

        return 1;
      }

      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_101385D80;
      sub_1000BC4D4(&qword_1016A2050, &qword_1013AA360);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_100008C00();
      *(v22 + 32) = v23;
      *(v22 + 40) = v25;
      os_log(_:dso:log:_:_:)();

      v26 = error;
      if (error)
      {
        type metadata accessor for CFError(0);
        sub_100A80DDC(&qword_1016B47F0, type metadata accessor for CFError);
        swift_allocError();
        *v27 = v26;
LABEL_17:
        swift_willThrow();
        goto LABEL_18;
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
    }

    v34 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, enum case for CryptoError.unspecifiedError(_:), v34);
    goto LABEL_17;
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101385D80;
  v39 = error;
  sub_1000BC4D4(&qword_1016A2050, &qword_1013AA360);
  v29 = String.init<A>(describing:)();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100008C00();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  os_log(_:dso:log:_:_:)();

  v32 = error;
  if (error)
  {
    type metadata accessor for CFError(0);
    sub_100A80DDC(&qword_1016B47F0, type metadata accessor for CFError);
    swift_allocError();
    *v33 = v32;
  }

  else
  {
    v37 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, enum case for CryptoError.invalidKey(_:), v37);
  }

  swift_willThrow();
  return 1;
}

uint64_t sub_100A7563C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v101 - v10;
  v12 = String.utf8Data.getter();
  v14 = v12;
  v15 = v13;
  if (!a3)
  {
    sub_100016590(v12, v13);
    sub_100017D5C(a1, a2);
    return a1;
  }

  v102 = v11;
  sub_100017D5C(a1, a2);
  v16 = v15 >> 62;
  v118 = v14;
  v115 = v14 >> 32;
  v116 = HIDWORD(v14);
  v17 = __OFSUB__(HIDWORD(v14), v14);
  v105 = v17;
  v104 = HIDWORD(v14) - v14;
  v113 = v15 >> 40;
  v114 = BYTE6(v15);
  v111 = v15 >> 24;
  v112 = HIDWORD(v15);
  v109 = v15 >> 8;
  v110 = v15 >> 16;
  v107 = HIWORD(v14);
  v108 = HIBYTE(v14);
  v119 = v14;
  v106 = v14 >> 40;
  v117 = v15;
  v103 = v15 >> 62;
  while (1)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = type metadata accessor for __DataStorage();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    LODWORD(v22) = swift_allocObject();
    sub_100017D5C(a1, a2);
    v23 = __DataStorage.init(length:)();
    v123 = 0x2000000000;
    v124 = v23 | 0x4000000000000000;
    if (v16 <= 1)
    {
      break;
    }

    if (v16 == 2)
    {
      v30 = v4;
      v4 = v18;
      v31 = *(v119 + 16);
      v32 = __DataStorage._bytes.getter();
      if (!v32)
      {
        __DataStorage._length.getter();
LABEL_119:
        v94 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
        swift_allocError();
        (*(*(v94 - 8) + 104))(v95, enum case for CryptoError.memoryFailure(_:), v94);
        swift_willThrow();
        sub_100016590(a1, a2);
        v18 = v4;
        goto LABEL_127;
      }

      v33 = v32;
      LODWORD(v22) = v15;
      v34 = __DataStorage._offset.getter();
      if (__OFSUB__(v31, v34))
      {
        goto LABEL_136;
      }

      v35 = v31 - v34 + v33;
      LODWORD(v22) = v15;
      __DataStorage._length.getter();
      if (!v35)
      {
        goto LABEL_119;
      }

      v121[0] = 0;
      if (__OFSUB__(*(v119 + 24), *(v119 + 16)))
      {
        goto LABEL_138;
      }

      v18 = v4;
      if (CCKDFParametersCreateAnsiX963())
      {
        LODWORD(v22) = -4300;
        v4 = v30;
LABEL_76:
        v15 = v117;
        LODWORD(v16) = v103;
        goto LABEL_88;
      }

      v42 = a2 >> 62;
      if ((a2 >> 62) > 1)
      {
        if (v42 == 2)
        {
          v51 = *(a1 + 16);
          v52 = __DataStorage._bytes.getter();
          if (!v52)
          {
            goto LABEL_123;
          }

          v53 = v52;
          v54 = __DataStorage._offset.getter();
          v55 = v51 - v54;
          if (__OFSUB__(v51, v54))
          {
            goto LABEL_149;
          }

          goto LABEL_70;
        }

        memset(v120, 0, 14);
LABEL_73:
        sub_100017D5C(a1, a2);
        v68 = v120;
      }

      else
      {
        if (!v42)
        {
          v120[0] = a1;
          LOWORD(v120[1]) = a2;
          BYTE2(v120[1]) = BYTE2(a2);
          BYTE3(v120[1]) = BYTE3(a2);
          BYTE4(v120[1]) = BYTE4(a2);
          BYTE5(v120[1]) = BYTE5(a2);
          goto LABEL_73;
        }

        if (a1 > a1 >> 32)
        {
          goto LABEL_147;
        }

        v65 = __DataStorage._bytes.getter();
        if (!v65)
        {
          goto LABEL_123;
        }

        v53 = v65;
        v66 = __DataStorage._offset.getter();
        v55 = a1 - v66;
        if (__OFSUB__(a1, v66))
        {
          goto LABEL_150;
        }

LABEL_70:
        v67 = (v55 + v53);
        __DataStorage._length.getter();
        v18 = v4;
        if (!v67)
        {
          goto LABEL_124;
        }

        sub_100017D5C(a1, a2);
        v68 = v67;
      }

      v69 = sub_100A7E758(&v123, v121, v68, a1, a2, 32);
      v4 = v30;
      if (v30)
      {
        goto LABEL_122;
      }

      LODWORD(v22) = v69;
      sub_100016590(a1, a2);
      goto LABEL_76;
    }

    memset(v120, 0, 14);
    v122 = 0;
    if (CCKDFParametersCreateAnsiX963())
    {
      goto LABEL_33;
    }

    v41 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v41 == 2)
      {
        v25 = v4;
        v4 = v18;
        v46 = *(a1 + 16);
        v47 = __DataStorage._bytes.getter();
        if (!v47)
        {
          goto LABEL_123;
        }

        v27 = v47;
        v48 = __DataStorage._offset.getter();
        v29 = v46 - v48;
        if (__OFSUB__(v46, v48))
        {
          goto LABEL_143;
        }

        goto LABEL_65;
      }

      goto LABEL_50;
    }

    if (v41)
    {
      v25 = v4;
      v4 = v18;
      if (a1 > a1 >> 32)
      {
        goto LABEL_142;
      }

      v61 = __DataStorage._bytes.getter();
      if (!v61)
      {
        goto LABEL_123;
      }

      v27 = v61;
      v62 = __DataStorage._offset.getter();
      v29 = a1 - v62;
      if (__OFSUB__(a1, v62))
      {
        goto LABEL_145;
      }

      goto LABEL_65;
    }

LABEL_36:
    v121[0] = a1;
    LOWORD(v121[1]) = a2;
    BYTE2(v121[1]) = BYTE2(a2);
    BYTE3(v121[1]) = BYTE3(a2);
    BYTE4(v121[1]) = BYTE4(a2);
    BYTE5(v121[1]) = BYTE5(a2);
LABEL_51:
    sub_100017D5C(a1, a2);
    v49 = &v122;
    v50 = v121;
LABEL_86:
    v73 = sub_100A7E758(&v123, v49, v50, a1, a2, 32);
    if (v4)
    {
      sub_100016590(a1, a2);
      goto LABEL_129;
    }

    LODWORD(v22) = v73;
    sub_100016590(a1, a2);
LABEL_88:
    if (v22)
    {
      v4 = v18;
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        goto LABEL_140;
      }

      goto LABEL_103;
    }

    sub_100016590(a1, a2);
    v74 = v123;
    v22 = v124;
    sub_100017D5C(v123, v124);
    sub_100016590(v74, v22);
    v75 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v75 != 2)
      {
        v88 = 0;
        goto LABEL_117;
      }

      v77 = *(v74 + 16);
      v76 = *(v74 + 24);
      v78 = __OFSUB__(v76, v77);
      v79 = v76 - v77;
      if (v78)
      {
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        swift_once();
LABEL_103:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_101385D80;
        *(v80 + 56) = &type metadata for Int32;
        *(v80 + 64) = &protocol witness table for Int32;
        *(v80 + 32) = v22;
        os_log(_:dso:log:_:_:)();

        v81 = v102;
        CryptoError.init(rawValue:)();
        v82 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
        swift_allocError();
        v118 = v83;
        v84 = *(v82 - 8);
        v85 = *(v84 + 48);
        if (v85(v81, 1, v82) == 1)
        {
          (*(v84 + 104))(v118, enum case for CryptoError.unspecifiedError(_:), v82);
          v86 = v85(v81, 1, v82) == 1;
          v87 = v81;
          v18 = v4;
          if (!v86)
          {
            sub_100A80D74(v87);
          }
        }

        else
        {
          (*(v84 + 32))(v118, v81, v82);
          v18 = v4;
        }

LABEL_125:
        swift_willThrow();
LABEL_126:
        sub_100016590(a1, a2);
LABEL_127:
        v15 = v117;
        goto LABEL_130;
      }

      if (v79 != 32)
      {
        goto LABEL_106;
      }
    }

    else if (v75)
    {
      if (__OFSUB__(HIDWORD(v74), v74))
      {
        goto LABEL_134;
      }

      if (HIDWORD(v74) - v74 != 32)
      {
LABEL_106:
        if (v75 == 2)
        {
          v90 = *(v74 + 16);
          v89 = *(v74 + 24);
          v88 = v89 - v90;
          if (__OFSUB__(v89, v90))
          {
            __break(1u);
            goto LABEL_116;
          }
        }

        else
        {
          if (v75 == 1)
          {
            if (!__OFSUB__(HIDWORD(v74), v74))
            {
              v88 = HIDWORD(v74) - v74;
              goto LABEL_117;
            }

LABEL_153:
            __break(1u);
          }

LABEL_116:
          v88 = BYTE6(v22);
        }

LABEL_117:
        sub_100018350();
        swift_allocError();
        *v91 = 32;
        *(v91 + 8) = v88;
        *(v91 + 16) = 0;
        swift_willThrow();
        v92 = v74;
        v93 = v22;
        goto LABEL_131;
      }
    }

    else if (BYTE6(v22) != 32)
    {
      goto LABEL_106;
    }

    objc_autoreleasePoolPop(v18);
    sub_100016590(a1, a2);
    a1 = v74;
    a2 = v22;
    if (!--a3)
    {
      sub_100016590(v119, v15);
      return v74;
    }
  }

  if (!v16)
  {
    LODWORD(v120[0]) = v119;
    BYTE4(v120[0]) = v116;
    BYTE5(v120[0]) = v106;
    BYTE6(v120[0]) = v107;
    HIBYTE(v120[0]) = v108;
    LOBYTE(v120[1]) = v15;
    BYTE1(v120[1]) = v109;
    BYTE2(v120[1]) = v110;
    BYTE3(v120[1]) = v111;
    BYTE4(v120[1]) = v112;
    BYTE5(v120[1]) = v113;
    v122 = 0;
    if (CCKDFParametersCreateAnsiX963())
    {
      goto LABEL_33;
    }

    v24 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v25 = v4;
        v4 = v18;
        v43 = *(a1 + 16);
        v44 = __DataStorage._bytes.getter();
        if (!v44)
        {
          goto LABEL_123;
        }

        v27 = v44;
        v45 = __DataStorage._offset.getter();
        v29 = v43 - v45;
        if (__OFSUB__(v43, v45))
        {
          goto LABEL_144;
        }

LABEL_65:
        v63 = v29 + v27;
        __DataStorage._length.getter();
        v18 = v4;
        if (!v63)
        {
          goto LABEL_124;
        }

        sub_100017D5C(a1, a2);
        v64 = &v122;
LABEL_82:
        v72 = sub_100A7E758(&v123, v64, v63, a1, a2, 32);
        v4 = v25;
        if (v25)
        {
LABEL_122:
          sub_100016590(a1, a2);
          goto LABEL_126;
        }

        LODWORD(v22) = v72;
        sub_100016590(a1, a2);
        v15 = v117;
        goto LABEL_88;
      }

LABEL_50:
      memset(v121, 0, 14);
      goto LABEL_51;
    }

    if (v24)
    {
      v25 = v4;
      v4 = v18;
      if (a1 > a1 >> 32)
      {
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v26 = __DataStorage._bytes.getter();
      if (!v26)
      {
        goto LABEL_123;
      }

      v27 = v26;
      v28 = __DataStorage._offset.getter();
      v29 = a1 - v28;
      if (__OFSUB__(a1, v28))
      {
        goto LABEL_146;
      }

      goto LABEL_65;
    }

    goto LABEL_36;
  }

  if (v115 < v118)
  {
    goto LABEL_135;
  }

  v36 = __DataStorage._bytes.getter();
  if (v36)
  {
    v37 = v36;
    LODWORD(v22) = v15;
    v38 = __DataStorage._offset.getter();
    if (__OFSUB__(v118, v38))
    {
      goto LABEL_137;
    }

    v39 = v118 - v38 + v37;
    LODWORD(v22) = v15;
    __DataStorage._length.getter();
    if (!v39)
    {
      goto LABEL_121;
    }

    v121[0] = 0;
    if (v105)
    {
      goto LABEL_139;
    }

    if (CCKDFParametersCreateAnsiX963())
    {
LABEL_33:
      LODWORD(v22) = -4300;
      goto LABEL_88;
    }

    v40 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v40 != 2)
      {
        memset(v120, 0, 14);
        goto LABEL_85;
      }

      v25 = v4;
      v4 = v18;
      v56 = *(a1 + 16);
      v57 = __DataStorage._bytes.getter();
      if (!v57)
      {
        goto LABEL_123;
      }

      v58 = v57;
      v59 = __DataStorage._offset.getter();
      v60 = v56 - v59;
      if (__OFSUB__(v56, v59))
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (!v40)
      {
        v120[0] = a1;
        LOWORD(v120[1]) = a2;
        BYTE2(v120[1]) = BYTE2(a2);
        BYTE3(v120[1]) = BYTE3(a2);
        BYTE4(v120[1]) = BYTE4(a2);
        BYTE5(v120[1]) = BYTE5(a2);
LABEL_85:
        sub_100017D5C(a1, a2);
        v49 = v121;
        v50 = v120;
        goto LABEL_86;
      }

      v25 = v4;
      v4 = v18;
      if (a1 > a1 >> 32)
      {
        goto LABEL_148;
      }

      v70 = __DataStorage._bytes.getter();
      if (!v70)
      {
LABEL_123:
        __DataStorage._length.getter();
        v18 = v4;
LABEL_124:
        v98 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
        swift_allocError();
        (*(*(v98 - 8) + 104))(v99, enum case for CryptoError.memoryFailure(_:), v98);
        goto LABEL_125;
      }

      v58 = v70;
      v71 = __DataStorage._offset.getter();
      v60 = a1 - v71;
      if (__OFSUB__(a1, v71))
      {
        goto LABEL_152;
      }
    }

    v63 = v60 + v58;
    __DataStorage._length.getter();
    v18 = v4;
    if (!v63)
    {
      goto LABEL_124;
    }

    sub_100017D5C(a1, a2);
    v64 = v121;
    goto LABEL_82;
  }

  __DataStorage._length.getter();
LABEL_121:
  v96 = type metadata accessor for CryptoError();
  sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
  swift_allocError();
  (*(*(v96 - 8) + 104))(v97, enum case for CryptoError.memoryFailure(_:), v96);
  swift_willThrow();
LABEL_129:
  sub_100016590(a1, a2);
LABEL_130:
  v92 = v123;
  v93 = v124;
LABEL_131:
  sub_100016590(v92, v93);
  objc_autoreleasePoolPop(v18);
  sub_100016590(v119, v15);
  sub_100016590(a1, a2);
  return a1;
}

uint64_t sub_100A76468@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>)
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v64 = 0x7365547265646E75;
  v65 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((a7 & 1) != 0 || v66)
  {
    result = sub_100A7563C(a5, a6, 1);
    if (!v9)
    {
      v20 = result;
      v21 = v19;
      v23 = String.utf8Data.getter();
      v24 = v22;
      v25 = sub_100A79CBC(v20, v21, v23, v22, 72);
      sub_100495DF4(v25, v27, &v64);
      sub_100016590(v23, v24);
      v29 = v64;
      v28 = v65;
      if (a2 >> 60 == 15)
      {
        sub_100017D5C(v64, v65);
        v30 = sub_100A7A194(a3, a4);
        v32 = sub_100A7A73C(v30, 0, v29, v28);
        CCECCryptorRelease();
        sub_100016590(v29, v28);
        v33 = sub_100A7829C(v32, 0);
        v35 = v34;
        sub_100017D5C(v33, v34);
        v57 = sub_10049C0AC(v33, v35);
        v58 = v40;
        CCECCryptorRelease();
        sub_100016590(v33, v35);
        v41 = a1;
      }

      else
      {
        sub_10002E98C(a1, a2);
        sub_100017D5C(v29, v28);
        v31 = sub_100A7A194(a1, a2);
        v36 = sub_100A7A73C(v31, 1, v29, v28);
        CCECCryptorRelease();
        sub_100016590(v29, v28);
        v37 = sub_100A7829C(v36, 1);
        v39 = v38;
        v55 = sub_100A7829C(v36, 0);
        v56 = v49;
        sub_100017D5C(v37, v39);
        v50 = sub_10049BD68(v37, v39);
        v53 = v51;
        v54 = v50;
        sub_100017D5C(v55, v56);
        v57 = sub_10049C0AC(v55, v56);
        v58 = v52;
        CCECCryptorRelease();
        sub_100016590(v55, v56);
        sub_100016590(v37, v39);
        sub_100006654(a1, a2);
        a2 = v53;
        v41 = v54;
      }

      v42 = *a8;
      v43 = a8[1];
      *a8 = v20;
      a8[1] = v21;
      sub_100017D5C(v20, v21);
      sub_100016590(v42, v43);
      v44 = String.utf8Data.getter();
      v46 = v45;
      v47 = sub_100A79CBC(v20, v21, v44, v45, 32);
      sub_1004A4714(v47, v48, &v64);
      sub_100016590(v44, v46);
      v61 = v65;
      v63 = v64;
      sub_100017D5C(v57, v58);
      sub_10002E98C(v41, a2);
      sub_100006654(v41, a2);
      sub_100016590(v57, v58);
      sub_100016590(v20, v21);
      result = sub_100016590(v29, v28);
      *a9 = v63;
      a9[1] = v61;
      a9[2] = v57;
      a9[3] = v58;
      a9[4] = v41;
      a9[5] = a2;
    }
  }

  else
  {
    v16 = [objc_opt_self() sharedInstance];
    v17 = [v16 isInternalBuild];

    if (v17)
    {
      static os_log_type_t.fault.getter();
    }

    else
    {
      static os_log_type_t.error.getter();
    }

    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1001BAF88();
    swift_allocError();
    *v26 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100A76B00()
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10177BA00 = result;
  return result;
}

uint64_t sub_100A76B6C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B4878, &qword_1013D6090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A8124C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v3;
  v22 = *(v3 + 2);
  v17 = *v3;
  *&v18 = *(v3 + 2);
  v23 = 0;
  sub_100A813B0(&v21, v16);
  sub_100A813E8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(*(&v17 + 1), v18);
  if (!v2)
  {
    v11 = *(v3 + 40);
    v20[0] = *(v3 + 24);
    v20[1] = v11;
    v20[2] = *(v3 + 56);
    v12 = *(v3 + 40);
    v17 = *(v3 + 24);
    v18 = v12;
    v19 = *(v3 + 56);
    v23 = 1;
    sub_100A8143C(v20, v16);
    sub_100A81474();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v18;
    v14 = v19;
    sub_100006654(v17, *(&v17 + 1));
    sub_100016590(v13, *(&v13 + 1));
    sub_100006654(v14, *(&v14 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100A76D88()
{
  *v8 = *v0;
  v9 = *(v0 + 16);
  Hasher._combine(_:)(v8[0]);
  v10 = *(v0 + 8);
  sub_100A80E24(&v10, &v7);
  Data.hash(into:)();
  sub_100429CD4(v8);
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    sub_100017D5C(v4, v1);
    Data.hash(into:)();
    sub_100006654(v4, v1);
  }

  v6 = *(v0 + 40);
  v7 = v6;
  sub_100A80E24(&v7, &v5);
  Data.hash(into:)();
  sub_100A80E80(&v6);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v2, v3);
    Data.hash(into:)();
    sub_100006654(v2, v3);
  }
}

Swift::Int sub_100A76ED8()
{
  Hasher.init(_seed:)();
  *v9 = *v0;
  *&v9[16] = *(v0 + 16);
  Hasher._combine(_:)(*v9);
  v10 = *&v9[8];
  sub_100A80E24(&v10, &v8);
  Data.hash(into:)();
  sub_100429CD4(v9);
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    sub_100017D5C(v4, v1);
    Data.hash(into:)();
    sub_100006654(v4, v1);
  }

  v7 = *(v0 + 40);
  v8 = v7;
  sub_100A80E24(&v8, v6);
  Data.hash(into:)();
  sub_100A80E80(&v7);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v2, v3);
    Data.hash(into:)();
    sub_100006654(v2, v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_100A7704C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B4808, &qword_1013D5A58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A80ED4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  v15 = *v3;
  v14 = 0;
  sub_1000D2A70(&v18, v13, &qword_1016B4810, &qword_1013D5A60);
  sub_10049F488();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_100006654(v15, *(&v15 + 1));
  if (!v2)
  {
    v17 = v3[1];
    v15 = v3[1];
    v14 = 1;
    sub_10012C094(&v17, v13);
    sub_10049E410();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, *(&v15 + 1));
    v15 = v3[2];
    v16 = v15;
    v14 = 2;
    sub_1000D2A70(&v16, v13, &qword_1016B4818, &qword_1013D5A68);
    sub_10049DF20();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v15, *(&v15 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100A77290()
{
  v1 = *(v0 + 8);
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v0;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v2, v1);
    Data.hash(into:)();
    sub_100006654(v2, v1);
  }

  v6 = *(v0 + 16);
  v7 = v6;
  sub_100A80E24(&v7, &v5);
  Data.hash(into:)();
  sub_100A80E80(&v6);
  v3 = *(v0 + 40);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    sub_100017D5C(v4, v3);
    Data.hash(into:)();
    sub_100006654(v4, v3);
  }
}

Swift::Int sub_100A77394()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v0;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v2, v1);
    Data.hash(into:)();
    sub_100006654(v2, v1);
  }

  v7 = *(v0 + 16);
  v8 = v7;
  sub_100A80E24(&v8, v6);
  Data.hash(into:)();
  sub_100A80E80(&v7);
  v3 = *(v0 + 40);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    sub_100017D5C(v4, v3);
    Data.hash(into:)();
    sub_100006654(v4, v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_100A774B8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = sub_1000BC4D4(&qword_1016B48A0, &qword_1013D60A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A814C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_100017D5C(a3, v15);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_100A77654()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 1953393000;
  }

  *v0;
  return result;
}

uint64_t sub_100A7768C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953393000 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010136B370 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100A77770(uint64_t a1)
{
  v2 = sub_100A8124C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A777AC(uint64_t a1)
{
  v2 = sub_100A8124C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100A777F0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  sub_100017D5C(v2, v4);
  Data.hash(into:)();
  sub_100016590(v2, v4);
  if (v6 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v3, v6);
    Data.hash(into:)();
    sub_100006654(v3, v6);
  }

  sub_100017D5C(v5, v8);
  Data.hash(into:)();
  sub_100016590(v5, v8);
  if (v9 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v7, v9);
    Data.hash(into:)();
    sub_100006654(v7, v9);
  }

  return Hasher._finalize()();
}

__n128 sub_100A7794C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100A7FDBC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

BOOL sub_100A779B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 5);
  v15[0] = *(a1 + 3);
  v15[1] = v5;
  v6 = *(a1 + 7);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 7);
  v11 = *(a2 + 3);
  v16[1] = *(a2 + 5);
  v16[2] = v10;
  v15[2] = v6;
  v16[0] = v11;
  v13 = v2 == v7 && (sub_100017D5C(v3, v4), sub_100017D5C(v8, v9), v12 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v4, v8, v9), sub_100016590(v8, v9), sub_100016590(v3, v4), (v12 & 1) != 0) && sub_100A7E3CC(v15, v16);
  return v13;
}

uint64_t sub_100A77A8C()
{
  v1 = 0x654B63696C627570;
  if (*v0 != 1)
  {
    v1 = 0x4B65746176697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656D7265746E69;
  }
}

uint64_t sub_100A77AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100A8008C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100A77B24(uint64_t a1)
{
  v2 = sub_100A80ED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A77B60(uint64_t a1)
{
  v2 = sub_100A80ED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100A77BA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v1, v2);
    Data.hash(into:)();
    sub_100006654(v1, v2);
  }

  sub_100017D5C(v3, v4);
  Data.hash(into:)();
  sub_100016590(v3, v4);
  if (v6 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v5, v6);
    Data.hash(into:)();
    sub_100006654(v5, v6);
  }

  return Hasher._finalize()();
}

double sub_100A77CBC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100A801BC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_100A77D18(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_100A7E3CC(v7, v8);
}

uint64_t sub_100A77D60()
{
  if (*v0)
  {
    result = 0x6553646572616873;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_100A77DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100A77E7C(uint64_t a1)
{
  v2 = sub_100A814C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A77EB8(uint64_t a1)
{
  v2 = sub_100A814C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100A77EF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  sub_100017D5C(v2, v3);
  Data.hash(into:)();
  sub_100016590(v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100A77F70()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  sub_100017D5C(v1, v2);
  Data.hash(into:)();

  return sub_100016590(v1, v2);
}

Swift::Int sub_100A77FDC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  sub_100017D5C(v2, v3);
  Data.hash(into:)();
  sub_100016590(v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100A78054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100A80484(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100A780A4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v2 = a2[2];
  v5 = a1[1];
  v4 = a1[2];
  sub_100017D5C(v5, v4);
  sub_100017D5C(v3, v2);
  v6 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v4, v3, v2);
  sub_100016590(v3, v2);
  sub_100016590(v5, v4);
  return v6 & 1;
}

uint64_t CollaborativeKeyGen.v1.OwnerContext.deinit()
{
  v1 = *(v0 + 16);
  CCCKGOwnerDestroy();
  return v0;
}

uint64_t CollaborativeKeyGen.v1.OwnerContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  CCCKGOwnerDestroy();

  return swift_deallocClassInstance();
}

uint64_t CollaborativeKeyGen.v1.ContributorContext.deinit()
{
  v1 = *(v0 + 16);
  CCCKGContributorDestroy();
  return v0;
}

uint64_t CollaborativeKeyGen.v1.ContributorContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  CCCKGContributorDestroy();

  return swift_deallocClassInstance();
}

uint64_t CollaborativeKeyGen.v2.OwnerContext.deinit()
{
  v1 = *(v0 + 16);
  CCCKG2OwnerDestroy();
  return v0;
}

uint64_t CollaborativeKeyGen.v2.OwnerContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  CCCKG2OwnerDestroy();

  return swift_deallocClassInstance();
}

uint64_t CollaborativeKeyGen.v2.ContributorContext.deinit()
{
  v1 = *(v0 + 16);
  CCCKG2ContributorDestroy();
  return v0;
}

uint64_t CollaborativeKeyGen.v2.ContributorContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  CCCKG2ContributorDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100A7829C(uint64_t a1, int a2)
{
  v4 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  if (a2 == 1)
  {
    v8 = 85;
  }

  else
  {
    v8 = 57;
  }

  v22 = v8;
  v24 = sub_100845C88(v8);
  v25 = v9;
  v10 = sub_100A7AF80(&v24);
  if (!v2)
  {
    v11 = v10;
    if (!v10)
    {
      v18 = v24;
      v19 = v25;
      v20 = v22;
      sub_100017D5C(v24, v25);
      sub_10002EA98(v20, v18, v19, &v23);
      sub_100016590(v18, v19);
      return v23;
    }

    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    *(v12 + 56) = &type metadata for Int32;
    *(v12 + 64) = &protocol witness table for Int32;
    *(v12 + 32) = v11;
    os_log(_:dso:log:_:_:)();

    CryptoError.init(rawValue:)();
    v13 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v15 = v14;
    v16 = *(v13 - 8);
    v17 = *(v16 + 48);
    if (v17(v7, 1, v13) == 1)
    {
      (*(v16 + 104))(v15, enum case for CryptoError.unspecifiedError(_:), v13);
      if (v17(v7, 1, v13) != 1)
      {
        sub_100A80D74(v7);
      }
    }

    else
    {
      (*(v16 + 32))(v15, v7, v13);
    }

    swift_willThrow();
  }

  return sub_100016590(v24, v25);
}

double sub_100A785D8@<D0>(uint64_t a1@<X8>)
{
  sub_100A7F75C(v12);
  if (!v1)
  {
    v4 = static Data.random(bytes:)();
    sub_1004A4714(v4, v5, v11);
    v6 = v11[0];
    v7 = v11[1];
    v14 = v12[0];
    v15 = v12[1];
    v13 = v12[2];
    sub_10012C038(&v15, v10);
    sub_10012C094(&v14, v10);
    sub_10012BFDC(&v13, v10);
    sub_100A80F28(v12);
    v9 = v14;
    v8 = v13;
    *a1 = v15;
    *(a1 + 16) = v9;
    result = 0.0;
    *(a1 + 32) = v8;
    *(a1 + 48) = xmmword_10138BBF0;
    *(a1 + 64) = v6;
    *(a1 + 72) = v7;
  }

  return result;
}

uint64_t sub_100A786A8()
{
  v1 = 0x4B65746176697270;
  if (*v0 != 1)
  {
    v1 = 0x6553646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654B63696C627570;
  }
}

uint64_t sub_100A78714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100A80648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100A7873C(uint64_t a1)
{
  v2 = sub_100A789D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A78778(uint64_t a1)
{
  v2 = sub_100A789D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RootKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B4540, &qword_1013D5130);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A789D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  v15 = *v3;
  v14 = 0;
  sub_10012C094(&v18, v13);
  sub_10049E410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v15, *(&v15 + 1));
  if (!v2)
  {
    v17 = v3[1];
    v15 = v3[1];
    v14 = 1;
    sub_10012C038(&v17, v13);
    sub_10049DF20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, *(&v15 + 1));
    v15 = v3[2];
    v16 = v15;
    v14 = 2;
    sub_10012BFDC(&v16, v13);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v15, *(&v15 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100A789D8()
{
  result = qword_1016B4548;
  if (!qword_1016B4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4548);
  }

  return result;
}

double RootKey.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100A80774(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100A78AB4()
{
  v1 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v21 = 0;
  v5 = CCCKGContributorCreate();
  v18 = v5;
  if (v5 || (v13 = v21) == 0)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    *(v6 + 56) = &type metadata for Int32;
    *(v6 + 64) = &protocol witness table for Int32;
    *(v6 + 32) = v5;
    os_log(_:dso:log:_:_:)();

    CryptoError.init(rawValue:)();
    v7 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v9 = v8;
    v10 = *(v7 - 8);
    v11 = *(v10 + 48);
    if (v11(v4, 1, v7) == 1)
    {
      (*(v10 + 104))(v9, enum case for CryptoError.unspecifiedError(_:), v7);
      if (v11(v4, 1, v7) != 1)
      {
        sub_100A80D74(v4);
      }
    }

    else
    {
      (*(v10 + 32))(v9, v4, v7);
    }

    return swift_willThrow();
  }

  else
  {
    type metadata accessor for CollaborativeKeyGen.v1.ContributorContext();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = CCCKGGetCommitmentSize();
    v19 = sub_100845C88(v15);
    v20 = v16;

    sub_100A7CC24(&v19, &v18, v14, v15);
    if (v0)
    {

      return sub_100016590(v19, v20);
    }

    else
    {
      return v19;
    }
  }
}

uint64_t sub_100A78DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (a1)
  {
    v7 = CCCKGGetShareSize();
    v8 = CCCKGGetOpeningSize();
    v14 = sub_100845C88(v8);
    v15 = v9;

    sub_101112EB0(&v14, a2, a1, v7, v8);
    result = v14;
    v11 = v15;
    if (v3)
    {
      return sub_100016590(v14, v15);
    }

    else
    {
      *a3 = v14;
      a3[1] = v11;
    }
  }

  else
  {
    v12 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for CryptoError.memoryFailure(_:), v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100A78F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(__int128 *__return_ptr, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  if (a1)
  {
    v11 = type metadata accessor for __DataStorage();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v24 = 0x4000000000;
    v25 = __DataStorage.init(length:)();

    a4(&v26, &v24, a2, a1, a3, 64);
    if (v5)
    {
    }

    else
    {
      v18 = v24;
      v17 = v25;
      v19 = v26;
      v21 = v27;
      v20 = v28;
      sub_100017D5C(v24, v25 | 0x4000000000000000);
      sub_10002EA98(32, v18, v17 | 0x4000000000000000, &v24);
      sub_1004A4714(v24, v25, &v26);
      v29 = *(&v26 + 1);
      v22 = v26;
      sub_100017D5C(v18, v17 | 0x4000000000000000);
      sub_100035310(32, v18, v17 | 0x4000000000000000, &v24);
      sub_1004A4714(v24, v25, &v26);

      *a5 = v19;
      *(a5 + 16) = v21;
      *(a5 + 24) = v20;
      v23 = v29;
      *(a5 + 32) = v22;
      *(a5 + 40) = v23;
      *(a5 + 48) = v26;
      *(a5 + 64) = xmmword_10138BBF0;
    }
  }

  else
  {
    v15 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, enum case for CryptoError.memoryFailure(_:), v15);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100A791E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100A7A194(a1, a2);
  if (v2)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100008C00();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    os_log(_:dso:log:_:_:)();

    sub_1001BAF88();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  else
  {
    v4 = sub_100A7829C(v3, 0);
    v6 = v5;
    CCECCryptorRelease();
    return sub_10049C0AC(v4, v6);
  }
}

void sub_100A79398(uint64_t *a1@<X4>, uint64_t *a2@<X8>)
{
  type metadata accessor for CFString(0);
  v4 = v3;
  v34 = v3;
  error[0] = kSecAttrKeyTypeEC;
  sub_1001E6224(error, v32);
  v5 = kSecAttrKeyType;
  v6 = kSecAttrKeyTypeEC;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBF20(v32, v5, isUniquelyReferenced_nonNull_native);

  v34 = v4;
  error[0] = kSecAttrKeyClassPublic;
  sub_1001E6224(error, v32);
  v8 = kSecAttrKeyClass;
  v9 = kSecAttrKeyClassPublic;
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBF20(v32, v8, v10);

  error[0] = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
  sub_1004A4578();
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = SecKeyCreateWithData(isa, v12, error);

  if (!v13)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v23 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    v17 = swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for CryptoError.encodeError(_:), v23);
    swift_willThrow();
    goto LABEL_9;
  }

  v32[0] = 0;
  v14 = Data._bridgeToObjectiveC()().super.isa;
  EncryptedData = SecKeyCreateEncryptedData(v13, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v14, v32);

  v16 = v32[0];
  if (v32[0])
  {
    type metadata accessor for CFError(0);
    sub_100A80DDC(&qword_1016B47F0, type metadata accessor for CFError);
    v17 = swift_allocError();
    *v18 = v16;
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    swift_willThrow();

LABEL_9:
    *a1 = v17;
    return;
  }

  if (!EncryptedData)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v29 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    v17 = swift_allocError();
    (*(*(v29 - 8) + 104))(v30, enum case for CryptoError.encodeError(_:), v29);
    swift_willThrow();

    goto LABEL_9;
  }

  v25 = EncryptedData;
  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *a2 = v26;
  a2[1] = v28;
}

void sub_100A79968(__SecKey *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  error = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = SecKeyCreateDecryptedData(a1, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, isa, &error);

  v8 = error;
  if (error)
  {
    type metadata accessor for CFError(0);
    sub_100A80DDC(&qword_1016B47F0, type metadata accessor for CFError);
    v9 = swift_allocError();
    *v10 = v8;
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)();

    swift_willThrow();

LABEL_5:
    *a2 = v9;
    return;
  }

  if (!v7)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v19 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    v9 = swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for CryptoError.decodeError(_:), v19);
    swift_willThrow();
    goto LABEL_5;
  }

  v15 = v7;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *a3 = v16;
  a3[1] = v18;
}

char *sub_100A79CBC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - v13;
  v25 = sub_100845C88(a5);
  v26 = v15;
  sub_100017D5C(a3, a4);
  sub_100017D5C(a1, a2);
  v16 = sub_100A7F110(a3, a4, a3, a4, a1, a2, &v25, a5);
  sub_100016590(a1, a2);
  sub_100016590(a3, a4);
  if (v5)
  {
LABEL_11:
    sub_100016590(v25, v26);
    return v14;
  }

  if (v16)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    *(v17 + 56) = &type metadata for Int32;
    *(v17 + 64) = &protocol witness table for Int32;
    *(v17 + 32) = v16;
    os_log(_:dso:log:_:_:)();

    CryptoError.init(rawValue:)();
    v18 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v20 = v19;
    v21 = *(v18 - 8);
    v22 = *(v21 + 48);
    if (v22(v14, 1, v18) == 1)
    {
      (*(v21 + 104))(v20, enum case for CryptoError.unspecifiedError(_:), v18);
      if (v22(v14, 1, v18) != 1)
      {
        sub_100A80D74(v14);
      }
    }

    else
    {
      (*(v21 + 32))(v20, v14, v18);
    }

    swift_willThrow();
    goto LABEL_11;
  }

  v14 = v25;
  v23 = v26;
  sub_100017D5C(v25, v26);
  sub_100016590(v14, v23);
  return v14;
}

uint64_t sub_100A79FEC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100A7A194(a1, a2);
  v4 = v2;
  if (v2)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100008C00();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)();

    sub_1001BAF88();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  else
  {
    v4 = sub_100A7829C(v3, 0);
    CCECCryptorRelease();
  }

  return v4;
}

uint64_t sub_100A7A194(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v31 - v6;
  v32 = 0;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v31, 0, 14);
      goto LABEL_18;
    }

    v9 = *(a1 + 16);
    v10 = __DataStorage._bytes.getter();
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = v10;
    v12 = __DataStorage._offset.getter();
    if (__OFSUB__(v9, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v13 = v9 - v12 + v11;
    __DataStorage._length.getter();
    if (!v13)
    {
      goto LABEL_29;
    }

    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v31[0] = a1;
    LOWORD(v31[1]) = a2;
    BYTE2(v31[1]) = BYTE2(a2);
    BYTE3(v31[1]) = BYTE3(a2);
    BYTE4(v31[1]) = BYTE4(a2);
    BYTE5(v31[1]) = BYTE5(a2);
    goto LABEL_18;
  }

  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_34;
  }

  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
LABEL_28:
    __DataStorage._length.getter();
    goto LABEL_29;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (!__OFSUB__(a1, v16))
  {
    v17 = a1 - v16 + v15;
    __DataStorage._length.getter();
    if (v17)
    {
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
      }

LABEL_18:
      v18 = CCECCryptorImportKey();
      if (v18)
      {
        static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_101385D80;
        *(v19 + 56) = &type metadata for Int32;
        *(v19 + 64) = &protocol witness table for Int32;
        *(v19 + 32) = v18;
        os_log(_:dso:log:_:_:)();

        CryptoError.init(rawValue:)();
        v20 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
        swift_allocError();
        v22 = v21;
        v23 = *(v20 - 8);
        v24 = *(v23 + 48);
        if (v24(v7, 1, v20) == 1)
        {
          (*(v23 + 104))(v22, enum case for CryptoError.unspecifiedError(_:), v20);
          if (v24(v7, 1, v20) != 1)
          {
            sub_100A80D74(v7);
          }
        }

        else
        {
          (*(v23 + 32))(v22, v7, v20);
        }

        return swift_willThrow();
      }

      result = v32;
      if (v32)
      {
        return result;
      }

      static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    }

LABEL_29:
    v26 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v28 = v30;
    v29 = &enum case for CryptoError.memoryFailure(_:);
    goto LABEL_30;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_26:
  os_log(_:dso:log:_:_:)();
  v26 = type metadata accessor for CryptoError();
  sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
  swift_allocError();
  v28 = v27;
  v29 = &enum case for CryptoError.unspecifiedError(_:);
LABEL_30:
  (*(*(v26 - 8) + 104))(v28, *v29, v26);
  return swift_willThrow();
}

uint64_t sub_100A7A73C(uint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  v9 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v38 - v11;
  v52 = 0;
  v51 = xmmword_10138C660;
  Data.append(_:)();
  v13 = *(&v51 + 1);
  v14 = v51;
  v15 = *(&v51 + 1) >> 62;
  if ((*(&v51 + 1) >> 62) > 1)
  {
    if (v15 != 2)
    {
      v24 = a4 >> 62;
      *(&v50 + 7) = 0;
      *&v50 = 0;
      if ((a4 >> 62) <= 1)
      {
        if (v24 && __OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_73;
        }

LABEL_35:
        v25 = CCECCryptorTwinDiversifyKey();
        if (v25)
        {
LABEL_58:
          static os_log_type_t.error.getter();
          if (qword_101694BE0 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_101385D80;
          *(v32 + 56) = &type metadata for Int32;
          *(v32 + 64) = &protocol witness table for Int32;
          *(v32 + 32) = v25;
          os_log(_:dso:log:_:_:)();

          CryptoError.init(rawValue:)();
          v33 = type metadata accessor for CryptoError();
          sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
          swift_allocError();
          v35 = v34;
          v36 = *(v33 - 8);
          v37 = *(v36 + 48);
          if (v37(v12, 1, v33) == 1)
          {
            (*(v36 + 104))(v35, enum case for CryptoError.unspecifiedError(_:), v33);
            if (v37(v12, 1, v33) != 1)
            {
              sub_100A80D74(v12);
            }
          }

          else
          {
            (*(v36 + 32))(v35, v12, v33);
          }

          goto LABEL_64;
        }

LABEL_36:
        v12 = v52;
        if (v52)
        {
          sub_100016590(v14, v13);
          return v12;
        }

        static os_log_type_t.error.getter();
        if (qword_101694BE0 == -1)
        {
          goto LABEL_39;
        }

        goto LABEL_69;
      }

      goto LABEL_24;
    }

    v49 = a1;
    v18 = a4;

    sub_100016590(v14, v13);
    *&v50 = v14;
    *(&v50 + 1) = v13 & 0x3FFFFFFFFFFFFFFFLL;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v13 = *(&v50 + 1);
    v14 = v50;
    v19 = *(v50 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_77;
    }

    if (!__OFSUB__(v19, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      v21 = v18 >> 62;
      if ((v18 >> 62) <= 1)
      {
        if (v21 && __OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_74;
        }

        goto LABEL_42;
      }

LABEL_28:
      if (v21 == 2)
      {
        v17 = *(a3 + 16);
        if (__OFSUB__(*(a3 + 24), v17))
        {
          __break(1u);
LABEL_32:
          if (!__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_40;
          }

          goto LABEL_72;
        }
      }

LABEL_42:
      v25 = CCECCryptorTwinDiversifyKey();
      v13 |= 0x8000000000000000;
      goto LABEL_43;
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v48 = a4;
  v46 = a3;
  v47 = a2;
  if (!v15)
  {
    v49 = a1;
    v44 = v4;
    v45 = v12;
    a3 = DWORD1(v51);
    v38 = *(&v51 + 1) >> 8;
    v39 = *(&v51 + 1) >> 16;
    v40 = *(&v51 + 1) >> 24;
    v41 = HIDWORD(*(&v51 + 1));
    v42 = *(&v51 + 1) >> 40;
    v43 = HIWORD(*(&v51 + 1));
    sub_100016590(v51, *(&v51 + 1));
    *&v50 = v14;
    BYTE8(v50) = v13;
    BYTE9(v50) = v38;
    BYTE10(v50) = v39;
    BYTE11(v50) = v40;
    BYTE12(v50) = v41;
    BYTE13(v50) = v42;
    v16 = v48 >> 62;
    BYTE14(v50) = v43;
    if ((v48 >> 62) <= 1)
    {
      v12 = v45;
      v17 = v46;
      if (!v16)
      {
LABEL_40:
        v25 = CCECCryptorTwinDiversifyKey();
        v14 = v50;
        v13 = DWORD2(v50) | ((WORD6(v50) | (BYTE14(v50) << 16)) << 32);
LABEL_43:
        *&v51 = v14;
        goto LABEL_57;
      }

      goto LABEL_32;
    }

    v12 = v45;
    if (v16 != 2)
    {
      goto LABEL_40;
    }

    v24 = *(v46 + 24);
    if (!__OFSUB__(v24, *(v46 + 16)))
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_24:
    if (v24 != 2)
    {
      goto LABEL_35;
    }

    v21 = *(a3 + 24);
    if (!__OFSUB__(v21, *(a3 + 16)))
    {
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_28;
  }

  v22 = *(&v51 + 1) & 0x3FFFFFFFFFFFFFFFLL;

  sub_100016590(v14, v13);
  sub_100016590(0, 0xC000000000000000);
  v23 = v14 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v49 = v23 - v14;
    if (v23 < v14)
    {
      __break(1u);
    }

    else
    {

      if (!__DataStorage._bytes.getter() || !__OFSUB__(v14, __DataStorage._offset.getter()))
      {
        v27 = type metadata accessor for __DataStorage();
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        swift_allocObject();
        v30 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v22 = v30;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

LABEL_45:
  if (v23 < v14)
  {
    goto LABEL_67;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    if (!__OFSUB__(v14, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      v31 = v48 >> 62;
      if ((v48 >> 62) > 1)
      {
        if (v31 != 2 || !__OFSUB__(*(v46 + 24), *(v46 + 16)))
        {
          goto LABEL_56;
        }

        __break(1u);
      }

      else if (!v31)
      {
        goto LABEL_56;
      }

      if (__OFSUB__(HIDWORD(v46), v46))
      {
        goto LABEL_75;
      }

LABEL_56:
      v25 = CCECCryptorTwinDiversifyKey();

      v13 = v22 | 0x4000000000000000;
LABEL_57:
      *(&v51 + 1) = v13;
      if (v25)
      {
        goto LABEL_58;
      }

      goto LABEL_36;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
LABEL_39:
    os_log(_:dso:log:_:_:)();
    v12 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    (*(*(v12 - 1) + 104))(v26, enum case for CryptoError.unspecifiedError(_:), v12);
LABEL_64:
    swift_willThrow();
    sub_100016590(v51, *(&v51 + 1));
    return v12;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_100A7AF80(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return CCECCryptorExportKey();
    }

    sub_100016590(v3, v2);
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v6 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    v7 = *(v3 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    if (!__OFSUB__(v7, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      result = CCECCryptorExportKey();
      *a1 = v3;
      a1[1] = v6 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
    sub_100016590(v3, v2);
    LOWORD(v15) = v2;
    BYTE2(v15) = BYTE2(v2);
    HIBYTE(v15) = BYTE3(v2);
    LOBYTE(v16) = BYTE4(v2);
    HIBYTE(v16) = BYTE5(v2);
    result = CCECCryptorExportKey();
    *a1 = v3;
    a1[1] = v15 | ((v16 | (BYTE6(v2) << 16)) << 32);
    return result;
  }

  v8 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100016590(v3, v2);
  *a1 = xmmword_10138C660;
  sub_100016590(0, 0xC000000000000000);
  v9 = v3 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v9 < v3)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v3, __DataStorage._offset.getter()))
    {
LABEL_23:
      __break(1u);
    }

    v10 = type metadata accessor for __DataStorage();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v8 = v13;
  }

  if (v9 < v3)
  {
    goto LABEL_20;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    if (!__OFSUB__(v3, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      v14 = CCECCryptorExportKey();

      *a1 = v3;
      a1[1] = v8 | 0x4000000000000000;
      return v14;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100A7B328(uint64_t *a1, int *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v91 = a3;
  v92 = a5;
  v93 = a2;
  v10 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v80 - v16;
  v18 = __chkstk_darwin(v15);
  __chkstk_darwin(v18);
  v21 = v80 - v20;
  v22 = *a1;
  v23 = a1[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    v90 = a4;
    if (!v24)
    {
      v80[1] = v6;
      v81 = v19;
      v88 = a6;
      v89 = a1;
      v82 = v23 >> 8;
      v83 = v23 >> 16;
      v84 = v23 >> 24;
      v85 = HIDWORD(v23);
      v86 = v23 >> 40;
      v87 = HIWORD(v23);
      sub_100016590(v22, v23);
      *&v94 = v22;
      BYTE8(v94) = v23;
      BYTE9(v94) = v82;
      BYTE10(v94) = v83;
      BYTE11(v94) = v84;
      BYTE12(v94) = v85;
      BYTE13(v94) = v86;
      BYTE14(v94) = v87;
      v25 = *v91;
      result = CCCKG2OwnerGenerateShare();
      v22 = v93;
      *v93 = result;
      if (!result)
      {
        v61 = DWORD2(v94) | ((WORD6(v94) | (BYTE14(v94) << 16)) << 32);
        v62 = v89;
        *v89 = v94;
        v62[1] = v61;
        return result;
      }

      static os_log_type_t.error.getter();
      a6 = v89;
      if (qword_101694BE0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_53;
    }

    v48 = v23 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100016590(v22, v23);
    v49 = a1;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    v50 = v22 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = a6;
      v89 = (v50 - v22);
      if (v50 < v22)
      {
        __break(1u);
      }

      else
      {

        if (!__DataStorage._bytes.getter() || !__OFSUB__(v22, __DataStorage._offset.getter()))
        {
          v64 = type metadata accessor for __DataStorage();
          v65 = *(v64 + 48);
          v66 = *(v64 + 52);
          swift_allocObject();
          v67 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v48 = v67;
          a6 = v88;
          goto LABEL_37;
        }
      }

      __break(1u);
    }

LABEL_37:
    if (v50 >= v22)
    {

      result = __DataStorage._bytes.getter();
      if (result)
      {
        a6 = v48;
        if (!__OFSUB__(v22, __DataStorage._offset.getter()))
        {
          __DataStorage._length.getter();
          v68 = *v91;
          Share = CCCKG2OwnerGenerateShare();
          v70 = v93;
          *v93 = Share;
          if (Share)
          {
            v89 = v49;
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_101385D80;
            v72 = *v70;
            *(v71 + 56) = &type metadata for Int32;
            *(v71 + 64) = &protocol witness table for Int32;
            *(v71 + 32) = v72;
            os_log(_:dso:log:_:_:)();

            v73 = *v70;
            CryptoError.init(rawValue:)();
            v74 = type metadata accessor for CryptoError();
            sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
            swift_allocError();
            v76 = v75;
            v77 = *(v74 - 8);
            v78 = *(v77 + 48);
            if (v78(v17, 1, v74) == 1)
            {
              (*(v77 + 104))(v76, enum case for CryptoError.unspecifiedError(_:), v74);
              if (v78(v17, 1, v74) != 1)
              {
                sub_100A80D74(v17);
              }
            }

            else
            {
              (*(v77 + 32))(v76, v17, v74);
            }

            swift_willThrow();

            v79 = v89;
            *v89 = v22;
            v79[1] = v48 | 0x4000000000000000;
          }

          else
          {

            *v49 = v22;
            v49[1] = v48 | 0x4000000000000000;
          }

          return result;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        swift_once();
LABEL_5:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_101385D80;
        v28 = *v22;
        *(v27 + 56) = &type metadata for Int32;
        *(v27 + 64) = &protocol witness table for Int32;
        *(v27 + 32) = v28;
        os_log(_:dso:log:_:_:)();

        v29 = *v22;
        v30 = v81;
        CryptoError.init(rawValue:)();
        v31 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
        swift_allocError();
        v33 = v32;
        v34 = *(v31 - 8);
        v35 = *(v34 + 48);
        if (v35(v30, 1, v31) == 1)
        {
          (*(v34 + 104))(v33, enum case for CryptoError.unspecifiedError(_:), v31);
          if (v35(v30, 1, v31) != 1)
          {
            sub_100A80D74(v30);
          }
        }

        else
        {
          (*(v34 + 32))(v33, v30, v31);
        }

        result = swift_willThrow();
        v63 = DWORD2(v94) | ((WORD6(v94) | (BYTE14(v94) << 16)) << 32);
        *a6 = v94;
        *(a6 + 8) = v63;
        return result;
      }

LABEL_57:
      __break(1u);
      return result;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v24 == 2)
  {
    v36 = *a1;

    sub_100016590(v22, v23);
    *&v94 = v22;
    *(&v94 + 1) = v23 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    a6 = *(&v94 + 1);
    v22 = v94;
    v37 = *(v94 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_57;
    }

    if (__OFSUB__(v37, __DataStorage._offset.getter()))
    {
      __break(1u);
      goto LABEL_51;
    }

    v90 = v22;
    __DataStorage._length.getter();
    v38 = *v91;
    result = CCCKG2OwnerGenerateShare();
    v39 = v93;
    *v93 = result;
    if (result)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_101385D80;
      v41 = *v39;
      *(v40 + 56) = &type metadata for Int32;
      *(v40 + 64) = &protocol witness table for Int32;
      *(v40 + 32) = v41;
      os_log(_:dso:log:_:_:)();

      v42 = *v39;
      CryptoError.init(rawValue:)();
      v43 = type metadata accessor for CryptoError();
      sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
      swift_allocError();
      v45 = v44;
      v46 = *(v43 - 8);
      v47 = *(v46 + 48);
      if (v47(v14, 1, v43) == 1)
      {
        (*(v46 + 104))(v45, enum case for CryptoError.unspecifiedError(_:), v43);
        if (v47(v14, 1, v43) != 1)
        {
          sub_100A80D74(v14);
        }
      }

      else
      {
        (*(v46 + 32))(v45, v14, v43);
      }

      result = swift_willThrow();
    }

    *a1 = v90;
    a1[1] = a6 | 0x8000000000000000;
  }

  else
  {
    *(&v94 + 7) = 0;
    *&v94 = 0;
    v51 = *v91;
    result = CCCKG2OwnerGenerateShare();
    v52 = v93;
    *v93 = result;
    if (result)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_101385D80;
      v54 = *v52;
      *(v53 + 56) = &type metadata for Int32;
      *(v53 + 64) = &protocol witness table for Int32;
      *(v53 + 32) = v54;
      os_log(_:dso:log:_:_:)();

      v55 = *v52;
      CryptoError.init(rawValue:)();
      v56 = type metadata accessor for CryptoError();
      sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
      swift_allocError();
      v58 = v57;
      v59 = *(v56 - 8);
      v60 = *(v59 + 48);
      if (v60(v21, 1, v56) == 1)
      {
        (*(v59 + 104))(v58, enum case for CryptoError.unspecifiedError(_:), v56);
        if (v60(v21, 1, v56) != 1)
        {
          sub_100A80D74(v21);
        }
      }

      else
      {
        (*(v59 + 32))(v58, v21, v56);
      }

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100A7BFB8(uint64_t *a1, int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v89 = a3;
  v90 = a5;
  v9 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v78 - v15;
  v17 = __chkstk_darwin(v14);
  __chkstk_darwin(v17);
  v20 = &v78 - v19;
  v22 = *a1;
  v21 = a1[1];
  v23 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    v88 = a2;
    if (!v23)
    {
      v85 = a1;
      v86 = v5;
      v87 = a4;
      v78 = v18;
      v79 = v21 >> 8;
      v80 = v21 >> 16;
      v81 = v21 >> 24;
      v82 = HIDWORD(v21);
      v83 = v21 >> 40;
      v84 = HIWORD(v21);
      sub_100016590(v22, v21);
      *&v91 = v22;
      BYTE8(v91) = v21;
      BYTE9(v91) = v79;
      BYTE10(v91) = v80;
      BYTE11(v91) = v81;
      BYTE12(v91) = v82;
      BYTE13(v91) = v83;
      BYTE14(v91) = v84;
      v24 = *v89;
      result = CCCKGOwnerGenerateShare();
      v22 = v88;
      *v88 = result;
      if (!result)
      {
        v57 = DWORD2(v91) | ((WORD6(v91) | (BYTE14(v91) << 16)) << 32);
        v58 = v85;
        *v85 = v91;
        v58[1] = v57;
        return result;
      }

      static os_log_type_t.error.getter();
      a4 = v85;
      if (qword_101694BE0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_55;
    }

    v46 = v21 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100016590(v22, v21);
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    v47 = v22 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = v47 - v22;
      v87 = a4;
      if (v47 < v22)
      {
        __break(1u);
      }

      else
      {

        if (!__DataStorage._bytes.getter() || !__OFSUB__(v22, __DataStorage._offset.getter()))
        {
          v61 = type metadata accessor for __DataStorage();
          v62 = *(v61 + 48);
          v63 = *(v61 + 52);
          swift_allocObject();
          v64 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v46 = v64;
          a4 = v87;
          goto LABEL_37;
        }
      }

      __break(1u);
    }

LABEL_37:
    if (v47 >= v22)
    {
      v87 = v16;

      result = __DataStorage._bytes.getter();
      if (result)
      {
        a4 = v46;
        v65 = __DataStorage._offset.getter();
        v66 = v88;
        if (!__OFSUB__(v22, v65))
        {
          __DataStorage._length.getter();
          v67 = *v89;
          Share = CCCKGOwnerGenerateShare();
          *v66 = Share;
          if (Share)
          {
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v69 = swift_allocObject();
            *(v69 + 16) = xmmword_101385D80;
            v70 = *v66;
            *(v69 + 56) = &type metadata for Int32;
            *(v69 + 64) = &protocol witness table for Int32;
            *(v69 + 32) = v70;
            os_log(_:dso:log:_:_:)();

            v71 = *v66;
            v72 = v87;
            CryptoError.init(rawValue:)();
            v73 = type metadata accessor for CryptoError();
            sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
            v86 = swift_allocError();
            v75 = v74;
            v76 = *(v73 - 8);
            v77 = *(v76 + 48);
            if (v77(v72, 1, v73) == 1)
            {
              (*(v76 + 104))(v75, enum case for CryptoError.unspecifiedError(_:), v73);
              if (v77(v72, 1, v73) != 1)
              {
                sub_100A80D74(v72);
              }
            }

            else
            {
              (*(v76 + 32))(v75, v72, v73);
            }

            swift_willThrow();
          }

          v59 = v46 | 0x4000000000000000;
          goto LABEL_49;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        swift_once();
LABEL_5:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_101385D80;
        v27 = *v22;
        *(v26 + 56) = &type metadata for Int32;
        *(v26 + 64) = &protocol witness table for Int32;
        *(v26 + 32) = v27;
        os_log(_:dso:log:_:_:)();

        v28 = *v22;
        v29 = v78;
        CryptoError.init(rawValue:)();
        v30 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
        swift_allocError();
        v32 = v31;
        v33 = *(v30 - 8);
        v34 = *(v33 + 48);
        if (v34(v29, 1, v30) == 1)
        {
          (*(v33 + 104))(v32, enum case for CryptoError.unspecifiedError(_:), v30);
          if (v34(v29, 1, v30) != 1)
          {
            sub_100A80D74(v29);
          }
        }

        else
        {
          (*(v33 + 32))(v32, v29, v30);
        }

        result = swift_willThrow();
        v60 = DWORD2(v91) | ((WORD6(v91) | (BYTE14(v91) << 16)) << 32);
        *a4 = v91;
        *(a4 + 8) = v60;
        return result;
      }

LABEL_59:
      __break(1u);
      return result;
    }

    goto LABEL_53;
  }

  if (v23 == 2)
  {
    v35 = *a1;

    sub_100016590(v22, v21);
    *&v91 = v22;
    *(&v91 + 1) = v21 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    a4 = *(&v91 + 1);
    v22 = v91;
    v36 = *(v91 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_59;
    }

    if (!__OFSUB__(v36, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      v37 = *v89;
      result = CCCKGOwnerGenerateShare();
      *a2 = result;
      if (result)
      {
        v90 = v22;
        static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_101385D80;
        v39 = *a2;
        *(v38 + 56) = &type metadata for Int32;
        *(v38 + 64) = &protocol witness table for Int32;
        *(v38 + 32) = v39;
        os_log(_:dso:log:_:_:)();

        v40 = *a2;
        CryptoError.init(rawValue:)();
        v41 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
        swift_allocError();
        v43 = v42;
        v44 = *(v41 - 8);
        v45 = *(v44 + 48);
        if (v45(v13, 1, v41) == 1)
        {
          (*(v44 + 104))(v43, enum case for CryptoError.unspecifiedError(_:), v41);
          if (v45(v13, 1, v41) != 1)
          {
            sub_100A80D74(v13);
          }
        }

        else
        {
          (*(v44 + 32))(v43, v13, v41);
        }

        result = swift_willThrow();
        v59 = a4 | 0x8000000000000000;
        *a1 = v90;
        goto LABEL_50;
      }

      v59 = a4 | 0x8000000000000000;
LABEL_49:
      *a1 = v22;
LABEL_50:
      a1[1] = v59;
      return result;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(&v91 + 7) = 0;
  *&v91 = 0;
  v48 = *v89;
  result = CCCKGOwnerGenerateShare();
  *a2 = result;
  if (result)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_101385D80;
    v50 = *a2;
    *(v49 + 56) = &type metadata for Int32;
    *(v49 + 64) = &protocol witness table for Int32;
    *(v49 + 32) = v50;
    os_log(_:dso:log:_:_:)();

    v51 = *a2;
    CryptoError.init(rawValue:)();
    v52 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v54 = v53;
    v55 = *(v52 - 8);
    v56 = *(v55 + 48);
    if (v56(v20, 1, v52) == 1)
    {
      (*(v55 + 104))(v54, enum case for CryptoError.unspecifiedError(_:), v52);
      if (v56(v20, 1, v52) != 1)
      {
        sub_100A80D74(v20);
      }
    }

    else
    {
      (*(v55 + 32))(v54, v20, v52);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100A7CC24(uint64_t *a1, int *a2, int *a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v81 - v14;
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v19 = &v81 - v18;
  v21 = *a1;
  v20 = a1[1];
  v22 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    v91 = a2;
    if (!v22)
    {
      v92 = a1;
      v90 = a4;
      v82 = v17;
      v83 = HIBYTE(v21);
      v84 = v20 >> 8;
      v85 = v20 >> 16;
      v86 = v20 >> 24;
      v87 = HIDWORD(v20);
      v88 = v20 >> 40;
      v89 = HIWORD(v20);

      sub_100016590(v21, v20);
      LOWORD(v94) = v21;
      BYTE2(v94) = BYTE2(v21);
      BYTE3(v94) = BYTE3(v21);
      BYTE4(v94) = BYTE4(v21);
      BYTE5(v94) = BYTE5(v21);
      BYTE6(v94) = BYTE6(v21);
      BYTE7(v94) = v83;
      BYTE8(v94) = v20;
      BYTE9(v94) = v84;
      BYTE10(v94) = v85;
      BYTE11(v94) = v86;
      BYTE12(v94) = v87;
      BYTE13(v94) = v88;
      BYTE14(v94) = v89;
      v23 = *(a3 + 2);
      v24 = CCCKGContributorCommit();
      a4 = v91;
      *v91 = v24;
      if (!v24)
      {
        v56 = v94;
        v57 = DWORD2(v94) | ((WORD6(v94) | (BYTE14(v94) << 16)) << 32);

        v59 = v92;
        *v92 = v56;
        v59[1] = v57;
        return result;
      }

      static os_log_type_t.error.getter();
      v12 = v92;
      if (qword_101694BE0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_54;
    }

    v12 = v20 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100017D5C(v21, v20);
    sub_100016590(v21, v20);
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);

    v45 = v21 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = a4;
      v92 = (v45 - v21);
      if (v45 < v21)
      {
        __break(1u);
      }

      else
      {

        if (!__DataStorage._bytes.getter() || !__OFSUB__(v21, __DataStorage._offset.getter()))
        {
          v64 = type metadata accessor for __DataStorage();
          v65 = *(v64 + 48);
          v66 = *(v64 + 52);
          swift_allocObject();
          v67 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v12 = v67;
          a4 = v90;
          goto LABEL_38;
        }
      }

      __break(1u);
    }

LABEL_38:
    if (v45 >= v21)
    {
      v90 = a3;

      result = __DataStorage._bytes.getter();
      if (result)
      {
        a4 = v12;
        v68 = __DataStorage._offset.getter();
        v69 = v91;
        if (!__OFSUB__(v21, v68))
        {
          __DataStorage._length.getter();
          v70 = *(v90 + 2);
          v71 = CCCKGContributorCommit();
          *v69 = v71;
          if (v71)
          {
            v92 = a1;
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v72 = swift_allocObject();
            *(v72 + 16) = xmmword_101385D80;
            v73 = *v69;
            *(v72 + 56) = &type metadata for Int32;
            *(v72 + 64) = &protocol witness table for Int32;
            *(v72 + 32) = v73;
            os_log(_:dso:log:_:_:)();

            v74 = *v69;
            CryptoError.init(rawValue:)();
            v75 = type metadata accessor for CryptoError();
            sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
            v93 = swift_allocError();
            v77 = v76;
            v78 = *(v75 - 8);
            v79 = *(v78 + 48);
            if (v79(v15, 1, v75) == 1)
            {
              (*(v78 + 104))(v77, enum case for CryptoError.unspecifiedError(_:), v75);
              if (v79(v15, 1, v75) != 1)
              {
                sub_100A80D74(v15);
              }
            }

            else
            {
              (*(v78 + 32))(v77, v15, v75);
            }

            swift_willThrow();

            v80 = v92;
            *v92 = v21;
            v80[1] = v12 | 0x4000000000000000;
            return result;
          }

          v60 = v12 | 0x4000000000000000;
LABEL_48:
          *a1 = v21;
          a1[1] = v60;
          return result;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        swift_once();
LABEL_5:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_101385D80;
        v26 = *a4;
        *(v25 + 56) = &type metadata for Int32;
        *(v25 + 64) = &protocol witness table for Int32;
        *(v25 + 32) = v26;
        os_log(_:dso:log:_:_:)();

        v27 = *a4;
        v28 = v82;
        CryptoError.init(rawValue:)();
        v29 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
        swift_allocError();
        v31 = v30;
        v32 = *(v29 - 8);
        v33 = *(v32 + 48);
        if (v33(v28, 1, v29) == 1)
        {
          (*(v32 + 104))(v31, enum case for CryptoError.unspecifiedError(_:), v29);
          if (v33(v28, 1, v29) != 1)
          {
            sub_100A80D74(v28);
          }
        }

        else
        {
          (*(v32 + 32))(v31, v28, v29);
        }

        swift_willThrow();
        v61 = v94;
        v62 = DWORD2(v94) | ((WORD6(v94) | (BYTE14(v94) << 16)) << 32);

        *v12 = v61;
        *(v12 + 8) = v62;
        return result;
      }

LABEL_58:
      __break(1u);
      return result;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v22 == 2)
  {

    sub_100016590(v21, v20);
    *&v94 = v21;
    *(&v94 + 1) = v20 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    a4 = *(&v94 + 1);
    v21 = v94;
    v34 = *(v94 + 16);
    if (!__DataStorage._bytes.getter())
    {

      __break(1u);
      goto LABEL_58;
    }

    if (__OFSUB__(v34, __DataStorage._offset.getter()))
    {
      __break(1u);
      goto LABEL_52;
    }

    __DataStorage._length.getter();
    v35 = *(a3 + 2);
    v36 = CCCKGContributorCommit();
    *a2 = v36;
    if (!v36)
    {

      v60 = a4 | 0x8000000000000000;
      goto LABEL_48;
    }

    v92 = a1;
    v93 = v21;
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    v38 = *a2;
    *(v37 + 56) = &type metadata for Int32;
    *(v37 + 64) = &protocol witness table for Int32;
    *(v37 + 32) = v38;
    os_log(_:dso:log:_:_:)();

    v39 = *a2;
    CryptoError.init(rawValue:)();
    v40 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v42 = v41;
    v43 = *(v40 - 8);
    v44 = *(v43 + 48);
    if (v44(v12, 1, v40) == 1)
    {
      (*(v43 + 104))(v42, enum case for CryptoError.unspecifiedError(_:), v40);
      if (v44(v12, 1, v40) != 1)
      {
        sub_100A80D74(v12);
      }
    }

    else
    {
      (*(v43 + 32))(v42, v12, v40);
    }

    swift_willThrow();

    v63 = v92;
    *v92 = v93;
    v63[1] = a4 | 0x8000000000000000;
  }

  else
  {
    *(&v94 + 7) = 0;
    *&v94 = 0;
    v46 = *(a3 + 2);

    v47 = CCCKGContributorCommit();
    *a2 = v47;
    if (v47)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_101385D80;
      v49 = *a2;
      *(v48 + 56) = &type metadata for Int32;
      *(v48 + 64) = &protocol witness table for Int32;
      *(v48 + 32) = v49;
      os_log(_:dso:log:_:_:)();

      v50 = *a2;
      CryptoError.init(rawValue:)();
      v51 = type metadata accessor for CryptoError();
      sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
      swift_allocError();
      v53 = v52;
      v54 = *(v51 - 8);
      v55 = *(v54 + 48);
      if (v55(v19, 1, v51) == 1)
      {
        (*(v54 + 104))(v53, enum case for CryptoError.unspecifiedError(_:), v51);
        if (v55(v19, 1, v51) != 1)
        {
          sub_100A80D74(v19);
        }
      }

      else
      {
        (*(v54 + 32))(v53, v19, v51);
      }

      swift_willThrow();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100A7D930@<X0>(int *a1@<X0>, uint64_t a2@<X1>, int a3@<W4>, uint64_t *a4@<X8>)
{
  v44 = a2;
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v41 - v10;
  Data.InlineSlice.ensureUniqueReference()();
  v12 = *a1;
  if (a1[1] < v12)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
LABEL_6:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    *(v16 + 56) = &type metadata for Int32;
    *(v16 + 64) = &protocol witness table for Int32;
    *(v16 + 32) = a3;
    os_log(_:dso:log:_:_:)();

    CryptoError.init(rawValue:)();
    v17 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v19 = v18;
    v20 = *(v17 - 8);
    v21 = *(v20 + 48);
    if (v21(v11, 1, v17) == 1)
    {
      (*(v20 + 104))(v19, enum case for CryptoError.unspecifiedError(_:), v17);
      if (v21(v11, 1, v17) != 1)
      {
        sub_100A80D74(v11);
      }
    }

    else
    {
      (*(v20 + 32))(v19, v11, v17);
    }

    goto LABEL_17;
  }

  v13 = *(a1 + 1);

  if (!__DataStorage._bytes.getter())
  {
    __break(1u);
  }

  if (__OFSUB__(v12, __DataStorage._offset.getter()))
  {
    goto LABEL_23;
  }

  __DataStorage._length.getter();
  v45 = 0;
  v14 = *(v44 + 16);
  v15 = CCCKGOwnerFinish();
  if (v15)
  {
    a3 = v15;
    static os_log_type_t.error.getter();
    if (qword_101694BE0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v22 = v45;
  if (v45)
  {
    PublicKeyFromPrivateKey = CCECCryptorGetPublicKeyFromPrivateKey();
    if (PublicKeyFromPrivateKey)
    {
      v24 = PublicKeyFromPrivateKey;
      v25 = sub_100A7829C(v22, 1);
      if (!v4)
      {
        v27 = v25;
        v28 = v26;
        v29 = sub_100A7829C(v24, 0);
        v31 = v30;
        sub_100017D5C(v27, v28);
        v42 = sub_10049BD68(v27, v28);
        v43 = v35;
        v36 = sub_10049C0AC(v29, v31);
        v37 = v27;
        v39 = v38;
        sub_100016590(v37, v28);
        v40 = v43;
        *a4 = v42;
        a4[1] = v40;
        a4[2] = v36;
        a4[3] = v39;
      }

      CCECCryptorRelease();
      if (v45)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v32 = type metadata accessor for CryptoError();
  sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
  swift_allocError();
  (*(*(v32 - 8) + 104))(v33, enum case for CryptoError.invalidKey(_:), v32);
LABEL_17:
  swift_willThrow();
  if (v45)
  {
LABEL_18:
    CCECCryptorRelease();
  }

LABEL_19:
}

uint64_t sub_100A7DE80@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v43 = a2;
  v7 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - v9;
  Data.InlineSlice.ensureUniqueReference()();
  v11 = *a1;
  if (a1[1] < v11)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
LABEL_6:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    *(v15 + 56) = &type metadata for Int;
    *(v15 + 64) = &protocol witness table for Int;
    *(v15 + 32) = v4;
    os_log(_:dso:log:_:_:)();

    CryptoError.init(rawValue:)();
    v16 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v18 = v17;
    v19 = *(v16 - 8);
    v20 = *(v19 + 48);
    if (v20(v10, 1, v16) == 1)
    {
      (*(v19 + 104))(v18, enum case for CryptoError.unspecifiedError(_:), v16);
      if (v20(v10, 1, v16) != 1)
      {
        sub_100A80D74(v10);
      }
    }

    else
    {
      (*(v19 + 32))(v18, v10, v16);
    }

    goto LABEL_17;
  }

  v12 = *(a1 + 1);

  if (!__DataStorage._bytes.getter())
  {
    __break(1u);
  }

  if (__OFSUB__(v11, __DataStorage._offset.getter()))
  {
    goto LABEL_23;
  }

  __DataStorage._length.getter();
  v44 = 0;
  v13 = *(v43 + 16);
  v14 = CCCKG2OwnerFinish();
  if (v14)
  {
    v4 = v14;
    static os_log_type_t.error.getter();
    if (qword_101694BE0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v21 = v44;
  if (v44)
  {
    PublicKeyFromPrivateKey = CCECCryptorGetPublicKeyFromPrivateKey();
    if (PublicKeyFromPrivateKey)
    {
      v23 = PublicKeyFromPrivateKey;
      v24 = sub_100A7829C(v21, 1);
      if (!v3)
      {
        v26 = v24;
        v27 = v25;
        v28 = sub_100A7829C(v23, 0);
        v30 = v29;
        sub_100017D5C(v26, v27);
        v41 = sub_10049BD68(v26, v27);
        v42 = v34;
        v35 = sub_10049C0AC(v28, v30);
        v36 = v26;
        v38 = v37;
        sub_100016590(v36, v27);
        v39 = v42;
        *a3 = v41;
        a3[1] = v39;
        a3[2] = v35;
        a3[3] = v38;
      }

      CCECCryptorRelease();
      if (v44)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v31 = type metadata accessor for CryptoError();
  sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, enum case for CryptoError.invalidKey(_:), v31);
LABEL_17:
  swift_willThrow();
  if (v44)
  {
LABEL_18:
    CCECCryptorRelease();
  }

LABEL_19:
}

BOOL sub_100A7E3CC(__int128 *a1, __int128 *a2)
{
  v24 = *a1;
  v23 = *a2;
  v4 = v24;
  v5 = v23;
  if (*(&v24 + 1) >> 60 == 15)
  {
    if (*(&v23 + 1) >> 60 == 15)
    {
      sub_1000D2A70(&v24, &v22, &qword_1016B4810, &qword_1013D5A60);
      sub_1000D2A70(&v23, &v22, &qword_1016B4810, &qword_1013D5A60);
      sub_100006654(v4, *(&v4 + 1));
      goto LABEL_8;
    }

LABEL_5:
    sub_1000D2A70(&v24, &v22, &qword_1016B4810, &qword_1013D5A60);
    sub_1000D2A70(&v23, &v22, &qword_1016B4810, &qword_1013D5A60);
    sub_100006654(v4, *(&v4 + 1));
    v7 = *(&v5 + 1);
    v6 = v5;
LABEL_6:
    sub_100006654(v6, v7);
    return 0;
  }

  if (*(&v23 + 1) >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1000D2A70(&v24, &v22, &qword_1016B4810, &qword_1013D5A60);
  sub_1000D2A70(&v23, &v22, &qword_1016B4810, &qword_1013D5A60);
  sub_10002E98C(v4, *(&v4 + 1));
  sub_10002E98C(v5, *(&v5 + 1));
  v8 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v4, *(&v4 + 1), v5, *(&v5 + 1));
  sub_100006654(v5, *(&v5 + 1));
  sub_100006654(v5, *(&v5 + 1));
  sub_100006654(v4, *(&v4 + 1));
  sub_100006654(v4, *(&v4 + 1));
  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v9 = a1[1];
  v21 = a2[1];
  v22 = v9;
  v11 = *(&v9 + 1);
  v10 = v9;
  v12 = v21;
  sub_10012C094(&v22, &v20);
  sub_10012C094(&v21, &v20);
  LOBYTE(v10) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v10, v11, v12, *(&v12 + 1));
  sub_100A80E80(&v21);
  sub_100A80E80(&v22);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v13 = a1[2];
  v19 = a2[2];
  v20 = v13;
  v14 = v13;
  v15 = v19;
  if (*(&v13 + 1) >> 60 == 15)
  {
    if (*(&v19 + 1) >> 60 == 15)
    {
      sub_1000D2A70(&v20, v18, &qword_1016B4818, &qword_1013D5A68);
      sub_1000D2A70(&v19, v18, &qword_1016B4818, &qword_1013D5A68);
      sub_100006654(v14, *(&v14 + 1));
      return 1;
    }

    goto LABEL_13;
  }

  if (*(&v19 + 1) >> 60 == 15)
  {
LABEL_13:
    sub_1000D2A70(&v20, v18, &qword_1016B4818, &qword_1013D5A68);
    sub_1000D2A70(&v19, v18, &qword_1016B4818, &qword_1013D5A68);
    sub_100006654(v14, *(&v14 + 1));
    v7 = *(&v15 + 1);
    v6 = v15;
    goto LABEL_6;
  }

  sub_1000D2A70(&v20, v18, &qword_1016B4818, &qword_1013D5A68);
  sub_1000D2A70(&v19, v18, &qword_1016B4818, &qword_1013D5A68);
  sub_10002E98C(v14, *(&v14 + 1));
  sub_10002E98C(v15, *(&v15 + 1));
  v17 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v14, *(&v14 + 1), v15, *(&v15 + 1));
  sub_100006654(v15, *(&v15 + 1));
  sub_100006654(v14, *(&v14 + 1));
  sub_100006654(v15, *(&v15 + 1));
  sub_100006654(v14, *(&v14 + 1));
  return (v17 & 1) != 0;
}

uint64_t sub_100A7ED3C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      memset(v32, 0, 14);
      return sub_100A7E758(a3, a4, v32, a5, a6, a7);
    }

    v14 = *(a1 + 16);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a5, a6);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v18 = v14 - v17 + v16;
      __DataStorage._length.getter();
      if (v18)
      {
        sub_100017D5C(a5, a6);
        v19 = sub_100A7E758(a3, a4, v18, a5, a6, a7);
        if (!v7)
        {
          v31 = v19;
          sub_100016590(a5, a6);
          sub_100016590(a5, a6);
          sub_100016590(a5, a6);
          sub_100016590(a5, a6);
          return v31;
        }

        sub_100016590(a5, a6);
        goto LABEL_20;
      }

LABEL_19:
      v29 = type metadata accessor for CryptoError();
      sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, enum case for CryptoError.memoryFailure(_:), v29);
      swift_willThrow();
LABEL_20:
      sub_100016590(a5, a6);
      sub_100016590(a5, a6);
      return sub_100016590(a5, a6);
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (!v11)
  {
    v32[0] = a1;
    LOWORD(v32[1]) = a2;
    BYTE2(v32[1]) = BYTE2(a2);
    BYTE3(v32[1]) = BYTE3(a2);
    BYTE4(v32[1]) = BYTE4(a2);
    BYTE5(v32[1]) = BYTE5(a2);
    return sub_100A7E758(a3, a4, v32, a5, a6, a7);
  }

  v20 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_100017D5C(a5, a6);
  sub_100017D5C(a5, a6);
  sub_100017D5C(a5, a6);
  v23 = __DataStorage._bytes.getter();
  if (!v23)
  {
LABEL_18:
    __DataStorage._length.getter();
    goto LABEL_19;
  }

  v24 = v23;
  v25 = __DataStorage._offset.getter();
  if (__OFSUB__(v20, v25))
  {
    goto LABEL_25;
  }

  v26 = v20 - v25 + v24;
  __DataStorage._length.getter();
  if (!v26)
  {
    goto LABEL_19;
  }

  sub_100017D5C(a5, a6);
  v27 = sub_100A7E758(a3, a4, v26, a5, a6, a7);
  sub_100016590(a5, a6);
  sub_100016590(a5, a6);
  sub_100016590(a5, a6);
  result = sub_100016590(a5, a6);
  if (!v7)
  {
    return v27;
  }

  return result;
}

uint64_t sub_100A7F110(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v44 = 0;
      memset(v45, 0, 14);
      v31 = a4 >> 62;
      if ((a4 >> 62) <= 1)
      {
        if (v31)
        {
          if (__OFSUB__(HIDWORD(a3), a3))
          {
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
          }

          v22 = HIDWORD(a3) - a3;
        }

        else
        {
          v22 = BYTE6(a4);
        }

        goto LABEL_42;
      }

LABEL_32:
      v22 = 0;
      if (v31 == 2)
      {
        v34 = *(a3 + 16);
        v33 = *(a3 + 24);
        v22 = v33 - v34;
        if (__OFSUB__(v33, v34))
        {
          __break(1u);
LABEL_36:
          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            goto LABEL_37;
          }

          goto LABEL_66;
        }
      }

LABEL_42:
      sub_100017D5C(a3, a4);
      sub_100017D5C(a5, a6);
      sub_100017D5C(a3, a4);
      sub_100017D5C(a5, a6);
      if (CCKDFParametersCreateAnsiX963())
      {
        v22 = 4294962996;
LABEL_58:
        sub_100016590(a3, a4);
        sub_100016590(a5, a6);
        goto LABEL_59;
      }

      sub_100017D5C(a5, a6);
      v39 = sub_100A7ED3C(a5, a6, a7, &v44, a5, a6, a8);
      if (!v8)
      {
        v22 = v39;
LABEL_57:
        sub_100016590(a5, a6);
        goto LABEL_58;
      }

      goto LABEL_27;
    }

    v42 = a8;
    v43 = v8;
    v17 = *(a1 + 16);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a3, a4);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a3, a4);
    sub_100017D5C(a5, a6);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (__OFSUB__(v17, v20))
    {
      goto LABEL_64;
    }

    v21 = v17 - v20 + v19;
    a1 = __DataStorage._length.getter();
    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = a7;
    v45[0] = 0;
    v23 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v9 = v8;
      if (v23 != 2)
      {
        goto LABEL_55;
      }

      v30 = *(a3 + 24);
      if (!__OFSUB__(v30, *(a3 + 16)))
      {
        goto LABEL_55;
      }

      __break(1u);
      goto LABEL_50;
    }

    v9 = v8;
    if (!v23 || !__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_55;
    }

    __break(1u);
LABEL_15:
    v43 = v9;
    v24 = a1;
    if (a1 <= a1 >> 32)
    {
      v25 = a7;
      v42 = a8;
      sub_100017D5C(a5, a6);
      sub_100017D5C(a3, a4);
      sub_100017D5C(a5, a6);
      sub_100017D5C(a3, a4);
      sub_100017D5C(a5, a6);
      v26 = __DataStorage._bytes.getter();
      if (v26)
      {
        v27 = v26;
        v28 = __DataStorage._offset.getter();
        if (!__OFSUB__(v24, v28))
        {
          v29 = v24 - v28 + v27;
          __DataStorage._length.getter();
          if (v29)
          {
            v22 = v25;
            v45[0] = 0;
            v30 = a4 >> 62;
            if ((a4 >> 62) <= 1)
            {
              v9 = v43;
              if (!v30)
              {
LABEL_55:
                if (CCKDFParametersCreateAnsiX963())
                {
                  v22 = 4294962996;
                  goto LABEL_57;
                }

                sub_100017D5C(a5, a6);
                v41 = sub_100A7ED3C(a5, a6, v22, v45, a5, a6, v42);
                if (!v9)
                {
                  v22 = v41;
                  sub_100016590(a5, a6);
                  goto LABEL_57;
                }

                sub_100016590(a5, a6);
LABEL_27:
                sub_100016590(a5, a6);
                sub_100016590(a3, a4);
                sub_100016590(a5, a6);
                goto LABEL_59;
              }

LABEL_54:
              if (__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_68;
              }

              goto LABEL_55;
            }

LABEL_50:
            v9 = v43;
            if (v30 != 2 || !__OFSUB__(*(a3 + 24), *(a3 + 16)))
            {
              goto LABEL_55;
            }

            __break(1u);
            goto LABEL_54;
          }

LABEL_26:
          v22 = type metadata accessor for CryptoError();
          sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
          swift_allocError();
          (*(*(v22 - 8) + 104))(v32, enum case for CryptoError.memoryFailure(_:), v22);
          swift_willThrow();
          goto LABEL_27;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_25:
      __DataStorage._length.getter();
      goto LABEL_26;
    }

    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v14)
  {
    goto LABEL_15;
  }

  v45[0] = a1;
  LOWORD(v45[1]) = a2;
  BYTE2(v45[1]) = BYTE2(a2);
  BYTE3(v45[1]) = BYTE3(a2);
  BYTE4(v45[1]) = BYTE4(a2);
  BYTE5(v45[1]) = BYTE5(a2);
  v15 = a4 >> 62;
  v44 = 0;
  if ((a4 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_37;
    }

    v31 = *(a3 + 24);
    if (!__OFSUB__(v31, *(a3 + 16)))
    {
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (v15)
  {
    goto LABEL_36;
  }

LABEL_37:
  sub_100017D5C(a3, a4);
  sub_100017D5C(a5, a6);
  sub_100017D5C(a3, a4);
  sub_100017D5C(a5, a6);
  if (CCKDFParametersCreateAnsiX963())
  {
    sub_100016590(a3, a4);
    sub_100016590(a5, a6);
    v22 = 4294962996;
  }

  else
  {
    sub_100017D5C(a5, a6);
    v22 = sub_100A7ED3C(a5, a6, a7, &v44, a5, a6, a8);
    sub_100016590(a5, a6);
    sub_100016590(a3, a4);
    sub_100016590(a5, a6);
  }

LABEL_59:
  sub_100016590(a3, a4);
  sub_100016590(a5, a6);
  return v22;
}

uint64_t sub_100A7F75C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v37 - v5;
  v45 = 0;
  v46 = 0;
  Pair = CCECCryptorGeneratePair();
  if (Pair)
  {
    v8 = Pair;
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_101385D80;
    *(v9 + 56) = &type metadata for Int32;
    *(v9 + 64) = &protocol witness table for Int32;
    *(v9 + 32) = v8;
    os_log(_:dso:log:_:_:)();

    CryptoError.init(rawValue:)();
    v10 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    v12 = v11;
    v13 = *(v10 - 8);
    v14 = *(v13 + 48);
    if (v14(v6, 1, v10) == 1)
    {
      (*(v13 + 104))(v12, enum case for CryptoError.unspecifiedError(_:), v10);
      if (v14(v6, 1, v10) != 1)
      {
        sub_100A80D74(v6);
      }
    }

    else
    {
      (*(v13 + 32))(v12, v6, v10);
    }

    return swift_willThrow();
  }

  if (!v45)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v23 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for CryptoError.invalidKey(_:), v23);
    return swift_willThrow();
  }

  v15 = sub_100A7829C(v45, 1);
  if (!v1)
  {
    v17 = v15;
    v43 = v16;
    if (v46)
    {
      v41 = sub_100A7829C(v46, 0);
      v42 = v18;
      v19 = static Data.random(bytes:)();
      v21 = v20;
      v22 = v43;
      sub_100017D5C(v17, v43);
      v27 = v19;
      v39 = sub_10049BD68(v17, v22);
      v40 = v28;
      v30 = v41;
      v29 = v42;
      sub_100017D5C(v41, v42);
      v37 = sub_10049C0AC(v30, v29);
      v38 = v31;
      sub_1004A4714(v27, v21, v44);
      sub_100016590(v30, v29);
      v32 = v44[0];
      v33 = v44[1];
      CCECCryptorRelease();
      sub_100016590(v17, v43);
      result = CCECCryptorRelease();
      v35 = v38;
      *a1 = v37;
      a1[1] = v35;
      v36 = v40;
      a1[2] = v39;
      a1[3] = v36;
      a1[4] = v32;
      a1[5] = v33;
      return result;
    }

    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v25 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for CryptoError.invalidKey(_:), v25);
    swift_willThrow();
    sub_100016590(v17, v43);
  }

  return CCECCryptorRelease();
}

uint64_t sub_100A7FDBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B4858, &qword_1013D6088);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A8124C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v25) = 0;
  sub_100A812A0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v31;
  v24 = v30;
  v12 = v32;
  v43 = 1;
  sub_100A812F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v40;
  v23 = v39;
  v14 = *(&v40 + 1);
  v22 = *(&v41 + 1);
  v15 = v41;
  v21 = v42;
  v16 = v24;
  *&v25 = v24;
  *(&v25 + 1) = v11;
  *&v26 = v12;
  *(&v26 + 1) = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  sub_100A81348(&v25, &v30);
  sub_100007BAC(a1);
  v30 = v16;
  v31 = v11;
  v32 = v12;
  v33 = v23;
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v37 = v22;
  v38 = v21;
  result = sub_100A81380(&v30);
  v18 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v18;
  *(a2 + 64) = v29;
  v19 = v26;
  *a2 = v25;
  *(a2 + 16) = v19;
  return result;
}

uint64_t sub_100A8008C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656D7265746E69 && a2 == 0xEF79654B65746169;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100A801BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B47F8, &qword_1013D5A50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A80ED4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  sub_10049F434();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = a2;
  v12 = v23;
  v11 = v24;
  v25 = 1;
  sub_10049E3BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v23;
  v21 = v24;
  v25 = 2;
  sub_10049DECC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v23;
  v14 = v24;
  sub_10002E98C(v12, v11);
  v16 = v20;
  v15 = v21;
  sub_100017D5C(v20, v21);
  sub_10002E98C(v13, v14);
  sub_100007BAC(a1);
  sub_100006654(v12, v11);
  sub_100016590(v16, v15);
  result = sub_100006654(v13, v14);
  v18 = v22;
  *v22 = v12;
  v18[1] = v11;
  v18[2] = v16;
  v18[3] = v15;
  v18[4] = v13;
  v18[5] = v14;
  return result;
}

uint64_t sub_100A80484(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B4890, &qword_1013D6098);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100A814C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[16] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[15] = 1;
    sub_100313070();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

uint64_t sub_100A80648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654B63696C627570 && a2 == 0xE900000000000079;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100A80774@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B4820, &qword_1013D5A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100A789D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  sub_10049E3BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = a2;
  v12 = v23;
  v11 = v24;
  v25 = 1;
  sub_10049DECC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v23;
  v21 = v24;
  v25 = 2;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v23;
  v14 = v24;
  sub_100017D5C(v12, v11);
  v16 = v20;
  v15 = v21;
  sub_100017D5C(v20, v21);
  sub_100017D5C(v13, v14);
  sub_100007BAC(a1);
  sub_100016590(v12, v11);
  sub_100016590(v16, v15);
  result = sub_100016590(v13, v14);
  v18 = v22;
  *v22 = v12;
  v18[1] = v11;
  v18[2] = v16;
  v18[3] = v15;
  v18[4] = v13;
  v18[5] = v14;
  return result;
}

uint64_t sub_100A80B0C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A80B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100A80B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100A80C18()
{
  result = qword_1016B47D0;
  if (!qword_1016B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B47D0);
  }

  return result;
}

unint64_t sub_100A80C70()
{
  result = qword_1016B47D8;
  if (!qword_1016B47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B47D8);
  }

  return result;
}

unint64_t sub_100A80CC8()
{
  result = qword_1016B47E0;
  if (!qword_1016B47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B47E0);
  }

  return result;
}

unint64_t sub_100A80D20()
{
  result = qword_1016B47E8;
  if (!qword_1016B47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B47E8);
  }

  return result;
}

uint64_t sub_100A80D74(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A80DDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100A80ED4()
{
  result = qword_1016B4800;
  if (!qword_1016B4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4800);
  }

  return result;
}

uint64_t sub_100A80F78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100A80FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100A81040()
{
  result = qword_1016B4828;
  if (!qword_1016B4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4828);
  }

  return result;
}

unint64_t sub_100A81098()
{
  result = qword_1016B4830;
  if (!qword_1016B4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4830);
  }

  return result;
}

unint64_t sub_100A810F0()
{
  result = qword_1016B4838;
  if (!qword_1016B4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4838);
  }

  return result;
}

unint64_t sub_100A81148()
{
  result = qword_1016B4840;
  if (!qword_1016B4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4840);
  }

  return result;
}

unint64_t sub_100A811A0()
{
  result = qword_1016B4848;
  if (!qword_1016B4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4848);
  }

  return result;
}

unint64_t sub_100A811F8()
{
  result = qword_1016B4850;
  if (!qword_1016B4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4850);
  }

  return result;
}

unint64_t sub_100A8124C()
{
  result = qword_1016B4860;
  if (!qword_1016B4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4860);
  }

  return result;
}

unint64_t sub_100A812A0()
{
  result = qword_1016B4868;
  if (!qword_1016B4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4868);
  }

  return result;
}

unint64_t sub_100A812F4()
{
  result = qword_1016B4870;
  if (!qword_1016B4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4870);
  }

  return result;
}

unint64_t sub_100A813E8()
{
  result = qword_1016B4880;
  if (!qword_1016B4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4880);
  }

  return result;
}

unint64_t sub_100A81474()
{
  result = qword_1016B4888;
  if (!qword_1016B4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4888);
  }

  return result;
}

unint64_t sub_100A814C8()
{
  result = qword_1016B4898;
  if (!qword_1016B4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4898);
  }

  return result;
}

unint64_t sub_100A81540()
{
  result = qword_1016B48A8;
  if (!qword_1016B48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48A8);
  }

  return result;
}

unint64_t sub_100A81598()
{
  result = qword_1016B48B0;
  if (!qword_1016B48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48B0);
  }

  return result;
}

unint64_t sub_100A815F0()
{
  result = qword_1016B48B8;
  if (!qword_1016B48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48B8);
  }

  return result;
}

unint64_t sub_100A81648()
{
  result = qword_1016B48C0;
  if (!qword_1016B48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48C0);
  }

  return result;
}

unint64_t sub_100A816A0()
{
  result = qword_1016B48C8;
  if (!qword_1016B48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48C8);
  }

  return result;
}

unint64_t sub_100A816F8()
{
  result = qword_1016B48D0;
  if (!qword_1016B48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48D0);
  }

  return result;
}

uint64_t sub_100A8175C(void *a1, char a2)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v9 = a2;
  sub_100680B90();
  v6 = FixedWidthInteger.data.getter();
  v7 = v4;
  sub_10015049C(v8, v8[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v6, v7);
  return sub_100007BAC(v8);
}

uint64_t sub_100A81828@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100A818F4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100A81854(uint64_t a1)
{
  *(a1 + 8) = sub_100A81884();
  result = sub_10030FC80();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100A81884()
{
  result = qword_1016B48D8;
  if (!qword_1016B48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48D8);
  }

  return result;
}

uint64_t sub_100A818F4(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v15, v15[3]);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_100017D5C(v7, v8);
    static Endianness.current.getter();
    sub_100680B90();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v14 != 1)
    {
      v6 = v13;
      sub_100016590(v9, v10);
      sub_100007BAC(v15);
      sub_100007BAC(a1);
      return v6;
    }

    v6 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v11, enum case for BinaryDecodingError.decodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v9, v10);
  }

  sub_100007BAC(v15);
  sub_100007BAC(a1);
  return v6;
}

uint64_t sub_100A81AC4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v30 = type metadata accessor for UUID();
  v3 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 56);
  v24 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v23 = (v7 + 63) >> 6;
  v28 = v4 + 16;
  v29 = v4;
  v26 = v4 + 8;
  v31 = a1;

  v11 = 0;
  for (i = xmmword_101385D80; v9; result = v21(v33, v14))
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v30;
    v15 = v29;
    v16 = *(v31 + 48) + *(v29 + 72) * (v13 | (v12 << 6));
    v32 = *(v29 + 16);
    v17 = v33;
    v32(v33, v16, v30);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = i;
    v32((v19 + v18), v17, v14);
    v20 = sub_10000954C(v19);
    swift_setDeallocating();
    v21 = *(v15 + 8);
    v21((v19 + v18), v14);
    swift_deallocClassInstance();
    sub_100DEEB44(&v34, v20);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v23)
    {
    }

    v9 = *(v24 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100A81D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v182 = a3;
  v160 = a4;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v152 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v168 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v188 = &v152 - v16;
  __chkstk_darwin(v15);
  v18 = &v152 - v17;
  v19 = type metadata accessor for StableIdentifier();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v171 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v152 - v24;
  v26 = __chkstk_darwin(v23);
  v169 = &v152 - v27;
  v28 = __chkstk_darwin(v26);
  v163 = &v152 - v29;
  v30 = __chkstk_darwin(v28);
  v31 = __chkstk_darwin(v30);
  v159 = &v152 - v32;
  v33 = __chkstk_darwin(v31);
  v157 = &v152 - v34;
  v35 = __chkstk_darwin(v33);
  v156 = &v152 - v36;
  v37 = __chkstk_darwin(v35);
  v155 = &v152 - v38;
  result = __chkstk_darwin(v37);
  v41 = &v152 - v40;
  v42 = 0;
  v178 = &v152 - v40 + 8;
  v153 = v43 + 8;
  v44 = a1[1];
  v165 = *a1;
  v161 = v44;
  v192 = (v11 + 8);
  v177 = (v11 + 48);
  v175 = (v11 + 32);
  v172 = v11;
  v187 = (v11 + 16);
  v45 = a1[3];
  v166 = a1[2];
  v162 = v45;
  v154 = v46 + 8;
  v47 = a1[5];
  v181 = a1[4];
  v167 = v25 + 8;
  v180 = a2;
  v48 = *(a2 + 16);
  v176 = &v152 - v40;
  v173 = result;
  v174 = v9;
  v189 = v10;
  v190 = v18;
  v170 = v25;
  v158 = v46;
  v179 = v48;
  while (2)
  {
    v164 = v47;
LABEL_5:
    while (2)
    {
      v50 = v42;
      if (v42 == v48)
      {
        goto LABEL_77;
      }

      while (1)
      {
        if (v50 >= v48)
        {
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        result = type metadata accessor for OwnedBeaconRecord();
        v51 = *(*(result - 8) + 80);
        v52 = *(*(result - 8) + 72);
        if (__OFADD__(v50, 1))
        {
          goto LABEL_79;
        }

        v184 = v50 + 1;
        v185 = result;
        v53 = v180 + ((v51 + 32) & ~v51) + v52 * v50;
        v183 = *(result + 24);
        sub_100022A54(v53 + v183, v41, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v186 = v53;
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v55 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
            v56 = v178;
            v57 = *&v178[v55[12]];

            v58 = *&v56[v55[16]];

            v59 = *&v56[v55[20]];

            v60 = v55[28];
            goto LABEL_12;
          }

          sub_100022C40(v41, type metadata accessor for StableIdentifier);
          v117 = v183;
          v118 = v53 + v183;
          v119 = v155;
          sub_100022A54(v118, v155, type metadata accessor for StableIdentifier);
          v120 = swift_getEnumCaseMultiPayload();
          v121 = v119;
          v122 = v186;
          sub_100022C40(v121, type metadata accessor for StableIdentifier);
          v138 = v120 == 1;
          v41 = v176;
          if (!v138)
          {
            sub_100022A54(v122 + v117, v156, type metadata accessor for StableIdentifier);
            v123 = swift_getEnumCaseMultiPayload();
            if (v123 == 2)
            {
              v139 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
              v126 = v153;
              v140 = *(v153 + v139[12]);

              v141 = *(v126 + v139[16]);

              v142 = *(v126 + v139[20]);

              v129 = v139[28];
            }

            else
            {
              v124 = v156;
              if (v123 != 3)
              {
                goto LABEL_70;
              }

              v125 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
              v126 = v153;
              v127 = *(v153 + v125[12]);

              v128 = *(v126 + v125[16]);

              v129 = v125[20];
            }

            v143 = *(v126 + v129);

            (*v192)(v156, v10);
            v122 = v186;
            v117 = v183;
          }

          v144 = v122 + v117;
          v145 = v122;
          v124 = v157;
          sub_100022A54(v144, v157, type metadata accessor for StableIdentifier);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100022C40(v157, type metadata accessor for StableIdentifier);
            v146 = (v145 + v185[15]);
            result = *v146;
            v147 = *v146 == 0x3830332E302E32 && v146[1] == 0xE700000000000000;
            if (v147 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
              v49 = __OFADD__(v161++, 1);
              v42 = v184;
              v48 = v179;
              if (!v49)
              {
                goto LABEL_5;
              }

              goto LABEL_84;
            }

            goto LABEL_71;
          }

LABEL_70:
          result = sub_100022C40(v124, type metadata accessor for StableIdentifier);
LABEL_71:
          v49 = __OFADD__(v165++, 1);
          v42 = v184;
          v48 = v179;
          if (!v49)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        }

        v61 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v56 = v178;
        v62 = *&v178[v61[12]];

        v63 = *&v56[v61[16]];

        v60 = v61[20];
LABEL_12:
        v64 = *&v56[v60];

        v191 = *v192;
        v191(v41, v10);
        v65 = v186;
        if (*(v186 + v185[16]) != 76)
        {
          v102 = v183;
          v103 = v159;
          sub_100022A54(v186 + v183, v159, type metadata accessor for StableIdentifier);
          v104 = swift_getEnumCaseMultiPayload();
          v105 = v103;
          v106 = v186;
          sub_100022C40(v105, type metadata accessor for StableIdentifier);
          v107 = v102;
          if (v104 != 1)
          {
            v108 = v158;
            sub_100022A54(v106 + v102, v158, type metadata accessor for StableIdentifier);
            v109 = swift_getEnumCaseMultiPayload();
            if (v109 == 2)
            {
              v130 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
              v113 = v154;
              v131 = *(v154 + v130[12]);

              v132 = *(v113 + v130[16]);

              v133 = *(v113 + v130[20]);

              v116 = v130[28];
            }

            else
            {
              v110 = v109;
              v111 = v108;
              if (v110 != 3)
              {
                goto LABEL_55;
              }

              v112 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
              v113 = v154;
              v114 = *(v154 + v112[12]);

              v115 = *(v113 + v112[16]);

              v116 = v112[20];
            }

            v134 = *(v113 + v116);

            v191(v158, v10);
            v106 = v186;
            v107 = v183;
          }

          v135 = v163;
          sub_100022A54(v106 + v107, v163, type metadata accessor for StableIdentifier);
          v136 = swift_getEnumCaseMultiPayload();
          v111 = v135;
          if (v136 == 1)
          {
            sub_100022C40(v163, type metadata accessor for StableIdentifier);
            v137 = (v106 + v185[15]);
            result = *v137;
            v138 = *v137 == 0x3830332E302E32 && v137[1] == 0xE700000000000000;
            if (v138 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
              v49 = __OFADD__(v162++, 1);
              v42 = v184;
              v48 = v179;
              if (!v49)
              {
                goto LABEL_5;
              }

              goto LABEL_83;
            }

            goto LABEL_56;
          }

LABEL_55:
          result = sub_100022C40(v111, type metadata accessor for StableIdentifier);
LABEL_56:
          v49 = __OFADD__(v166++, 1);
          v42 = v184;
          v48 = v179;
          if (!v49)
          {
            goto LABEL_5;
          }

          goto LABEL_81;
        }

        sub_1000D2A70(v186 + v185[7], v9, &qword_1016980D0, &unk_10138F3B0);
        if ((*v177)(v9, 1, v10) == 1)
        {
          v81 = v10;
          sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
          goto LABEL_24;
        }

        (*v175)(v18, v9, v10);
        v66 = *v182;
        if (!*(*v182 + 16))
        {
          goto LABEL_23;
        }

        v67 = *(v66 + 40);
        sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);

        v68 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v69 = -1 << *(v66 + 32);
        v70 = v68 & ~v69;
        if (((*(v66 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
        {
          break;
        }

        v71 = ~v69;
        v72 = *(v172 + 72);
        v73 = *(v172 + 16);
        while (1)
        {
          v75 = v188;
          v74 = v189;
          v73(v188, *(v66 + 48) + v72 * v70, v189);
          sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
          v76 = dispatch thunk of static Equatable.== infix(_:_:)();
          v191(v75, v74);
          if (v76)
          {
            break;
          }

          v70 = (v70 + 1) & v71;
          if (((*(v66 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v10 = v189;
        v18 = v190;
        result = (v191)(v190, v189);
        v50 = v184;
        v48 = v179;
        v9 = v174;
        v41 = v176;
        if (v184 == v179)
        {
          goto LABEL_77;
        }
      }

LABEL_22:

      v9 = v174;
      v10 = v189;
      v18 = v190;
LABEL_23:
      v77 = v168;
      (*v187)(v168, v18, v10);
      v78 = v188;
      sub_100DE8BCC(v188, v77);
      v79 = v78;
      v80 = v191;
      v191(v79, v10);
      v81 = v10;
      v80(v18, v10);
      v41 = v176;
      v65 = v186;
LABEL_24:
      v82 = v183;
      v83 = v169;
      sub_100022A54(v65 + v183, v169, type metadata accessor for StableIdentifier);
      v84 = swift_getEnumCaseMultiPayload();
      v85 = v83;
      v86 = v186;
      sub_100022C40(v85, type metadata accessor for StableIdentifier);
      v87 = v82;
      v88 = v170;
      v10 = v81;
      if (v84 != 1)
      {
        sub_100022A54(v86 + v87, v170, type metadata accessor for StableIdentifier);
        v89 = swift_getEnumCaseMultiPayload();
        if (v89 != 2)
        {
          v90 = v88;
          if (v89 == 3)
          {
            v91 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
            v92 = v167;
            v93 = *&v167[v91[12]];

            v94 = *&v92[v91[16]];

            v95 = v91[20];
            goto LABEL_29;
          }

LABEL_3:
          result = sub_100022C40(v90, type metadata accessor for StableIdentifier);
          goto LABEL_4;
        }

        v96 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v92 = v167;
        v97 = *&v167[v96[12]];

        v98 = *&v92[v96[16]];

        v99 = *&v92[v96[20]];

        v95 = v96[28];
LABEL_29:
        v100 = *&v92[v95];

        v191(v88, v81);
        v86 = v186;
        v87 = v183;
      }

      v90 = v171;
      sub_100022A54(v86 + v87, v171, type metadata accessor for StableIdentifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_3;
      }

      sub_100022C40(v171, type metadata accessor for StableIdentifier);
      v101 = (v86 + v185[15]);
      result = *v101;
      if (*v101 != 0x3830332E302E32 || v101[1] != 0xE700000000000000)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
LABEL_4:
          v49 = __OFADD__(v181++, 1);
          v42 = v184;
          v48 = v179;
          if (!v49)
          {
            continue;
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          return result;
        }
      }

      break;
    }

    v47 = v164 + 1;
    v42 = v184;
    v48 = v179;
    if (!__OFADD__(v164, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_77:
  v148 = v160;
  v149 = v161;
  *v160 = v165;
  v148[1] = v149;
  v150 = v162;
  v148[2] = v166;
  v148[3] = v150;
  v151 = v164;
  v148[4] = v181;
  v148[5] = v151;
  return result;
}

uint64_t sub_100A82D10@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 isInternalBuild];

  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [objc_opt_self() standardUserDefaults];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 stringForKey:v13];

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  v16 = [v15 dateFromString:v14];

  if (v16)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(a1, v9, v2);
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    (*(v3 + 16))(v7, a1, v2);
    sub_10000768C(&qword_1016969A0, &type metadata accessor for Date);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v3 + 8))(v7, v2);
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
LABEL_7:

    return static Date.trustedNow.getter(a1);
  }
}

uint64_t sub_100A8306C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_101129AC0(&off_101607AD0);
  v7 = sub_10112C0E0(a1, v6);

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177BA08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a1;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v7 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Posting SPBeaconsChangedNotification for reason %ld, bypass rate-limit %{BOOL}d", v11, 0x12u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(v7 & 1);
  if (v12)
  {
  }

  v13 = sub_101129AC0(&off_101607B00);
  v14 = sub_10112C0E0(a1, v13);

  if (v14)
  {
    sub_100B040D4();
  }

  v15 = sub_101129AC0(&off_101607B28);
  v16 = sub_10112C0E0(a1, v15);

  if (v16)
  {
    type metadata accessor for Transaction();
    *(swift_allocObject() + 16) = a1;
    static Transaction.asyncTask(name:block:)();
  }

  if (a1 == 7)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_10025EDD4(0, 0, v5, &unk_1013D6650, v19);
  }

  return result;
}

uint64_t sub_100A8338C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v13, v9);
  aBlock[4] = sub_100B23ABC;
  v22 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101646A60;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v4, v1);
  (*(v5 + 8))(v8, v18);

  type metadata accessor for Transaction();
  return static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100A8375C()
{
  v1 = v0;
  v2 = sub_100AB035C();
  result = sub_100B07CF0();
  if (v2 > 0 != (result & 1))
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v4 = v2 > 0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10138BBE0;
    v6 = sub_100B07CF0();
    *(v5 + 56) = &type metadata for Bool;
    *(v5 + 64) = &protocol witness table for Bool;
    *(v5 + 32) = v6 & 1;
    *(v5 + 96) = &type metadata for Bool;
    *(v5 + 104) = &protocol witness table for Bool;
    *(v5 + 72) = v4;
    os_log(_:dso:log:_:_:)();

    sub_100B07FD8(v4);
    v7 = *(v0 + 56);
    result = CurrentValueSubject.send(_:)();
  }

  v8 = *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged + 8);

    v8(v1);
    return sub_1000BB27C(v8);
  }

  return result;
}

uint64_t sub_100A838F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000D2A70(a3, v24 - v10, &qword_101698C00, &qword_10138B570);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100A83BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000D2A70(a3, v24 - v10, &qword_101698C00, &qword_10138B570);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_1000BC4D4(&qword_1016B55F0, &qword_1013D6BE0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  sub_1000BC4D4(&qword_1016B55F0, &qword_1013D6BE0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100A83E64(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 200) = a3;
  *(v4 + 32) = a1;
  v6 = type metadata accessor for Date();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v4 + 120) = v9;
  v10 = *(v9 - 8);
  *(v4 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v12 = type metadata accessor for DateInterval();
  *(v4 + 144) = v12;
  v13 = *(v12 - 8);
  *(v4 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v15 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  *(v4 + 168) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v17 = swift_task_alloc();
  *(v4 + 176) = v17;
  v18 = swift_task_alloc();
  *(v4 + 184) = v18;
  *v18 = v4;
  v18[1] = sub_100A840A4;

  return sub_1007383E8(v17, a1);
}

uint64_t sub_100A840A4()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100A8481C;
  }

  else
  {
    v3 = sub_100A841B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A841B8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 32);
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  v5 = (*(v4 + 112))(v3, v4);
  v80 = v2;
  if (v1 == 1)
  {
    v6 = v5;
    v7 = *(v0 + 136);
    v8 = *(*(v0 + 168) + 36);
    v10 = v2[3];
    v9 = v2[4];
    sub_1000035D0(*(v0 + 32), v10);
    (*(*(*(v9 + 8) + 8) + 32))(v10);
    if (v6)
    {
      v11 = *(v0 + 176);
      v76 = *(v0 + 112);
      v78 = *(v0 + 104);
      v13 = *(v0 + 88);
      v12 = *(v0 + 96);
      v14 = *(v0 + 80);
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v17 = *(v0 + 40);
      DateInterval.start.getter();
      Date.timeIntervalSince(_:)();
      v19 = v18;
      v20 = *(v15 + 8);
      v20(v12, v16);
      if (v19 > 0.0)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0.0;
      }

      DateInterval.end.getter();
      Date.timeIntervalSince(_:)();
      v23 = v22;
      v20(v13, v16);
      if (v23 > 0.0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0.0;
      }

      v25 = v24 * 0.0002;
      DateInterval.start.getter();
      Date.addingTimeInterval(_:)();
      v20(v14, v16);
      DateInterval.end.getter();
      Date.addingTimeInterval(_:)();
      v20(v14, v16);
      static os_log_type_t.default.getter();
      if (qword_101694A20 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 136);
      v27 = *(v0 + 48);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10138C0D0;
      *(v0 + 24) = *v27;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      *(v28 + 56) = &type metadata for String;
      v32 = sub_100008C00();
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      *(v28 + 96) = &type metadata for String;
      *(v28 + 104) = v32;
      *(v28 + 64) = v32;
      *(v28 + 72) = 0xD000000000000053;
      *(v28 + 80) = 0x800000010136BDA0;
      v33 = UUID.uuidString.getter();
      *(v28 + 136) = &type metadata for String;
      *(v28 + 144) = v32;
      *(v28 + 112) = v33;
      *(v28 + 120) = v34;
      *(v28 + 176) = &type metadata for Double;
      *(v28 + 184) = &protocol witness table for Double;
      *(v28 + 152) = v21 * 0.0002;
      *(v28 + 216) = &type metadata for Double;
      *(v28 + 224) = &protocol witness table for Double;
      *(v28 + 192) = v25;
    }

    else
    {
      v36 = *(v0 + 104);
      v35 = *(v0 + 112);
      v37 = *(v0 + 40);
      DateInterval.start.getter();
      DateInterval.end.getter();
      static os_log_type_t.default.getter();
      if (qword_101694A20 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 136);
      v39 = *(v0 + 48);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10138B360;
      *(v0 + 16) = *v39;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v41 = String.init<A>(describing:)();
      v43 = v42;
      *(v40 + 56) = &type metadata for String;
      v44 = sub_100008C00();
      *(v40 + 32) = v41;
      *(v40 + 40) = v43;
      *(v40 + 96) = &type metadata for String;
      *(v40 + 104) = v44;
      *(v40 + 64) = v44;
      *(v40 + 72) = 0xD000000000000053;
      *(v40 + 80) = 0x800000010136BDA0;
      v45 = UUID.uuidString.getter();
      *(v40 + 136) = &type metadata for String;
      *(v40 + 144) = v44;
      *(v40 + 112) = v45;
      *(v40 + 120) = v46;
    }

    v47 = *(v0 + 128);
    v74 = *(v0 + 136);
    v48 = *(v0 + 112);
    v71 = *(v0 + 160);
    v72 = *(v0 + 120);
    v49 = *(v0 + 104);
    v51 = *(v0 + 72);
    v50 = *(v0 + 80);
    v52 = *(v0 + 56);
    v53 = *(v0 + 64);
    os_log(_:dso:log:_:_:)();

    v54 = *(v53 + 16);
    v54(v50, v48, v52);
    v54(v51, v49, v52);
    DateInterval.init(start:end:)();
    v55 = *(v53 + 8);
    v55(v49, v52);
    v55(v48, v52);
    (*(v47 + 8))(v74, v72);
  }

  else
  {
    (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 40), *(v0 + 144));
  }

  v56 = *(v0 + 176);
  v57 = *(v0 + 152);
  v58 = *(v0 + 160);
  v60 = *(v0 + 136);
  v59 = *(v0 + 144);
  v62 = *(v0 + 104);
  v61 = *(v0 + 112);
  v73 = *(v0 + 96);
  v75 = *(v0 + 88);
  v77 = *(v0 + 80);
  v79 = *(v0 + 72);
  v63 = v80[3];
  v64 = v80[4];
  v65 = sub_1000035D0(*(v0 + 32), v63);
  v66 = sub_100739680(v65, v58, v56, v63, v64);
  v68 = v67;
  (*(v57 + 8))(v58, v59);
  sub_10000B3A8(v56, &unk_1016C8FC0, &unk_10139D7D0);

  v69 = *(v0 + 8);

  return v69(v66, v68);
}

uint64_t sub_100A8481C()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];

  v10 = v0[1];
  v11 = v0[24];

  return v10();
}

uint64_t sub_100A848EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 200) = a3;
  *(v4 + 32) = a1;
  v6 = type metadata accessor for Date();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v4 + 120) = v9;
  v10 = *(v9 - 8);
  *(v4 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v12 = type metadata accessor for DateInterval();
  *(v4 + 144) = v12;
  v13 = *(v12 - 8);
  *(v4 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v15 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  *(v4 + 168) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v17 = swift_task_alloc();
  *(v4 + 176) = v17;
  v18 = swift_task_alloc();
  *(v4 + 184) = v18;
  *v18 = v4;
  v18[1] = sub_100A84B2C;

  return sub_1007383E8(v17, a1);
}

uint64_t sub_100A84B2C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_100B27E14;
  }

  else
  {
    v3 = sub_100A84C40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100A84C40()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 32);
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  v5 = (*(v4 + 112))(v3, v4);
  v80 = v2;
  if (v1 == 1)
  {
    v6 = v5;
    v7 = *(v0 + 136);
    v8 = *(*(v0 + 168) + 36);
    v10 = v2[3];
    v9 = v2[4];
    sub_1000035D0(*(v0 + 32), v10);
    (*(*(*(v9 + 8) + 8) + 32))(v10);
    if (v6)
    {
      v11 = *(v0 + 176);
      v76 = *(v0 + 112);
      v78 = *(v0 + 104);
      v13 = *(v0 + 88);
      v12 = *(v0 + 96);
      v14 = *(v0 + 80);
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v17 = *(v0 + 40);
      DateInterval.start.getter();
      Date.timeIntervalSince(_:)();
      v19 = v18;
      v20 = *(v15 + 8);
      v20(v12, v16);
      if (v19 > 0.0)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0.0;
      }

      DateInterval.end.getter();
      Date.timeIntervalSince(_:)();
      v23 = v22;
      v20(v13, v16);
      if (v23 > 0.0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0.0;
      }

      v25 = v24 * 0.0002;
      DateInterval.start.getter();
      Date.addingTimeInterval(_:)();
      v20(v14, v16);
      DateInterval.end.getter();
      Date.addingTimeInterval(_:)();
      v20(v14, v16);
      static os_log_type_t.default.getter();
      if (qword_101694A20 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 136);
      v27 = *(v0 + 48);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10138C0D0;
      *(v0 + 24) = *v27;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      *(v28 + 56) = &type metadata for String;
      v32 = sub_100008C00();
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      *(v28 + 96) = &type metadata for String;
      *(v28 + 104) = v32;
      *(v28 + 64) = v32;
      *(v28 + 72) = 0xD000000000000053;
      *(v28 + 80) = 0x800000010136BDA0;
      v33 = UUID.uuidString.getter();
      *(v28 + 136) = &type metadata for String;
      *(v28 + 144) = v32;
      *(v28 + 112) = v33;
      *(v28 + 120) = v34;
      *(v28 + 176) = &type metadata for Double;
      *(v28 + 184) = &protocol witness table for Double;
      *(v28 + 152) = v21 * 0.0002;
      *(v28 + 216) = &type metadata for Double;
      *(v28 + 224) = &protocol witness table for Double;
      *(v28 + 192) = v25;
    }

    else
    {
      v36 = *(v0 + 104);
      v35 = *(v0 + 112);
      v37 = *(v0 + 40);
      DateInterval.start.getter();
      DateInterval.end.getter();
      static os_log_type_t.default.getter();
      if (qword_101694A20 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 136);
      v39 = *(v0 + 48);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10138B360;
      *(v0 + 16) = *v39;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v41 = String.init<A>(describing:)();
      v43 = v42;
      *(v40 + 56) = &type metadata for String;
      v44 = sub_100008C00();
      *(v40 + 32) = v41;
      *(v40 + 40) = v43;
      *(v40 + 96) = &type metadata for String;
      *(v40 + 104) = v44;
      *(v40 + 64) = v44;
      *(v40 + 72) = 0xD000000000000053;
      *(v40 + 80) = 0x800000010136BDA0;
      v45 = UUID.uuidString.getter();
      *(v40 + 136) = &type metadata for String;
      *(v40 + 144) = v44;
      *(v40 + 112) = v45;
      *(v40 + 120) = v46;
    }

    v47 = *(v0 + 128);
    v74 = *(v0 + 136);
    v48 = *(v0 + 112);
    v71 = *(v0 + 160);
    v72 = *(v0 + 120);
    v49 = *(v0 + 104);
    v51 = *(v0 + 72);
    v50 = *(v0 + 80);
    v52 = *(v0 + 56);
    v53 = *(v0 + 64);
    os_log(_:dso:log:_:_:)();

    v54 = *(v53 + 16);
    v54(v50, v48, v52);
    v54(v51, v49, v52);
    DateInterval.init(start:end:)();
    v55 = *(v53 + 8);
    v55(v49, v52);
    v55(v48, v52);
    (*(v47 + 8))(v74, v72);
  }

  else
  {
    (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 40), *(v0 + 144));
  }

  v56 = *(v0 + 176);
  v57 = *(v0 + 152);
  v58 = *(v0 + 160);
  v60 = *(v0 + 136);
  v59 = *(v0 + 144);
  v62 = *(v0 + 104);
  v61 = *(v0 + 112);
  v73 = *(v0 + 96);
  v75 = *(v0 + 88);
  v77 = *(v0 + 80);
  v79 = *(v0 + 72);
  v63 = v80[3];
  v64 = v80[4];
  v65 = sub_1000035D0(*(v0 + 32), v63);
  v66 = sub_10073A160(v65, v58, v56, v63, v64);
  v68 = v67;
  (*(v57 + 8))(v58, v59);
  sub_10000B3A8(v56, &unk_1016C8FC0, &unk_10139D7D0);

  v69 = *(v0 + 8);

  return v69(v66, v68);
}

uint64_t sub_100A852A4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v74 = a1;
  v78 = a3;
  v4 = type metadata accessor for Date();
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v65 - v10;
  v12 = type metadata accessor for UUID();
  v76 = *(v12 - 8);
  v13 = *(v76 + 64);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StableIdentifier();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = (&v65 - v21);
  v23 = [a2 systemVersion];
  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = v23;
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v25;

  if ([a2 vendorId] < 1 || objc_msgSend(a2, "productId") < 1 || (v26 = objc_msgSend(a2, "ecid")) == 0)
  {
LABEL_19:

LABEL_20:
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    goto LABEL_23;
  }

  v27 = v26;
  v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v28;

  v29 = [a2 chipId];
  if (!v29)
  {
LABEL_18:
    sub_100016590(v71, v72);
    goto LABEL_19;
  }

  v30 = v29;
  v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v31;

  v32 = [a2 serialNumber];
  if (!v32)
  {
    sub_100016590(v69, v70);
    goto LABEL_18;
  }

  v33 = v32;
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v34;

  v35 = Data.hexString.getter();
  v37 = HIBYTE(v36) & 0xF;
  v38 = v36;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v66 = v35;
    v39 = Data.hexString.getter();
    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v42 = v68;
      v43 = HIBYTE(v68) & 0xF;
      v44 = v67;
      if ((v68 & 0x2000000000000000) == 0)
      {
        v43 = v67 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        *v22 = v66;
        v22[1] = v38;
        v22[2] = v39;
        v22[3] = v40;
        v22[4] = v44;
        v22[5] = v42;
        swift_storeEnumTagMultiPayload();
        UUID.init()();
        sub_100022A54(v22, v20, type metadata accessor for StableIdentifier);
        (*(v76 + 56))(v11, 1, 1, v12);
        sub_100A82D10(v7);
        v45 = v74[2];
        v83 = v74[3];
        v84 = v45;
        v46 = v74[4];
        v47 = v74[1];
        v81 = *v74;
        v82 = v46;
        v80 = v47;
        sub_10012BFDC(&v84, v79);
        sub_1000D2A70(&v83, v79, &qword_1016977A8, &qword_1013D6820);
        sub_1000D2A70(&v82, v79, &qword_1016977A8, &qword_1013D6820);
        sub_10012C038(&v81, v79);
        sub_10012C094(&v80, v79);
        v74 = [a2 vendorId];
        v68 = [a2 productId];
        v48 = sub_1012C7DEC([a2 batteryLevel]);
        v49 = [a2 isZeus];
        sub_100016590(v71, v72);
        sub_100016590(v69, v70);
        sub_100022C40(v22, type metadata accessor for StableIdentifier);
        v50 = v78;
        *v78 = xmmword_10138C660;
        v51 = type metadata accessor for OwnedBeaconRecord();
        (*(v76 + 32))(&v50[v51[5]], v15, v12);
        sub_10002911C(v20, &v50[v51[6]], type metadata accessor for StableIdentifier);
        sub_1000D2AD8(v11, &v50[v51[7]], &qword_1016980D0, &unk_10138F3B0);
        (*(v75 + 32))(&v50[v51[8]], v7, v4);
        v52 = v83;
        *&v50[v51[9]] = v84;
        *&v50[v51[10]] = v52;
        v53 = v81;
        *&v50[v51[11]] = v82;
        *&v50[v51[12]] = v53;
        *&v50[v51[13]] = v80;
        v54 = &v50[v51[14]];
        *v54 = 0;
        *(v54 + 1) = 0xE000000000000000;
        v55 = &v50[v51[15]];
        v56 = v77;
        *v55 = v73;
        v55[1] = v56;
        *&v50[v51[16]] = v74;
        *&v50[v51[17]] = v68;
        v50[v51[18]] = 3;
        v50[v51[19]] = v48;
        v50[v51[20]] = v49;
        return (*(*(v51 - 1) + 56))(v50, 0, 1, v51);
      }

      v68 = v40;
    }

    v63 = v70;
    v64 = v69;
    v62 = v72;
  }

  else
  {
    v62 = v72;
    v63 = v70;
    v64 = v69;
  }

  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
    v62 = v72;
  }

  os_log(_:dso:log:_:_:)();
  sub_100016590(v71, v62);
  sub_100016590(v64, v63);
LABEL_23:
  v58 = type metadata accessor for OwnedBeaconRecord();
  v59 = *(*(v58 - 8) + 56);
  v60 = v58;
  v61 = v78;

  return v59(v61, 1, 1, v60);
}

uint64_t sub_100A85AEC()
{
  v2 = v0;
  v27 = type metadata accessor for DispatchPredicate();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v27);
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177BA08);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempting to purge beacon store files.", v10, 2u);
  }

  v11 = *(v2 + 168);
  v12 = *(v2 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v25[1] = v1;
  v13 = aBlock[0];
  v14 = *(v11 + 16);
  v15 = swift_allocObject();
  v15[2] = v11;
  v15[3] = sub_100B2F70C;
  v15[4] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100B24B04;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_1016472D0;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    *v6 = v14;
    v19 = v27;
    (*(v3 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v27);
    v20 = v14;
    v21 = _dispatchPreconditionTest(_:)();
    result = (*(v3 + 8))(v6, v19);
    if (v21)
    {
      v22 = dispatch_group_create();
      dispatch_group_enter(v22);

      v23 = v22;
      sub_1010101E8(0, v13, v11, v23);

      v24 = *(v2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      return QueueSynchronizer.conditionalSync<A>(_:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100A85ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v134 = a2;
  v153 = type metadata accessor for StableIdentifier();
  v5 = *(*(v153 - 8) + 64);
  __chkstk_darwin(v153);
  v163 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = *(*(v129 - 8) + 64);
  v8 = __chkstk_darwin(v129);
  v127 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v131 = &v126 - v10;
  v11 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v157 = &v126 - v13;
  v155 = type metadata accessor for BeaconProductInfoRecord();
  v133 = *(v155 - 8);
  v14 = *(v133 + 64);
  __chkstk_darwin(v155);
  v136 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for SystemInfo.DeviceLockState();
  v16 = *(v149 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v149);
  v148 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v147 = &v126 - v20;
  v21 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v126 - v23;
  v159 = type metadata accessor for OwnedBeaconRecord();
  v25 = *(v159 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v159);
  v154 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v130 = &v126 - v30;
  __chkstk_darwin(v29);
  v128 = &v126 - v31;
  v162 = type metadata accessor for UUID();
  v32 = *(v162 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v162);
  v35 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a1;
  v36 = sub_100519FB0();
  v37 = v36;
  v38 = v36 + 56;
  v39 = 1 << *(v36 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v36 + 56);
  v42 = (v39 + 63) >> 6;
  v144 = v32 + 16;
  v143 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v142 = (v16 + 104);
  v141 = (v16 + 8);
  v135 = (v25 + 56);
  v146 = v32;
  v156 = (v32 + 8);
  v158 = v25;
  v139 = (v25 + 48);
  v161 = v3;

  v152 = v37;

  v43 = 0;
  v150 = 0;
  v44 = &_mh_execute_header;
  v138 = xmmword_101385D80;
  v160 = _swiftEmptyArrayStorage;
  v145 = v42;
  v140 = v24;
  v151 = v38;
  v137 = v35;
LABEL_4:
  v45 = v43;
  v46 = v157;
  if (!v41)
  {
    goto LABEL_6;
  }

  do
  {
    v43 = v45;
LABEL_9:
    (*(v146 + 16))(v35, *(v152 + 48) + *(v146 + 72) * (__clz(__rbit64(v41)) | (v43 << 6)), v162);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v47 = swift_allocObject();
    *(v47 + 16) = v138;
    v48 = UUID.uuidString.getter();
    v50 = v49;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_100008C00();
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    os_log(_:dso:log:_:_:)();

    v51 = v147;
    static SystemInfo.lockState.getter();
    v53 = v148;
    v52 = v149;
    (*v142)(v148, v143, v149);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v48) = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = v44;
    v55 = *v141;
    (*v141)(v53, v52);
    v55(v51, v52);
    if (v48)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v56 = v140;
      v57 = v159;
      (*v135)(v140, 1, 1, v159);
      v35 = v137;
    }

    else
    {
      v58 = sub_100025044();
      __chkstk_darwin(v58);
      v35 = v137;
      *(&v126 - 2) = v137;
      v56 = v140;
      v59 = v150;
      sub_1012BBBD0(sub_100B27F94, v58, v140);
      v150 = v59;

      v57 = v159;
    }

    v42 = v145;
    v44 = v54;
    v41 &= v41 - 1;
    (*v156)(v35, v162);
    v60 = (*v139)(v56, 1, v57);
    v46 = v157;
    v38 = v151;
    if (v60 != 1)
    {
      v61 = v44;
      v62 = v128;
      sub_10002911C(v56, v128, type metadata accessor for OwnedBeaconRecord);
      sub_10002911C(v62, v130, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = sub_100A5C050(0, v160[2] + 1, 1, v160);
      }

      v64 = v160[2];
      v63 = v160[3];
      v44 = v61;
      if (v64 >= v63 >> 1)
      {
        v160 = sub_100A5C050(v63 > 1, v64 + 1, 1, v160);
      }

      v38 = v151;
      v65 = v160;
      v160[2] = v64 + 1;
      sub_10002911C(v130, v65 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v64, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_4;
    }

    sub_10000B3A8(v56, &unk_1016A9A20, &qword_10138B280);
    v45 = v43;
  }

  while (v41);
  while (1)
  {
LABEL_6:
    v43 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      swift_once();
LABEL_51:
      v97 = type metadata accessor for Logger();
      sub_1000076D4(v97, qword_10177BA38);
      v98 = v131;
      sub_100022A54(v132, v131, type metadata accessor for OwnedBeaconGroup);

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *v101 = 141558531;
        *(v101 + 4) = 1752392040;
        *(v101 + 12) = 2081;
        v102 = *(v129 + 24);
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v103 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = v104;
        sub_100022C40(v98, type metadata accessor for OwnedBeaconGroup);
        v106 = sub_1000136BC(v103, v105, &v164);

        *(v101 + 14) = v106;
        *(v101 + 22) = 2080;

        v107 = Array.description.getter();
        v109 = v108;

        v110 = sub_1000136BC(v107, v109, &v164);

        *(v101 + 24) = v110;
        _os_log_impl(&_mh_execute_header, v99, v100, "Group %{private,mask.hash}s multipart layout template: %s", v101, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100022C40(v98, type metadata accessor for OwnedBeaconGroup);
      }

      sub_100022C40(v136, type metadata accessor for BeaconProductInfoRecord);
      v112 = v154;
LABEL_57:
      v113 = v134;
      sub_10002911C(v112, v134, type metadata accessor for OwnedBeaconRecord);
      return (*v135)(v113, 0, 1, v159);
    }

    if (v43 >= v42)
    {
      break;
    }

    v41 = *(v38 + 8 * v43);
    ++v45;
    if (v41)
    {
      goto LABEL_9;
    }
  }

  v66 = v160;
  v67 = v160[2];
  if (v67)
  {
    v68 = 0;
    v69 = v159;
    v70 = v160 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
    v71 = v163 + 8;
    v72 = (v133 + 48);
    v73 = v154;
    while (1)
    {
      if (v68 >= v66[2])
      {
        goto LABEL_65;
      }

      sub_100022A54(&v70[*(v158 + 72) * v68], v73, type metadata accessor for OwnedBeaconRecord);
      sub_100AC1584(v73 + *(v69 + 20), v46);
      v74 = v155;
      if ((*v72)(v46, 1, v155) == 1)
      {
        break;
      }

      v75 = v136;
      sub_10002911C(v46, v136, type metadata accessor for BeaconProductInfoRecord);
      v76 = *(v75 + *(v74 + 84));
      if (!v76)
      {
        sub_100022C40(v75, type metadata accessor for BeaconProductInfoRecord);
        v73 = v154;
        goto LABEL_36;
      }

      v77 = *(v76 + 16);
      v66 = v160;
      if (v77)
      {
        v78 = 88;
        while (1)
        {
          v79 = *(v76 + v78);
          if (v79 != 2 && (v79 & 1) != 0)
          {
            break;
          }

          v78 += 64;
          if (!--v77)
          {
            goto LABEL_34;
          }
        }

        if (qword_101694BF8 != -1)
        {
          goto LABEL_66;
        }

        goto LABEL_51;
      }

LABEL_34:
      sub_100022C40(v75, type metadata accessor for BeaconProductInfoRecord);
      v73 = v154;
LABEL_37:
      sub_100022A54(v73 + *(v69 + 24), v163, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v90 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
          v91 = *(v71 + v90[12]);

          v92 = *(v71 + v90[16]);

          v93 = *(v71 + v90[20]);

          v94 = *(v163 + v90[24]);
          (*v156)();
          if (v94 == 2)
          {
            goto LABEL_58;
          }

          goto LABEL_46;
        }

LABEL_44:
        sub_100022C40(v73, type metadata accessor for OwnedBeaconRecord);
        v95 = type metadata accessor for StableIdentifier;
        v96 = v163;
LABEL_47:
        sub_100022C40(v96, v95);
        goto LABEL_48;
      }

      if (EnumCaseMultiPayload < 2)
      {
        goto LABEL_44;
      }

      v81 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v82 = *(v71 + v81[12]);

      v83 = *(v71 + v81[16]);

      v84 = *(v71 + v81[20]);

      v85 = v163;
      v86 = (v163 + v81[24]);
      v87 = *v86;
      v88 = v86[1];
      v89 = *(v71 + v81[28]);

      (*v156)(v85, v162);
      if ((v88 & 1) == 0)
      {
        v69 = v159;
        v46 = v157;
        if (v87 == 2)
        {
LABEL_58:

          v114 = v154;
          if (qword_101694BF8 != -1)
          {
            swift_once();
          }

          v115 = type metadata accessor for Logger();
          sub_1000076D4(v115, qword_10177BA38);
          v116 = v127;
          sub_100022A54(v132, v127, type metadata accessor for OwnedBeaconGroup);
          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            v164 = v120;
            *v119 = 16777987;
            *(v119 + 4) = 28674;
            *(v119 + 6) = 8;
            *(v119 + 7) = 1752392040;
            *(v119 + 15) = 2081;
            v121 = *(v129 + 24);
            sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
            v122 = dispatch thunk of CustomStringConvertible.description.getter();
            v124 = v123;
            sub_100022C40(v116, type metadata accessor for OwnedBeaconGroup);
            v125 = sub_1000136BC(v122, v124, &v164);

            *(v119 + 17) = v125;
            _os_log_impl(&_mh_execute_header, v117, v118, "AlphaWasp: hardcoding primary part %hhu for group %{private,mask.hash}s.", v119, 0x19u);
            sub_100007BAC(v120);
          }

          else
          {

            sub_100022C40(v116, type metadata accessor for OwnedBeaconGroup);
          }

          v112 = v114;
          goto LABEL_57;
        }

LABEL_46:
        v95 = type metadata accessor for OwnedBeaconRecord;
        v73 = v154;
        v96 = v154;
        goto LABEL_47;
      }

      v73 = v154;
      sub_100022C40(v154, type metadata accessor for OwnedBeaconRecord);
      v69 = v159;
      v46 = v157;
LABEL_48:
      if (++v68 == v67)
      {

        return (*v135)(v134, 1, 1, v69);
      }
    }

    sub_10000B3A8(v46, &unk_1016AF8C0, &unk_1013A07A0);
LABEL_36:
    v66 = v160;
    goto LABEL_37;
  }

  v69 = v159;
  return (*v135)(v134, 1, 1, v69);
}