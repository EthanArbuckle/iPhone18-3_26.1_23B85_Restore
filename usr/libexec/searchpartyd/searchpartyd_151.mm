unint64_t sub_100FC58D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100FC5DF0(*a1);
  *a2 = result;
  return result;
}

void sub_100FC5900(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684628325;
  v5 = 0xED00006449656C70;
  v6 = 0x704164656B73616DLL;
  if (v2 != 6)
  {
    v6 = 0xD000000000000013;
    v5 = 0x8000000101347DB0;
  }

  v7 = 0xEA00000000006E67;
  v8 = 0x6953726576726573;
  if (v2 != 4)
  {
    v8 = 0x6449616E6D66;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC0000007265626DLL;
  v10 = 0x754E6C6169726573;
  if (v2 != 2)
  {
    v10 = 0x5364656573;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x644970696863;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_100FC5A08()
{
  v1 = *v0;
  v2 = 1684628325;
  v3 = 0x704164656B73616DLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x6953726576726573;
  if (v1 != 4)
  {
    v4 = 0x6449616E6D66;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x754E6C6169726573;
  if (v1 != 2)
  {
    v5 = 0x5364656573;
  }

  if (*v0)
  {
    v2 = 0x644970696863;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100FC5B0C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100FC5DF0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100FC5B34(uint64_t a1)
{
  v2 = sub_100FC5BC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FC5B70(uint64_t a1)
{
  v2 = sub_100FC5BC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100FC5BC4()
{
  result = qword_1016C23C8;
  if (!qword_1016C23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C23C8);
  }

  return result;
}

uint64_t sub_100FC5C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsPairingLockCheckResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100FC5C7C(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsPairingLockCheckResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100FC5CEC()
{
  result = qword_1016C23D0;
  if (!qword_1016C23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C23D0);
  }

  return result;
}

unint64_t sub_100FC5D44()
{
  result = qword_1016C23D8;
  if (!qword_1016C23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C23D8);
  }

  return result;
}

unint64_t sub_100FC5D9C()
{
  result = qword_1016C23E0;
  if (!qword_1016C23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C23E0);
  }

  return result;
}

unint64_t sub_100FC5DF0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C860, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100FC5EEC(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = xmmword_101394D60;
  *(v4 + 56) = 0xF000000000000000;
  *(v4 + 64) = 0;
  v11 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_signpostID;
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C3B0;
  OSSignpostID.init(log:)();
  v13 = v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_ackPairingLockSignpost;
  *v13 = "ackPairingLock";
  *(v13 + 8) = 14;
  *(v13 + 16) = 2;
  v14 = (v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock);
  *v14 = 0;
  v14[1] = 0;
  v48 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_locationMonitor;
  *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_locationMonitor) = a1;
  v15 = type metadata accessor for SPAnalyticsItemPairEvent(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = a1;
  v19 = sub_101164980(1);
  v46 = v11;
  v20 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics;
  *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics) = v19;
  v21 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue;
  *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue) = a3;
  v47 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_validator;
  *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_validator) = a2;
  v22 = a3;

  v23 = a2;
  v24 = static Data.random(bytes:)();
  v26 = v25;
  sub_100017D5C(v24, v25);
  sub_1004A4740(v24, v26);
  v27 = v54;
  if (v54 >> 60 == 15)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();

    sub_100016590(v24, v26);
    v28 = *(v4 + 24);

    sub_100006654(*(v4 + 32), *(v4 + 40));
    sub_100006654(*(v4 + 48), *(v4 + 56));
    v29 = type metadata accessor for OSSignpostID();
    (*(*(v29 - 8) + 8))(v4 + v46, v29);
    v30 = *(v4 + v20);

    v31 = *(v4 + v47);

    v32 = *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock + 8);
    sub_1000BB27C(*(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock));
    type metadata accessor for ItemPairingCoordinator();
    v33 = *(*v4 + 48);
    v34 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v47 = v22;
    v48 = v23;
    v35 = v53;
    v36 = v49;
    UUID.init()();
    v37 = objc_allocWithZone(SPPairingSession);
    sub_100017D5C(v35, v27);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v39 = Data._bridgeToObjectiveC()().super.isa;
    v40 = [v37 initWithIdentifier:isa nonce:v39];

    sub_100006654(v35, v27);
    (*(v50 + 8))(v36, v51);
    *(v4 + 16) = v40;
    v41 = qword_101694FA8;
    v42 = v40;
    if (v41 != -1)
    {
      swift_once();
    }

    v53 = 0x7365547265646E75;
    v54 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v43 = v47;
    if ((v52 & 1) == 0)
    {
      v44 = *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_locationMonitor);
      CurrentLocationMonitor.requestLocation()();
    }

    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
    sub_100016590(v24, v26);

    sub_100006654(v35, v27);
  }

  return v4;
}

void sub_100FC63E8()
{
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v0 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  Transaction.capture()();
}

uint64_t sub_100FC6474()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock);
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock);
  if (v3)
  {
    v4 = v2[1];

    v3(v5);
    sub_1000BB27C(v3);
  }

  v6 = *(v1 + 24);

  sub_100006654(*(v1 + 32), *(v1 + 40));
  sub_100006654(*(v1 + 48), *(v1 + 56));
  v7 = OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_signpostID;
  v8 = type metadata accessor for OSSignpostID();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);

  v10 = *(v1 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_validator);

  v11 = v2[1];
  sub_1000BB27C(*v2);
  return v1;
}

uint64_t sub_100FC657C()
{
  sub_100FC6474();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ItemPairingCoordinator()
{
  result = qword_1016C2430;
  if (!qword_1016C2430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100FC6628()
{
  result = type metadata accessor for OSSignpostID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100FC6714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v19 = 0x7365547265646E75;
  v20 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v21 & 1) == 0)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v14 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074624(v19);
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v16 = type metadata accessor for Transaction();
  __chkstk_darwin(v16);
  *(&v18 - 4) = v3;
  *(&v18 - 3) = v13;
  *(&v18 - 2) = a1;
  *(&v18 - 1) = a2;
  static Transaction.named<A>(_:with:)();
  return (v15)(v13, v6);
}

uint64_t sub_100FC69C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(a2 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a4;
  v17[5] = a5;
  aBlock[4] = sub_100FCB390;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10165EBA0;
  v18 = _Block_copy(aBlock);

  sub_100012908(a4);
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100FCB194(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v12, v9);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_100FC6CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v5);
  v61 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  __chkstk_darwin(v8);
  v60 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for UUID();
  v59 = *(v65 - 8);
  v16 = *(v59 + 64);
  v17 = __chkstk_darwin(v65);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v53 - v20;
  Transaction.capture()();
  v22 = [*(a2 + 16) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v22) = *(a2 + 64);
  v56 = static os_log_type_t.default.getter();
  if (v22 > 1)
  {
    v54 = v21;
    v55 = v5;
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v53[1] = qword_10177C3B0;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10138BBE0;
    v37 = [*(a2 + 16) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = UUID.uuidString.getter();
    v40 = v39;
    v59 = *(v59 + 8);
    (v59)(v19, v65);
    *(v36 + 56) = &type metadata for String;
    v41 = sub_100008C00();
    *(v36 + 64) = v41;
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    LOBYTE(aBlock) = *(a2 + 64);
    v42 = String.init<A>(describing:)();
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v41;
    *(v36 + 72) = v42;
    *(v36 + 80) = v43;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v44 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v15, v11);
    v45 = swift_allocObject();
    v47 = v57;
    v46 = v58;
    *(v45 + 16) = v57;
    *(v45 + 24) = v46;
    v71 = sub_100FCB39C;
    v72 = v45;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100006684;
    v70 = &unk_10165EBF0;
    v48 = _Block_copy(&aBlock);
    sub_100012908(v47);
    v49 = v60;
    static DispatchQoS.unspecified.getter();
    v66 = _swiftEmptyArrayStorage;
    sub_100FCB194(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v50 = v61;
    v51 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    (*(v64 + 8))(v50, v51);
    (*(v62 + 8))(v49, v63);
    (v59)(v54, v65);
  }

  else
  {
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008C00();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:_:_:)();

    v27 = sub_100FC752C();
    sub_100408170(v27, v28 & 1);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v29 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v15, v11);
    v30 = swift_allocObject();
    v32 = v57;
    v31 = v58;
    *(v30 + 16) = v57;
    *(v30 + 24) = v31;
    v71 = sub_100FCB3A4;
    v72 = v30;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100006684;
    v70 = &unk_10165EC40;
    v33 = _Block_copy(&aBlock);
    sub_100012908(v32);
    v34 = v60;
    static DispatchQoS.unspecified.getter();
    v66 = _swiftEmptyArrayStorage;
    sub_100FCB194(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v35 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v64 + 8))(v35, v5);
    (*(v62 + 8))(v34, v63);
    (*(v59 + 8))(v21, v65);
  }
}

void *sub_100FC752C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    static os_log_type_t.default.getter();
    if (qword_101695068 == -1)
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
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  v19 = [*(v1 + 16) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v7 + 8))(v10, v6);
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100008C00();
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = [*(v1 + 16) ecid];
  if (v23)
  {
    v24 = v23;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = [*(v1 + 16) chipId];
    if (v28)
    {
      v29 = v28;
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = [*(v1 + 16) serialNumber];
      if (v33)
      {
        v34 = v33;
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v5;
        v37 = v36;

        v38 = [*(v1 + 16) productId];
        v39 = [*(v1 + 16) vendorId];
        *&v50 = v25;
        *(&v50 + 1) = v27;
        *&v51 = v30;
        *(&v51 + 1) = v32;
        *&v52 = v35;
        *(&v52 + 1) = v37;
        *&v53 = v38;
        *(&v53 + 1) = v39;
        v54[0] = v50;
        v54[1] = v51;
        v54[2] = v52;
        v54[3] = v53;
        v40 = dispatch_group_create();
        dispatch_group_enter(v40);
        v41 = swift_allocObject();
        type metadata accessor for SPPairingSessionError(0);
        v49 = 1;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100FCB194(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        *(v41 + 16) = v48;
        *(v41 + 24) = 1;
        v42 = v47;
        (*(v7 + 56))(v47, 1, 1, v6);
        v43 = v40;

        sub_10088B5B8(v42, v54, v43, v41);

        sub_10000B3A8(v42, &qword_1016980D0, &unk_10138F3B0);
        OS_dispatch_group.wait()();

        sub_1004059C4(&v50);
        *(v1 + 64) = 3;
        swift_beginAccess();
        v44 = *(v41 + 16);
        sub_1004081B0(v44, *(v41 + 24));

        return v44;
      }

      sub_100016590(v30, v32);
    }

    sub_100016590(v25, v27);
  }

  static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)();
  type metadata accessor for SPPairingSessionError(0);
  *&v50 = 6;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100FCB194(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return *&v54[0];
}

void sub_100FC7B20(uint64_t a1, NSObject *a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
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

    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    swift_errorRetain();
    *(inited + 48) = String.init<A>(describing:)();
    *(inited + 56) = v11;
    v12 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    type metadata accessor for SPPairingSessionError(0);
    sub_1006953B0(v12);

    sub_100FCB194(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_beginAccess();
    v13 = *(a3 + 16);
    v14 = *(a3 + 24);
    *(a3 + 16) = v17;
    *(a3 + 24) = 1;
    sub_100408170(v13, v14);
    dispatch_group_leave(a2);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    swift_beginAccess();
    v15 = *(a3 + 16);
    v16 = *(a3 + 24);
    *(a3 + 16) = 1;
    *(a3 + 24) = 0;
    sub_100408170(v15, v16);
    dispatch_group_leave(a2);
  }
}

uint64_t sub_100FC7E50(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a1;
  v61 = a4;
  v58 = a3;
  v59 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  __chkstk_darwin(v6);
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v65);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  __chkstk_darwin(v11);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v5 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue);
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if (v26)
  {
    v54 = v6;
    static os_log_type_t.default.getter();
    if (qword_101695068 == -1)
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
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  v53 = xmmword_101385D80;
  *(v27 + 16) = xmmword_101385D80;
  v28 = [*(v5 + 16) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = UUID.uuidString.getter();
  v31 = v30;
  (*(v15 + 8))(v18, v14);
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_100008C00();
  *(v27 + 32) = v29;
  *(v27 + 40) = v31;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v32 = v59;
  if (v59)
  {
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v33 = swift_allocObject();
    *(v33 + 16) = v53;
    v34 = v60;
    v35 = _convertErrorToNSError(_:)();
    *(v33 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
    *(v33 + 64) = sub_1002917A0(&qword_1016BC310, &qword_10169E020, NSError_ptr);
    *(v33 + 32) = v35;
    os_log(_:dso:log:_:_:)();

    v36 = [*(v5 + 16) pairingUsingTool];
    v37 = v54;
    if (v36)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      type metadata accessor for Transaction();
      v40 = swift_allocObject();
      *(v40 + 16) = v5;
      *(v40 + 24) = v34;
      v41 = v34;

      static Transaction.asyncTask(name:block:)();
    }
  }

  else
  {
    v37 = v54;
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v38 = swift_allocObject();
    *(v38 + 16) = v53;
    *(v38 + 56) = sub_100008BB8(0, &qword_1016C2608, SPPairingSession_ptr);
    *(v38 + 64) = sub_1002917A0(&qword_1016C2610, &qword_1016C2608, SPPairingSession_ptr);
    v34 = v60;
    *(v38 + 32) = v60;
    v39 = v34;
    os_log(_:dso:log:_:_:)();

    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();

    *(v5 + 64) = 1;
    sub_100FC6714(0, 0);
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v43 = v55;
  v42 = v56;
  v44 = v57;
  (*(v56 + 104))(v55, enum case for DispatchQoS.QoSClass.default(_:), v57);
  v45 = static OS_dispatch_queue.global(qos:)();
  (*(v42 + 8))(v43, v44);
  v46 = swift_allocObject();
  v47 = v61;
  *(v46 + 16) = v58;
  *(v46 + 24) = v47;
  *(v46 + 32) = v34;
  *(v46 + 40) = v32 & 1;
  aBlock[4] = sub_100FCB2DC;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10165EB00;
  v48 = _Block_copy(aBlock);
  v49 = v34;

  v50 = v62;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_100FCB194(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v51 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v48);

  (*(v66 + 8))(v51, v37);
  (*(v63 + 8))(v50, v65);
}

uint64_t sub_100FC8768()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100FC8794, v1, 0);
}

uint64_t sub_100FC8794()
{
  v1 = *(v0 + 24);
  sub_101165CFC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FC87F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100FC8814, 0, 0);
}

uint64_t sub_100FC8814()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_100FC8840, v1, 0);
}

uint64_t sub_100FC8840()
{
  v1 = *(v0 + 32);
  sub_101165CFC();

  return _swift_task_switch(sub_100FC88A8, 0, 0);
}

uint64_t sub_100FC88A8()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = sub_10090907C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_100FC891C, v1, 0);
}

uint64_t sub_100FC891C()
{
  v1 = *(v0 + 24);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v1;
  *(v2 + 56) = 0;

  v3 = v1;
  static Transaction.asyncTask(name:block:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100FC89F8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a5;
  v78 = a4;
  v79 = a1;
  v88 = a2;
  v7 = *(a3 + 112);
  v119 = *(a3 + 96);
  v120 = v7;
  v121 = *(a3 + 128);
  v122 = *(a3 + 144);
  v8 = *(a3 + 48);
  v115 = *(a3 + 32);
  v116 = v8;
  v9 = *(a3 + 80);
  v117 = *(a3 + 64);
  v118 = v9;
  v10 = *(a3 + 16);
  v113 = *a3;
  v114 = v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  __chkstk_darwin(v11);
  v83 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  v14 = *(v82 + 64);
  __chkstk_darwin(v84);
  v80 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v76 = *(v16 - 8);
  v77 = v16;
  v17 = *(v76 + 64);
  __chkstk_darwin(v16);
  v75 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for UUID();
  v89 = *(v87 - 8);
  v19 = *(v89 + 64);
  __chkstk_darwin(v87);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v5 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_serialQueue);
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v26, v22);
  if (v29)
  {
    v27 = v5;
    v73 = v11;
    static os_log_type_t.default.getter();
    if (qword_101695068 == -1)
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
  v30 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  v86 = xmmword_101385D80;
  *(v31 + 16) = xmmword_101385D80;
  v32 = [v27[2] identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = UUID.uuidString.getter();
  v35 = v34;
  v36 = *(v89 + 8);
  v89 += 8;
  v70 = v36;
  v36(v21, v87);
  *(v31 + 56) = &type metadata for String;
  v69 = sub_100008C00();
  *(v31 + 64) = v69;
  *(v31 + 32) = v33;
  *(v31 + 40) = v35;
  v71 = v30;
  os_log(_:dso:log:_:_:)();

  v37 = type metadata accessor for Transaction();

  v72 = v37;
  static Transaction.asyncTask(name:block:)();
  v74 = v27;

  static os_log_type_t.default.getter();
  if (v88)
  {
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v38 = swift_allocObject();
    *(v38 + 16) = v86;
    v39 = v79;
    v40 = _convertErrorToNSError(_:)();
    *(v38 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
    *(v38 + 64) = sub_1002917A0(&qword_1016BC310, &qword_10169E020, NSError_ptr);
    *(v38 + 32) = v40;
    os_log(_:dso:log:_:_:)();

    v41 = v74;
    if ([v74[2] pairingUsingTool])
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      v50 = swift_allocObject();
      *(v50 + 16) = v41;
      *(v50 + 24) = v39;

      v51 = v39;
      static Transaction.asyncTask(name:block:)();
    }
  }

  else
  {
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    v42 = swift_allocObject();
    *(v42 + 16) = v86;
    *(v42 + 56) = sub_100008BB8(0, &qword_1016C2608, SPPairingSession_ptr);
    *(v42 + 64) = sub_1002917A0(&qword_1016C2610, &qword_1016C2608, SPPairingSession_ptr);
    v39 = v79;
    *(v42 + 32) = v79;
    v43 = v39;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.default.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = v86;
    v45 = [v43 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = UUID.uuidString.getter();
    v48 = v47;
    v70(v21, v87);
    v49 = v69;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = v49;
    *(v44 + 32) = v46;
    *(v44 + 40) = v48;
    os_log(_:dso:log:_:_:)();

    v41 = v74;
    *(v74 + 64) = 2;
  }

  v52 = v73;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v54 = v75;
  v53 = v76;
  v55 = v77;
  (*(v76 + 104))(v75, enum case for DispatchQoS.QoSClass.default(_:), v77);
  v56 = static OS_dispatch_queue.global(qos:)();
  (*(v53 + 8))(v54, v55);
  v57 = swift_allocObject();
  v58 = v81;
  *(v57 + 16) = v78;
  *(v57 + 24) = v58;
  *(v57 + 32) = v39;
  *(v57 + 40) = v88 & 1;
  *&v105 = sub_100FCB450;
  *(&v105 + 1) = v57;
  *&v103 = _NSConcreteStackBlock;
  *(&v103 + 1) = 1107296256;
  *&v104 = sub_100006684;
  *(&v104 + 1) = &unk_10165EA60;
  v59 = _Block_copy(&v103);
  v60 = v39;

  v61 = v80;
  static DispatchQoS.unspecified.getter();
  *&v93 = _swiftEmptyArrayStorage;
  sub_100FCB194(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v62 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v59);

  (*(v85 + 8))(v62, v52);
  (*(v82 + 8))(v61, v84);

  v63 = *(a3 + 112);
  v99 = *(a3 + 96);
  v100 = v63;
  v101 = *(a3 + 128);
  v102 = *(a3 + 144);
  v64 = *(a3 + 48);
  v95 = *(a3 + 32);
  v96 = v64;
  v65 = *(a3 + 80);
  v97 = *(a3 + 64);
  v98 = v65;
  v66 = *(a3 + 16);
  v93 = *a3;
  v94 = v66;
  result = sub_10040BA9C(&v93);
  if (result != 1)
  {
    v112 = v102;
    v109 = v99;
    v110 = v100;
    v111 = v101;
    v105 = v95;
    v106 = v96;
    v107 = v97;
    v108 = v98;
    v103 = v93;
    v104 = v94;
    __chkstk_darwin(result);
    *(&v68 - 2) = v41;
    *(&v68 - 1) = &v103;
    v91[6] = v119;
    v91[7] = v120;
    v91[8] = v121;
    v92 = v122;
    v91[2] = v115;
    v91[3] = v116;
    v91[4] = v117;
    v91[5] = v118;
    v91[0] = v113;
    v91[1] = v114;
    sub_100407B48(v91, &v90);
    static Transaction.named<A>(_:with:)();
    return sub_10000B3A8(a3, &qword_10169F428, &qword_1013A08E8);
  }

  return result;
}

uint64_t sub_100FC9548()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100FC9574, v1, 0);
}

uint64_t sub_100FC9574()
{
  v1 = *(v0 + 24);
  sub_101165EF4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FC95D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100FC95F4, 0, 0);
}

uint64_t sub_100FC95F4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  v0[4] = v1;
  v0[5] = sub_10090907C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_100FC9678, v1, 0);
}

uint64_t sub_100FC9678()
{
  v1 = *(v0 + 24);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v1;
  *(v2 + 56) = 0;

  v3 = v1;
  static Transaction.asyncTask(name:block:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100FC9754(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ([*(a2 + 16) pairingUsingTool])
  {
    static os_log_type_t.default.getter();
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_pairingAnalytics);
  }

  sub_100FC9A74(a3, v6, sub_100FCB1F8, a1);
}

uint64_t sub_100FC986C(void *a1, char a2)
{
  Transaction.capture()();
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_101385D80;
    type metadata accessor for SPPairingSessionError(0);
    v5 = a1;
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100008C00();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    *(v10 + 56) = &type metadata for Bool;
    *(v10 + 64) = &protocol witness table for Bool;
    *(v10 + 32) = a1 & 1;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100FC9A74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a3;
  v35 = a4;
  v36 = a1;
  v37 = type metadata accessor for OSSignpostID();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v37);
  v33 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v32 - v10;
  v32[3] = static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  v38 = *v4;
  sub_1000BC4D4(&qword_1016C2600, &qword_1013F6968);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v17;
  *(v13 + 64) = v17;
  *(v13 + 72) = 0xD000000000000037;
  *(v13 + 80) = 0x8000000101375CE0;
  os_log(_:dso:log:_:_:)();

  v18 = v12;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v19 = *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_ackPairingLockSignpost);
  v20 = *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_ackPairingLockSignpost + 8);
  v21 = *(v4 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_ackPairingLockSignpost + 16);
  os_signpost(_:dso:log:name:signpostID:)();
  type metadata accessor for Transaction();
  *(swift_allocObject() + 16) = a2;

  static Transaction.asyncTask(name:block:)();

  v22 = v33;
  v23 = v37;
  (*(v7 + 16))(v33, v11, v37);
  v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  (*(v7 + 32))(v26 + v24, v22, v23);
  *(v26 + v25) = a2;
  v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v35;
  *v27 = v34;
  v27[1] = v28;

  sub_10088C010(v36);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_100FCADDC;
  *(v29 + 24) = v26;

  Future.addFailure(block:)();

  v30 = swift_allocObject();
  *(v30 + 16) = sub_100FCADDC;
  *(v30 + 24) = v26;

  Future.addSuccess(block:)();

  return (*(v7 + 8))(v11, v23);
}

unint64_t sub_100FC9ED0()
{
  result = qword_1016C25F0;
  if (!qword_1016C25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C25F0);
  }

  return result;
}

uint64_t sub_100FC9F24(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (a1)
  {
    return _swift_task_switch(sub_100FC9F5C, a1, 0);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100FC9F5C()
{
  v1 = *(v0 + 16);
  sub_101165FF0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FC9FBC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void))
{
  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v11 = *(a3 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_ackPairingLockSignpost);
  v12 = *(a3 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_ackPairingLockSignpost + 8);
  v13 = *(a3 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_ackPairingLockSignpost + 16);
  os_signpost(_:dso:log:name:signpostID:)();
  type metadata accessor for Transaction();
  *(swift_allocObject() + 16) = a5;

  static Transaction.asyncTask(name:block:)();

  static os_log_type_t.default.getter();
  if (a2)
  {
    v22 = a6;
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v15 = _convertErrorToNSError(_:)();
    *(v14 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
    *(v14 + 64) = sub_1002917A0(&qword_1016BC310, &qword_10169E020, NSError_ptr);
    *(v14 + 32) = v15;
    os_log(_:dso:log:_:_:)();

    v16 = swift_allocObject();
    *(v16 + 16) = a5;
    *(v16 + 24) = a1;

    sub_1004081B0(a1, 1);
    static Transaction.asyncTask(name:block:)();
    a6 = v22;
  }

  else
  {
    if (qword_101695090 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = xmmword_101385D80;
    if (a1)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (a1)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    os_log(_:dso:log:_:_:)();

    *(swift_allocObject() + 16) = a5;

    static Transaction.asyncTask(name:block:)();
  }

  return a6(a1, a2 & 1);
}

uint64_t sub_100FCA380(uint64_t a1)
{
  v1[5] = a1;
  v3 = type metadata accessor for DispatchTime();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  if (a1)
  {

    return _swift_task_switch(sub_100FCA4A0, a1, 0);
  }

  else
  {

    v6 = v1[1];

    return v6();
  }
}

uint64_t sub_100FCA4A0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  static DispatchTime.now()();
  v6 = DispatchTime.uptimeNanoseconds.getter();
  v7 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginAck;
  swift_beginAccess();
  (*(v4 + 16))(v1, v5 + v7, v3);
  v8 = DispatchTime.uptimeNanoseconds.getter();
  v9 = *(v4 + 8);
  result = v9(v1, v3);
  v11 = v6 - v8;
  if (v6 < v8)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[9];
    v13 = v0[5];
    v14 = v0[6];
    v15 = v11 / 1000000000.0;
    type metadata accessor for Transaction();
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;

    static Transaction.asyncTask(name:block:)();

    v9(v12, v14);
    v18 = v0[8];
    v17 = v0[9];

    v19 = v0[1];

    return v19();
  }

  return result;
}

uint64_t sub_100FCA668()
{
  if (v0[2])
  {
    v0[3] = sub_10090907C(_swiftEmptyArrayStorage);
    v1 = v0[2];

    return _swift_task_switch(sub_100FCA710, v1, 0);
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_100FCA710()
{
  v1 = v0[2];
  v2 = v0[3];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 1;

  static Transaction.asyncTask(name:block:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100FCA7EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100FCA80C, 0, 0);
}

uint64_t sub_100FCA80C()
{
  if (v0[2])
  {
    v0[4] = sub_10090907C(_swiftEmptyArrayStorage);
    v1 = v0[2];

    return _swift_task_switch(sub_100FCA8B4, v1, 0);
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_100FCA8B4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v2;
  *(v4 + 56) = 0;

  v5 = v2;
  static Transaction.asyncTask(name:block:)();

  v6 = v0[1];

  return v6();
}

void sub_100FCA99C(void *a1, void (*a2)(void *, uint64_t))
{
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  swift_errorRetain();
  type metadata accessor for SPPairingSessionError(0);
  if (swift_dynamicCast())
  {
    v8 = v12;
    a2(v12, 1);
  }

  else
  {
    sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000032;
    *(inited + 56) = 0x8000000101375D80;
    v11 = sub_100907E70(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
    sub_1006953B0(v11);

    sub_100FCB194(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = a1;
    a2(a1, 1);
  }
}

uint64_t sub_100FCAC4C(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  return a2(1, 0);
}

unint64_t sub_100FCACF4()
{
  result = qword_1016C25F8;
  if (!qword_1016C25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C25F8);
  }

  return result;
}

uint64_t sub_100FCAD48()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100FC9F24(v2);
}

uint64_t sub_100FCADDC(void *a1, char a2)
{
  v5 = *(type metadata accessor for OSSignpostID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_100FC9FBC(a1, a2 & 1, v8, v2 + v6, v9, v11);
}

uint64_t sub_100FCAEAC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100FCA380(v2);
}

uint64_t sub_100FCAF40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100FCA7EC(v2, v3);
}

uint64_t sub_100FCAFD8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100FCA648(v2);
}

uint64_t sub_100FCB06C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100FC9528(v0);
}

uint64_t sub_100FCB0FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100FC95D4(v2, v3);
}

uint64_t sub_100FCB194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100FCB204()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100FC87F4(v2, v3);
}

uint64_t sub_100FCB29C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 41);
}

uint64_t sub_100FCB2E0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100FC8748(v0);
}

uint64_t sub_100FCB3AC(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(result & 1);
  }

  return result;
}

uint64_t sub_100FCB3E0(void (*a1)())
{
  v2 = (v1 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock);
  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock);
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd22ItemPairingCoordinator_cleanupBlock + 8);
  *v2 = sub_100FCB438;
  v2[1] = a1;

  return sub_1000BB27C(v4);
}

uint64_t type metadata accessor for OfflineLostModeInfoLookupRequest()
{
  result = qword_1016C2670;
  if (!qword_1016C2670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100FCB4DC()
{
  sub_1003955F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RequestMethod();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100FCB560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for RequestMethod();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100FCB5D8(uint64_t a1)
{
  v2 = sub_100FCB698(&qword_1016C26B8);

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100FCB698(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OfflineLostModeInfoLookupRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100FCB6DC(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 12645;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x74617453636E7973;
      break;
    case 4:
      result = 0x754E6C6169726573;
      break;
    case 5:
      result = 0x6169726553746C61;
      break;
    case 6:
      result = 0x644974726170;
      break;
    case 7:
      result = 0x6F636165426D756ELL;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0x6E55646572616873;
      break;
    case 11:
      result = 0x314B64656573;
      break;
    case 12:
      result = 0x7374726563;
      break;
    case 13:
      result = 7500643;
      break;
    case 14:
      result = 0x636E6F4E68747561;
      break;
    case 15:
      result = 0x726F737365636361;
      break;
    case 16:
      result = 0x7461747365747461;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x69634572656E776FLL;
      break;
    case 20:
      result = 0x69684372656E776FLL;
      break;
    case 21:
      result = 0x7372655663657073;
      break;
    case 22:
      result = 0x657261776D726966;
      break;
    case 23:
      result = 0x49746375646F7270;
      break;
    case 24:
      result = 0x6449726F646E6576;
      break;
    case 25:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100FCB9DC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C26C8, &unk_1013F7228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100FCE8E0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v49 = *v3;
  v37 = *v3;
  v36 = 0;
  sub_1001022C4(&v49, v35);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v37, *(&v37 + 1));
  if (!v2)
  {
    v48 = v3[1];
    v37 = v3[1];
    v36 = 1;
    sub_1001022C4(&v48, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v47 = v3[2];
    v37 = v3[2];
    v36 = 2;
    sub_1000D2A70(&v47, v35, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, *(&v37 + 1));
    v12 = *(v3 + 6);
    LOBYTE(v37) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v46 = *(v3 + 56);
    v37 = *(v3 + 56);
    v36 = 4;
    sub_1001022C4(&v46, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v45 = *(v3 + 72);
    v37 = *(v3 + 72);
    v36 = 5;
    sub_1001022C4(&v45, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v13 = *(v3 + 11);
    LOBYTE(v37) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 12);
    v15 = *(v3 + 104);
    LOBYTE(v37) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v37 = *(v3 + 14);
    v35[0] = 8;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v37 = *(v3 + 15);
    v35[0] = 9;
    sub_1000BC4D4(&qword_1016AAA40, &qword_1013D8B80);
    sub_100837688();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 16);
    v17 = *(v3 + 136);
    LOBYTE(v37) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v44 = v3[9];
    v37 = v3[9];
    v36 = 11;
    sub_1001022C4(&v44, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v43 = v3[10];
    v37 = v3[10];
    v36 = 12;
    sub_1001022C4(&v43, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v42 = v3[11];
    v37 = v3[11];
    v36 = 13;
    sub_1001022C4(&v42, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v41 = v3[12];
    v37 = v3[12];
    v36 = 14;
    sub_1001022C4(&v41, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v40 = v3[13];
    v37 = v3[13];
    v36 = 15;
    sub_1001022C4(&v40, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v39 = v3[14];
    v37 = v3[14];
    v36 = 16;
    sub_1001022C4(&v39, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v38 = v3[15];
    v37 = v3[15];
    v36 = 17;
    sub_1001022C4(&v38, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v18 = *(v3 + 32);
    v19 = *(v3 + 33);
    LOBYTE(v37) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 34);
    v21 = *(v3 + 35);
    LOBYTE(v37) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 36);
    v23 = *(v3 + 37);
    LOBYTE(v37) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v3 + 38);
    v25 = *(v3 + 39);
    LOBYTE(v37) = 21;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + 40);
    v27 = *(v3 + 41);
    LOBYTE(v37) = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = *(v3 + 42);
    v29 = *(v3 + 43);
    LOBYTE(v37) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = *(v3 + 44);
    v31 = *(v3 + 45);
    LOBYTE(v37) = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = *(v3 + 46);
    v33 = *(v3 + 47);
    LOBYTE(v37) = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100FCC330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100FCEB8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100FCC364(uint64_t a1)
{
  v2 = sub_100FCE8E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100FCC3A0(uint64_t a1)
{
  v2 = sub_100FCE8E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100FCC430@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v115 = a2;
  v116 = a3;
  v114 = a4;
  v5 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v122 = *(v5 - 8);
  v6 = *(v122 + 64);
  __chkstk_darwin(v5 - 8);
  v127 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v8 = *(*(v130 - 8) + 64);
  v9 = __chkstk_darwin(v130);
  v121 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v129 = (&v111 - v12);
  __chkstk_darwin(v11);
  v131 = (&v111 - v13);
  v14 = a1[16];
  v168 = a1[17];
  v15 = a1[18];
  v148 = v168;
  v149 = v15;
  v166 = a1[2];
  v167 = v15;
  v150 = v166;
  v16 = *(a1 + 120);
  v164 = *(a1 + 136);
  v165 = v16;
  v146 = *(a1 + 136);
  v147 = v16;
  v145 = *(a1 + 160);
  v144 = *(a1 + 19);
  v161 = v14;
  sub_1001022C4(&v168, &v160);
  sub_1001022C4(&v167, &v160);
  sub_1000D2A70(&v166, &v160, &qword_1016A40E0, &unk_101396F30);
  sub_1001022C4(&v165, &v160);
  sub_1001022C4(&v164, &v160);
  sub_1000E0A3C();
  v17 = DataProtocol.intValue.getter();
  v18 = *(a1 + 21);
  v19 = *(a1 + 22);
  v117 = a1;
  v112 = v17;
  v113 = v18;
  v162 = v19;
  v163 = v18;
  sub_1000D2A70(&v163, &v161, &qword_101699EB8, &qword_101398AA0);
  sub_1000D2A70(&v162, &v161, &qword_1016AAA28, &unk_1013BD990);
  v20 = sub_100908488(_swiftEmptyArrayStorage);
  v21 = v19 + 64;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 64);
  v25 = (v22 + 63) >> 6;
  v123 = v19;

  v26 = 0;
  v128 = 0;
  v119 = v25;
  v120 = v19 + 64;
  if (v24)
  {
    while (1)
    {
      v27 = v26;
LABEL_8:
      v28 = __clz(__rbit64(v24)) | (v27 << 6);
      v29 = (*(v123 + 48) + 16 * v28);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v122 + 72);
      v33 = v131;
      sub_1000E180C(*(v123 + 56) + v32 * v28, v131 + *(v130 + 48));
      *v33 = v31;
      v33[1] = v30;
      v34 = v33;
      v35 = v129;
      sub_1000D2A70(v34, v129, &qword_101696E38, &qword_1013D8510);
      v36 = *v35;
      v37 = v35[1];
      *&v161 = v36;
      *(&v161 + 1) = v37;
      v38 = v37 >> 62;
      v126 = v36;
      if ((v37 >> 62) <= 1)
      {
        break;
      }

      v39 = v20;
      if (v38 == 2)
      {
        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        v40 = v41 - v42;
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_62;
        }

LABEL_17:
        sub_100017D5C(v36, v37);
        goto LABEL_19;
      }

      v40 = 0;
LABEL_19:
      v43 = 20 - v40;
      if (__OFSUB__(20, v40))
      {
        goto LABEL_57;
      }

      v124 = v32;
      if (v43)
      {
        if (v43 <= 14)
        {
          if (v43 < 0)
          {
            goto LABEL_60;
          }

          v51 = v118 & 0xF00000000000000 | ((20 - v40) << 48);
          sub_100017D5C(v31, v30);
          v50 = v39;

          v48 = 0;
          v118 = v51;
          v49 = v51;
        }

        else
        {
          v44 = type metadata accessor for __DataStorage();
          v45 = *(v44 + 48);
          v46 = *(v44 + 52);
          swift_allocObject();
          sub_100017D5C(v31, v30);

          v47 = __DataStorage.init(length:)();
          if (v43 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v48 = swift_allocObject();
            *(v48 + 16) = 0;
            *(v48 + 24) = v43;
            v49 = v47 | 0x8000000000000000;
          }

          else
          {
            v48 = v43 << 32;
            v49 = v47 | 0x4000000000000000;
          }

          v50 = v39;
        }
      }

      else
      {
        sub_100017D5C(v31, v30);
        v50 = v39;

        v48 = 0;
        v49 = 0xC000000000000000;
      }

      v52 = v128;
      v53 = v130;
      v125 = *(v130 + 48);
      *&v160 = v48;
      *(&v160 + 1) = v49;
      sub_100776394(&v160, 0);
      v128 = v52;
      v54 = v160;
      Data.append(_:)();
      sub_100016590(v126, v37);
      sub_100016590(v54, *(&v54 + 1));
      v55 = v161;
      v56 = Data.base64EncodedString(options:)(0);
      sub_100016590(v55, *(&v55 + 1));
      sub_1000E1870(v129 + v125);
      v57 = v121;
      sub_1000D2A70(v131, v121, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v57, *(v57 + 8));
      sub_100837460(v57 + *(v53 + 48), v127);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v161 = v50;
      v59 = sub_100771D58(v56._countAndFlagsBits, v56._object);
      v61 = *(v50 + 16);
      v62 = (v60 & 1) == 0;
      v63 = __OFADD__(v61, v62);
      v64 = v61 + v62;
      if (v63)
      {
        goto LABEL_58;
      }

      v65 = v60;
      if (*(v50 + 24) >= v64)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = v59;
          sub_1010064AC();
          v59 = v72;
        }
      }

      else
      {
        sub_100FE8E54(v64, isUniquelyReferenced_nonNull_native);
        v59 = sub_100771D58(v56._countAndFlagsBits, v56._object);
        if ((v65 & 1) != (v66 & 1))
        {
          goto LABEL_64;
        }
      }

      v21 = v120;
      v24 &= v24 - 1;
      if (v65)
      {
        v67 = v59;

        v68 = v161;
        sub_1008374C4(v127, *(v161 + 56) + v67 * v124);

        sub_10000B3A8(v131, &qword_101696E38, &qword_1013D8510);
        v26 = v27;
        v20 = v68;
        v25 = v119;
        if (!v24)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v69 = v161;
        *(v161 + 8 * (v59 >> 6) + 64) |= 1 << v59;
        *(v69[6] + 16 * v59) = v56;
        sub_100837460(v127, v69[7] + v59 * v124);

        sub_10000B3A8(v131, &qword_101696E38, &qword_1013D8510);
        v70 = v69[2];
        v63 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v63)
        {
          goto LABEL_59;
        }

        v69[2] = v71;
        v26 = v27;
        v20 = v69;
        v25 = v119;
        if (!v24)
        {
          goto LABEL_5;
        }
      }
    }

    if (!v38)
    {
      v39 = v20;
      v40 = BYTE6(v37);
      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v36), v36))
    {
      goto LABEL_61;
    }

    v39 = v20;
    v40 = HIDWORD(v36) - v36;
    goto LABEL_17;
  }

  while (1)
  {
LABEL_5:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v27 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v27);
    ++v26;
    if (v24)
    {
      goto LABEL_8;
    }
  }

  sub_10000B3A8(&v162, &qword_1016AAA28, &unk_1013BD990);
  v73 = v117;
  v74 = *(v117 + 23);
  v143 = 0;
  v75 = v117[12];
  v160 = v117[13];
  v161 = v75;
  *&v142[7] = v75;
  v76 = v117[15];
  v159 = v117[14];
  v140 = v159;
  v141 = v160;
  v139 = *(v117 + 104);
  v157 = v76;
  v158 = v139;
  v78 = *v117;
  v77 = v117[1];
  v137 = v76;
  v138 = v77;
  v79 = v117[1];
  v155 = v78;
  v156 = v79;
  v135 = *(v117 + 88);
  v136 = v78;
  v153 = *(v117 + 56);
  v154 = v135;
  v133 = *(v117 + 72);
  v134 = v153;
  v80 = *(v117 + 41);
  v151 = v117[19];
  v152 = v133;
  if (v80 >> 60 == 15)
  {
    sub_1001022C4(&v161, v132);
    sub_1001022C4(&v160, v132);
    sub_1001022C4(&v159, v132);
    sub_1001022C4(&v158, v132);
    sub_1001022C4(&v157, v132);
    sub_1001022C4(&v156, v132);
    sub_1001022C4(&v155, v132);
    sub_1000D2A70(&v154, v132, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v153, v132, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v152, v132, &qword_1016A0AC0, &unk_1013926A0);
    result = sub_1000D2A70(&v151, v132, &qword_1016A0AC0, &unk_1013926A0);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
LABEL_55:
    v100 = v143;
    v101 = v149;
    v102 = v114;
    *v114 = v148;
    v102[1] = v101;
    v102[2] = v150;
    *(v102 + 6) = 0;
    v103 = v146;
    *(v102 + 56) = v147;
    *(v102 + 72) = v103;
    v104 = v144;
    *(v102 + 11) = v112;
    *(v102 + 12) = v104;
    *(v102 + 104) = v145;
    *(v102 + 14) = v113;
    *(v102 + 15) = v20;
    *(v102 + 16) = v74;
    *(v102 + 136) = v100;
    v105 = v141;
    *(v102 + 137) = *v142;
    *(v102 + 19) = *&v142[15];
    v106 = v140;
    v102[10] = v105;
    v102[11] = v106;
    v107 = v138;
    v102[12] = v139;
    v102[13] = v107;
    v108 = v136;
    v102[14] = v137;
    v102[15] = v108;
    v109 = v134;
    v102[16] = v135;
    v102[17] = v109;
    v102[18] = v133;
    *(v102 + 38) = 0x302E302E33;
    *(v102 + 39) = 0xE500000000000000;
    v102[20] = v73[19];
    *(v102 + 42) = v82;
    *(v102 + 43) = v83;
    *(v102 + 44) = v84;
    *(v102 + 45) = v85;
    v110 = v116;
    *(v102 + 46) = v115;
    *(v102 + 47) = v110;
    return result;
  }

  v86 = v20;
  v87 = *(v117 + 40);
  sub_1001022C4(&v161, v132);
  sub_1001022C4(&v160, v132);
  sub_1001022C4(&v159, v132);
  sub_1001022C4(&v158, v132);
  sub_1001022C4(&v157, v132);
  sub_1001022C4(&v156, v132);
  sub_1001022C4(&v155, v132);
  sub_1000D2A70(&v154, v132, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v153, v132, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v152, v132, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v151, v132, &qword_1016A0AC0, &unk_1013926A0);
  v88 = sub_100313B54(v87, v80);
  v90 = v89;
  v82 = Data.hexString.getter();
  v83 = v91;
  sub_100016590(v88, v90);
  v92 = v80 >> 62;
  if ((v80 >> 62) > 1)
  {
    if (v92 != 2)
    {
LABEL_54:
      v96 = Data.subdata(in:)();
      v98 = v97;
      v84 = Data.hexString.getter();
      v85 = v99;
      result = sub_100016590(v96, v98);
      v20 = v86;
      goto LABEL_55;
    }

    v94 = *(v87 + 16);
    v93 = *(v87 + 24);
    v63 = __OFSUB__(v93, v94);
    v95 = v93 - v94;
    if (v63)
    {
      __break(1u);
      goto LABEL_50;
    }

LABEL_52:
    if (v95 < -1)
    {
      __break(1u);
    }

    goto LABEL_54;
  }

  if (!v92)
  {
    goto LABEL_54;
  }

LABEL_50:
  LODWORD(v95) = HIDWORD(v87) - v87;
  if (!__OFSUB__(HIDWORD(v87), v87))
  {
    v95 = v95;
    goto LABEL_52;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100FCCEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[440] = a4;
  v4[439] = a3;
  v4[438] = a2;
  v4[437] = a1;
  v5 = type metadata accessor for HashAlgorithm();
  v4[441] = v5;
  v6 = *(v5 - 8);
  v4[442] = v6;
  v7 = *(v6 + 64) + 15;
  v4[443] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v4[444] = v8;
  v9 = *(v8 - 8);
  v4[445] = v9;
  v10 = *(v9 + 64) + 15;
  v4[446] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[447] = v11;
  v12 = *(v11 - 8);
  v4[448] = v12;
  v13 = *(v12 + 64) + 15;
  v4[449] = swift_task_alloc();

  return _swift_task_switch(sub_100FCD044, 0, 0);
}

void sub_100FCD044()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 3592);
  v7 = *(v0 + 3584);
  v8 = *(v0 + 3576);
  v9 = *(v0 + 3568);
  v52 = *(v0 + 3560);
  v53 = *(v0 + 3552);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 3480) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 3488) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  static Locale.current.getter();
  v30 = Locale.acceptLanguageCode.getter();
  v32 = v31;
  (*(v52 + 8))(v9, v53);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v30, v32, 0x4C2D747065636341, 0xEF65676175676E61, v33);
  v34 = v25;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];

    if (v39)
    {
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v40);
    }
  }

  *(v0 + 3600) = v34;
  v41 = *(v0 + 3512);
  v42 = *(v0 + 3504);
  v43 = *(v0 + 3496);
  sub_10093DC08(v43, v0 + 3088);

  sub_100FCC430(v43, v42, v41, (v0 + 16));
  sub_10093DC70(v43);
  v44 = type metadata accessor for JSONEncoder();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  memcpy((v0 + 400), (v0 + 16), 0x180uLL);
  sub_100FCE710();
  v47 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 3608) = 0;
  *(v0 + 3616) = v47;
  *(v0 + 3624) = v48;
  v49 = v47;
  v50 = v48;

  sub_100017D5C(v49, v50);
  v51 = swift_task_alloc();
  *(v0 + 3632) = v51;
  *v51 = v0;
  v51[1] = sub_100FCD788;

  sub_100EA67B4();
}

uint64_t sub_100FCD788(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3632);
  v6 = *v2;
  *(v3 + 3640) = a1;
  *(v3 + 3648) = a2;

  return _swift_task_switch(sub_100FCD88C, 0, 0);
}

uint64_t sub_100FCD88C()
{
  v1 = *(v0 + 3648);
  v2 = *(v0 + 3640);
  v3 = *(v0 + 3608);
  v4 = *(v0 + 3544);
  v5 = *(v0 + 3536);
  v6 = *(v0 + 3528);
  *(v0 + 3464) = v2;
  *(v0 + 3472) = v1;
  *(v0 + 3448) = &type metadata for Data;
  *(v0 + 3456) = &protocol witness table for Data;
  *(v0 + 3424) = *(v0 + 3616);
  v7 = sub_1000035D0((v0 + 3424), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 3424));
  *(v0 + 3656) = *(v0 + 3464);
  *(v0 + 3664) = *(v0 + 3472);
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 3672) = v10;
  *(v0 + 3680) = v11;
  (*(v5 + 8))(v4, v6);
  v13 = swift_task_alloc();
  *(v0 + 3688) = v13;
  *v13 = v0;
  v13[1] = sub_100FCDA44;
  v14 = *(v0 + 3520);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_100FCDA44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3688);
  v6 = *v2;
  v4[462] = v1;

  v7 = v4[460];
  v8 = v4[459];
  if (v1)
  {
    v9 = v4[439];
    sub_100016590(v8, v7);

    v10 = sub_100FCE0E4;
  }

  else
  {
    v4[463] = a1;
    sub_100016590(v8, v7);
    v10 = sub_100FCDBAC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100FCDBAC()
{
  v55 = v0;
  v1 = v0[463];
  v2 = v0[462];
  v3 = v0[458];
  v4 = v0[457];
  v5 = v0[450];
  v6 = v0[439];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54[0] = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v54);

  sub_100016590(v4, v3);
  v8 = v54[0];
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v51 = v0;
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C448);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Pairing lock header:", v12, 2u);
  }

  v13 = v8 + 64;
  v14 = -1;
  v15 = -1 << *(v8 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v8 + 64);
  v0 = ((63 - v15) >> 6);

  v17 = 0;
  v52 = v8;
  if (v16)
  {
    while (2)
    {
      v18 = v17;
LABEL_13:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = (v18 << 10) | (16 * v19);
      v21 = (*(v8 + 48) + v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v8 + 56) + v20);
      v25 = v24[1];
      v53 = *v24;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        *v28 = 136315394;
        v29 = sub_1000136BC(v22, v23, v54);

        *(v28 + 4) = v29;
        *(v28 + 12) = 2080;
        v30 = sub_1000136BC(v53, v25, v54);

        *(v28 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s: %s", v28, 0x16u);
        swift_arrayDestroy();

        v8 = v52;

        v17 = v18;
        if (v16)
        {
          continue;
        }
      }

      else
      {

        v17 = v18;
        if (v16)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v18 >= v0)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v17;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  sub_100FCE764((v51 + 2), (v51 + 242));
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100FCE79C((v51 + 2));
  v33 = os_log_type_enabled(v31, v32);
  v34 = v51[440];
  v35 = v51[437];
  if (v33)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54[0] = v37;
    *v36 = 136315138;
    memcpy(v51 + 290, v51 + 2, 0x180uLL);
    sub_100FCE764((v51 + 2), (v51 + 338));
    v38 = String.init<A>(describing:)();
    v40 = sub_1000136BC(v38, v39, v54);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "Pairing lock body %s", v36, 0xCu);
    sub_100007BAC(v37);

    sub_100FCE79C((v51 + 2));

    sub_10093DC70(v35);
  }

  else
  {
    v41 = v51[440];

    sub_10093DC70(v35);

    sub_100FCE79C((v51 + 2));
  }

  v42 = v51[453];
  v43 = v51[452];

  sub_100017D5C(v43, v42);

  sub_100016590(v43, v42);
  v44 = v51[453];
  v45 = v51[452];
  v46 = v51[449];
  v47 = v51[446];
  v48 = v51[443];

  v49 = v51[1];

  return v49(v8, v45, v44);
}

uint64_t sub_100FCE0E4()
{
  v57 = v0;
  sub_100016590(v0[457], v0[458]);
  v1 = &qword_101695000;
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v2 = v0[462];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C448);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[462];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generate attestation header: %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[450];
  if (v1[28] != -1)
  {
    swift_once();
  }

  v54 = v0;
  sub_1000076D4(v3, qword_10177C448);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Pairing lock header:", v14, 2u);
  }

  v1 = (v11 + 64);
  v15 = -1;
  v16 = -1 << *(v11 + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & *(v11 + 64);
  v0 = ((63 - v16) >> 6);

  v18 = 0;
  v53 = v11;
  if (v17)
  {
    while (2)
    {
      v19 = v18;
LABEL_18:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v21 = (v19 << 10) | (16 * v20);
      v22 = (*(v11 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v11 + 56) + v21);
      v26 = v25[1];
      v55 = *v25;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v29 = 136315394;
        v30 = sub_1000136BC(v23, v24, &v56);

        *(v29 + 4) = v30;
        *(v29 + 12) = 2080;
        v31 = sub_1000136BC(v55, v26, &v56);

        *(v29 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s: %s", v29, 0x16u);
        swift_arrayDestroy();

        v11 = v53;

        v18 = v19;
        if (v17)
        {
          continue;
        }
      }

      else
      {

        v18 = v19;
        if (v17)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v19 >= v0)
    {
      break;
    }

    v17 = v1[v19];
    ++v18;
    if (v17)
    {
      goto LABEL_18;
    }
  }

  v32 = v54;
  sub_100FCE764((v54 + 2), (v54 + 242));
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  sub_100FCE79C((v54 + 2));
  v35 = os_log_type_enabled(v33, v34);
  v36 = v54[440];
  v37 = v54[437];
  if (v35)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56 = v39;
    *v38 = 136315138;
    memcpy(v54 + 290, v54 + 2, 0x180uLL);
    sub_100FCE764((v54 + 2), (v54 + 338));
    v40 = String.init<A>(describing:)();
    v42 = sub_1000136BC(v40, v41, &v56);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "Pairing lock body %s", v38, 0xCu);
    sub_100007BAC(v39);
    v32 = v54;

    sub_100FCE79C((v54 + 2));

    sub_10093DC70(v37);
  }

  else
  {
    v43 = v54[440];

    sub_10093DC70(v37);

    sub_100FCE79C((v54 + 2));
  }

  v44 = v32[453];
  v45 = v32[452];

  sub_100017D5C(v45, v44);

  sub_100016590(v45, v44);
  v46 = v32[453];
  v47 = v32[452];
  v48 = v32[449];
  v49 = v32[446];
  v50 = v32[443];

  v51 = v32[1];

  return v51(v11, v47, v46);
}

unint64_t sub_100FCE710()
{
  result = qword_1016C26C0;
  if (!qword_1016C26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C26C0);
  }

  return result;
}

uint64_t sub_100FCE7D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100FCE81C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
      *(result + 384) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100FCE8E0()
{
  result = qword_1016C26D0;
  if (!qword_1016C26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C26D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsSWPairingLockCheckRequestContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodsSWPairingLockCheckRequestContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100FCEA88()
{
  result = qword_1016C26D8;
  if (!qword_1016C26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C26D8);
  }

  return result;
}

unint64_t sub_100FCEAE0()
{
  result = qword_1016C26E0;
  if (!qword_1016C26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C26E0);
  }

  return result;
}

unint64_t sub_100FCEB38()
{
  result = qword_1016C26E8;
  if (!qword_1016C26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C26E8);
  }

  return result;
}

uint64_t sub_100FCEB8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12645 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xEA00000000007375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6169726553746C61 && a2 == 0xEF7265626D754E6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F636165426D756ELL && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010134DD60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101361060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E55646572616873 && a2 == 0xEA00000000007469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x314B64656573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 7500643 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x636E6F4E68747561 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7461747365747461 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101361080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    return 25;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

void sub_100FCF3A4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v10 = *(v0 + 40);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v11 = LOBYTE(aBlock[0]);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  *(v12 + 56) = &type metadata for Bool;
  *(v12 + 64) = &protocol witness table for Bool;
  *(v12 + 32) = v11;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (v11)
  {

    v13 = sub_100FD01E4();
    v14 = [v13 privateCloudDatabase];

    sub_100FE08A8(v14, 0, 0, sub_10101296C, v1);
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v15 = *(v1 + 72);
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = sub_101012964;
    v16[4] = v1;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10165FEA0;
    v17 = _Block_copy(aBlock);
    swift_retain_n();
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v21 + 8))(v5, v2);
    (*(v19 + 8))(v9, v20);
  }
}

uint64_t sub_100FCF8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  __chkstk_darwin(v8);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin(v56);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CloudKitChangeSet(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  v59 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v49 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v49 - v21;
  __chkstk_darwin(v20);
  v24 = &v49 - v23;
  sub_100022ABC(a1, &v49 - v23, type metadata accessor for CloudKitChangeSet);
  v61 = v22;
  sub_100022ABC(v24, v22, type metadata accessor for CloudKitChangeSet);
  v25 = *(v14 + 80);
  v26 = (v25 + 24) & ~v25;
  v50 = v15 + 7;
  v27 = (v15 + 7 + v26) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v4;
  sub_100029184(v24, v28 + v26, type metadata accessor for CloudKitChangeSet);
  v60 = v28;
  v29 = (v28 + v27);
  v51 = a2;
  *v29 = a2;
  v29[1] = a3;
  v30 = *(v4 + 40);
  v53 = a3;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v31 = aBlock;
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  *(v32 + 56) = &type metadata for Bool;
  *(v32 + 64) = &protocol witness table for Bool;
  *(v32 + 32) = v31;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (v31)
  {
    os_log(_:dso:log:_:_:)();
    sub_100022ABC(v61, v19, type metadata accessor for CloudKitChangeSet);
    sub_100022ABC(v19, v59, type metadata accessor for CloudKitChangeSet);
    v33 = (v25 + 16) & ~v25;
    v34 = (v50 + v33) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_100029184(v19, v35 + v33, type metadata accessor for CloudKitChangeSet);
    v36 = (v35 + v34);
    v37 = v51;
    v38 = v53;
    *v36 = v51;
    v36[1] = v38;
    *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = v4;
    v39 = qword_101694FA8;

    if (v39 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v64 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v62 == 1)
    {
      v40 = v59;
      sub_100FE5390(v59, v37, v38, v4);
    }

    else
    {
      v48 = type metadata accessor for Transaction();
      __chkstk_darwin(v48);
      *(&v49 - 4) = v4;
      *(&v49 - 3) = sub_100FE57E0;
      *(&v49 - 2) = v35;
      static Transaction.named<A>(_:with:)();

      v40 = v59;
    }

    sub_100FE5334(v61);
    return sub_100FE5334(v40);
  }

  else
  {
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v41 = *(v4 + 72);
    v42 = swift_allocObject();
    v42[2] = v4;
    v42[3] = sub_100FE5284;
    v42[4] = v60;
    v67 = sub_100B24A78;
    v68 = v42;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100006684;
    v66 = &unk_10165EF50;
    v43 = _Block_copy(&aBlock);

    v44 = v52;
    static DispatchQoS.unspecified.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v45 = v55;
    v46 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v57 + 8))(v45, v46);
    (*(v54 + 8))(v44, v56);
    sub_100FE5334(v61);
  }
}

uint64_t sub_100FD00D0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C498);
  sub_1000076D4(v0, qword_10177C498);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100FD0154()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100044B3C(v0, qword_1016C26F0);
  *sub_1000076D4(v0, qword_1016C26F0) = 120;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

id sub_100FD01E4()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 200);
  }

  else
  {
    v3 = sub_100FD023C();
    v4 = *(v0 + 200);
    *(v0 + 200) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100FD023C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v0 BOOLForKey:v3];

    if (v4)
    {
      v5 = 2;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = 1;
LABEL_6:
  v6 = objc_allocWithZone(CKContainerID);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithContainerIdentifier:v7 environment:v5];

  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  *(v9 + 56) = sub_100008BB8(0, &qword_1016C2F88, CKContainerID_ptr);
  *(v9 + 64) = sub_100009D18(&qword_1016C2F90, &qword_1016C2F88, CKContainerID_ptr);
  *(v9 + 32) = v8;
  v10 = v8;
  os_log(_:dso:log:_:_:)();

  v11 = [objc_allocWithZone(CKContainer) initWithContainerID:v10];

  return v11;
}

uint64_t sub_100FD0494()
{
  v60 = *v0;
  v1 = sub_1000BC4D4(&qword_1016C2F20, &qword_1013F7790);
  v75 = *(v1 - 8);
  v76 = v1;
  v2 = *(v75 + 64);
  __chkstk_darwin(v1);
  v74 = &v56 - v3;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v73 = &v56 - v6;
  v59 = sub_1000BC4D4(&qword_1016C2F28, &qword_1013F7798);
  v58 = *(v59 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v59);
  v57 = &v56 - v8;
  v70 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v69 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v68 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = *(v66 + 64);
  __chkstk_darwin(v14);
  v65 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v17 = *(v62 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v62);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000BC4D4(&unk_1016C2F30, &qword_1013F77A0);
  v64 = *(v63 - 8);
  v21 = *(v64 + 64);
  __chkstk_darwin(v63);
  v23 = &v56 - v22;
  v61 = v0;
  v80[0] = v0[20];

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v79 = v0[4];
  v24 = sub_1000BC4D4(&qword_1016A1000, &qword_1013F1BD0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v25 = sub_1000041A4(&qword_1016C2F40, &qword_1016A1000, &qword_1013F1BD0);
  v26 = sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
  v71 = v25;
  v72 = v24;
  v77 = v26;
  Publisher.throttle<A>(for:scheduler:latest:)();
  v27 = v20;
  v28 = v61;
  (*(v17 + 8))(v27, v62);

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016C2F48, &unk_1016C2F30, &qword_1013F77A0);
  v29 = v63;
  v30 = Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v23, v29);
  v31 = v28[21];
  v28[21] = v30;

  v80[0] = 0;
  v80[1] = 0;
  v81 = xmmword_1013F7350;
  v82 = 704;
  v32 = v28[16];
  type metadata accessor for CloudKitCoalescer();
  swift_allocObject();

  v33 = sub_100503AA4(v80, sub_101012980, v32);

  v34 = v28[18];
  v28[18] = v33;

  (*(v66 + 104))(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v67);
  static DispatchQoS.unspecified.getter();
  v79 = _swiftEmptyArrayStorage;
  sub_100004084(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v36 = v28[18];
  if (v36)
  {
    v79 = *(v36 + 24);
    sub_1000BC4D4(&unk_1016C2F50, &unk_1013AD520);
    sub_1000041A4(&qword_1016A2F68, &unk_1016C2F50, &unk_1013AD520);
    v37 = Publisher.eraseToAnyPublisher()();
    v78 = v35;
    v79 = v37;
    v38 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v39 = v73;
    (*(*(v38 - 8) + 56))(v73, 1, 1, v38);
    sub_1000BC4D4(&qword_1016C2F60, &unk_1013F77A8);
    sub_1000041A4(&qword_1016C2F68, &qword_1016C2F60, &unk_1013F77A8);
    v40 = v57;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v39, &unk_1016B0FE0, &unk_101391980);

    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v43 = v60;
    *(v42 + 16) = v41;
    *(v42 + 24) = v43;
    sub_1000041A4(&unk_1016C2F70, &qword_1016C2F28, &qword_1013F7798);
    v44 = v59;
    v45 = Publisher<>.sink(receiveValue:)();

    (*(v58 + 8))(v40, v44);
  }

  else
  {
    v45 = 0;
    v39 = v73;
  }

  v46 = v28[19];
  v28[19] = v45;

  v79 = *(v32 + 32);
  v47 = Publisher.eraseToAnyPublisher()();
  v78 = v28[6];
  v48 = v78;
  v79 = v47;
  v49 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v49 - 8) + 56))(v39, 1, 1, v49);
  v50 = v48;
  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40);
  v51 = v74;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v39, &unk_1016B0FE0, &unk_101391980);

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&unk_1016B1070, &qword_1016C2F20, &qword_1013F7790);
  v52 = v76;
  v53 = Publisher<>.sink(receiveValue:)();

  (*(v75 + 8))(v51, v52);
  v54 = v28[17];
  v28[17] = v53;
}

uint64_t sub_100FD0FBC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100FD46A4();
  }

  return result;
}

uint64_t sub_100FD1014(uint64_t a1)
{
  v1 = *(a1 + 16);

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  return v3;
}

uint64_t sub_100FD1098(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v10;
    v15 = v13;

    v16 = sub_100FD01E4();
    v17 = [v16 privateCloudDatabase];

    sub_100FE08A8(v17, 0, 0, sub_101012990, v14);

    static DispatchTime.now()();
    if (qword_101695140 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for DispatchTimeInterval();
    sub_1000076D4(v18, qword_1016C26F0);
    + infix(_:_:)();
    v19 = *(v3 + 8);
    v19(v7, v2);
    OS_dispatch_group.wait(timeout:)();
    v20 = *(v12 + 40);

    QueueSynchronizer.conditionalSync<A>(_:)();

    sub_100A48990();
    v21 = *(v12 + 176);
    sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
    sub_1000041A4(&qword_1016C2F80, &unk_1016B11B0, &unk_101391880);
    Subject<>.send()();

    v19(v9, v2);
  }

  return result;
}

void sub_100FD13E4(uint64_t a1, char a2, NSObject *a3)
{
  Transaction.capture()();
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100008C00();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  dispatch_group_leave(a3);
}

uint64_t sub_100FD1584(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v10 - v5;
  *(a1 + 192) = 1;
  if (*(a1 + 144))
  {

    static Date.trustedNow.getter(v6);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    sub_100503784(v6);
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v8 = sub_1005034F4();
    sub_1000BB584(v8, v9 & 1);
  }

  return result;
}

uint64_t sub_100FD16EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016C3130, &unk_1013F7950);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  (*(v5 + 16))(&v12[-v7], a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  type metadata accessor for Transaction();
  v13 = a2;
  v14 = sub_101012ADC;
  v15 = v10;
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100FD1874(void *a1, char a2)
{
  if (a2)
  {
    if (qword_101695138 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C498);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1000BB578(a1, 1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v27 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v8 = String.init<A>(describing:)();
      v10 = sub_1000136BC(v8, v9, &v27);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "accountInfo error: %{public}s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    LOBYTE(v27) = 0;
  }

  else
  {
    if (qword_101695138 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C498);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    sub_1000BB578(a1, 0);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v17 = [v12 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_1000BB578(a1, 0);
      v21 = sub_1000136BC(v18, v20, &v27);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "accountInfo: %s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v22 = [v12 supportsDeviceToDeviceEncryption];
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "isManateeAvailable: %{BOOL}d", v25, 8u);
    }

    LOBYTE(v27) = v22;
  }

  sub_1000BC4D4(&unk_1016C3130, &unk_1013F7950);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100FD1C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_101012BB8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101660080;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = v17;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v19 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v18);
}

void sub_100FD1F1C()
{
  v1 = v0;
  v48 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!v1[31])
  {
    v15 = [objc_opt_self() mainBundle];
    v16 = [v15 bundleIdentifier];

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v1;
      v20 = v19;

      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v50 = 0xD00000000000001BLL;
      v51 = 0x8000000101378050;
      v21._countAndFlagsBits = v17;
      v21._object = v20;
      String.append(_:)(v21);

      v22 = v50;
      v45[2] = "com.apple.icloud-container.";
      v46 = v51;
      v45[1] = "com.apple.aps.searchpartyd";
      (*(v47 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
      static DispatchQoS.unspecified.getter();
      v50 = _swiftEmptyArrayStorage;
      sub_100004084(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      v23 = v18;
      sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v24 = v22;
      v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v26 = type metadata accessor for ContainerAPSBridge();
      v27 = objc_allocWithZone(v26);
      *&v27[OBJC_IVAR____TtC12searchpartyd18ContainerAPSBridge_delegate + 8] = 0;
      *(swift_unknownObjectWeakInit() + 8) = &off_101616328;
      swift_unknownObjectWeakAssign();
      v49.receiver = v27;
      v49.super_class = v26;
      v28 = objc_msgSendSuper2(&v49, "init");
      v29 = v18[32];
      v18[32] = v28;

      v30 = v18[29];
      v31 = v18[30];
      v32 = objc_allocWithZone(APSConnection);

      v14 = v25;
      v33 = String._bridgeToObjectiveC()();

      v34 = String._bridgeToObjectiveC()();
      v35 = [v32 initWithEnvironmentName:v33 namedDelegatePort:v34 queue:v14];

      v36 = v18[31];
      v23[31] = v35;
      v37 = v35;

      v38 = v46;
      if (v37)
      {
        sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_101385D80;
        *(v39 + 32) = v24;
        *(v39 + 40) = v38;

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v37 _setEnabledTopics:isa];
      }

      v41 = v23[31];
      if (v41)
      {
        v42 = v41;
        v43 = String._bridgeToObjectiveC()();

        [v42 requestTokenForTopic:v43 identifier:0];

        v44 = v23[31];
        if (!v44)
        {
          goto LABEL_9;
        }
      }

      else
      {

        v44 = v23[31];
        if (!v44)
        {
LABEL_9:
          static os_log_type_t.default.getter();
          if (qword_101695040 == -1)
          {
LABEL_10:
            os_log(_:dso:log:_:_:)();

            return;
          }

LABEL_18:
          swift_once();
          goto LABEL_10;
        }
      }

      [v44 setDelegate:v23[32]];
      goto LABEL_9;
    }

    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100FD2614(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  result = os_log(_:dso:log:_:_:)();
  *(a1 + 80) = 1;
  return result;
}

uint64_t sub_100FD26B8()
{
  v1 = [objc_opt_self() defaultCenter];
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  [v1 addObserver:v0 selector:"accountDidChange:" name:CKAccountChangedNotification object:0];
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_101012750;
  *(v3 + 24) = v2;

  unsafeFromAsyncTask<A>(_:)();
}

uint64_t sub_100FD2870()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 56);
    aBlock[4] = sub_101012960;
    aBlock[5] = result;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10165FE50;
    v14 = result;
    v11 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v16 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v13 = v5;
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v13);
  }

  return result;
}

uint64_t sub_100FD2B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100FD2C28;

  return daemon.getter();
}

uint64_t sub_100FD2C28(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = a1;

  type metadata accessor for Daemon();
  sub_100004084(&qword_1016969E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FD2D80, v5, v4);
}

uint64_t sub_100FD2D80()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100FD2DF4, 0, 0);
}

uint64_t sub_100FD2DF4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v8 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_100FD2F04;
  v6 = v0[7];

  return v8(0xD00000000000001CLL, 0x8000000101377EB0, &unk_1013F7778, v3);
}

uint64_t sub_100FD2F04(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100FD3040, 0, 0);
}

uint64_t sub_100FD3040()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013F7788, v4);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100FD3164(int a1)
{
  v2 = v1;
  v29 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v27 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v27);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v34 = *(v28 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v28);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 40);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v10 = *(v2 + 72);
  v41 = sub_101012690;
  v42 = v2;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v33 = &v39;
  v39 = sub_100006684;
  v40 = &unk_10165FC98;
  v11 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  v32 = sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  v31 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  v30 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v12 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v10;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  v13 = *(v35 + 8);
  v35 += 8;
  v13(v5, v12);
  v14 = *(v34 + 8);
  v34 += 8;
  v15 = v28;
  v14(v8, v28);

  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  v26 = *(v2 + 48);
  v16 = swift_allocObject();
  v22 = v2;
  swift_weakInit();
  v41 = sub_1010126B4;
  v42 = v16;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_100006684;
  v40 = &unk_10165FCC0;
  v17 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  v23 = v5;
  v24 = v13;
  v13(v5, v12);
  v26 = v14;
  v14(v8, v15);

  if ((v29 & 1) == 0)
  {
    v41 = sub_1010126BC;
    v42 = v22;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100006684;
    v40 = &unk_10165FCE8;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    v20 = v23;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    v24(v20, v12);
    v26(v8, v15);
  }

  return result;
}

void sub_100FD3714(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = *(a1 + 88);
  *(a1 + 88) = xmmword_1013F7360;
  sub_101011434(v2);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  *(a1 + 104) = 0;
  *(a1 + 80) = 0;
  v8 = *(a1 + 64);
  OS_dispatch_semaphore.signal()();

  v9 = dispatch_semaphore_create(0);
  v10 = *(a1 + 64);
  *(a1 + 64) = v9;
}

uint64_t sub_100FD38C4(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = *(a1 + 64);
  OS_dispatch_semaphore.wait()();

  static os_log_type_t.default.getter();

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100FD39B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100133310(v1);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100FD3A30()
{
  v1 = v0;
  v34 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v33 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v32 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v31 = 0x8000000101377B80;
  static DispatchQoS.background.getter();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v18 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v18 + 40) = v19;
  swift_unknownObjectWeakInit();
  *(v18 + 88) = 0;
  v29 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v30 = v1;
  v27 = ".searchpartyd.retryFetch";
  *(v18 + 96) = 0;
  *(v18 + 104) = 0;
  v20 = *(v9 + 16);
  v25 = v13;
  v20(v13, v15, v8);
  (*(v5 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  v35 = _swiftEmptyArrayStorage;
  sub_100004084(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);

  v28 = v8;
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v26 = v15;
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v18 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v18 + 24) = 0xD000000000000028;
  *(v18 + 32) = v31;
  *(v18 + 48) = sub_101012600;
  *(v18 + 56) = v16;
  *(v18 + 64) = sub_101012608;
  *(v18 + 72) = v17;

  sub_100997398();

  (*(v9 + 8))(v26, v28);

  v22 = *(v30 + 40);
  __chkstk_darwin(v21);
  *(&v25 - 2) = v23;
  *(&v25 - 1) = v18;
  QueueSynchronizer.conditionalSync<A>(_:)();
}

uint64_t sub_100FD3F54@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 40);

    sub_1000BC4D4(&qword_1016C2F18, &qword_1013F7750);
    QueueSynchronizer.conditionalSync<A>(_:)();

    v4 = v7;
    v5 = v8;
    v6 = v9;
  }

  else
  {
    v6 = 0;
    v4 = xmmword_10139D930;
    v5 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_100FD4028(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      static os_log_type_t.default.getter();
      if (qword_101695040 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_101385D80;
      type metadata accessor for XPCActivity();

      v7 = String.init<A>(describing:)();
      v9 = v8;
      *(v6 + 56) = &type metadata for String;
      *(v6 + 64) = sub_100008C00();
      *(v6 + 32) = v7;
      *(v6 + 40) = v9;
      os_log(_:dso:log:_:_:)();

      sub_100FD3164(0);
      v10 = *(v5 + 160);
      PassthroughSubject.send(_:)();
      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_100FD41D0(uint64_t a1)
{
  *(a1 + 120) = 1;
  v1 = *(a1 + 112);
  type metadata accessor for Transaction();

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100FD4270(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  *(v17 + 24) = a2;
  aBlock[4] = sub_1010125F8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10165FC48;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v6, v3);
  (*(v22 + 8))(v10, v23);
}

void sub_100FD4634(uint64_t a1, uint64_t a2)
{
  Transaction.capture()();
  if (a2)
  {
    v3 = *(a2 + 40);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }
}

uint64_t sub_100FD46A4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 32);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_101694940 == -1)
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
  v9 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010745A0(v15[1]);
  v11 = v10;

  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = v11;
  v13 = type metadata accessor for Transaction();
  __chkstk_darwin(v13);
  v15[-4] = v1;
  v15[-3] = sub_101011908;
  v15[-2] = v12;

  static Transaction.named<A>(_:with:)();
}

void sub_100FD4958(void *a1, char a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v82 - v14;
  v94 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v18 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v23 = __chkstk_darwin(v22);
  v28 = v82 - v27;
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_101385D80;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100008C00();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v89 = v26;
    v90 = v25;
    v91 = v24;
    v82[1] = v18;
    v83 = v13;
    v84 = v15;
    v85 = v9;
    v86 = v8;
    v96 = a3;
    v92 = v23;
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v33 = qword_10177C388;
    v34 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    v95 = xmmword_101385D80;
    *(v35 + 16) = xmmword_101385D80;
    v36 = a1;
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    sub_1000BB578(a1, 0);
    *(v35 + 56) = &type metadata for String;
    v87 = sub_100008C00();
    *(v35 + 64) = v87;
    *(v35 + 32) = v38;
    *(v35 + 40) = v40;
    os_log(_:dso:log:_:_:)();

    v41 = v96;
    v42 = *(v96 + 104);
    static os_log_type_t.default.getter();
    v88 = v34;
    v43 = swift_allocObject();
    *(v43 + 16) = v95;
    v44 = [v36 supportsDeviceToDeviceEncryption];
    *(v43 + 56) = &type metadata for Bool;
    *(v43 + 64) = &protocol witness table for Bool;
    *(v43 + 32) = v44;
    v93 = v33;
    os_log(_:dso:log:_:_:)();

    *(v41 + 104) = [v36 supportsDeviceToDeviceEncryption];
    v45 = [v36 supportsDeviceToDeviceEncryption];
    if (v42)
    {
      if ((v45 & 1) == 0)
      {
        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        v46 = v96;
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1001334C0(v46);
          swift_unknownObjectRelease();
        }

        sub_100FD3164(0);
      }
    }

    else if (v45)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      sub_1000034A4();
      sub_100EEA588(1, 1);

      v47 = v96;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v49 = *(Strong + 160);
        swift_unknownObjectRelease();
        if (qword_101694C10 != -1)
        {
          swift_once();
        }

        v50 = v92;
        v51 = sub_1000076D4(v92, qword_10177BA58);
        v52 = v91;
        v53 = v89;
        (v91)[2](v89, v51, v50);
        v54 = v90;
        URL.appendingPathComponent(_:isDirectory:)();
        v55 = v52[1];
        v55(v53, v50);
        URL.appendingPathComponent(_:)();
        v55(v54, v50);
        v56 = *(v47 + 272);
        v57 = sub_10088F948(v28, v56);
        v55(v28, v50);
        v91 = v49;
        sub_10088F30C(2, v49);
        v58 = sub_10088F948(v28, v56);
        v55(v28, v50);
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        static os_log_type_t.default.getter();
        if (v57 && v58)
        {
          os_log(_:dso:log:_:_:)();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          v59 = *(v47 + 40);
          QueueSynchronizer.conditionalSync<A>(_:)();
          static os_log_type_t.default.getter();
          if (qword_101695048 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();
          v60 = *(v47 + 64);
          OS_dispatch_semaphore.signal()();

          static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)();
          sub_100A48990();
        }

        else
        {
          v90 = v58;
          v92 = v57;
          os_log(_:dso:log:_:_:)();
          static os_log_type_t.default.getter();
          v61 = swift_allocObject();
          *(v61 + 16) = v95;
          v62 = *(v47 + 216);
          v63 = *(v47 + 224);
          v64 = v87;
          *(v61 + 56) = &type metadata for String;
          *(v61 + 64) = v64;
          *(v61 + 32) = v62;
          *(v61 + 40) = v63;

          os_log(_:dso:log:_:_:)();

          v65 = sub_101010AA8(v62, v63);

          v66 = CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.setter();
          v67 = *(v47 + 40);
          __chkstk_darwin(v66);
          v82[-2] = v47;
          v82[-1] = v65;
          QueueSynchronizer.conditionalSync<A>(_:)();
          if (a4 > 0.0)
          {
            aBlock[4] = sub_101011974;
            aBlock[5] = v47;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100006684;
            aBlock[3] = &unk_10165FA40;
            _Block_copy(aBlock);
            v97 = _swiftEmptyArrayStorage;
            sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);

            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v68 = type metadata accessor for DispatchWorkItem();
            v69 = *(v68 + 48);
            v70 = *(v68 + 52);
            swift_allocObject();
            v71 = DispatchWorkItem.init(flags:block:)();

            static os_log_type_t.default.getter();
            v72 = swift_allocObject();
            *(v72 + 16) = v95;
            *(v72 + 56) = &type metadata for Double;
            *(v72 + 64) = &protocol witness table for Double;
            *(v72 + 32) = a4;
            os_log(_:dso:log:_:_:)();

            v73 = *(v47 + 264);
            *(v47 + 264) = v71;

            v74 = *(v47 + 32);
            v75 = v83;
            static DispatchTime.now()();
            v76 = v84;
            + infix(_:_:)();
            v77 = *(v85 + 8);
            v78 = v75;
            v79 = v86;
            v77(v78, v86);
            OS_dispatch_queue.asyncAfter(deadline:execute:)();

            v77(v76, v79);
          }

          v80 = sub_100FD01E4();
          v81 = [v80 privateCloudDatabase];

          sub_100FE08A8(v81, 0, 0, sub_101011968, v47);
        }
      }

      else
      {
        static os_log_type_t.error.getter();

        os_log(_:dso:log:_:_:)();
      }
    }
  }
}

uint64_t sub_100FD5644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100008C00();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    v12 = *(a4 + 216);
    v11 = *(a4 + 224);
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v12;
    *(v10 + 40) = v11;

    os_log(_:dso:log:_:_:)();
  }
}

void sub_100FD5868(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 32);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 == -1)
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
  os_log(_:dso:log:_:_:)();
  exit(0);
}

void sub_100FD59CC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  QueueSynchronizer.conditionalSync<A>(_:)();
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100008C00();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      sub_100004084(&qword_101696250, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v12 == 111)
      {
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        QueueSynchronizer.conditionalSync<A>(_:)();
      }

      _BridgedStoredNSError.code.getter();
      if ((v12 - 3) > 1)
      {
        v11 = v12;
        sub_100FD5F64(v11);
      }

      else
      {
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        QueueSynchronizer.conditionalSync<A>(_:)();
      }
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    QueueSynchronizer.conditionalSync<A>(_:)();
    static os_log_type_t.default.getter();
    if (qword_101695048 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v10 = *(a3 + 64);
    OS_dispatch_semaphore.signal()();

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100A48990();
  }
}

uint64_t sub_100FD5E98(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (*(a1 + 264))
  {
    v2 = *(a1 + 264);

    dispatch thunk of DispatchWorkItem.cancel()();

    v3 = *(a1 + 264);
  }

  *(a1 + 264) = 0;
}

void sub_100FD5F64(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 32);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.notOnQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v68[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = v71;
    sub_100004084(&qword_101696250, type metadata accessor for CKError);
    v12 = _BridgedStoredNSError.userInfo.getter();
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = &qword_101695000;
    if (*(v12 + 16))
    {
      v16 = sub_100771D58(v13, v14);
      v18 = v17;

      if (v18)
      {
        sub_100013894(*(v12 + 56) + 32 * v16, v68);

        sub_1000BC4D4(&qword_1016C2E20, &qword_1013F76F0);
        if (swift_dynamicCast())
        {
          v19 = v70;
          static os_log_type_t.error.getter();
          if (qword_101695040 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_101385D80;
          v21 = Dictionary.description.getter();
          v23 = v22;
          *(v20 + 56) = &type metadata for String;
          *(v20 + 64) = sub_100008C00();
          *(v20 + 32) = v21;
          *(v20 + 40) = v23;
          os_log(_:dso:log:_:_:)();

          v24 = 1 << *(v19 + 32);
          v25 = -1;
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          v26 = v25 & *(v19 + 64);
          v27 = (v24 + 63) >> 6;

          v28 = 0;
          while (v26)
          {
            v29 = v28;
LABEL_16:
            v30 = __clz(__rbit64(v26));
            v26 &= v26 - 1;
            v31 = v30 | (v29 << 6);
            sub_100476DEC(*(v19 + 48) + 40 * v31, v68);
            v69 = *(*(v19 + 56) + 8 * v31);
            sub_100FD5F64(v69);
            sub_10000B3A8(v68, &unk_1016C2E28, &unk_1013F76F8);
          }

          while (1)
          {
            v29 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v29 >= v27)
            {

              v15 = &qword_101695000;
              goto LABEL_20;
            }

            v26 = *(v19 + 64 + 8 * v29);
            ++v28;
            if (v26)
            {
              v28 = v29;
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_45;
        }

LABEL_20:
        v68[0] = v2;
        _BridgedStoredNSError.code.getter();
        v32 = v71;
        static os_log_type_t.error.getter();
        v33 = v15[8];
        if (v32 != 21)
        {
          if (v32 == 26)
          {
            if (v33 == -1)
            {
LABEL_23:
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v34 = swift_allocObject();
              v67 = xmmword_101385D80;
              *(v34 + 16) = xmmword_101385D80;
              v35 = v2;
              v36 = related decl 'e' for CKErrorCode.description.getter();
              v38 = v37;

              *(v34 + 56) = &type metadata for String;
              v39 = sub_100008C00();
              *(v34 + 64) = v39;
              *(v34 + 32) = v36;
              *(v34 + 40) = v38;
              os_log(_:dso:log:_:_:)();

              v40 = *(v3 + 88);
              *(v3 + 88) = 0;
              sub_101011434(v40);
              v41 = swift_allocObject();
              *(v41 + 16) = v67;
              v70 = 0;
              v42 = String.init<A>(describing:)();
              *(v41 + 56) = &type metadata for String;
              *(v41 + 64) = v39;
              *(v41 + 32) = v42;
              *(v41 + 40) = v43;
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v44 = static OS_os_log.default.getter();
              static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)();

              static os_log_type_t.default.getter();
              os_log(_:dso:log:_:_:)();
              sub_100FD9B00(0);

              return;
            }

LABEL_46:
            swift_once();
            goto LABEL_23;
          }

          if (v33 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v50 = swift_allocObject();
          v66 = xmmword_101385D80;
          *(v50 + 16) = xmmword_101385D80;
          v51 = v2;
          v52 = related decl 'e' for CKErrorCode.description.getter();
          v54 = v53;

          *(v50 + 56) = &type metadata for String;
          *&v67 = sub_100008C00();
          *(v50 + 64) = v67;
          *(v50 + 32) = v52;
          *(v50 + 40) = v54;
          os_log(_:dso:log:_:_:)();

          v68[0] = v51;
          _BridgedStoredNSError.code.getter();
          if (v71 == 110)
          {
            static os_log_type_t.error.getter();
            os_log(_:dso:log:_:_:)();
            if (*(v3 + 104) == 1)
            {
              *(v3 + 104) = 0;
              static os_log_type_t.error.getter();
              goto LABEL_40;
            }
          }

          else
          {
            if (v71 != 112)
            {
              if (v71 == 111)
              {
                static os_log_type_t.error.getter();
LABEL_40:
                os_log(_:dso:log:_:_:)();
                goto LABEL_41;
              }

              static os_log_type_t.error.getter();
              v61 = swift_allocObject();
              *(v61 + 16) = v66;
              v46 = v51;
              v62 = related decl 'e' for CKErrorCode.description.getter();
              v64 = v63;

              v65 = v67;
              *(v61 + 56) = &type metadata for String;
              *(v61 + 64) = v65;
              *(v61 + 32) = v62;
              *(v61 + 40) = v64;
              os_log(_:dso:log:_:_:)();

LABEL_29:

              return;
            }

            v55 = *(v3 + 88);
            *(v3 + 88) = 0;
            sub_101011434(v55);
            v56 = swift_allocObject();
            *(v56 + 16) = v66;
            v68[0] = 0;
            v57 = String.init<A>(describing:)();
            v58 = v67;
            *(v56 + 56) = &type metadata for String;
            *(v56 + 64) = v58;
            *(v56 + 32) = v57;
            *(v56 + 40) = v59;
            sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
            v60 = static OS_os_log.default.getter();
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            static os_log_type_t.default.getter();
            os_log(_:dso:log:_:_:)();
            sub_100FDF4A0();
            sub_100FD9B00(4);
            sub_100FD3164(0);
          }

LABEL_41:

          return;
        }

        if (v33 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_101385D80;
        v46 = v2;
        v47 = related decl 'e' for CKErrorCode.description.getter();
        v49 = v48;

        *(v45 + 56) = &type metadata for String;
        *(v45 + 64) = sub_100008C00();
        *(v45 + 32) = v47;
        *(v45 + 40) = v49;
        os_log(_:dso:log:_:_:)();

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1001334C0(v3);
          swift_unknownObjectRelease();
        }

        sub_100FD3164(0);
        goto LABEL_29;
      }
    }

    else
    {
    }

    goto LABEL_20;
  }
}

uint64_t sub_100FD6B08(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  type metadata accessor for Transaction();

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100FD6C14()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);
    __chkstk_darwin(result);

    QueueSynchronizer.conditionalSync<A>(_:)();
  }

  return result;
}

uint64_t sub_100FD6CF4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  __chkstk_darwin(v9);
  v37 = a1;
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  v44 = a2;
  v13 = a2[12];
  v14 = CKStringFromAccountStatus();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v12 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v12 + 64) = v18;
  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  v19 = CKStringFromAccountStatus();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v18;
  *(v12 + 72) = v20;
  *(v12 + 80) = v22;
  os_log(_:dso:log:_:_:)();

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      static os_log_type_t.error.getter();
      result = os_log(_:dso:log:_:_:)();
      v23 = v44;
      if (v44[12] == 2)
      {
        goto LABEL_20;
      }

      v36 = v44[6];
      v26 = swift_allocObject();
      *(v26 + 16) = v37;
      *(v26 + 24) = v23;
      v49 = sub_101012748;
      v50 = v26;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_100006684;
      v48 = &unk_10165FDB0;
      v27 = _Block_copy(&aBlock);

      v28 = v38;
      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v29 = v39;
      v30 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v27);
      (*(v42 + 8))(v29, v30);
      (*(v40 + 8))(v28, v41);
    }

    else
    {
      v23 = v44;
      if (a3 != 3)
      {
LABEL_11:
        static os_log_type_t.error.getter();
        goto LABEL_12;
      }

      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      if (v23[12] == 3)
      {
        static os_log_type_t.default.getter();
LABEL_12:
        result = os_log(_:dso:log:_:_:)();
        goto LABEL_20;
      }

      v36 = v23[6];
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      *(v31 + 24) = v23;
      v49 = sub_101012740;
      v50 = v31;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_100006684;
      v48 = &unk_10165FD60;
      v32 = _Block_copy(&aBlock);

      v33 = v38;
      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v34 = v39;
      v35 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);
      (*(v42 + 8))(v34, v35);
      (*(v40 + 8))(v33, v41);

      if (qword_101694940 != -1)
      {
        swift_once();
      }

      sub_1000034A4();
      sub_100EEA588(0, 0);
    }

    result = sub_100FD3164(0);
    goto LABEL_20;
  }

  if (!a3)
  {
    static os_log_type_t.error.getter();
    result = os_log(_:dso:log:_:_:)();
    v23 = v44;
    goto LABEL_20;
  }

  v23 = v44;
  if (a3 != 1)
  {
    goto LABEL_11;
  }

  v24 = v44[20];
  LOBYTE(aBlock) = 1;
  result = PassthroughSubject.send(_:)();
LABEL_20:
  v23[12] = a3;
  return result;
}

uint64_t sub_100FD7458(uint64_t a1, uint64_t a2)
{
  Transaction.capture()();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100137944(a2, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100FD74BC(uint64_t a1, uint64_t a2)
{
  Transaction.capture()();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100137944(a2, 0);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100FD7530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v14 = *(a1 + 48);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_100B24A48;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10165F090;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_100FD78A8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v43 = a3;
  v41 = a1;
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_1000BC4D4(&qword_1016C2BA0, &qword_1013F7510);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  v14 = sub_1000BC4D4(&unk_1016C2BA8, &unk_1013F7518);
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = *(v39 + 64);
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  if (a2[18] && (v18 = a2[18], , v19 = sub_10050252C(), , (v19 & 1) != 0))
  {
    v37 = a4;
    static os_log_type_t.default.getter();
    if (qword_101695048 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v20 = swift_allocObject();
    v34 = v20;
    v35 = a2;
    *(v20 + 16) = 0;
    v36 = (v20 + 16);
    v42 = a2[22];
    sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
    sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880);
    Publisher.first()();
    v42 = a2[6];
    v21 = v42;
    v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016C2BB8, &qword_1016C2BA0, &qword_1013F7510);
    sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
    v23 = v21;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v9, &unk_1016B0FE0, &unk_101391980);

    (*(v38 + 8))(v13, v10);
    v24 = swift_allocObject();
    v25 = v37;
    v24[2] = v43;
    v24[3] = v25;
    v26 = v41;
    v24[4] = v34;
    v24[5] = v26;
    sub_1000041A4(&qword_1016C2BC8, &unk_1016C2BA8, &unk_1013F7518);

    v27 = v40;
    v28 = Publisher<>.sink(receiveValue:)();

    (*(v39 + 8))(v17, v27);
    v29 = v36;
    swift_beginAccess();
    v30 = *v29;
    *v29 = v28;

    v31 = *(v35[16] + 16);

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695048 != -1)
    {
      swift_once();
    }

    v33 = os_log(_:dso:log:_:_:)();
    return v43(v33);
  }
}

void sub_100FD7E70(uint64_t a1, void (*a2)(uint64_t))
{
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v3 = os_log(_:dso:log:_:_:)();
  a2(v3);
  Transaction.capture()();
}

uint64_t sub_100FD7F1C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v43);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  v46 = xmmword_101385D80;
  *(v9 + 16) = xmmword_101385D80;
  v10 = a1;
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  v15 = sub_1000BC4D4(&unk_1016C2E10, &qword_1013F76E8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = Future.init()();
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = v10;
  v19[4] = v18;
  v20 = *(v2 + 40);
  v21 = v10;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v22 = aBlock;
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v46;
  *(v23 + 56) = &type metadata for Bool;
  *(v23 + 64) = &protocol witness table for Bool;
  *(v23 + 32) = v22;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (v22)
  {
    os_log(_:dso:log:_:_:)();
    v24 = swift_allocObject();
    *(v24 + 2) = v21;
    *(v24 + 3) = v2;
    *(v24 + 4) = v18;
    v25 = qword_101694FA8;
    v26 = v21;

    if (v25 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v49 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v47 != 1)
    {
      v38 = type metadata accessor for Transaction();
      __chkstk_darwin(v38);
      *(&v40 - 4) = v2;
      *(&v40 - 3) = sub_101011758;
      *(&v40 - 2) = v24;
      static Transaction.named<A>(_:with:)();

      return v18;
    }

    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v2;
    v27[4] = v18;
    v28 = v26;

    sub_100FDA70C(v28);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_101011764;
    *(v29 + 24) = v27;

    Future.addSuccess(block:)();

    v30 = swift_allocObject();
    v30[2] = v2;
    v30[3] = v28;
    v30[4] = sub_101011764;
    v30[5] = v27;
    v31 = v28;

    Future.addFailure(block:)();
  }

  else
  {
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v32 = *(v2 + 72);
    v33 = swift_allocObject();
    v33[2] = v2;
    v33[3] = sub_10101174C;
    v33[4] = v19;
    v52 = sub_100B28008;
    v53 = v33;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_100006684;
    v51 = &unk_10165F6D0;
    v34 = _Block_copy(&aBlock);

    v35 = v40;
    static DispatchQoS.unspecified.getter();
    v47 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v36 = v42;
    v37 = v45;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v44 + 8))(v36, v37);
    (*(v41 + 8))(v35, v43);
  }

  return v18;
}

uint64_t sub_100FD8758(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a2;
  v7[4] = a4;
  v8 = qword_101694FA8;

  v9 = a3;
  if (v8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v17 == 1)
  {
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a4;

    v11 = v9;
    sub_100FDA70C(v11);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_101012DFC;
    *(v12 + 24) = v10;

    Future.addSuccess(block:)();

    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = v11;
    v13[4] = sub_101012DFC;
    v13[5] = v10;

    v14 = v11;

    Future.addFailure(block:)();
  }

  else
  {
    v16 = type metadata accessor for Transaction();
    __chkstk_darwin(v16);
    static Transaction.named<A>(_:with:)();
  }
}

uint64_t sub_100FD8A14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  sub_100FDA70C(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_101012DFC;
  *(v8 + 24) = v6;

  Future.addSuccess(block:)();

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = v7;
  v9[4] = sub_101012DFC;
  v9[5] = v6;
  v10 = v7;

  Future.addFailure(block:)();
}

uint64_t sub_100FD8B74(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v45 = a4;
  v46 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    v18 = a3;
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v20;
    *(v17 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    v23 = *(v45 + 48);
    v24 = swift_allocObject();
    *(v24 + 16) = v46;
    *(v24 + 24) = v16;
    v56 = sub_101012DB8;
    v57 = v24;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_100006684;
    v55 = &unk_10165F888;
    v25 = _Block_copy(&aBlock);
    v26 = v16;

    static DispatchQoS.unspecified.getter();
    v51 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v27 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10138BBE0;
    v29 = a3;
    v30 = [v29 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *(v28 + 56) = &type metadata for String;
    v34 = sub_100008C00();
    *(v28 + 64) = v34;
    *(v28 + 32) = v31;
    *(v28 + 40) = v33;
    aBlock = a2;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v35 = String.init<A>(describing:)();
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v34;
    *(v28 + 72) = v35;
    *(v28 + 80) = v36;
    os_log(_:dso:log:_:_:)();

    if (a2)
    {
      swift_errorRetain();
      v37 = v45;
      sub_100FD5F64(a2);
      v38 = *(v37 + 48);
      v39 = swift_allocObject();
      v39[2] = v46;
      v39[3] = v37;
      v39[4] = a2;
      v56 = sub_101011824;
      v57 = v39;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_100006684;
      v55 = &unk_10165F838;
      v40 = _Block_copy(&aBlock);

      swift_errorRetain();

      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v27 = v50;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);
    }

    else
    {
      static os_log_type_t.fault.getter();
      os_log(_:dso:log:_:_:)();
      v41 = *(v45 + 48);
      v56 = sub_1010117D4;
      v57 = v46;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_100006684;
      v55 = &unk_10165F7E8;
      v42 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v27 = v50;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v42);
    }
  }

  (*(v49 + 8))(v11, v27);
  (*(v47 + 8))(v15, v48);
}

void sub_100FD938C()
{
  type metadata accessor for CKError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100004084(&qword_101696250, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

uint64_t sub_100FD9440(uint64_t a1, uint64_t a2, void *a3, int64_t a4, uint64_t a5)
{
  *&v45 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    static os_log_type_t.error.getter();
    if (qword_101695040 == -1)
    {
LABEL_18:
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_101385D80;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = v28;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_100008C00();
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      os_log(_:dso:log:_:_:)();

      return (a4)(0, a1);
    }

LABEL_35:
    swift_once();
    goto LABEL_18;
  }

  v9 = *&v42[0];
  *&v45 = *&v42[0];
  sub_100004084(&qword_101696250, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  if (*&v42[0] == 26)
  {

    goto LABEL_4;
  }

  v34 = a3;
  v13 = _BridgedStoredNSError.userInfo.getter();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v13 + 16))
  {

    goto LABEL_15;
  }

  v16 = sub_100771D58(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_100013894(*(v13 + 56) + 32 * v16, &v45);

  sub_1000BC4D4(&qword_1016BFE50, &unk_1013F17E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v32 = a4;
  v19 = v37;
  v20 = v37 + 64;
  v21 = 1 << *(v37 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v37 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  v33 = *&v42[0];
  if (v23)
  {
    goto LABEL_20;
  }

  do
  {
LABEL_21:
    a4 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (a4 >= v24)
    {

      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0;

LABEL_29:

      sub_10000B3A8(&v45, &qword_1016C2E88, &unk_1013F7720);
      a4 = v32;
      goto LABEL_17;
    }

    v23 = *(v20 + 8 * a4);
    ++v25;
  }

  while (!v23);
  while (1)
  {
    v30 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v31 = v30 | (a4 << 6);
    sub_100476DEC(*(v19 + 48) + 40 * v31, v42);
    sub_100013894(*(v19 + 56) + 32 * v31, v43 + 8);
    v39 = v43[0];
    v40 = v43[1];
    v41 = v44;
    v37 = v42[0];
    v38 = v42[1];
    sub_1000D2A70(&v37, v36, &unk_1016A0AF0, &unk_1013A48A0);
    if (!swift_dynamicCast())
    {
      sub_10000B3A8(&v37, &unk_1016A0AF0, &unk_1013A48A0);
      sub_100476E48(v36);
      v25 = a4;
      if (!v23)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    sub_100476E48(v36);
    v36[0] = v35;
    _BridgedStoredNSError.code.getter();

    if (v35 == 26)
    {
      break;
    }

    sub_10000B3A8(&v37, &unk_1016A0AF0, &unk_1013A48A0);
    v25 = a4;
    v9 = v33;
    if (!v23)
    {
      goto LABEL_21;
    }

LABEL_20:
    a4 = v25;
  }

  v47 = v39;
  v48 = v40;
  v49 = v41;
  v45 = v37;
  v46 = v38;

  v9 = v33;
  if (!*(&v46 + 1))
  {
    goto LABEL_29;
  }

  static os_log_type_t.error.getter();
  a4 = v32;
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();

  sub_10000B3A8(&v45, &qword_1016C2E88, &unk_1013F7720);
  a3 = v34;
LABEL_4:
  static os_log_type_t.error.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_100FD9B00(0);
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  sub_100FDA70C(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;

  Future.addSuccess(block:)();

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;

  Future.addFailure(block:)();
}

uint64_t sub_100FDA51C(uint64_t *a1, uint64_t (*a2)(uint64_t, void))
{
  v3 = *a1;
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  return a2(v3, 0);
}

uint64_t sub_100FDA5D4(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  static os_log_type_t.error.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v5 = Error.localizedDescription.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  return a2(0, a1);
}

void sub_100FDA70C(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016C2E10, &qword_1013F76E8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = Future.init()();
  v8 = sub_100008BB8(0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138C320;
  *(v9 + 32) = a1;
  v10 = a1;
  v21.value._rawValue = v9;
  v21.is_nil = 0;
  v11.super.super.super.super.isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v21, v22).super.super.super.super.isa;
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [(objc_class *)v11.super.super.super.super.isa setQualityOfService:25];
  }

  v12 = v11.super.super.super.super.isa;
  v13 = [(objc_class *)v12 configuration];
  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  [v13 setAutomaticallyRetryNetworkFailures:0];

  v15 = [(objc_class *)v12 configuration];
  if (!v15)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v15 setDiscretionaryNetworkBehavior:0];

  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v7;

  CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter();
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  *(v17 + 56) = v8;
  *(v17 + 64) = sub_100009D18(&unk_1016C2BE0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
  *(v17 + 32) = v12;
  v18 = v12;
  os_log(_:dso:log:_:_:)();

  v20 = *(v2 + 40);
  __chkstk_darwin(v19);
  QueueSynchronizer.conditionalSync<A>(_:)();
}

uint64_t sub_100FDAA00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = __chkstk_darwin(v14);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v35 = v9;
    v36 = v15;
    v37 = result;
    v38 = v10;
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)();

    v24 = *(a4 + 48);
    v25 = swift_allocObject();
    *(v25 + 16) = a5;
    *(v25 + 24) = a3;
    v44 = sub_10058CE08;
    v45 = v25;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100006684;
    v43 = &unk_10165F658;
    v26 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v9 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

LABEL_5:
    (*(v38 + 8))(v13, v9);
    (*(v36 + 8))(v19, v37);
  }

  if (a1)
  {
    v27 = result;
    if (a1 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v28 = *(a1 + 32);
        }

        v29 = v28;
        v36 = v15;
        v37 = v27;
        v38 = v10;
        static os_log_type_t.default.getter();
        if (qword_101695040 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        v30 = *(a4 + 48);
        v31 = swift_allocObject();
        *(v31 + 16) = a5;
        *(v31 + 24) = v29;
        v44 = sub_1010116CC;
        v45 = v31;
        aBlock = _NSConcreteStackBlock;
        v41 = 1107296256;
        v42 = sub_100006684;
        v43 = &unk_10165F608;
        v32 = _Block_copy(&aBlock);

        v33 = v29;
        static DispatchQoS.unspecified.getter();
        v39 = _swiftEmptyArrayStorage;
        sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v32);

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_100FDB020(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v34);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  v37 = xmmword_101385D80;
  *(v9 + 16) = xmmword_101385D80;
  *(v9 + 56) = sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  *(v9 + 64) = sub_100009D18(&qword_1016C2E68, &qword_1016A9110, CKRecordID_ptr);
  *(v9 + 32) = a1;
  v10 = a1;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000BC4D4(&qword_1016C2E70, &qword_1013F7708);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = Future.init()();
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = v10;
  v15[4] = v14;
  v16 = *(v2 + 40);
  v17 = v10;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v18 = aBlock;
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v37;
  *(v19 + 56) = &type metadata for Bool;
  *(v19 + 64) = &protocol witness table for Bool;
  *(v19 + 32) = v18;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (v18)
  {
    os_log(_:dso:log:_:_:)();
    v20 = swift_allocObject();
    *(v20 + 2) = v17;
    *(v20 + 3) = v2;
    *(v20 + 4) = v14;
    v21 = qword_101694FA8;
    v22 = v17;

    if (v21 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v40 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v38 != 1)
    {
      v29 = type metadata accessor for Transaction();
      __chkstk_darwin(v29);
      *(&v31 - 4) = v2;
      *(&v31 - 3) = sub_1010116B0;
      *(&v31 - 2) = v20;
      static Transaction.named<A>(_:with:)();

      return v14;
    }

    sub_100FDB90C(v22, v2, v14);
  }

  else
  {
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v23 = *(v2 + 72);
    v24 = swift_allocObject();
    v24[2] = v2;
    v24[3] = sub_1010116A4;
    v24[4] = v15;
    v43 = sub_100B28008;
    v44 = v24;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100006684;
    v42 = &unk_10165F478;
    v25 = _Block_copy(&aBlock);

    v26 = v31;
    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v27 = v33;
    v28 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v35 + 8))(v27, v28);
    (*(v32 + 8))(v26, v34);
  }

  return v14;
}

uint64_t sub_100FDB760(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a2;
  v7[4] = a4;
  v8 = qword_101694FA8;

  v9 = a3;
  if (v8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v12 == 1)
  {
    sub_100FDB90C(v9, a2, a4);
  }

  else
  {
    v11 = type metadata accessor for Transaction();
    __chkstk_darwin(v11);
    static Transaction.named<A>(_:with:)();
  }
}

void sub_100FDB90C(void *a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 56) = sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  *(v6 + 64) = sub_100009D18(&qword_1016C2E68, &qword_1016A9110, CKRecordID_ptr);
  *(v6 + 32) = a1;
  v7 = a1;
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = xmmword_10138C320;
  *(v8 + 32) = v7;
  v10 = v7;
  v19.value._rawValue = 0;
  v19.is_nil = v9;
  v11.super.super.super.super.isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v19, v20).super.super.super.super.isa;
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [(objc_class *)v11.super.super.super.super.isa setQualityOfService:25];
  }

  v12 = v11.super.super.super.super.isa;
  v13 = [(objc_class *)v12 configuration];
  if (v13)
  {
    v14 = v13;
    [v13 setAutomaticallyRetryNetworkFailures:0];

    v15 = [(objc_class *)v12 configuration];
    if (v15)
    {
      [v15 setDiscretionaryNetworkBehavior:0];

      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a3;

      v17 = CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter();
      v18 = *(a2 + 40);
      __chkstk_darwin(v17);
      QueueSynchronizer.conditionalSync<A>(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100FDBBEC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v39 = v7;
    v40 = v8;
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10138BBE0;
    aBlock = a2;

    sub_1000BC4D4(&unk_1016C2E78, &unk_1013F7710);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    v20 = sub_100008C00();
    *(v16 + 64) = v20;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    aBlock = a3;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v21 = String.init<A>(describing:)();
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v20;
    *(v16 + 72) = v21;
    *(v16 + 80) = v22;
    os_log(_:dso:log:_:_:)();

    v23 = v41;
    sub_100FD5F64(a3);
    v24 = *(v23 + 48);
    v25 = swift_allocObject();
    *(v25 + 16) = v42;
    *(v25 + 24) = a3;
    v50 = sub_10058D540;
    v51 = v25;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_100006684;
    v49 = &unk_10165F568;
    v26 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v7 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

LABEL_5:
    (*(v40 + 8))(v11, v7);
    (*(v43 + 8))(v15, v44);
  }

  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101385D80;
  aBlock = a2;

  sub_1000BC4D4(&unk_1016C2E78, &unk_1013F7710);
  v29 = String.init<A>(describing:)();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100008C00();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    if (a2 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_12:
        v40 = v8;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v32 = a2[4];
        }

        v33 = v32;
        v34 = *(v41 + 48);
        v35 = swift_allocObject();
        *(v35 + 16) = v42;
        *(v35 + 24) = v33;
        v50 = sub_101012DB8;
        v51 = v35;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_100006684;
        v49 = &unk_10165F518;
        v36 = _Block_copy(&aBlock);

        v37 = v33;
        static DispatchQoS.unspecified.getter();
        v45 = _swiftEmptyArrayStorage;
        sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v36);

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_100FDC2D8(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v34);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  v37 = xmmword_101385D80;
  *(v9 + 16) = xmmword_101385D80;
  *(v9 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v9 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v9 + 32) = a1;
  v10 = a1;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000BC4D4(&unk_1016C2E10, &qword_1013F76E8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = Future.init()();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = v10;
  v15[4] = SharingCircleWildAdvertisementKey.init(key:);
  v15[5] = 0;
  v15[6] = v14;
  v16 = a2[5];
  v17 = v10;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v18 = aBlock;
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v37;
  *(v19 + 56) = &type metadata for Bool;
  *(v19 + 64) = &protocol witness table for Bool;
  *(v19 + 32) = v18;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (v18)
  {
    os_log(_:dso:log:_:_:)();
    v20 = swift_allocObject();
    *(v20 + 2) = v17;
    *(v20 + 3) = SharingCircleWildAdvertisementKey.init(key:);
    *(v20 + 4) = 0;
    *(v20 + 5) = a2;
    *(v20 + 6) = v14;
    v21 = qword_101694FA8;
    v22 = v17;

    if (v21 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v40 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v38)
    {
      sub_100FDD384(v22, a2, v14);
    }

    else
    {
      v29 = type metadata accessor for Transaction();
      __chkstk_darwin(v29);
      *(&v31 - 4) = a2;
      *(&v31 - 3) = sub_101012DF4;
      *(&v31 - 2) = v20;
      static Transaction.named<A>(_:with:)();
    }
  }

  else
  {
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v23 = a2[9];
    v24 = swift_allocObject();
    v24[2] = a2;
    v24[3] = sub_101012EF4;
    v24[4] = v15;
    v43 = sub_100B28008;
    v44 = v24;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100006684;
    v42 = &unk_10165FF68;
    v25 = _Block_copy(&aBlock);

    v26 = v31;
    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v27 = v33;
    v28 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v35 + 8))(v27, v28);
    (*(v32 + 8))(v26, v34);
  }

  return v14;
}

uint64_t sub_100FDCA40(void *a1, void (*a2)(void **), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  v45 = xmmword_101385D80;
  *(v13 + 16) = xmmword_101385D80;
  *(v13 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v13 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v13 + 32) = a1;
  v14 = a1;
  os_log(_:dso:log:_:_:)();

  v15 = sub_1000BC4D4(&unk_1016C2E10, &qword_1013F76E8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = Future.init()();
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = v14;
  v37 = a2;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = v18;
  v20 = *(v4 + 40);
  v21 = v14;

  v38 = a3;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v22 = aBlock;
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v45;
  *(v23 + 56) = &type metadata for Bool;
  *(v23 + 64) = &protocol witness table for Bool;
  *(v23 + 32) = v22;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (v22)
  {
    os_log(_:dso:log:_:_:)();
    v24 = swift_allocObject();
    v26 = v37;
    v25 = v38;
    *(v24 + 2) = v21;
    *(v24 + 3) = v26;
    *(v24 + 4) = v25;
    *(v24 + 5) = v4;
    *(v24 + 6) = v18;
    v27 = qword_101694FA8;
    v28 = v21;

    if (v27 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v48 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v46 != 1)
    {
      v35 = type metadata accessor for Transaction();
      __chkstk_darwin(v35);
      *(&v37 - 4) = v4;
      *(&v37 - 3) = sub_1010101B8;
      *(&v37 - 2) = v24;
      static Transaction.named<A>(_:with:)();

      return v18;
    }

    sub_100FDDB30(v28, v26, v25, v4, v18);
  }

  else
  {
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v29 = *(v4 + 72);
    v30 = swift_allocObject();
    v30[2] = v4;
    v30[3] = sub_1010101B4;
    v30[4] = v19;
    v51 = sub_100B28008;
    v52 = v30;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_100006684;
    v50 = &unk_10165F130;
    v31 = _Block_copy(&aBlock);

    v32 = v39;
    static DispatchQoS.unspecified.getter();
    v46 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v33 = v41;
    v34 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v43 + 8))(v33, v34);
    (*(v40 + 8))(v32, v42);
  }

  return v18;
}

uint64_t sub_100FDD1B4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void **), uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a2;
  v11[6] = a6;
  v12 = qword_101694FA8;

  v13 = a3;
  if (v12 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v16 == 1)
  {
    sub_100FDDB30(v13, a4, a5, a2, a6);
  }

  else
  {
    v15 = type metadata accessor for Transaction();
    __chkstk_darwin(v15);
    static Transaction.named<A>(_:with:)();
  }
}

void sub_100FDD384(void *a1, uint64_t *a2, uint64_t a3)
{
  v51 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = *(CKRecord.changedKeys()() + 16);

  v17 = static os_log_type_t.default.getter();
  if (v16)
  {
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    v50 = xmmword_101385D80;
    *(v18 + 16) = xmmword_101385D80;
    *(v18 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v18 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
    *(v18 + 32) = v15;
    v19 = v15;
    os_log(_:dso:log:_:_:)();

    v20 = sub_100008BB8(0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v54.value._rawValue = swift_allocObject();
    *(v54.value._rawValue + 1) = xmmword_10138C320;
    *(v54.value._rawValue + 4) = v19;
    v54.is_nil = 0;
    v21.super.super.super.super.isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v54, v55).super.super.super.super.isa;
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      [(objc_class *)v21.super.super.super.super.isa setQualityOfService:25];
    }

    v22 = v21.super.super.super.super.isa;
    v23 = [(objc_class *)v22 configuration];
    if (v23)
    {
      v24 = v23;
      [v23 setAutomaticallyRetryNetworkFailures:0];

      v25 = [(objc_class *)v22 configuration];
      if (v25)
      {
        [v25 setDiscretionaryNetworkBehavior:0];

        v26 = swift_allocObject();
        v27 = v51;
        v26[2] = v51;
        v26[3] = a3;
        v26[4] = v19;
        v28 = v19;

        CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter();
        static os_log_type_t.default.getter();
        v29 = swift_allocObject();
        *(v29 + 16) = v50;
        *(v29 + 56) = v20;
        *(v29 + 64) = sub_100009D18(&unk_1016C2BE0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
        *(v29 + 32) = v22;
        v30 = v22;
        os_log(_:dso:log:_:_:)();

        v32 = v27[5];
        __chkstk_darwin(v31);
        *(&v46 - 2) = v27;
        *(&v46 - 1) = v30;
        QueueSynchronizer.conditionalSync<A>(_:)();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v47 = v11;
    *&v50 = a3;
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v48 = v10;
    v49 = v6;
    v33 = qword_10177C388;
    v34 = v5;
    if (os_log_type_enabled(qword_10177C388, v17))
    {
      v35 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      v36 = [v15 recordID];
      v37 = [v36 recordName];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_1000136BC(v38, v40, aBlock);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v17, "No updates in the record %{private,mask.hash}s. Skipping.", v35, 0x16u);
      sub_100007BAC(v46);
    }

    v42 = v51[6];
    v43 = swift_allocObject();
    *(v43 + 16) = v50;
    *(v43 + 24) = v15;
    aBlock[4] = sub_101012DB8;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101660008;
    v44 = _Block_copy(aBlock);
    v45 = v15;

    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);
    (*(v49 + 8))(v9, v34);
    (*(v47 + 8))(v14, v48);
  }
}

void sub_100FDDB30(void *a1, void (*a2)(void **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v61 = v9;
  *&v62 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v19 = a1;
  a2(&v67);
  v64 = v67;
  v20 = *(CKRecord.changedKeys()() + 16);

  v21 = static os_log_type_t.default.getter();
  if (v20)
  {
    v22 = a4;
    v63 = a5;
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    v62 = xmmword_101385D80;
    *(v23 + 16) = xmmword_101385D80;
    *(v23 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v23 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
    v24 = v64;
    *(v23 + 32) = v64;
    v25 = v24;
    os_log(_:dso:log:_:_:)();

    v26 = sub_100008BB8(0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v68.value._rawValue = swift_allocObject();
    *(v68.value._rawValue + 1) = xmmword_10138C320;
    *(v68.value._rawValue + 4) = v25;
    v68.is_nil = 0;
    v27.super.super.super.super.isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v68, v69).super.super.super.super.isa;
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      [(objc_class *)v27.super.super.super.super.isa setQualityOfService:25];
    }

    v28 = v27.super.super.super.super.isa;
    v29 = [(objc_class *)v28 configuration];
    if (v29)
    {
      v30 = v29;
      [v29 setAutomaticallyRetryNetworkFailures:0];

      v31 = [(objc_class *)v28 configuration];
      if (v31)
      {
        [v31 setDiscretionaryNetworkBehavior:0];

        v32 = swift_allocObject();
        v33 = v63;
        v32[2] = v22;
        v32[3] = v33;
        v32[4] = v19;
        v34 = v19;

        CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter();
        static os_log_type_t.default.getter();
        v35 = swift_allocObject();
        *(v35 + 16) = v62;
        *(v35 + 56) = v26;
        *(v35 + 64) = sub_100009D18(&unk_1016C2BE0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
        *(v35 + 32) = v28;
        v36 = v28;
        os_log(_:dso:log:_:_:)();

        v38 = *(v22 + 40);
        __chkstk_darwin(v37);
        *(&v58 - 2) = v22;
        *(&v58 - 1) = v36;
        QueueSynchronizer.conditionalSync<A>(_:)();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v58 = v13;
    v59 = v14;
    v60 = a4;
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v39 = qword_10177C388;
    v40 = v15;
    v41 = v18;
    v42 = a5;
    if (os_log_type_enabled(qword_10177C388, v21))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      v45 = [v19 recordID];
      v46 = v19;
      v47 = [v45 recordName];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v42;
      v50 = v49;

      v19 = v46;
      v51 = sub_1000136BC(v48, v50, aBlock);
      v42 = v63;

      *(v43 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v39, v21, "No updates in the record %{private,mask.hash}s. Skipping.", v43, 0x16u);
      sub_100007BAC(v44);
    }

    v52 = *(v60 + 48);
    v53 = swift_allocObject();
    *(v53 + 16) = v42;
    *(v53 + 24) = v19;
    aBlock[4] = sub_101012DB8;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10165F1D0;
    v54 = _Block_copy(aBlock);
    v55 = v19;

    static DispatchQoS.unspecified.getter();
    v65 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v56 = v58;
    v57 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);
    (*(v62 + 8))(v56, v57);
    (*(v40 + 8))(v41, v59);
  }
}

uint64_t sub_100FDE310(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = __chkstk_darwin(v16);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v33 - v22;
  if (a3)
  {
    v36 = v17;
    v37 = v20;
    swift_errorRetain();
    sub_100FD5F64(a3);
    v35 = *(a4 + 48);
    v24 = swift_allocObject();
    v24[2] = a5;
    v24[3] = a4;
    v24[4] = a3;
    v43 = sub_101012DF8;
    v44 = v24;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100006684;
    v42 = &unk_10165F270;
    v25 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v12 + 8))(v15, v11);
    (*(v36 + 8))(v23, v37);
  }

  if (a1)
  {
    v26 = &v33 - v22;
    if (a1 >> 62)
    {
      v37 = v20;
      result = _CocoaArrayWrapper.endIndex.getter();
      v20 = v37;
      if (result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_8:
        v34 = v12;
        v36 = v17;
        v37 = v20;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v27 = *(a1 + 32);
        }

        v28 = v27;
        v35 = *(a4 + 48);
        v29 = swift_allocObject();
        v29[2] = a6;
        v29[3] = a5;
        v29[4] = v28;
        v43 = sub_1010101DC;
        v44 = v29;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_100006684;
        v42 = &unk_10165F220;
        v30 = _Block_copy(&aBlock);

        v31 = a6;
        v32 = v28;
        static DispatchQoS.unspecified.getter();
        v38 = _swiftEmptyArrayStorage;
        sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v30);

        (*(v34 + 8))(v15, v11);
        (*(v36 + 8))(v26, v37);
      }
    }
  }

  return result;
}

uint64_t sub_100FDE83C(void *a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  *(v2 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v2 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v2 + 32) = a1;
  v3 = a1;
  os_log(_:dso:log:_:_:)();

  return Future.finish(result:)();
}

uint64_t sub_100FDE988()
{
  sub_100477574(v0 + 16);

  v1 = *(v0 + 40);

  sub_101011434(*(v0 + 88));
  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  v4 = *(v0 + 136);

  v5 = *(v0 + 144);

  v6 = *(v0 + 152);

  v7 = *(v0 + 160);

  v8 = *(v0 + 168);

  v9 = *(v0 + 176);

  v10 = *(v0 + 184);

  v11 = *(v0 + 224);

  v12 = *(v0 + 240);

  v13 = *(v0 + 264);

  v14 = *(v0 + 272);

  return v0;
}

uint64_t sub_100FDEA68()
{
  sub_100FDE988();

  return swift_deallocClassInstance();
}

void sub_100FDEA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100FD01E4();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  v11[4] = sub_1010115E0;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100FDF200;
  v11[3] = &unk_10165F2E8;
  v10 = _Block_copy(v11);

  [v8 accountStatusWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_100FDEBB8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a4;
  v36 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v35 = a6;
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    aBlock = a2;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)();

    v21 = *(v36 + 48);
    v22 = swift_allocObject();
    v23 = v37;
    v22[2] = v38;
    v22[3] = v23;
    v22[4] = v35;
    v47 = sub_101011630;
    v48 = v22;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100006684;
    v46 = &unk_10165F388;
    v24 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
  }

  else
  {
    LODWORD(v35) = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    v26 = CKStringFromAccountStatus();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100008C00();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    os_log(_:dso:log:_:_:)();

    v30 = *(v36 + 48);
    v31 = swift_allocObject();
    v32 = v37;
    v31[2] = v38;
    v31[3] = v32;
    v31[4] = a6;
    v31[5] = a1;
    v47 = sub_1010115EC;
    v48 = v31;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100006684;
    v46 = &unk_10165F338;
    v33 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
  }

  (*(v41 + 8))(v12, v9);
  (*(v39 + 8))(v16, v40);
}

void sub_100FDF200(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100FDF278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100FD01E4();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v10[4] = sub_101011938;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000D488C;
  v10[3] = &unk_10165FA18;
  v9 = _Block_copy(v10);

  [v7 accountInfoWithCompletionHandler:v9];
  _Block_release(v9);
}

void sub_100FDF388(void *a1, void *a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  Transaction.capture()();
  if (a2)
  {
    swift_errorRetain();
    a4(a2, 1);
  }

  else if (a1)
  {
    v7 = a1;
    a4(a1, 0);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100FDF4A0()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 32);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v11 = (v4 + 8);
  v12(v7, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + 160);
    swift_unknownObjectRelease();
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    sub_100008BB8(0, &qword_1016C2E40, CKModifyRecordZonesOperation_ptr);
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v16 = swift_allocObject();
    v17 = v16;
    *(v16 + 16) = xmmword_10138C320;
    *(v16 + 32) = v14;
    v18 = v14;
    v27.value._rawValue = _swiftEmptyArrayStorage;
    v27.is_nil = v17;
    v19.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v27, v28).super.super.super.super.isa;
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v15;
    v10 = v18;
    v11 = v15;
    CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.setter();
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      [(objc_class *)v19.super.super.super.super.isa setQualityOfService:25];
    }

    v1 = v19.super.super.super.super.isa;
    v21 = [(objc_class *)v1 configuration];
    if (v21)
    {
      v22 = v21;
      [v21 setAutomaticallyRetryNetworkFailures:0];

      v23 = [(objc_class *)v1 configuration];
      if (v23)
      {
        [v23 setDiscretionaryNetworkBehavior:0];

        v24 = *(v2 + 40);
        __chkstk_darwin(v25);
        *&v26[-32] = v10;
        *&v26[-24] = v2;
        *&v26[-16] = v1;
        QueueSynchronizer.conditionalSync<A>(_:)();
        static os_log_type_t.default.getter();
        if (qword_101695040 == -1)
        {
LABEL_8:
          os_log(_:dso:log:_:_:)();
          OS_dispatch_group.wait()();

          return;
        }

LABEL_13:
        swift_once();
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }
}

void sub_100FDF880(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, NSObject *a5)
{
  if (a3)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100008C00();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    *(v11 + 56) = sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
    *(v11 + 64) = sub_100009D18(&qword_1016C2E38, &unk_1016BBFC0, CKRecordZoneID_ptr);
    *(v11 + 32) = a4;
    v12 = a4;
    os_log(_:dso:log:_:_:)();
  }

  dispatch_group_leave(a5);
}

void sub_100FDFACC(void *a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  *(v5 + 56) = sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
  *(v5 + 64) = sub_100009D18(&qword_1016C2E38, &unk_1016BBFC0, CKRecordZoneID_ptr);
  *(v5 + 32) = a1;
  v6 = a1;
  os_log(_:dso:log:_:_:)();

  v7 = sub_100FD01E4();
  v8 = [v7 privateCloudDatabase];

  [v8 addOperation:a3];
}

uint64_t sub_100FDFC50(uint64_t a1)
{
  sub_101011540();
  v2 = swift_allocError();
  v3 = *(a1 + 88);
  *(a1 + 88) = v2;
  swift_errorRetain();
  sub_101011434(v3);
  sub_101010C38(v2);
}

void sub_100FDFCC4(uint64_t a1)
{
  v1 = *(a1 + 88);
  *(a1 + 88) = 1;
  sub_101011434(v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100008C00();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void sub_100FDFDCC(void *a1, unint64_t a2, uint64_t a3, NSObject *a4)
{
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = sub_100008BB8(0, &qword_1016C2E58, CKRecordZone_ptr);
  *(v6 + 56) = v7;
  v8 = sub_100009D18(&qword_1016C2E60, &qword_1016C2E58, CKRecordZone_ptr);
  *(v6 + 64) = v8;
  *(v6 + 32) = a1;
  v9 = a1;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    v10 = *(a3 + 88);
    *(a3 + 88) = a2;
    swift_errorRetain();
    swift_errorRetain();
    swift_errorRetain();
    sub_101011434(v10);
    sub_101010C38(a2);

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.error.getter();
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
  }

  else
  {
    v15 = *(a3 + 88);
    *(a3 + 88) = 2;
    sub_101011434(v15);
    sub_101010C38(2uLL);
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    *(v16 + 56) = v7;
    *(v16 + 64) = v8;
    *(v16 + 32) = v9;
    v17 = v9;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v18 = *(a3 + 40);
    QueueSynchronizer.conditionalSync<A>(_:)();
    static os_log_type_t.default.getter();
    if (qword_101695048 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v19 = *(a3 + 64);
    OS_dispatch_semaphore.signal()();

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    sub_100A48990();
  }

  dispatch_group_leave(a4);
}

void sub_100FE020C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 208) = a1;
  static os_log_type_t.error.getter();
  if (a1 == 3)
  {
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v24 = *(a2 + 40);
    QueueSynchronizer.conditionalSync<A>(_:)();
    static os_log_type_t.default.getter();
    if (qword_101695048 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v25 = *(a2 + 64);
    OS_dispatch_semaphore.signal()();

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100A48990();
  }

  else
  {
    v32 = v4;
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v20 + 104))(v23, enum case for DispatchQoS.QoSClass.default(_:), v19);
    v31 = static OS_dispatch_queue.global(qos:)();
    (*(v20 + 8))(v23, v19);
    static DispatchTime.now()();
    + infix(_:_:)();
    v26 = v34;
    v33 = *(v33 + 8);
    (v33)(v16, v34);
    aBlock[4] = sub_101011674;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10165F3B0;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v28 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v29 = v31;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v27);

    (*(v37 + 8))(v7, v28);
    (*(v35 + 8))(v11, v36);
    (v33)(v18, v26);
  }
}

void sub_100FE08A8(NSObject *a1, int a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v119 = a4;
  v120 = a5;
  v118 = a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v6 + 32);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.notOnQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = _swiftEmptyArrayStorage;
  v22 = swift_allocObject();
  v116 = v13;
  v117 = v22;
  *(v22 + 16) = _swiftEmptyArrayStorage;
  if (a3)
  {
    v23 = static os_log_type_t.debug.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C388;
    if (os_log_type_enabled(qword_10177C388, v23))
    {
      v25 = swift_slowAlloc();
      v121 = a1;
      v26 = v25;
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136315138;
      v28 = [*(v6 + 280) debugDescription];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v115) = v23;
      v30 = v21;
      v31 = v10;
      v32 = v9;
      v33 = v24;
      v34 = v6;
      v35 = v29;
      v37 = v36;

      v38 = v35;
      v6 = v34;
      v24 = v33;
      v9 = v32;
      v10 = v31;
      v21 = v30;
      v39 = sub_1000136BC(v38, v37, &aBlock);

      *(v26 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v24, v115, "fetchDatabaseChanges exclusiveAccessSemaphore -- caller claims to already have access %s", v26, 0xCu);
      sub_100007BAC(v27);

      a1 = v121;
    }
  }

  else
  {
    v121 = a1;
    v40 = static os_log_type_t.info.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C388;
    if (os_log_type_enabled(qword_10177C388, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock = v42;
      *v41 = 136315138;
      v43 = [*(v6 + 280) debugDescription];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v115) = v40;
      v45 = v10;
      v46 = v9;
      v47 = v24;
      v48 = v21;
      v49 = v6;
      v51 = v50;

      v52 = sub_1000136BC(v44, v51, &aBlock);
      v6 = v49;
      v21 = v48;
      v24 = v47;
      v9 = v46;
      v10 = v45;

      *(v41 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v24, v115, ">>> fetchDatabaseChanges exclusiveAccessSemaphore.wait() %s", v41, 0xCu);
      sub_100007BAC(v42);
    }

    v53 = *(v6 + 280);
    OS_dispatch_semaphore.wait()();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock = v56;
      *v55 = 136315138;
      v57 = [v53 debugDescription];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v21;
      v59 = v10;
      v60 = v9;
      v61 = v24;
      v62 = v6;
      v64 = v63;

      v65 = sub_1000136BC(v58, v64, &aBlock);
      v6 = v62;
      v24 = v61;
      v9 = v60;
      v10 = v59;
      v21 = v114;

      *(v55 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v24, v54, "<<< fetchDatabaseChanges exclusiveAccessSemaphore.wait() %s", v55, 0xCu);
      sub_100007BAC(v56);
    }

    a1 = v121;
  }

  v66 = [a1 scope];
  v67 = v116;
  sub_10088F090(v66);
  v68 = sub_10088F948(v67, *(v6 + 272));
  (*(v10 + 8))(v67, v9);
  v116 = [objc_allocWithZone(CKFetchDatabaseChangesOperation) initWithPreviousServerChangeToken:v68];
  v69 = [objc_opt_self() sharedInstance];
  v70 = [v69 isInternalBuild];

  v121 = v24;
  v115 = v68;
  if (!v70)
  {
    v89 = v117;
    if (v68)
    {
      v90 = [v68 data];
      v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      sub_100016590(v91, v93);
      static os_log_type_t.default.getter();
      if (qword_101695040 == -1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      static os_log_type_t.default.getter();
      if (qword_101695040 == -1)
      {
LABEL_25:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_101385D80;
        [a1 scope];
        v95 = CKDatabaseScope.description.getter();
        v97 = v96;
        *(v94 + 56) = &type metadata for String;
        *(v94 + 64) = sub_100008C00();
        *(v94 + 32) = v95;
        *(v94 + 40) = v97;
        os_log(_:dso:log:_:_:)();

        goto LABEL_29;
      }
    }

    swift_once();
    goto LABEL_25;
  }

  v114 = v21;
  v71 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_10138BBE0;
  [a1 scope];
  v73 = CKDatabaseScope.description.getter();
  v75 = v74;
  *(v72 + 56) = &type metadata for String;
  v76 = sub_100008C00();
  v77 = v76;
  *(v72 + 64) = v76;
  *(v72 + 32) = v73;
  *(v72 + 40) = v75;
  if (!v68)
  {
    v88 = (v72 + 72);
    *(v72 + 96) = &type metadata for String;
    *(v72 + 104) = v76;
    v21 = v114;
LABEL_27:
    *v88 = 7104878;
    v87 = 0xE300000000000000;
    goto LABEL_28;
  }

  v78 = v68;
  v113[1] = v71;
  v79 = a1;
  v80 = v6;
  v81 = [v78 data];
  v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  v85 = Data.hexString.getter();
  v87 = v86;
  sub_100016590(v82, v84);
  v88 = (v72 + 72);
  *(v72 + 96) = &type metadata for String;
  *(v72 + 104) = v77;
  if (!v87)
  {
    v6 = v80;
    v21 = v114;
    a1 = v79;
    goto LABEL_27;
  }

  *v88 = v85;
  v6 = v80;
  v21 = v114;
  a1 = v79;
LABEL_28:
  *(v72 + 80) = v87;
  os_log(_:dso:log:_:_:)();

  v89 = v117;
LABEL_29:
  v98 = v116;
  [v116 setFetchAllChanges:1];
  a3 = v98;
  v99 = [a3 configuration];
  if (v99)
  {
    v100 = v99;
    [v99 setAutomaticallyRetryNetworkFailures:0];

    v101 = [a3 configuration];
    if (v101)
    {
      [v101 setDiscretionaryNetworkBehavior:0];

      v126 = sub_101012EF0;
      v127 = v21;
      aBlock = _NSConcreteStackBlock;
      v123 = 1107296256;
      v124 = sub_101012EEC;
      v125 = &unk_10165FA90;
      v102 = _Block_copy(&aBlock);

      [a3 setRecordZoneWithIDChangedBlock:v102];
      _Block_release(v102);
      v126 = sub_10101197C;
      v127 = v89;
      aBlock = _NSConcreteStackBlock;
      v123 = 1107296256;
      v124 = sub_101012EEC;
      v125 = &unk_10165FAB8;
      v103 = _Block_copy(&aBlock);

      [a3 setRecordZoneWithIDWasDeletedBlock:v103];
      _Block_release(v103);
      v104 = swift_allocObject();
      v105 = v118 & 1;
      *(v104 + 16) = v118 & 1;
      v126 = sub_101011998;
      v127 = v104;
      aBlock = _NSConcreteStackBlock;
      v123 = 1107296256;
      v124 = sub_101012EEC;
      v125 = &unk_10165FB08;
      v106 = _Block_copy(&aBlock);

      [a3 setChangeTokenUpdatedBlock:v106];
      _Block_release(v106);
      v107 = swift_allocObject();
      *(v107 + 16) = v105;
      *(v107 + 24) = v6;
      *(v107 + 32) = a1;
      v108 = v120;
      *(v107 + 40) = v119;
      *(v107 + 48) = v108;
      *(v107 + 56) = v89;
      *(v107 + 64) = v21;

      v13 = a1;

      CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.setter();
      static os_log_type_t.default.getter();
      if (qword_101695040 == -1)
      {
LABEL_32:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_101385D80;
        *(v109 + 56) = sub_100008BB8(0, &qword_1016C2E90, CKFetchDatabaseChangesOperation_ptr);
        *(v109 + 64) = sub_100009D18(&unk_1016C2E98, &qword_1016C2E90, CKFetchDatabaseChangesOperation_ptr);
        *(v109 + 32) = a3;
        v110 = a3;
        os_log(_:dso:log:_:_:)();

        v112 = *(v6 + 40);
        __chkstk_darwin(v111);
        *&v113[-4] = v13;
        *&v113[-2] = v110;
        QueueSynchronizer.conditionalSync<A>(_:)();

        return;
      }

LABEL_34:
      swift_once();
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100FE1668(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(v2 + 272);
    v20 = a2;
    sub_10088F5E8(v20);
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10138BBE0;
    v5 = URL.absoluteString.getter();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    v8 = sub_100008C00();
    *(v4 + 64) = v8;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    v9 = [v20 data];
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = Data.hexString.getter();
    v15 = v14;
    sub_100016590(v10, v12);
    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v8;
    *(v4 + 72) = v13;
    *(v4 + 80) = v15;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_10088F860();
    static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v17 = URL.absoluteString.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100FE1B40(void *a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v26 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  [a1 scope];
  v10 = CKDatabaseScope.description.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  v14 = v13;
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  if (!a2)
  {
    v22 = (v9 + 72);
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v13;
LABEL_8:
    *v22 = 7104878;
    v21 = 0xE300000000000000;
    goto LABEL_9;
  }

  v24[1] = v2;
  v25 = v5;
  v15 = [a2 data];
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = Data.hexString.getter();
  v21 = v20;
  sub_100016590(v16, v18);
  v22 = (v9 + 72);
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v14;
  if (!v21)
  {
    v5 = v25;
    goto LABEL_8;
  }

  *v22 = v19;
  v5 = v25;
LABEL_9:
  *(v9 + 80) = v21;
  os_log(_:dso:log:_:_:)();

  sub_10088F090([a1 scope]);
  sub_100FE1668(v8, a2);
  return (*(v28 + 8))(v8, v5);
}

uint64_t sub_100FE1DB4(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for URL();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v27[1] = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138B360;
  [a1 scope];
  v11 = CKDatabaseScope.description.getter();
  v27[0] = a1;
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v10 + 64) = v14;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v15 = [a2 zoneName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 72) = v16;
  *(v10 + 80) = v18;
  v19 = [a3 data];
  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = Data.hexString.getter();
  v25 = v24;
  sub_100016590(v20, v22);
  *(v10 + 136) = &type metadata for String;
  *(v10 + 144) = v14;
  *(v10 + 112) = v23;
  *(v10 + 120) = v25;
  os_log(_:dso:log:_:_:)();

  sub_10088F30C([v27[0] scope], a2);
  sub_100FE1668(v9, a3);
  return (*(v29 + 8))(v9, v30);
}

uint64_t sub_100FE2028(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100FE20D0(void *a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10138BBE0;
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_100008C00();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v7 = [a1 data];
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = Data.hexString.getter();
  v13 = v12;
  sub_100016590(v8, v10);
  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v6;
  *(v2 + 72) = v11;
  *(v2 + 80) = v13;
  os_log(_:dso:log:_:_:)();
}

void sub_100FE224C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, void (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v129 = a8;
  v128 = a7;
  v127 = a6;
  v130 = a5;
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138BBE0;
  v126 = a4 & 1;
  LOBYTE(v131[0]) = a4 & 1;
  v15 = String.init<A>(describing:)();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  v19 = v18;
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v125 = a1;
  if (a1)
  {
    v20 = [a1 data];
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = Data.hexString.getter();
    v26 = v25;
    sub_100016590(v21, v23);
    v27 = (v14 + 72);
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v19;
    if (v26)
    {
      *v27 = v24;
      goto LABEL_8;
    }
  }

  else
  {
    v27 = (v14 + 72);
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v18;
  }

  *v27 = 7104878;
  v26 = 0xE300000000000000;
LABEL_8:
  *(v14 + 80) = v26;
  v28 = v13;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v29 = qword_10177C218;
  v30 = [objc_opt_self() sharedInstance];
  v31 = [v30 isInternalBuild];

  if (!v31)
  {
    if (!a3)
    {
      goto LABEL_22;
    }

LABEL_17:
    swift_errorRetain();
    static os_log_type_t.default.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v35 = String.init<A>(describing:)();
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v19;
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    os_log(_:dso:log:_:_:)();

    v131[0] = a3;
    swift_errorRetain();
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v131[0] = v134;
      sub_100004084(&qword_101696250, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v134 == 21)
      {
        sub_100FE1B40(v127, 0);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_100137944(v130, 1);
          swift_unknownObjectRelease();
        }

        sub_100FE08A8(v127, v126, 1, v128, v129);

LABEL_33:

        return;
      }
    }

    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v131[0] = v51;
      *v50 = 136315138;
      v52 = [*(v130 + 280) debugDescription];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = sub_1000136BC(v53, v55, v131);
      v28 = v13;

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v13, v49, ">>> fetchDatabaseChanges (error) exclusiveAccessSemaphore.signal() %s", v50, 0xCu);
      sub_100007BAC(v51);
    }

    v57 = *(v130 + 280);
    OS_dispatch_semaphore.signal()();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v131[0] = v60;
      *v59 = 136315138;
      v61 = [v57 debugDescription];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v28;
      v65 = v64;

      v66 = sub_1000136BC(v62, v65, v131);

      *(v59 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v63, v58, "<<< fetchDatabaseChanges (error) exclusiveAccessSemaphore.signal() %s", v59, 0xCu);
      sub_100007BAC(v60);
    }

    swift_errorRetain();
    v128(a3, 1);

    goto LABEL_33;
  }

  v32 = String._bridgeToObjectiveC()();
  v33 = [v29 BOOLForKey:v32];

  if (a3)
  {
    goto LABEL_17;
  }

  if (v33)
  {
    v131[3] = &type metadata for Bool;
    LOBYTE(v131[0]) = 0;
    sub_100EB3DDC(v131, 0xD00000000000001ALL, 0x80000001013775A0, v29);
    sub_10000B3A8(v131, &unk_1016A0B10, &qword_10139BF40);
    sub_100FE1B40(v127, 0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100137944(v130, 1);
      swift_unknownObjectRelease();
    }

    sub_100FE08A8(v127, v126, 1, v128, v129);
    return;
  }

LABEL_22:
  v37 = v130;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v67 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v131[0] = v69;
      *v68 = 136315138;
      v70 = [*(v37 + 280) debugDescription];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = sub_1000136BC(v71, v73, v131);

      *(v68 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v13, v67, ">>> fetchDatabaseChanges (NoZone) exclusiveAccessSemaphore.signal() %s", v68, 0xCu);
      sub_100007BAC(v69);
    }

    v75 = *(v37 + 280);
    OS_dispatch_semaphore.signal()();
    v76 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v131[0] = v78;
      *v77 = 136315138;
      v79 = [v75 debugDescription];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83 = sub_1000136BC(v80, v82, v131);

      *(v77 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v13, v76, "<<< fetchDatabaseChanges (NoZone) exclusiveAccessSemaphore.signal() %s", v77, 0xCu);
      sub_100007BAC(v78);
    }

    v84 = [objc_allocWithZone(NSError) init];
    v128(v84, 1);

    return;
  }

  v39 = *(Strong + 160);
  swift_unknownObjectRelease();
  v40 = swift_beginAccess();
  v41 = *(a9 + 16);
  v134 = v39;
  __chkstk_darwin(v40);
  v124 = &v134;

  v42 = sub_1002EB810(sub_1010119D4, v123, v41);

  if (v42)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100137944(v37, 1);
      swift_unknownObjectRelease();
    }

    v43 = *(v37 + 88);
    *(v37 + 88) = 0;
    sub_101011434(v43);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_101385D80;
    v134 = 0;
    v45 = String.init<A>(describing:)();
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = v19;
    *(v44 + 32) = v45;
    *(v44 + 40) = v46;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v47 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    v48 = 2;
    os_log(_:dso:log:type:_:)();

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v85 = swift_beginAccess();
    v86 = *(a10 + 16);
    v133 = v39;
    __chkstk_darwin(v85);
    v124 = &v133;

    v87 = sub_1002EB810(sub_101012F10, v123, v86);

    if (v87)
    {
      goto LABEL_42;
    }

    v48 = 3;
  }

  sub_100FD9B00(v48);
LABEL_42:
  v88 = sub_101011A58();
  v89 = sub_10112BA74(v88);

  swift_beginAccess();
  v90 = *(a10 + 16);

  v92 = sub_10112BA74(v91);

  sub_10039E0B8(v92, v89);
  v94 = sub_1003A8E9C(v93);

  swift_beginAccess();
  v95 = *(a10 + 16);
  *(a10 + 16) = v94;

  if ((v94 & 0x8000000000000000) != 0 || (v94 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_45;
    }
  }

  else if (v94[2])
  {
LABEL_45:
    v96 = *(v37 + 88);
    *(v37 + 88) = 2;
    sub_101011434(v96);
    sub_101010C38(2uLL);
    swift_beginAccess();
    v97 = *(a10 + 16);

    sub_101011C64(v98);
    swift_beginAccess();
    v99 = *(a10 + 16);
    v100 = swift_allocObject();
    v101 = v127;
    v100[2] = v37;
    v100[3] = v101;
    v102 = v125;
    v103 = v128;
    v100[4] = v125;
    v100[5] = v103;
    v100[6] = v129;
    v104 = v102;

    v105 = v101;
    sub_100FE33DC(v105, v126, v99, sub_101011FD8, v100);

    return;
  }

  sub_100FE1B40(v127, v125);
  v106 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v132[0] = v108;
    *v107 = 136315138;
    v109 = [*(v37 + 280) debugDescription];
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    v113 = sub_1000136BC(v110, v112, v132);

    *(v107 + 4) = v113;
    _os_log_impl(&_mh_execute_header, v28, v106, ">>> fetchDatabaseChanges (no zone fetch needed) exclusiveAccessSemaphore.signal() %s", v107, 0xCu);
    sub_100007BAC(v108);
  }

  v114 = *(v37 + 280);
  OS_dispatch_semaphore.signal()();
  v115 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v132[0] = v117;
    *v116 = 136315138;
    v118 = [v114 debugDescription];
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    v122 = sub_1000136BC(v119, v121, v132);

    *(v116 + 4) = v122;
    _os_log_impl(&_mh_execute_header, v28, v115, "<<< fetchDatabaseChanges (no zone fetch needed) exclusiveAccessSemaphore.signal() %s", v116, 0xCu);
    sub_100007BAC(v117);
  }

  v128(0, 0);
}