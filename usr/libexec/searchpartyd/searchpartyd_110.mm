unint64_t sub_100B7B820()
{
  result = qword_1016B14E0;
  if (!qword_1016B14E0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B14E0);
  }

  return result;
}

uint64_t sub_100B7B890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconStoreFileRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100B7B8F4()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BeaconStoreFileManager();
    if (v1 <= 0x3F)
    {
      sub_100B7B9B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100B7B9B8()
{
  if (!qword_1016B6B50)
  {
    type metadata accessor for DirectorySequence();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B6B50);
    }
  }
}

uint64_t sub_100B7BA2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v37 = &v36 - v5;
  v6 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for BeaconObservation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v36 = SPBeaconTaskNamePlaySound;
  v20 = sub_100035730(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, sub_100526B58, 0);
  sub_1012BB138(v20, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &qword_1016A42E0, &qword_1013B0010);
    v21 = 2;
    v22 = v15;
    v23 = v37;
  }

  else
  {
    v22 = v15;
    (*(v16 + 8))(v19, v15);
    sub_100B3DB48(v9, v14);
    if (v14[*(v10 + 24)] - 23 > 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = qword_1013DB220[(v14[*(v10 + 24)] - 23)];
    }

    v23 = v37;
    (*(v16 + 16))(v19, &v14[*(v10 + 20)], v22);
    sub_10073B5F0(v14);
  }

  v24 = *(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError);
  if (v24)
  {
    v25 = 3;
  }

  else
  {
    v25 = v21;
  }

  v26 = *(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError);
  swift_errorRetain();
  v27.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v24)
  {
    v28 = _convertErrorToNSError(_:)();
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_allocWithZone(SPBeaconTaskInformation);
  v30 = [v29 initWithName:v36 lastUpdated:v27.super.isa error:v28 state:v25];

  v31 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandIdentifier;
  swift_beginAccess();
  sub_1000D2A70(a1 + v31, v23, &qword_1016980D0, &unk_10138F3B0);
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  isa = 0;
  if ((*(v33 + 48))(v23, 1, v32) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v33 + 8))(v23, v32);
  }

  [v30 setCommandIdentifier:isa];

  result = (*(v16 + 8))(v19, v22);
  *v38 = v30;
  return result;
}

uint64_t sub_100B7BEE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v35 - v5;
  v7 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for BeaconObservation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Date();
  v16 = *(v37 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v37);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v20 = sub_100035730(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, sub_100526B58, 0);
  sub_1012BB138(v20, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &qword_1016A42E0, &qword_1013B0010);
    v21 = 2;
  }

  else
  {
    v22 = v37;
    (*(v16 + 8))(v19, v37);
    sub_100B3DB48(v10, v15);
    v21 = 2 * (v15[*(v11 + 24)] != 26);
    (*(v16 + 16))(v19, &v15[*(v11 + 20)], v22);
    sub_10073B5F0(v15);
  }

  v23 = *(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError);
  if (v23)
  {
    v24 = 3;
  }

  else
  {
    v24 = v21;
  }

  v25 = SPBeaconTaskNameStopSound;
  v26 = *(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError);
  swift_errorRetain();
  v27.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v23)
  {
    v28 = _convertErrorToNSError(_:)();
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v25 lastUpdated:v27.super.isa error:v28 state:v24];

  v30 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandIdentifier;
  swift_beginAccess();
  sub_1000D2A70(a1 + v30, v6, &qword_1016980D0, &unk_10138F3B0);
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  isa = 0;
  if ((*(v32 + 48))(v6, 1, v31) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v32 + 8))(v6, v31);
  }

  [v29 setCommandIdentifier:isa];

  result = (*(v16 + 8))(v19, v37);
  *v36 = v29;
  return result;
}

uint64_t sub_100B7C35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v35 = a2;
  v50 = a1;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v42 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v42);
  v40 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  v8 = *(v41 + 64);
  __chkstk_darwin(v43);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v4 + 56);
  v48 = *(v12 + 16);
  v49 = v12 + 16;
  v36 = v14;
  v48(v14, a1, v11);
  v15 = *(v12 + 80);
  v16 = (v15 + 24) & ~v15;
  v39 = v13 + 7;
  v17 = (v13 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  v38 = *(v12 + 32);
  v47 = v12 + 32;
  v38(v18 + v16, v14, v11);
  *(v18 + v17) = v35;
  aBlock[4] = sub_100B856FC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164B0B0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v20 = v40;
  v21 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v44 + 8))(v20, v21);
  (*(v41 + 8))(v10, v43);

  v22 = *(v4 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playFuture);
  v23 = v36;
  v48(v36, v50, v11);
  v34[1] = v15;
  v24 = (v15 + 16) & ~v15;
  v25 = (v39 + v24) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v38;
  v38(v26 + v24, v23, v11);
  v28 = (v26 + v25);
  v29 = v45;
  v30 = v46;
  *v28 = v45;
  v28[1] = v30;

  Future.addFailure(block:)();

  v48(v23, v50, v11);
  v31 = swift_allocObject();
  v27(v31 + v24, v23, v11);
  v32 = (v31 + v25);
  *v32 = v29;
  v32[1] = v30;

  Future.addSuccess(block:)();
}

uint64_t sub_100B7C8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandIdentifier;
  swift_beginAccess();
  sub_10002311C(v9, a1 + v12, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  return sub_100B7F13C(a3);
}

uint64_t sub_100B7C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a3;
  v48 = a1;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v39 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v39);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v40);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v3 + 56);
  v36 = v15;
  v17 = *(v13 + 16);
  v45 = v13 + 16;
  v47 = v17;
  v17(v16, a1, v12);
  v44 = *(v13 + 80);
  v18 = (v44 + 24) & ~v44;
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  v37 = *(v13 + 32);
  v46 = v13 + 32;
  v37(v19 + v18, v16, v12);
  aBlock[4] = sub_100B85554;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164AF70;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v21 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v41 + 8))(v8, v21);
  (*(v38 + 8))(v11, v40);

  v22 = *(v4 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopFuture);
  v23 = v16;
  v47(v16, v48, v12);
  v24 = (v44 + 16) & ~v44;
  v25 = (v36 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v16;
  v28 = v37;
  v37(v26 + v24, v27, v12);
  v29 = (v26 + v25);
  v31 = v42;
  v30 = v43;
  *v29 = v42;
  v29[1] = v30;

  Future.addFailure(block:)();

  v47(v23, v48, v12);
  v32 = swift_allocObject();
  v28(v32 + v24, v23, v12);
  v33 = (v32 + v25);
  *v33 = v31;
  v33[1] = v30;

  Future.addSuccess(block:)();
}

uint64_t sub_100B7CF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandIdentifier;
  swift_beginAccess();
  sub_10002311C(v7, a1 + v10, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  return sub_100B82344();
}

uint64_t sub_100B7D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v28 = a2;
  v30 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v33);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v29 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v18, v14);
  (*(v12 + 16))(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v12 + 32))(v21 + v19, &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v22 = (v21 + v20);
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
  aBlock[4] = sub_100B85660;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164B060;
  v24 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v29;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v36 + 8))(v6, v25);
  (*(v34 + 8))(v10, v35);
}

uint64_t sub_100B7D4F8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = UUID.uuidString.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return a2(a4);
}

uint64_t sub_100B7D5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v36 = a2;
  v38 = a1;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v42 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v42);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v18 + 104))(v21, enum case for DispatchQoS.QoSClass.default(_:), v17);
  v37 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v21, v17);
  v22 = *(v11 + 16);
  v22(v16, v36, v10);
  v22(v14, v38, v10);
  v23 = *(v11 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = (v12 + v23 + v24) & ~v23;
  v26 = swift_allocObject();
  v27 = *(v11 + 32);
  v27(v26 + v24, v16, v10);
  v27(v26 + v25, v14, v10);
  v28 = (v26 + ((v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v40;
  *v28 = v39;
  v28[1] = v29;
  aBlock[4] = sub_100B855C0;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164B010;
  v30 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v32 = v41;
  v31 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = v37;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v45 + 8))(v32, v31);
  (*(v43 + 8))(v9, v44);
}

uint64_t sub_100B7DAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = UUID.uuidString.getter();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v11 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return a3(0);
}

uint64_t sub_100B7DBFC()
{
  v1 = v0;
  v67 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v67 - 8);
  v2 = *(v78 + 64);
  __chkstk_darwin(v67);
  v4 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v77 = *(v5 - 8);
  v6 = *(v77 + 64);
  __chkstk_darwin(v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  __chkstk_darwin(v9);
  v73 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v11;
  v72 = type metadata accessor for DispatchQoS.QoSClass();
  v66 = *(v72 - 8);
  v12 = *(v66 + 64);
  __chkstk_darwin(v72);
  v71 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v14 = *(v70 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v70);
  v69 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v68 = v45 - v17;
  dispatch_assert_queue_V2(*(v0 + 56));
  v18 = *(v0 + 64);
  sub_1000BC4D4(&qword_1016B6DE0, &unk_1013DB210);
  v76 = v1;
  OS_dispatch_queue.sync<A>(execute:)();
  v19 = aBlock[0];
  v20 = *(aBlock[0] + 16);
  if (v20)
  {
    v65 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v64 = v76 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
    v22 = *(v14 + 16);
    v21 = v14 + 16;
    v63 = v22;
    v23 = *(v21 + 64);
    v45[1] = v19;
    v24 = v19 + ((v23 + 32) & ~v23);
    v61 = (v66 + 104);
    v60 = (v66 + 8);
    v59 = *(v21 + 56);
    v58 = v4;
    v56 = v8;
    v66 = v21;
    v55 = (v21 + 16);
    v54 = v75 + 16;
    v53 = enum case for DispatchQoS.QoSClass.default(_:);
    v62 = v23;
    v52 = (v23 + 16) & ~v23;
    v51 = (v15 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = v51 + 8;
    v49 = v75 + 32;
    v48 = v81;
    v47 = (v78 + 8);
    v46 = (v77 + 8);
    v57 = v5;
    do
    {
      v78 = v20;
      v25 = v68;
      v26 = v70;
      v63(v68, v24, v70);
      v27 = v71;
      v28 = v72;
      (*v61)(v71, v53, v72);
      v77 = static OS_dispatch_queue.global(qos:)();
      (*v60)(v27, v28);
      v29 = *v55;
      v30 = v69;
      (*v55)(v69, v25, v26);
      v31 = v75;
      v32 = v73;
      (*(v75 + 16))(v73, v64, v9);
      v33 = v9;
      v34 = (v50 + *(v31 + 80)) & ~*(v31 + 80);
      v35 = swift_allocObject();
      v29((v35 + v52), v30, v26);
      *(v35 + v51) = v76;
      (*(v31 + 32))(v35 + v34, v32, v33);
      v81[2] = sub_100B8546C;
      v81[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v81[0] = sub_100006684;
      v81[1] = &unk_10164AF20;
      v36 = _Block_copy(aBlock);

      v37 = v56;
      static DispatchQoS.unspecified.getter();
      v79 = _swiftEmptyArrayStorage;
      sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v58;
      v39 = v67;
      v40 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v41 = v77;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v42 = v78;
      v43 = v36;
      v9 = v33;
      _Block_release(v43);

      (*v47)(v38, v39);
      (*v46)(v37, v40);

      v24 += v59;
      v20 = v42 - 1;
    }

    while (v20);
  }
}

uint64_t sub_100B7E3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  Subscription.subscriber.getter();
  v4 = *sub_1000035D0(v6, v6[3]);
  sub_1004E2648(a3);
  return sub_100007BAC(v6);
}

uint64_t sub_100B7E450()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v87 = *(v7 - 8);
  v8 = *(v87 + 64);
  __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for UUID();
  v83 = *(v78 - 8);
  v11 = *(v83 + 64);
  __chkstk_darwin(v78);
  v86 = v12;
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v72 = *(v14 - 8);
  v15 = *(v72 + 64);
  __chkstk_darwin(v14);
  v81 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v85 = *(v89 - 8);
  v17 = *(v85 + 64);
  v18 = __chkstk_darwin(v89);
  v80 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v19;
  __chkstk_darwin(v18);
  v79 = &v53 - v20;
  dispatch_assert_queue_V2(*(v0 + 56));
  v21 = *(v0 + 64);
  sub_1000BC4D4(&qword_1016B6DE0, &unk_1013DB210);
  OS_dispatch_queue.sync<A>(execute:)();
  v22 = *(v1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError);
  v84 = v1;
  v23 = *(v1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError);
  v24 = aBlock[0];
  if (*(aBlock[0] + 16))
  {
    v88 = *(aBlock[0] + 16);
    v74 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v73 = v84 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
    v25 = v24;
    v26 = v85;
    v56 = v3;
    v27 = *(v85 + 80);
    v53 = v25;
    v82 = v22;
    v28 = v23;
    v29 = v25 + ((v27 + 32) & ~v27);
    swift_errorRetain();
    swift_errorRetain();
    v30 = *(v26 + 16);
    v26 += 16;
    v70 = v30;
    v69 = (v72 + 104);
    v68 = (v72 + 8);
    v67 = (v26 + 16);
    v65 = v83 + 16;
    v85 = v26;
    v64 = *(v26 + 56);
    v72 = v27;
    v62 = enum case for DispatchQoS.QoSClass.default(_:);
    v63 = (v27 + 16) & ~v27;
    v61 = (v61 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = v61 + 8;
    v59 = v86 + 7;
    v58 = v83 + 32;
    v57 = v92;
    ++v56;
    v55 = (v87 + 8);
    v77 = v7;
    v76 = v14;
    v75 = v28;
    v71 = v2;
    v66 = v10;
    v54 = v6;
    do
    {
      v31 = v79;
      v87 = v29;
      v32 = v89;
      v70(v79, v29, v89);
      v33 = v81;
      (*v69)(v81, v62, v14);
      v86 = static OS_dispatch_queue.global(qos:)();
      (*v68)(v33, v14);
      v34 = *v67;
      v35 = v80;
      (*v67)(v80, v31, v32);
      v36 = v13;
      v37 = v83;
      v38 = v78;
      (*(v83 + 16))(v36, v73, v78);
      v39 = (v60 + *(v37 + 80)) & ~*(v37 + 80);
      v40 = (v59 + v39) & 0xFFFFFFFFFFFFFFF8;
      v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      v34((v42 + v63), v35, v89);
      *(v42 + v61) = v84;
      v43 = *(v37 + 32);
      v13 = v36;
      v44 = v75;
      v43(v42 + v39, v13, v38);
      *(v42 + v40) = v82;
      v45 = v71;
      *(v42 + v41) = v44;
      v46 = v54;
      v47 = v66;
      v92[2] = sub_100B852E4;
      v92[3] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v92[0] = sub_100006684;
      v92[1] = &unk_10164AED0;
      v48 = _Block_copy(aBlock);
      swift_errorRetain();
      swift_errorRetain();

      static DispatchQoS.unspecified.getter();
      v90 = _swiftEmptyArrayStorage;
      sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v49 = v77;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v50 = v86;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v51 = v48;
      v14 = v76;
      _Block_release(v51);

      (*v56)(v46, v45);
      (*v55)(v47, v49);

      v29 = v87 + v64;
      --v88;
    }

    while (v88);
  }

  else
  {
    swift_errorRetain();
    swift_errorRetain();
  }
}

uint64_t sub_100B7ED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  Subscription.subscriber.getter();
  v8 = *sub_1000035D0(v10, v10[3]);
  sub_1004E1BB0(a3, a4, a5);
  return sub_100007BAC(v10);
}

uint64_t sub_100B7EDB4()
{
  v1 = v0;
  v2 = type metadata accessor for BeaconObservation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_assert_queue_V2(*(v0 + 56));
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v7 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playSoundTimer;
  swift_beginAccess();
  sub_1000D2A70(v0 + v7, &v19, &qword_1016B6DD8, &unk_1013DB1C0);
  if (*(&v20 + 1))
  {
    sub_10001F280(&v19, v18);
    sub_10000B3A8(&v19, &qword_1016B6DD8, &unk_1013DB1C0);
    sub_1000035D0(v18, v18[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_100007BAC(v18);
  }

  else
  {
    sub_10000B3A8(&v19, &qword_1016B6DD8, &unk_1013DB1C0);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  swift_beginAccess();
  sub_10002311C(&v19, v0 + v7, &qword_1016B6DD8, &unk_1013DB1C0);
  swift_endAccess();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v8 = qword_10177B2E8;
  v9 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(v6, v1 + v9, v10);
  v11 = &v6[*(v2 + 20)];
  Date.init()();
  v6[*(v2 + 24)] = 27;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v12 = *(v3 + 72);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  sub_10073B64C(v6, v14 + v13);
  v15 = type metadata accessor for Transaction();
  __chkstk_darwin(v15);
  *(&v17 - 4) = v8;
  *(&v17 - 3) = v14;
  *(&v17 - 2) = 0;
  *(&v17 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_10073B5F0(v6);
  sub_100B7DBFC();
  return sub_100B7E450();
}

uint64_t sub_100B7F13C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BeaconObservation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_assert_queue_V2(*(v1 + 56));
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for Transaction();
  sub_1000BC4D4(&qword_1016A24A0, &qword_1013AAFE8);
  static Transaction.named<A>(_:with:)();

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v9 = qword_10177B2E8;
  v10 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 16))(v8, v2 + v10, v11);
  v12 = &v8[*(v4 + 20)];
  Date.init()();
  v8[*(v4 + 24)] = 24;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v13 = *(v5 + 72);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = sub_10073B64C(v8, v15 + v14);
  __chkstk_darwin(v16);
  *(&v34 - 4) = v9;
  *(&v34 - 3) = v15;
  v32 = 0;
  v33 = 0;
  static Transaction.named<A>(_:with:)();

  sub_10073B5F0(v8);
  sub_100B7DBFC();
  v17 = *(v2 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playFuture);
  if (dispatch thunk of Future.isFinished.getter())
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    LODWORD(v33) = 0;
    v32 = 235;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v18 = type metadata accessor for AnalyticsEvent(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v21 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v22 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v23 = type metadata accessor for DispatchTime();
    v24 = *(*(v23 - 8) + 56);
    v24(&v21[v22], 1, 1, v23);
    v24(&v21[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v23);
    *(v21 + 15) = 0xD00000000000002CLL;
    *(v21 + 16) = 0x800000010136E3C0;
    v25 = swift_allocObject();
    v25[2] = v21;
    v25[3] = a1;
    v25[4] = v2;

    static Transaction.asyncTask(name:block:)();

    v26 = *sub_1000035D0((v2 + 16), *(v2 + 40));
    sub_100894920(v2 + v10, a1);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v21;
    *(v28 + 24) = v27;

    Future.addSuccess(block:)();

    swift_allocObject();
    swift_weakInit();

    Future.addFailure(block:)();

    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v21;
    *(v30 + 24) = v29;

    Future.addCompletion(block:)();
  }

  return result;
}

uint64_t sub_100B7F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 56);
    v23 = v12;
    v22 = v18;

    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a3;
    v19[4] = a2;
    aBlock[4] = sub_100B852D8;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10164AE80;
    v20 = _Block_copy(aBlock);

    swift_errorRetain();
    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v23);
  }

  return result;
}

uint64_t sub_100B7FAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Transaction.capture()();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError);
    *(result + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError) = a3;
    swift_errorRetain();
  }

  if (a3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100B7EDB4();
    }
  }

  return result;
}

uint64_t sub_100B7FB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v5 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100B7FC14, a1, 0);
}

uint64_t sub_100B7FC14()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  static DispatchTime.now()();
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_10002311C(v1, v2 + v4, &qword_101696CA8, &qword_10138B5E0);
  swift_endAccess();

  return _swift_task_switch(sub_100B7FD10, 0, 0);
}

uint64_t sub_100B7FD10()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_100B7FD80, v2, 0);
}

uint64_t sub_100B7FD80()
{
  sub_10117C3B4(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

id sub_100B7FE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x6C4154556D6F7266;
  v10 = inited + 32;
  *(inited + 40) = 0xEB00000000747265;
  *(inited + 48) = a1 == 2;
  *(inited + 56) = 1;
  v11 = sub_100908768(inited);
  swift_setDeallocating();
  sub_10000B3A8(v10, &qword_101699340, &qword_1013918A0);
  v12 = *(a2 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_targetBeacon);
  if (!v12)
  {
    return v11;
  }

  v13 = v12;
  result = [v13 systemVersion];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v11;
  sub_100FFC418(v15, 0, 0xD000000000000013, 0x8000000101356E70, isUniquelyReferenced_nonNull_native);
  v17 = v51;
  result = [v13 systemVersion];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = result;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v17;
  sub_100FFC418(v18, 0, 0xD00000000000001BLL, 0x8000000101356E90, v19);
  v20 = v51;
  v21 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v13, "batteryLevel")}];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v20;
  sub_100FFC418(v21, 0, 0x4C79726574746162, 0xEC0000006C657665, v22);
  v23 = v51;
  v24 = [v13 taskInformation];
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100B85220(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v25 + 16) && (v26 = sub_100777014(SPBeaconTaskNameBeginLeashing), (v27 & 1) != 0))
  {
    v28 = *(*(v25 + 56) + 8 * v26);

    v29 = [v28 state];

    v30 = v29 == 0;
  }

  else
  {

    v30 = 0;
  }

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v23;
  sub_100FFC418(v30, 1, 0x6563697665447369, 0xEF6465687361654CLL, v31);
  v32 = v51;
  v33 = [v13 connected];
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v32;
  sub_100FFC418(v33, 1, 0xD000000000000011, 0x8000000101350630, v34);
  v11 = v51;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if (!v36)
  {
LABEL_16:

    return v11;
  }

  result = [v13 name];
  if (result)
  {
    v37 = result;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v11;
    sub_100FFC418(v37, 0, 0xD000000000000010, 0x800000010136E5D0, v38);
    v39 = v51;
    v40 = [v13 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v5 + 8))(v8, v4);
    v41 = String._bridgeToObjectiveC()();

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v39;
    sub_100FFC418(v41, 0, 0x6544646572696170, 0xEE00444965636976, v42);
    v11 = v51;
    v43 = [v13 serialNumber];
    if (v43)
    {
      v44 = v43;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v11;
      sub_100FFC418(v44, 0, 0xD000000000000018, 0x8000000101350650, v45);
      v11 = v51;
    }

    v46 = [v13 role];
    if (v46)
    {
      v47 = v46;
      v48 = [v46 role];

      if (!v48)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = String._bridgeToObjectiveC()();
      }

      v49 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v11;
      sub_100FFC418(v48, 0, 0xD000000000000010, 0x800000010136E5F0, v49);

      return v51;
    }

    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100B8046C(unsigned __int8 *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = *a1;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v7, result + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, v2);

    (*(v3 + 32))(v9, v7, v2);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100B83418(v10, v9, 0);
    }

    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

uint64_t sub_100B806CC(uint64_t a1)
{
  v1[5] = a1;
  v3 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = type metadata accessor for DispatchTime();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100B807C8, a1, 0);
}

uint64_t sub_100B807C8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000D2A70(v1 + v3, v2, &qword_101696CA8, &qword_10138B5E0);

  return _swift_task_switch(sub_100B80870, 0, 0);
}

uint64_t sub_100B80870()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_101696CA8, &qword_10138B5E0);
    v4 = v0[9];
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[9];
    v9 = v0[5];
    (*(v2 + 32))(v8, v3, v1);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *(v10 + 16) = v8;

    return _swift_task_switch(sub_100B809A8, v9, 0);
  }
}

uint64_t sub_100B809A8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  sub_10115BE7C(sub_100B85218);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_100B80A64, 0, 0);
}

uint64_t sub_100B80A64()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

unint64_t sub_100B80AE8()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static DispatchTime.now()();
  v5 = DispatchTime.uptimeNanoseconds.getter();
  result = DispatchTime.uptimeNanoseconds.getter();
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0x4474736575716572;
    *(inited + 40) = 0xEF6E6F6974617275;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v8 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    (*(v1 + 8))(v4, v0);
    return v8;
  }

  return result;
}

uint64_t sub_100B80C8C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  v16 = a1;
  swift_getErrorValue();
  v11 = Error.localizedDescription.getter();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100008C00();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v7, result + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, v2);

    (*(v3 + 32))(v9, v7, v2);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100B83418(0, v9, v16);
    }

    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

uint64_t sub_100B80F18(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v51 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v51);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v49);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for UUID();
  v44 = *(v45 - 8);
  v11 = *(v44 + 64);
  v12 = __chkstk_darwin(v45);
  v42 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = &v42 - v14;
  v15 = *a1;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138BBE0;
  LOBYTE(aBlock[0]) = v15;
  sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v16 + 64) = v20;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  aBlock[0] = a2;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v21 = String.init<A>(describing:)();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v20;
  *(v16 + 72) = v21;
  *(v16 + 80) = v22;
  os_log(_:dso:log:_:_:)();

  if (!a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_9;
  }

  swift_getErrorValue();
  v23 = Error.domain.getter();
  v25 = v24;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v25)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (v23 == v26 && v25 == v27)
  {

    goto LABEL_19;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v41 & 1) == 0)
  {
LABEL_10:
    v28 = 0;
    goto LABEL_11;
  }

LABEL_19:
  swift_getErrorValue();
  if (Error.code.getter() != 4)
  {
    goto LABEL_10;
  }

  v28 = 1;
LABEL_11:
  type metadata accessor for Transaction();
  v29 = swift_allocObject();
  *(v29 + 16) = v52;
  *(v29 + 24) = v15;
  *(v29 + 32) = a2;
  *(v29 + 40) = v28;
  swift_errorRetain();

  static Transaction.asyncTask(name:block:)();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = v44;
    v32 = v42;
    v33 = v45;
    (*(v44 + 16))(v42, Strong + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, v45);

    v34 = v43;
    (*(v31 + 32))(v43, v32, v33);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100B83418(a2 == 0, v34, a2);
    }

    (*(v31 + 8))(v34, v33);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v36 = *(result + 56);

    aBlock[4] = sub_100B8516C;
    aBlock[5] = a4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10164AE08;
    v37 = _Block_copy(aBlock);

    v38 = v46;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v39 = v48;
    v40 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v50 + 8))(v39, v40);
    (*(v47 + 8))(v38, v49);
  }

  return result;
}

uint64_t sub_100B8168C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v4 + 153) = a4;
  *(v4 + 152) = a2;
  *(v4 + 40) = a1;
  *(v4 + 48) = a3;
  v6 = type metadata accessor for DispatchTimeInterval();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v9 = type metadata accessor for DispatchTime();
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100B817F8, a1, 0);
}

uint64_t sub_100B817F8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000D2A70(v2 + v3, v1, &qword_101696CA8, &qword_10138B5E0);

  return _swift_task_switch(sub_100B818A4, 0, 0);
}

uint64_t sub_100B818A4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101696CA8, &qword_10138B5E0);
    v4 = *(v0 + 112);
    v5 = *(v0 + 153);
    v6 = *(v0 + 152);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    (*(*(v0 + 88) + 56))(v4, 1, 1, *(v0 + 80));
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v4;
    v10 = sub_100B81C04;
    v11 = v7;
  }

  else
  {
    v12 = *(v0 + 40);
    (*(v3 + 32))(*(v0 + 96), v1, v2);
    v10 = sub_100B819E0;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100B819E0()
{
  v1 = *(v0 + 40);
  *(v0 + 120) = sub_10114A1D4(0x4474736575716572, 0xEF6E6F6974617275);

  return _swift_task_switch(sub_100B81A6C, 0, 0);
}

uint64_t sub_100B81A6C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = *(v0 + 112);
      v5 = *(v0 + 88);
      v4 = *(v0 + 96);
      v7 = *(v0 + 72);
      v6 = *(v0 + 80);
      v8 = *(v0 + 56);
      v9 = *(v0 + 64);
      *v7 = [v2 integerValue];
      (*(v9 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v8);
      DispatchTime.advanced(by:)();

      (*(v9 + 8))(v7, v8);
      (*(v5 + 8))(v4, v6);
      v10 = 0;
      goto LABEL_6;
    }
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  v10 = 1;
LABEL_6:
  v11 = *(v0 + 112);
  v12 = *(v0 + 153);
  v13 = *(v0 + 152);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);
  (*(*(v0 + 88) + 56))(v11, v10, 1, *(v0 + 80));
  v16 = swift_task_alloc();
  *(v0 + 128) = v16;
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;

  return _swift_task_switch(sub_100B81C04, v14, 0);
}

uint64_t sub_100B81C04()
{
  v1 = v0[16];
  v2 = v0[5];
  sub_10115BE7C(sub_100B85174);
  v3 = v0[16];

  type metadata accessor for AnalyticsPublisher();
  v0[17] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_100B81CF8;
  v5 = v0[5];

  return sub_101163F78(v5);
}

uint64_t sub_100B81CF8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100B81E10, 0, 0);
}

uint64_t sub_100B81E10()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[9];
  sub_10000B3A8(v0[14], &qword_101696CA8, &qword_10138B5E0);

  v4 = v0[1];

  return v4();
}

unint64_t sub_100B81EB4(unsigned __int8 a1, uint64_t a2, char a3, uint64_t a4)
{
  v34 = a4;
  v7 = a1;
  v8 = sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  v21 = v7 != 2 && (a1 & 1) != 0 && a2 == 0;
  *(inited + 48) = v21;
  *(inited + 56) = 1;
  *(inited + 64) = 0xD000000000000016;
  *(inited + 72) = 0x800000010136E520;
  *(inited + 80) = a3 & 1;
  *(inited + 88) = 1;
  v22 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (a2)
  {
    swift_getErrorValue();
    swift_errorRetain();
    Error.domain.getter();
    v23 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v22;
    sub_100FFC418(v23, 0, 0x6D6F44726F727265, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
    v25 = v35;
    swift_getErrorValue();
    Error.code.getter();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v35 = v25;
    sub_100FFC418(isa, 0, 0x646F43726F727265, 0xE900000000000065, v27);

    v22 = v35;
  }

  sub_1000D2A70(v34, v11, &qword_101696CA8, &qword_10138B5E0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000B3A8(v11, &qword_101696CA8, &qword_10138B5E0);
    return v22;
  }

  (*(v13 + 32))(v19, v11, v12);
  static DispatchTime.now()();
  v28 = DispatchTime.uptimeNanoseconds.getter();
  result = DispatchTime.uptimeNanoseconds.getter();
  if (v28 >= result)
  {
    v30 = Double._bridgeToObjectiveC()().super.super.isa;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v35 = v22;
    sub_100FFC418(v30, 0, 0xD000000000000010, 0x800000010136E540, v31);
    v22 = v35;
    v32 = *(v13 + 8);
    v32(v17, v12);
    v32(v19, v12);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_100B822EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100B7EDB4();
  }

  return result;
}

uint64_t sub_100B82344()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  __chkstk_darwin(v2);
  v49 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v5 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchTimeInterval();
  v41 = *(v42 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v42);
  v9 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for DispatchTime();
  v45 = *(v46 - 8);
  v10 = *(v45 + 64);
  v11 = __chkstk_darwin(v46);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v44 = v39 - v14;
  v15 = type metadata accessor for BeaconObservation();
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  __chkstk_darwin(v15);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v0 + 56);
  dispatch_assert_queue_V2(v43);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v19 = type metadata accessor for Transaction();
  sub_1000BC4D4(&qword_1016A24A0, &qword_1013AAFE8);
  v39[1] = v19;
  static Transaction.named<A>(_:with:)();

  v20 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playSoundTimer;
  swift_beginAccess();
  sub_1000D2A70(v1 + v20, &aBlock, &qword_1016B6DD8, &unk_1013DB1C0);
  if (*(&v55 + 1))
  {
    sub_10001F280(&aBlock, v53);
    sub_10000B3A8(&aBlock, &qword_1016B6DD8, &unk_1013DB1C0);
    sub_1000035D0(v53, v53[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_100007BAC(v53);
  }

  else
  {
    sub_10000B3A8(&aBlock, &qword_1016B6DD8, &unk_1013DB1C0);
  }

  v56 = 0;
  aBlock = 0u;
  v55 = 0u;
  swift_beginAccess();
  sub_10002311C(&aBlock, v1 + v20, &qword_1016B6DD8, &unk_1013DB1C0);
  swift_endAccess();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v21 = qword_10177B2E8;
  v22 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 16))(v18, v1 + v22, v23);
  v24 = &v18[*(v15 + 20)];
  Date.init()();
  v18[*(v15 + 24)] = 26;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v25 = *(v40 + 72);
  v26 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_101385D80;
  v28 = sub_10073B64C(v18, v27 + v26);
  __chkstk_darwin(v28);
  v39[-4] = v21;
  v39[-3] = v27;
  v39[-2] = 0;
  v39[-1] = 0;
  static Transaction.named<A>(_:with:)();

  sub_10073B5F0(v18);
  sub_100B7DBFC();
  v29 = *sub_1000035D0((v1 + 16), *(v1 + 40));
  v40 = sub_100896354(v1 + v22);

  Future.addCompletion(block:)();

  static DispatchTime.now()();
  *v9 = 8;
  v30 = v41;
  v31 = v42;
  (*(v41 + 104))(v9, enum case for DispatchTimeInterval.seconds(_:), v42);
  v32 = v44;
  + infix(_:_:)();
  (*(v30 + 8))(v9, v31);
  v45 = *(v45 + 8);
  v33 = v46;
  (v45)(v13, v46);
  v56 = sub_100B84F40;
  v57 = v1;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v55 = sub_100006684;
  *(&v55 + 1) = &unk_10164ACC8;
  v34 = _Block_copy(&aBlock);

  v35 = v47;
  static DispatchQoS.unspecified.getter();
  v53[0] = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v36 = v49;
  v37 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v34);

  (*(v51 + 8))(v36, v37);
  (*(v48 + 8))(v35, v50);
  (v45)(v32, v33);
}

uint64_t sub_100B82C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + *a3);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  v9 = Future.addCompletion(block:)();

  *a4 = v9;
  return result;
}

uint64_t sub_100B82CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 56);
    v23 = v12;
    v22 = v18;

    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a2;
    v19[4] = a3;
    aBlock[4] = sub_100B84F50;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10164AD40;
    v20 = _Block_copy(aBlock);

    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v23);
  }

  return result;
}

uint64_t sub_100B82FF8(uint64_t a1, uint64_t a2)
{
  Transaction.capture()();
  if (!a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100B7EDB4();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError);
    *(Strong + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError) = a2;
    swift_errorRetain();
    swift_errorRetain();
  }

  else
  {
    swift_errorRetain();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100B7DBFC();
  }
}

uint64_t sub_100B830F8(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
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

    v9 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
    swift_errorRetain();
    sub_100B8377C(0, a3 + v9, a2);
  }

  else
  {
    v11 = *a1;
    static os_log_type_t.default.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return sub_100B8377C(v11 & 1, a3 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, 0);
  }
}

void sub_100B832E8(uint64_t a1)
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = *(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopFuture);
  type metadata accessor for SPOwnerSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100B85220(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

uint64_t sub_100B83440(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138B360;
  *(v7 + 56) = &type metadata for Bool;
  *(v7 + 64) = &protocol witness table for Bool;
  *(v7 + 32) = a1 & 1;
  v8 = UUID.uuidString.getter();
  v21 = a1;
  v10 = v9;
  *(v7 + 96) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 104) = v11;
  *(v7 + 72) = v8;
  *(v7 + 80) = v10;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v12 = String.init<A>(describing:)();
  *(v7 + 136) = &type metadata for String;
  *(v7 + 144) = v11;
  *(v7 + 112) = v12;
  *(v7 + 120) = v13;
  os_log(_:dso:log:_:_:)();

  v14 = *(a4 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playFuture);
  dispatch_assert_queue_V2(*(a4 + 56));
  if (a3)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10138BBE0;
    type metadata accessor for UUID();
    sub_100B85220(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v11;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v18 = String.init<A>(describing:)();
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v11;
    *(v15 + 72) = v18;
    *(v15 + 80) = v19;
    os_log(_:dso:log:_:_:)();

    Future.finish(error:)();
  }

  else if (v21)
  {
    Future.finish(result:)();
  }

  else
  {
    type metadata accessor for SPOwnerSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100B85220(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }

  return sub_100B7DBFC();
}

uint64_t sub_100B837A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v27 = a3;
  v28 = a5;
  v25[1] = a4;
  v26 = a1;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v32 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v32);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  v11 = *(v31 + 64);
  __chkstk_darwin(v33);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v6 + 56);
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 80) + 17) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = v28;
  *(v20 + v19) = v27;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  aBlock[4] = v21;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v30;
  v22 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v23 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v34 + 8))(v10, v23);
  (*(v31 + 8))(v13, v33);
}

void sub_100B83B68(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138B360;
  *(v7 + 56) = &type metadata for Bool;
  *(v7 + 64) = &protocol witness table for Bool;
  *(v7 + 32) = a1 & 1;
  v8 = UUID.uuidString.getter();
  v20 = a1;
  v10 = v9;
  *(v7 + 96) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 104) = v11;
  *(v7 + 72) = v8;
  *(v7 + 80) = v10;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v12 = String.init<A>(describing:)();
  *(v7 + 136) = &type metadata for String;
  *(v7 + 144) = v11;
  *(v7 + 112) = v12;
  *(v7 + 120) = v13;
  os_log(_:dso:log:_:_:)();

  v14 = *(a4 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopFuture);
  dispatch_assert_queue_V2(*(a4 + 56));
  if (a3)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10138BBE0;
    type metadata accessor for UUID();
    sub_100B85220(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v11;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v18 = String.init<A>(describing:)();
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v11;
    *(v15 + 72) = v18;
    *(v15 + 80) = v19;
    os_log(_:dso:log:_:_:)();

    Future.finish(error:)();
  }

  else if (v20)
  {
    Future.finish(result:)();
  }

  else
  {
    type metadata accessor for SPOwnerSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100B85220(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }
}

uint64_t sub_100B83E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17[-v9 - 8];
  sub_10001F280(a1, v17);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016B6DC8, &unk_1013DB1B0);
  Subscription.init(subscriber:unsubscribeBlock:)();
  (*(v7 + 16))(v10, a3, v6);
  swift_beginAccess();
  v11 = *(a2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 72) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100A5EA98(0, v11[2] + 1, 1, v11);
    *(a2 + 72) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_100A5EA98(v13 > 1, v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
  *(a2 + 72) = v11;
  return swift_endAccess();
}

uint64_t sub_100B840B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100B84124(a1);
  }

  return result;
}

uint64_t sub_100B84124(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  v20[1] = *(v1 + 64);
  (*(v12 + 16))(v20 - v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_100B84CDC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164AC00;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v6, v3);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_100B844C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 72);
  v8[2] = a2;

  v5 = sub_10013E1EC(sub_100B84D4C, v8, v4);
  v6 = *(a1 + 72);
  *(a1 + 72) = v5;
}

BOOL sub_100B84550()
{
  sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  sub_1000041A4(&qword_1016B6DD0, &qword_101697DF0, &qword_10138CDE8);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100B845F4()
{
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 72);

  v2 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playFuture);

  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopFuture);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandIdentifier, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandIdentifier, &qword_1016980D0, &unk_10138F3B0);
  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError);

  v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playSoundTimer, &qword_1016B6DD8, &unk_1013DB1C0);
  return v0;
}

uint64_t sub_100B8472C()
{
  sub_100B845F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SoundPlaybackCoordinator()
{
  result = qword_1016B6BC0;
  if (!qword_1016B6BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B847D8()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100395648();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100B848FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100B84944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100B849A4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 72);
}

uint64_t sub_100B849E8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = a1;
}

uint64_t (*sub_100B84A34())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100B84A88()
{
  v1 = *(*v0 + 64);
  sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100B84B00()
{
  _StringGuts.grow(_:)(34);

  type metadata accessor for UUID();
  sub_100B85220(&qword_101696930, &type metadata accessor for UUID);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._object = 0x800000010136E110;
  v2._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v2);
  v3 = *(v0 + 56);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  OS_dispatch_queue.sync<A>(execute:)();
  v4 = [v11 debugDescription];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0x496E6F636165623CLL;
}

uint64_t sub_100B84CDC()
{
  v1 = *(sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100B844C4(v2, v3);
}

uint64_t sub_100B84D84()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_100B84E48(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 16);
  v6 = *(v1 + v4);
  v7 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v5, v1 + v3, v6, v7);
}

uint64_t sub_100B84F9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100B7FB70(v2, v3, v4);
}

uint64_t sub_100B85044(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100B8046C(a1);
}

uint64_t sub_100B8505C(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100B850B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014650;

  return sub_100B8168C(v2, v5, v3, v4);
}

uint64_t sub_100B85188()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100B806CC(v0);
}

uint64_t sub_100B85220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B85270(void (*a1)(void), void (*a2)(void))
{
  v5 = v2[2];

  a1(v2[3]);
  a2(v2[4]);

  return _swift_deallocObject(v2, 40);
}

uint64_t sub_100B852E4()
{
  v1 = *(sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v6);
  v9 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100B7ED34(v0 + v2, v7, v0 + v5, v8, v9);
}

uint64_t sub_100B8541C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 72);
}

uint64_t sub_100B8546C()
{
  v1 = *(sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_100B7E3E8(v0 + v2, v5, v6);
}

uint64_t sub_100B85554()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100B7CF08(v2, v3);
}

uint64_t sub_100B855C0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_100B7DAE4(v0 + v4, v0 + v5, v7);
}

uint64_t sub_100B85660()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + v4);

  return sub_100B7D4F8(v0 + v2, v6, v7, v8);
}

uint64_t sub_100B856FC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100B7C8A4(v3, v0 + v2, v4);
}

uint64_t sub_100B8578C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100B7D050(a1, v1 + v4, v6, v7);
}

uint64_t sub_100B8582C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100B858CC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100B7D5F4(a1, v1 + v4, v6, v7);
}

uint64_t SPDeviceEventSource.debugDescription.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x7463656E6E6F632ELL;
      }

      if (a1 == 2)
      {
        return 0x6E6E6F637369642ELL;
      }
    }

    return 0x6E776F6E6B6E752ELL;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x726961702ELL;
    }

    if (a1 == 6)
    {
      return 0x657463657465642ELL;
    }

    return 0x6E776F6E6B6E752ELL;
  }

  if (a1 == 3)
  {
    v1 = 1953784110;
  }

  else
  {
    v1 = 1952801838;
  }

  return v1 | 0x68636100000000;
}

uint64_t sub_100B85AE4()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    if (!v1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x6E6E6F637369642ELL;
      }

      return 0x6E776F6E6B6E752ELL;
    }

    return 0x7463656E6E6F632ELL;
  }

  else
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        v2 = 1953784110;
        return v2 | 0x68636100000000;
      }

      if (v1 == 4)
      {
        v2 = 1952801838;
        return v2 | 0x68636100000000;
      }

      return 0x6E776F6E6B6E752ELL;
    }

    if (v1 != 5)
    {
      if (v1 == 6)
      {
        return 0x657463657465642ELL;
      }

      return 0x6E776F6E6B6E752ELL;
    }

    return 0x726961702ELL;
  }
}

uint64_t sub_100B85BDC(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  sub_1000BC4D4(&qword_1016B6DE8, &qword_1013DB278);
  v9 = (sub_1000BC4D4(&unk_1016B6DF0, &qword_1013DB280) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v13 = v12 + v11;
  v14 = v9[14];
  v15 = *(sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060) + 48);
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 16))(v13, a2, v16);
  v17 = a3[3];
  v18 = a3[4];
  sub_1000035D0(a3, v17);
  *(v13 + v15) = (*(v18 + 184))(v17, v18);
  *(v13 + v14) = a4;
  v19 = a4;
  sub_100B85D8C(v12, _swiftEmptyArrayStorage, a5);
}

uint64_t sub_100B85D8C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v51 = sub_1000BC4D4(&unk_1016B6DF0, &qword_1013DB280);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v51);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v40 - v13;
  __chkstk_darwin(v12);
  v50 = &v40 - v14;
  v15 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
  v48 = *(v15 - 8);
  v49 = v15;
  v16 = *(v48 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = *(v3 + 56);
  sub_1000BC4D4(&unk_1016B6E00, &qword_1013BD078);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v20 = v54;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v40 = v54;
    v41 = a3;
    v42 = v4;
    v43 = a2;
    v54 = _swiftEmptyArrayStorage;
    sub_10112518C(0, v21, 0);
    v22 = v54;
    v23 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v24 = *(v8 + 72);
    v44 = a1;
    v45 = v24;
    v25 = &unk_1013BD060;
    do
    {
      v53 = v21;
      v26 = v50;
      sub_1000D2A70(v23, v50, &unk_1016B6DF0, &qword_1013DB280);
      v27 = v22;
      v28 = v47;
      sub_1000D2A70(v26, v47, &unk_1016B6DF0, &qword_1013DB280);
      v29 = *(v49 + 48);
      v52 = *(v28 + v29);
      v30 = *(v51 + 48);
      v31 = v25;
      v32 = *(v28 + v30);
      v33 = type metadata accessor for UUID();
      v34 = v46;
      v35 = v28;
      v22 = v27;
      (*(*(v33 - 8) + 32))(v46, v35, v33);
      *(v34 + v29) = v52;
      *(v34 + v30) = v32;
      v25 = v31;
      sub_1000D2A70(v34, v18, &unk_1016AA490, v31);
      sub_10000B3A8(v34, &unk_1016B6DF0, &qword_1013DB280);
      sub_10000B3A8(v26, &unk_1016B6DF0, &qword_1013DB280);
      v54 = v27;
      v37 = v27[2];
      v36 = v27[3];
      if (v37 >= v36 >> 1)
      {
        sub_10112518C(v36 > 1, v37 + 1, 1);
        v22 = v54;
      }

      v22[2] = v37 + 1;
      sub_1000D2AD8(v18, v22 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v37, &unk_1016AA490, v31);
      v23 += v45;
      v21 = v53 - 1;
    }

    while (v53 != 1);
    a2 = v43;
    a1 = v44;
    v4 = v42;
    LOBYTE(a3) = v41;
    v20 = v40;
  }

  type metadata accessor for Transaction();
  v38 = swift_allocObject();
  *(v38 + 16) = v4;
  *(v38 + 24) = v20;
  *(v38 + 32) = v22;
  *(v38 + 40) = a3;
  *(v38 + 48) = a2;
  *(v38 + 56) = a1;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100B861F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 64) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100B86290, 0, 0);
}

uint64_t sub_100B86290()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(*(v0 + 16) + 72);
  type metadata accessor for WorkItemQueue.WorkItem();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v3;
  *(v8 + 40) = v4;
  *(v8 + 48) = v2;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100B863CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 672) = a5;
  *(v5 + 664) = a4;
  *(v5 + 114) = a3;
  *(v5 + 656) = a2;
  *(v5 + 648) = a1;
  v6 = type metadata accessor for UUID();
  *(v5 + 680) = v6;
  v7 = *(v6 - 8);
  *(v5 + 688) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 696) = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
  *(v5 + 704) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v5 + 712) = swift_task_alloc();
  *(v5 + 720) = swift_task_alloc();
  *(v5 + 728) = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169F030, &qword_10139FE18);
  *(v5 + 736) = v11;
  v12 = *(v11 - 8);
  *(v5 + 744) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 752) = swift_task_alloc();
  *(v5 + 760) = swift_task_alloc();
  v14 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  *(v5 + 768) = v14;
  v15 = *(v14 - 8);
  *(v5 + 776) = v15;
  *(v5 + 784) = *(v15 + 64);
  *(v5 + 792) = swift_task_alloc();
  *(v5 + 800) = swift_task_alloc();
  *(v5 + 808) = swift_task_alloc();
  *(v5 + 816) = swift_task_alloc();
  *(v5 + 824) = swift_task_alloc();

  return _swift_task_switch(sub_100B86604, 0, 0);
}

uint64_t sub_100B86604()
{
  v194 = v0;
  v164 = (v0 + 328);
  v1 = (v0 + 432);
  v2 = *(v0 + 648);
  v3 = *(v2 + 32);
  *(v0 + 115) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v11 = 0;
  v12 = 0;
  if (v6)
  {
    while (1)
    {
      v173 = v11;
      v13 = *(v0 + 648);
LABEL_10:
      *(v0 + 840) = v12;
      *(v0 + 832) = v6;
      v15 = *(v0 + 824);
      v16 = *(v0 + 816);
      v17 = *(v0 + 768);
      v18 = *(v0 + 688);
      v19 = *(v0 + 680);
      v188 = v19;
      v190 = *(v0 + 664);
      v181 = *(v0 + 114);
      v184 = *(v0 + 656);
      v20 = __clz(__rbit64(v6)) | (v12 << 6);
      v174 = v18[2];
      v174(v15, *(v13 + 48) + v18[9] * v20);
      v21 = (*(v13 + 56) + 104 * v20);
      v22 = v21[96];
      v24 = *(v21 + 4);
      v23 = *(v21 + 5);
      *(v0 + 64) = *(v21 + 3);
      *(v0 + 80) = v24;
      *(v0 + 96) = v23;
      *(v0 + 112) = v22;
      v26 = *(v21 + 1);
      v25 = *(v21 + 2);
      *(v0 + 16) = *v21;
      *(v0 + 32) = v26;
      *(v0 + 48) = v25;
      v27 = v15 + *(v17 + 48);
      v28 = *(v0 + 16);
      memmove(v27, v21, 0x61uLL);
      v29 = v18[4];
      v30 = *(v27 + 24);
      *v1 = *(v27 + 8);
      *(v0 + 448) = v30;
      v31 = *(v27 + 56);
      v32 = *(v27 + 72);
      v33 = *(v27 + 40);
      *(v0 + 505) = *(v27 + 81);
      *(v0 + 480) = v31;
      *(v0 + 496) = v32;
      *(v0 + 464) = v33;
      v34 = v16 + *(v17 + 48);
      v187 = v29;
      v29(v16, v15, v188);
      *v34 = v28;
      v35 = *(v0 + 448);
      *(v34 + 8) = *v1;
      *(v34 + 24) = v35;
      v37 = *(v0 + 480);
      v36 = *(v0 + 496);
      v38 = *(v0 + 505);
      *(v34 + 40) = *(v0 + 464);
      *(v34 + 81) = v38;
      *(v34 + 72) = v36;
      *(v34 + 56) = v37;
      v39 = swift_task_alloc();
      *(v39 + 16) = v16;
      *(v39 + 24) = v181;
      sub_1000D2A70(v0 + 16, v0 + 120, &unk_1016AA4C0, &unk_1013BD0B0);

      v11 = v173;
      v40 = sub_10013D964(sub_1007FEFD8, v39, v184);

      v41 = swift_task_alloc();
      *(v41 + 16) = v16;
      *(v41 + 24) = v181;

      v191 = sub_10013DC40(sub_1007FEFFC, v41, v190);

      v42 = *(v40 + 16);

      if (v42 || *(v191 + 16))
      {
        break;
      }

      v6 &= v6 - 1;
      v43 = *(v0 + 816);

      v7 = sub_10000B3A8(v43, &unk_1016B6E10, &qword_1013BD0A8);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v56 = *(v0 + 672);
    v57 = *(v56 + 16);
    v58 = _swiftEmptyArrayStorage;
    if (v57)
    {
      *(v0 + 624) = _swiftEmptyArrayStorage;
      sub_10112510C(0, v57, 0);
      v58 = *(v0 + 624);
      v171 = sub_1000BC4D4(&unk_1016B6DF0, &qword_1013DB280);
      v59 = v56 + ((*(v171[-1].isa + 80) + 32) & ~*(v171[-1].isa + 80));
      v169 = *(v171[-1].isa + 9);
      v60 = v187;
      do
      {
        v182 = v57;
        v185 = v58;
        v61 = *(v0 + 728);
        v62 = *(v0 + 704);
        v63 = *(v59 + *(v62 + 48));
        v179 = *(v59 + SLODWORD(v171[6].isa));
        (v174)(v61, v59, *(v0 + 680));
        *(v61 + *(v62 + 48)) = v63;
        v64 = qword_101694958;
        v65 = v63;
        if (v64 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 816);
        v67 = *(v0 + 808);
        v68 = *(v0 + 728);
        v69 = *(v0 + 720);
        v70 = type metadata accessor for Logger();
        sub_1000076D4(v70, qword_10177B368);
        sub_1000D2A70(v66, v67, &unk_1016B6E10, &qword_1013BD0A8);
        sub_1000D2A70(v68, v69, &unk_1016AA490, &unk_1013BD060);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();
        log = v71;
        v73 = os_log_type_enabled(v71, v72);
        v74 = *(v0 + 808);
        if (v73)
        {
          type = v72;
          v75 = *(v0 + 800);
          v76 = *(v0 + 768);
          v165 = *(v0 + 712);
          v166 = *(v0 + 720);
          v167 = *(v0 + 704);
          v77 = *(v0 + 696);
          v78 = *(v0 + 688);
          v79 = *(v0 + 680);
          v80 = swift_slowAlloc();
          v193[0] = swift_slowAlloc();
          *v80 = 141558787;
          *(v80 + 4) = 1752392040;
          *(v80 + 12) = 2081;
          sub_1000D2A70(v74, v75, &unk_1016B6E10, &qword_1013BD0A8);
          v81 = v75 + *(v76 + 48);
          v82 = *(v81 + 96);
          v84 = *(v81 + 64);
          v83 = *(v81 + 80);
          *(v0 + 376) = *(v81 + 48);
          *(v0 + 392) = v84;
          *(v0 + 408) = v83;
          *(v0 + 424) = v82;
          v86 = *(v81 + 16);
          v85 = *(v81 + 32);
          *v164 = *v81;
          *(v0 + 344) = v86;
          *(v0 + 360) = v85;
          sub_10000B3A8(v164, &unk_1016AA4C0, &unk_1013BD0B0);
          v187(v77, v75, v79);
          sub_10000B3A8(v74, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000096E8(&qword_101696930);
          v87 = dispatch thunk of CustomStringConvertible.description.getter();
          v89 = v88;
          v90 = *(v78 + 8);
          v90(v77, v79);
          v91 = sub_1000136BC(v87, v89, v193);

          *(v80 + 14) = v91;
          *(v80 + 22) = 2160;
          *(v80 + 24) = 1752392040;
          *(v80 + 32) = 2081;
          sub_1000D2A70(v166, v165, &unk_1016AA490, &unk_1013BD060);

          v187(v77, v165, v79);
          v92 = dispatch thunk of CustomStringConvertible.description.getter();
          v94 = v93;
          v90(v77, v79);
          sub_10000B3A8(v166, &unk_1016AA490, &unk_1013BD060);
          v95 = sub_1000136BC(v92, v94, v193);

          *(v80 + 34) = v95;
          _os_log_impl(&_mh_execute_header, log, type, "Received device event update for subscription: %{private,mask.hash}s, beaconID: %{private,mask.hash}s.", v80, 0x2Au);
          swift_arrayDestroy();

          v60 = v187;
        }

        else
        {
          v96 = *(v0 + 720);
          sub_10000B3A8(*(v0 + 808), &unk_1016B6E10, &qword_1013BD0A8);

          sub_10000B3A8(v96, &unk_1016AA490, &unk_1013BD060);
        }

        v97 = *(v0 + 760);
        v98 = *(v0 + 712);
        v99 = *(v0 + 704);
        v100 = *(v0 + 680);
        v101 = *(*(v0 + 736) + 48);
        sub_1000D2AD8(*(v0 + 728), v98, &unk_1016AA490, &unk_1013BD060);

        v60(v97, v98, v100);
        *(v97 + v101) = v179;
        v58 = v185;
        *(v0 + 624) = v185;
        v103 = v185[2];
        v102 = v185[3];
        v104 = v179;
        if (v103 >= v102 >> 1)
        {
          sub_10112510C(v102 > 1, v103 + 1, 1);
          v58 = *(v0 + 624);
        }

        v105 = *(v0 + 760);
        v106 = *(v0 + 744);
        v58[2] = v103 + 1;
        sub_1000D2AD8(v105, v58 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v103, &qword_10169F030, &qword_10139FE18);
        v59 += v169;
        v57 = v182 - 1;
      }

      while (v182 != 1);
    }

    v107 = *(v191 + 16);
    if (v107)
    {
      *(v0 + 632) = _swiftEmptyArrayStorage;
      sub_10112510C(0, v107, 0);
      v108 = 0;
      v109 = *(v0 + 632);
      v7 = v191 + 32;
      v176 = v107;
      v186 = v58;
      while (v108 < *(v191 + 16))
      {
        v183 = v7;
        sub_1000D2A70(v7, v0 + 528, &qword_1016B6E20, &unk_10138CE00);
        v180 = *(v0 + 576);
        if (qword_101694958 != -1)
        {
          swift_once();
        }

        v110 = *(v0 + 816);
        v111 = *(v0 + 792);
        v112 = type metadata accessor for Logger();
        sub_1000076D4(v112, qword_10177B368);
        sub_1000D2A70(v110, v111, &unk_1016B6E10, &qword_1013BD0A8);
        sub_10001F280(v0 + 528, v0 + 584);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = *(v0 + 800);
          v172 = v113;
          v116 = *(v0 + 792);
          v117 = *(v0 + 768);
          v170 = v114;
          v118 = *(v0 + 696);
          loga = *(v0 + 688);
          v119 = *(v0 + 680);
          v120 = swift_slowAlloc();
          v193[0] = swift_slowAlloc();
          *v120 = 141558787;
          *(v120 + 4) = 1752392040;
          *(v120 + 12) = 2081;
          sub_1000D2A70(v116, v115, &unk_1016B6E10, &qword_1013BD0A8);
          v121 = v115 + *(v117 + 48);
          v122 = *(v121 + 96);
          v124 = *(v121 + 64);
          v123 = *(v121 + 80);
          *(v0 + 272) = *(v121 + 48);
          *(v0 + 288) = v124;
          *(v0 + 304) = v123;
          *(v0 + 320) = v122;
          v126 = *(v121 + 16);
          v125 = *(v121 + 32);
          *(v0 + 224) = *v121;
          *(v0 + 240) = v126;
          *(v0 + 256) = v125;
          sub_10000B3A8(v0 + 224, &unk_1016AA4C0, &unk_1013BD0B0);
          v187(v118, v115, v119);
          sub_10000B3A8(v116, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000096E8(&qword_101696930);
          v127 = dispatch thunk of CustomStringConvertible.description.getter();
          v129 = v128;
          v175 = v109;
          isa = loga[1].isa;
          isa(v118, v119);
          v131 = sub_1000136BC(v127, v129, v193);

          *(v120 + 14) = v131;
          *(v120 + 22) = 2160;
          *(v120 + 24) = 1752392040;
          *(v120 + 32) = 2081;
          v132 = *(v0 + 608);
          v133 = *(v0 + 616);
          sub_1000035D0((v0 + 584), v132);
          (*(v133 + 8))(v132, v133);
          v134 = dispatch thunk of CustomStringConvertible.description.getter();
          v136 = v135;
          v137 = v119;
          v58 = v186;
          isa(v118, v137);
          v109 = v175;
          sub_100007BAC((v0 + 584));
          v138 = sub_1000136BC(v134, v136, v193);

          *(v120 + 34) = v138;
          _os_log_impl(&_mh_execute_header, v172, v170, "Received device event update for subscription: %{private,mask.hash}s, beaconGroupID: %{private,mask.hash}s.", v120, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
          sub_10000B3A8(*(v0 + 792), &unk_1016B6E10, &qword_1013BD0A8);

          sub_100007BAC((v0 + 584));
        }

        v139 = *(v0 + 752);
        v140 = *(*(v0 + 736) + 48);
        v141 = *(v0 + 552);
        v142 = *(v0 + 560);
        sub_1000035D0((v0 + 528), v141);
        (*(v142 + 8))(v141, v142);
        *(v139 + v140) = v180;
        v143 = v180;
        sub_10000B3A8(v0 + 528, &qword_1016B6E20, &unk_10138CE00);
        *(v0 + 632) = v109;
        v145 = v109[2];
        v144 = v109[3];
        if (v145 >= v144 >> 1)
        {
          sub_10112510C(v144 > 1, v145 + 1, 1);
          v109 = *(v0 + 632);
        }

        v146 = *(v0 + 752);
        v147 = *(v0 + 744);
        ++v108;
        v109[2] = v145 + 1;
        sub_1000D2AD8(v146, v109 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v145, &qword_10169F030, &qword_10139FE18);
        v7 = v183 + 56;
        if (v176 == v108)
        {

          goto LABEL_40;
        }
      }

LABEL_47:
      __break(1u);
    }

    else
    {

      v109 = _swiftEmptyArrayStorage;
LABEL_40:
      v193[0] = v58;
      sub_10039A558(v109);
      if (*(v193[0] + 16))
      {
        sub_1000BC4D4(&unk_1016C31E0, &unk_1013DB2B0);
        v148 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v148 = _swiftEmptyDictionarySingleton;
      }

      *(v0 + 640) = v148;

      sub_100B88A90(v149, 1, (v0 + 640));
      *(v0 + 848) = v173;
      v150 = *(v0 + 816);
      v151 = *(v0 + 800);
      v152 = *(v0 + 784);
      v153 = *(v0 + 776);
      v154 = *(v0 + 680);

      v155 = *(v0 + 640);
      v156 = objc_allocWithZone(SPDeviceEventFetchResult);
      sub_100B8A2E0();
      sub_1000096E8(&qword_1016967B0);
      v157 = Dictionary._bridgeToObjectiveC()().super.isa;

      v158 = [v156 initWithResults:v157];
      *(v0 + 856) = v158;

      sub_1000D2A70(v150, v151, &unk_1016B6E10, &qword_1013BD0A8);
      v159 = (*(v153 + 80) + 16) & ~*(v153 + 80);
      v160 = swift_allocObject();
      *(v0 + 864) = v160;
      sub_1000D2AD8(v151, v160 + v159, &unk_1016B6E10, &qword_1013BD0A8);
      *(v160 + ((v152 + v159 + 7) & 0xFFFFFFFFFFFFFFF8)) = v158;
      v161 = async function pointer to unsafeBlocking<A>(_:)[1];
      v162 = v158;
      v163 = swift_task_alloc();
      *(v0 + 872) = v163;
      v10 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
      *v163 = v0;
      v163[1] = sub_100B87704;
      v8 = sub_100B8A32C;
      v7 = v0 + 113;
      v9 = v160;
    }

    return unsafeBlocking<A>(_:)(v7, v8, v9, v10);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v14 >= (((1 << *(v0 + 115)) + 63) >> 6))
      {
        break;
      }

      v13 = *(v0 + 648);
      v6 = *(v13 + 8 * v14 + 64);
      ++v12;
      if (v6)
      {
        v173 = v11;
        v12 = v14;
        goto LABEL_10;
      }
    }

    v44 = *(v0 + 824);
    v45 = *(v0 + 816);
    v46 = *(v0 + 808);
    v47 = *(v0 + 800);
    v48 = *(v0 + 792);
    v49 = *(v0 + 760);
    v50 = *(v0 + 752);
    v51 = *(v0 + 728);
    v52 = *(v0 + 720);
    v189 = *(v0 + 712);
    v192 = *(v0 + 696);
    v53 = *(v0 + 648);

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_100B87704()
{
  v1 = *(*v0 + 872);
  v2 = *(*v0 + 864);
  v4 = *v0;

  return _swift_task_switch(sub_100B8781C, 0, 0);
}

uint64_t sub_100B8781C()
{
  v191 = v0;
  v161 = (v0 + 328);
  v1 = (v0 + 432);
  v2 = *(v0 + 816);

  v3 = sub_10000B3A8(v2, &unk_1016B6E10, &qword_1013BD0A8);
  v7 = *(v0 + 848);
  v8 = *(v0 + 840);
  v9 = (*(v0 + 832) - 1) & *(v0 + 832);
  if (v9)
  {
    while (1)
    {
      v170 = v7;
      v10 = *(v0 + 648);
LABEL_7:
      *(v0 + 840) = v8;
      *(v0 + 832) = v9;
      v12 = *(v0 + 824);
      v13 = *(v0 + 816);
      v14 = *(v0 + 768);
      v15 = *(v0 + 688);
      v16 = *(v0 + 680);
      v185 = v16;
      v187 = *(v0 + 664);
      v178 = *(v0 + 114);
      v181 = *(v0 + 656);
      v17 = __clz(__rbit64(v9)) | (v8 << 6);
      v171 = v15[2];
      v171(v12, *(v10 + 48) + v15[9] * v17);
      v18 = (*(v10 + 56) + 104 * v17);
      v19 = v18[96];
      v21 = *(v18 + 4);
      v20 = *(v18 + 5);
      *(v0 + 64) = *(v18 + 3);
      *(v0 + 80) = v21;
      *(v0 + 96) = v20;
      *(v0 + 112) = v19;
      v23 = *(v18 + 1);
      v22 = *(v18 + 2);
      *(v0 + 16) = *v18;
      *(v0 + 32) = v23;
      *(v0 + 48) = v22;
      v24 = v12 + *(v14 + 48);
      v25 = *(v0 + 16);
      memmove(v24, v18, 0x61uLL);
      v26 = v15[4];
      v27 = *(v24 + 24);
      *v1 = *(v24 + 8);
      *(v0 + 448) = v27;
      v28 = *(v24 + 56);
      v29 = *(v24 + 72);
      v30 = *(v24 + 40);
      *(v0 + 505) = *(v24 + 81);
      *(v0 + 480) = v28;
      *(v0 + 496) = v29;
      *(v0 + 464) = v30;
      v31 = v13 + *(v14 + 48);
      v184 = v26;
      v26(v13, v12, v185);
      *v31 = v25;
      v32 = *(v0 + 448);
      *(v31 + 8) = *v1;
      *(v31 + 24) = v32;
      v34 = *(v0 + 480);
      v33 = *(v0 + 496);
      v35 = *(v0 + 505);
      *(v31 + 40) = *(v0 + 464);
      *(v31 + 81) = v35;
      *(v31 + 72) = v33;
      *(v31 + 56) = v34;
      v36 = swift_task_alloc();
      *(v36 + 16) = v13;
      *(v36 + 24) = v178;
      sub_1000D2A70(v0 + 16, v0 + 120, &unk_1016AA4C0, &unk_1013BD0B0);

      v7 = v170;
      v37 = sub_10013D964(sub_1007FEFD8, v36, v181);

      v38 = swift_task_alloc();
      *(v38 + 16) = v13;
      *(v38 + 24) = v178;

      v188 = sub_10013DC40(sub_1007FEFFC, v38, v187);

      v39 = *(v37 + 16);

      if (v39 || *(v188 + 16))
      {
        break;
      }

      v9 &= v9 - 1;
      v40 = *(v0 + 816);

      v3 = sub_10000B3A8(v40, &unk_1016B6E10, &qword_1013BD0A8);
      if (!v9)
      {
        goto LABEL_3;
      }
    }

    v53 = *(v0 + 672);
    v54 = *(v53 + 16);
    v55 = _swiftEmptyArrayStorage;
    if (v54)
    {
      *(v0 + 624) = _swiftEmptyArrayStorage;
      sub_10112510C(0, v54, 0);
      v55 = *(v0 + 624);
      v168 = sub_1000BC4D4(&unk_1016B6DF0, &qword_1013DB280);
      v56 = v53 + ((*(v168[-1].isa + 80) + 32) & ~*(v168[-1].isa + 80));
      v166 = *(v168[-1].isa + 9);
      v57 = v184;
      do
      {
        v179 = v54;
        v182 = v55;
        v58 = *(v0 + 728);
        v59 = *(v0 + 704);
        v60 = *(v56 + *(v59 + 48));
        v176 = *(v56 + SLODWORD(v168[6].isa));
        (v171)(v58, v56, *(v0 + 680));
        *(v58 + *(v59 + 48)) = v60;
        v61 = qword_101694958;
        v62 = v60;
        if (v61 != -1)
        {
          swift_once();
        }

        v63 = *(v0 + 816);
        v64 = *(v0 + 808);
        v65 = *(v0 + 728);
        v66 = *(v0 + 720);
        v67 = type metadata accessor for Logger();
        sub_1000076D4(v67, qword_10177B368);
        sub_1000D2A70(v63, v64, &unk_1016B6E10, &qword_1013BD0A8);
        sub_1000D2A70(v65, v66, &unk_1016AA490, &unk_1013BD060);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();
        log = v68;
        v70 = os_log_type_enabled(v68, v69);
        v71 = *(v0 + 808);
        if (v70)
        {
          type = v69;
          v72 = *(v0 + 800);
          v73 = *(v0 + 768);
          v162 = *(v0 + 712);
          v163 = *(v0 + 720);
          v164 = *(v0 + 704);
          v74 = *(v0 + 696);
          v75 = *(v0 + 688);
          v76 = *(v0 + 680);
          v77 = swift_slowAlloc();
          v190[0] = swift_slowAlloc();
          *v77 = 141558787;
          *(v77 + 4) = 1752392040;
          *(v77 + 12) = 2081;
          sub_1000D2A70(v71, v72, &unk_1016B6E10, &qword_1013BD0A8);
          v78 = v72 + *(v73 + 48);
          v79 = *(v78 + 96);
          v81 = *(v78 + 64);
          v80 = *(v78 + 80);
          *(v0 + 376) = *(v78 + 48);
          *(v0 + 392) = v81;
          *(v0 + 408) = v80;
          *(v0 + 424) = v79;
          v83 = *(v78 + 16);
          v82 = *(v78 + 32);
          *v161 = *v78;
          *(v0 + 344) = v83;
          *(v0 + 360) = v82;
          sub_10000B3A8(v161, &unk_1016AA4C0, &unk_1013BD0B0);
          v184(v74, v72, v76);
          sub_10000B3A8(v71, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000096E8(&qword_101696930);
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = v85;
          v87 = *(v75 + 8);
          v87(v74, v76);
          v88 = sub_1000136BC(v84, v86, v190);

          *(v77 + 14) = v88;
          *(v77 + 22) = 2160;
          *(v77 + 24) = 1752392040;
          *(v77 + 32) = 2081;
          sub_1000D2A70(v163, v162, &unk_1016AA490, &unk_1013BD060);

          v184(v74, v162, v76);
          v89 = dispatch thunk of CustomStringConvertible.description.getter();
          v91 = v90;
          v87(v74, v76);
          sub_10000B3A8(v163, &unk_1016AA490, &unk_1013BD060);
          v92 = sub_1000136BC(v89, v91, v190);

          *(v77 + 34) = v92;
          _os_log_impl(&_mh_execute_header, log, type, "Received device event update for subscription: %{private,mask.hash}s, beaconID: %{private,mask.hash}s.", v77, 0x2Au);
          swift_arrayDestroy();

          v57 = v184;
        }

        else
        {
          v93 = *(v0 + 720);
          sub_10000B3A8(*(v0 + 808), &unk_1016B6E10, &qword_1013BD0A8);

          sub_10000B3A8(v93, &unk_1016AA490, &unk_1013BD060);
        }

        v94 = *(v0 + 760);
        v95 = *(v0 + 712);
        v96 = *(v0 + 704);
        v97 = *(v0 + 680);
        v98 = *(*(v0 + 736) + 48);
        sub_1000D2AD8(*(v0 + 728), v95, &unk_1016AA490, &unk_1013BD060);

        v57(v94, v95, v97);
        *(v94 + v98) = v176;
        v55 = v182;
        *(v0 + 624) = v182;
        v100 = v182[2];
        v99 = v182[3];
        v101 = v176;
        if (v100 >= v99 >> 1)
        {
          sub_10112510C(v99 > 1, v100 + 1, 1);
          v55 = *(v0 + 624);
        }

        v102 = *(v0 + 760);
        v103 = *(v0 + 744);
        v55[2] = v100 + 1;
        sub_1000D2AD8(v102, v55 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v100, &qword_10169F030, &qword_10139FE18);
        v56 += v166;
        v54 = v179 - 1;
      }

      while (v179 != 1);
    }

    v104 = *(v188 + 16);
    if (v104)
    {
      *(v0 + 632) = _swiftEmptyArrayStorage;
      sub_10112510C(0, v104, 0);
      v105 = 0;
      v106 = *(v0 + 632);
      v3 = v188 + 32;
      v173 = v104;
      v183 = v55;
      while (v105 < *(v188 + 16))
      {
        v180 = v3;
        sub_1000D2A70(v3, v0 + 528, &qword_1016B6E20, &unk_10138CE00);
        v177 = *(v0 + 576);
        if (qword_101694958 != -1)
        {
          swift_once();
        }

        v107 = *(v0 + 816);
        v108 = *(v0 + 792);
        v109 = type metadata accessor for Logger();
        sub_1000076D4(v109, qword_10177B368);
        sub_1000D2A70(v107, v108, &unk_1016B6E10, &qword_1013BD0A8);
        sub_10001F280(v0 + 528, v0 + 584);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = *(v0 + 800);
          v169 = v110;
          v113 = *(v0 + 792);
          v114 = *(v0 + 768);
          v167 = v111;
          v115 = *(v0 + 696);
          loga = *(v0 + 688);
          v116 = *(v0 + 680);
          v117 = swift_slowAlloc();
          v190[0] = swift_slowAlloc();
          *v117 = 141558787;
          *(v117 + 4) = 1752392040;
          *(v117 + 12) = 2081;
          sub_1000D2A70(v113, v112, &unk_1016B6E10, &qword_1013BD0A8);
          v118 = v112 + *(v114 + 48);
          v119 = *(v118 + 96);
          v121 = *(v118 + 64);
          v120 = *(v118 + 80);
          *(v0 + 272) = *(v118 + 48);
          *(v0 + 288) = v121;
          *(v0 + 304) = v120;
          *(v0 + 320) = v119;
          v123 = *(v118 + 16);
          v122 = *(v118 + 32);
          *(v0 + 224) = *v118;
          *(v0 + 240) = v123;
          *(v0 + 256) = v122;
          sub_10000B3A8(v0 + 224, &unk_1016AA4C0, &unk_1013BD0B0);
          v184(v115, v112, v116);
          sub_10000B3A8(v113, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000096E8(&qword_101696930);
          v124 = dispatch thunk of CustomStringConvertible.description.getter();
          v126 = v125;
          v172 = v106;
          isa = loga[1].isa;
          isa(v115, v116);
          v128 = sub_1000136BC(v124, v126, v190);

          *(v117 + 14) = v128;
          *(v117 + 22) = 2160;
          *(v117 + 24) = 1752392040;
          *(v117 + 32) = 2081;
          v129 = *(v0 + 608);
          v130 = *(v0 + 616);
          sub_1000035D0((v0 + 584), v129);
          (*(v130 + 8))(v129, v130);
          v131 = dispatch thunk of CustomStringConvertible.description.getter();
          v133 = v132;
          v134 = v116;
          v55 = v183;
          isa(v115, v134);
          v106 = v172;
          sub_100007BAC((v0 + 584));
          v135 = sub_1000136BC(v131, v133, v190);

          *(v117 + 34) = v135;
          _os_log_impl(&_mh_execute_header, v169, v167, "Received device event update for subscription: %{private,mask.hash}s, beaconGroupID: %{private,mask.hash}s.", v117, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
          sub_10000B3A8(*(v0 + 792), &unk_1016B6E10, &qword_1013BD0A8);

          sub_100007BAC((v0 + 584));
        }

        v136 = *(v0 + 752);
        v137 = *(*(v0 + 736) + 48);
        v138 = *(v0 + 552);
        v139 = *(v0 + 560);
        sub_1000035D0((v0 + 528), v138);
        (*(v139 + 8))(v138, v139);
        *(v136 + v137) = v177;
        v140 = v177;
        sub_10000B3A8(v0 + 528, &qword_1016B6E20, &unk_10138CE00);
        *(v0 + 632) = v106;
        v142 = v106[2];
        v141 = v106[3];
        if (v142 >= v141 >> 1)
        {
          sub_10112510C(v141 > 1, v142 + 1, 1);
          v106 = *(v0 + 632);
        }

        v143 = *(v0 + 752);
        v144 = *(v0 + 744);
        ++v105;
        v106[2] = v142 + 1;
        sub_1000D2AD8(v143, v106 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v142, &qword_10169F030, &qword_10139FE18);
        v3 = v180 + 56;
        if (v173 == v105)
        {

          goto LABEL_37;
        }
      }

LABEL_48:
      __break(1u);
      return unsafeBlocking<A>(_:)(v3, v4, v5, v6);
    }

    v106 = _swiftEmptyArrayStorage;
LABEL_37:
    v190[0] = v55;
    sub_10039A558(v106);
    if (*(v190[0] + 16))
    {
      sub_1000BC4D4(&unk_1016C31E0, &unk_1013DB2B0);
      v145 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v145 = _swiftEmptyDictionarySingleton;
    }

    *(v0 + 640) = v145;

    sub_100B88A90(v146, 1, (v0 + 640));
    *(v0 + 848) = v170;
    if (!v170)
    {
      v147 = *(v0 + 816);
      v148 = *(v0 + 800);
      v149 = *(v0 + 784);
      v150 = *(v0 + 776);
      v151 = *(v0 + 680);

      v152 = *(v0 + 640);
      v153 = objc_allocWithZone(SPDeviceEventFetchResult);
      sub_100B8A2E0();
      sub_1000096E8(&qword_1016967B0);
      v154 = Dictionary._bridgeToObjectiveC()().super.isa;

      v155 = [v153 initWithResults:v154];
      *(v0 + 856) = v155;

      sub_1000D2A70(v147, v148, &unk_1016B6E10, &qword_1013BD0A8);
      v156 = (*(v150 + 80) + 16) & ~*(v150 + 80);
      v157 = swift_allocObject();
      *(v0 + 864) = v157;
      sub_1000D2AD8(v148, v157 + v156, &unk_1016B6E10, &qword_1013BD0A8);
      *(v157 + ((v149 + v156 + 7) & 0xFFFFFFFFFFFFFFF8)) = v155;
      v158 = async function pointer to unsafeBlocking<A>(_:)[1];
      v159 = v155;
      v160 = swift_task_alloc();
      *(v0 + 872) = v160;
      v6 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
      *v160 = v0;
      v160[1] = sub_100B87704;
      v4 = sub_100B8A32C;
      v3 = v0 + 113;
      v5 = v157;

      return unsafeBlocking<A>(_:)(v3, v4, v5, v6);
    }

    return swift_unexpectedError();
  }

  else
  {
    while (1)
    {
LABEL_3:
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v11 >= (((1 << *(v0 + 115)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v0 + 648);
      v9 = *(v10 + 8 * v11 + 64);
      ++v8;
      if (v9)
      {
        v170 = v7;
        v8 = v11;
        goto LABEL_7;
      }
    }

    v41 = *(v0 + 824);
    v42 = *(v0 + 816);
    v43 = *(v0 + 808);
    v44 = *(v0 + 800);
    v45 = *(v0 + 792);
    v46 = *(v0 + 760);
    v47 = *(v0 + 752);
    v48 = *(v0 + 728);
    v49 = *(v0 + 720);
    v186 = *(v0 + 712);
    v189 = *(v0 + 696);
    v50 = *(v0 + 648);

    v51 = *(v0 + 8);

    return v51();
  }
}

BOOL sub_100B88920(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  sub_1000D2A70(a1, &v20 - v7, &unk_1016B6E10, &qword_1013BD0A8);
  v9 = &v8[*(v5 + 56)];
  v10 = *v9;
  v11 = *(v9 + 2);
  v12 = *(v9 + 3);
  v13 = *(v9 + 4);
  v14 = *(v9 + 5);
  v15 = *(v9 + 7);
  v16 = *(v9 + 9);

  XPCSession.proxy.getter();

  v17 = v21;
  if (v21)
  {
    [v21 receivedUpdatedDeviceEvents:a2];
    swift_unknownObjectRelease();
  }

  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 8))(v8, v18);
  return v17 == 0;
}

uint64_t sub_100B88A90(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_10169F030, &qword_10139FE18);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v17 = v59 - v16;
  v64 = *(a1 + 16);
  if (!v64)
  {
  }

  v59[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v63 = *(v15 + 72);
  v65 = a1;
  sub_1000D2A70(a1 + v19, v59 - v16, &qword_10169F030, &qword_10139FE18);
  v60 = v8;
  v66 = *(v8 + 32);
  v67 = v7;
  v66(v11, v17, v7);
  v62 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_1000210EC(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_100FF2068(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_1000210EC(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v22;
  sub_10100B140();
  v22 = v35;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v70 = v31;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v32 = swift_dynamicCast();
    v33 = v60;
    if ((v32 & 1) == 0)
    {

      (*(v33 + 8))(v11, v67);
    }

    goto LABEL_26;
  }

LABEL_12:
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v61 = *(v60 + 72);
  v38 = v22;
  v66((v37 + v61 * v22), v11, v67);
  *(v36[7] + 8 * v38) = v20;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v65;
    if (v64 == 1)
    {
    }

    v42 = v65 + v63 + v19;
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_1000D2A70(v42, v17, &qword_10169F030, &qword_10139FE18);
      v66(v11, v17, v67);
      v20 = *&v17[v62];
      v44 = *a3;
      v45 = sub_1000210EC(v11);
      v47 = v44[2];
      v48 = (v46 & 1) == 0;
      v26 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v26)
      {
        goto LABEL_23;
      }

      v50 = v46;
      if (v44[3] < v49)
      {
        sub_100FF2068(v49, 1);
        v51 = *a3;
        v45 = sub_1000210EC(v11);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v50)
      {
        goto LABEL_9;
      }

      v53 = *a3;
      *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v54 = v45;
      v66((v53[6] + v61 * v45), v11, v67);
      *(v53[7] + 8 * v54) = v20;
      v55 = v53[2];
      v26 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v53[2] = v56;
      v42 += v63;
      v41 = v65;
      if (v64 == v43)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v57._object = 0x8000000101360AB0;
  v57._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v57);
  _print_unlocked<A, B>(_:_:)();
  v58._countAndFlagsBits = 39;
  v58._object = 0xE100000000000000;
  String.append(_:)(v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100B88FD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  *(v6 + 264) = a3;
  *(v6 + 136) = a1;
  *(v6 + 144) = a4;
  v11 = type metadata accessor for UUID();
  *(v6 + 168) = v11;
  v12 = *(v11 - 8);
  *(v6 + 176) = v12;
  *(v6 + 184) = *(v12 + 64);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  v13 = sub_1000280DC((v6 + 16));
  (*(*(a5 - 8) + 16))(v13, a2, a5);
  v14 = swift_task_alloc();
  *(v6 + 208) = v14;
  *v14 = v6;
  v14[1] = sub_100B8914C;

  return sub_100B89C0C(v13, a4, a5, a6);
}

uint64_t sub_100B8914C(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_100B8924C, 0, 0);
}

uint64_t sub_100B8924C()
{
  v56 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 136);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B368);
  sub_10001F280(v0 + 16, v0 + 56);
  swift_bridgeObjectRetain_n();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {
    v21 = *(v0 + 216);
    swift_bridgeObjectRelease_n();

    sub_100007BAC((v0 + 56));
    goto LABEL_22;
  }

  v7 = *(v0 + 200);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v0 + 136);
  v13 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  *v13 = 141558787;
  *(v13 + 4) = 1752392040;
  *(v13 + 12) = 2081;
  sub_1000035D0((v0 + 56), *(v0 + 80));
  (*(*(*(v10 + 8) + 8) + 32))(v11);
  sub_1000096E8(&qword_101696930);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  (*(v8 + 8))(v7, v9);
  sub_100007BAC((v0 + 56));
  v17 = sub_1000136BC(v14, v16, &v55);

  *(v13 + 14) = v17;
  *(v13 + 22) = 2082;
  v18 = [v12 source];
  if (v18 > 2)
  {
    if (v18 <= 4)
    {
      v19 = 0xE700000000000000;
      if (v18 == 3)
      {
        v20 = 1953784110;
      }

      else
      {
        v20 = 1952801838;
      }

      v22 = v20 | 0x68636100000000;
      goto LABEL_21;
    }

    if (v18 == 5)
    {
      v19 = 0xE500000000000000;
      v22 = 0x726961702ELL;
      goto LABEL_21;
    }

    if (v18 == 6)
    {
      v19 = 0xEF79627261654E64;
      v22 = 0x657463657465642ELL;
      goto LABEL_21;
    }

LABEL_16:
    v19 = 0xE800000000000000;
    v22 = 0x6E776F6E6B6E752ELL;
    goto LABEL_21;
  }

  if (!v18)
  {
    goto LABEL_16;
  }

  if (v18 == 1)
  {
    v19 = 0xE800000000000000;
    v22 = 0x7463656E6E6F632ELL;
    goto LABEL_21;
  }

  if (v18 != 2)
  {
    goto LABEL_16;
  }

  v19 = 0xEB00000000746365;
  v22 = 0x6E6E6F637369642ELL;
LABEL_21:
  v23 = *(v0 + 216);
  v24 = sub_1000136BC(v22, v19, &v55);

  *(v13 + 24) = v24;
  *(v13 + 32) = 2048;
  v25 = *(v23 + 16);

  *(v13 + 34) = v25;

  _os_log_impl(&_mh_execute_header, v5, v6, "Update device event for beacon: %{private,mask.hash}s, source: %{public}s,\nclientBeaconIdentifiers %ld].", v13, 0x2Au);
  swift_arrayDestroy();

LABEL_22:
  v26 = sub_10000954C(*(v0 + 216));
  *(v0 + 224) = v26;

  v27 = *(v26 + 32);
  *(v0 + 265) = v27;
  v28 = -1;
  v29 = -1 << v27;
  if (-v29 < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v26 + 56);
  if (v30)
  {
    v31 = 0;
    v32 = *(v0 + 224);
LABEL_29:
    *(v0 + 232) = v30;
    *(v0 + 240) = v31;
    v35 = *(v0 + 192);
    v36 = *(v0 + 200);
    v37 = *(v0 + 176);
    v38 = *(v0 + 184);
    v39 = *(v0 + 168);
    v54 = *(v0 + 264);
    v40 = *(v0 + 144);
    v53 = *(v0 + 136);
    (*(v37 + 16))(v35, *(v32 + 48) + *(v37 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v39);
    v41 = *(v37 + 32);
    v41(v36, v35, v39);
    sub_10001F280(v0 + 16, v0 + 96);
    v42 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v43 = (v38 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v0 + 248) = v44;
    *(v44 + 16) = v40;
    v41(v44 + v42, v36, v39);
    sub_100031694((v0 + 96), v44 + v43);
    v45 = v44 + ((v43 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v45 = v53;
    *(v45 + 8) = v54;
    v46 = async function pointer to unsafeBlocking<A>(_:)[1];
    v47 = v53;

    v48 = swift_task_alloc();
    *(v0 + 256) = v48;
    *v48 = v0;
    v48[1] = sub_100B89868;

    return unsafeBlocking<A>(_:)(v48, sub_100B8A0AC, v44, &type metadata for () + 8);
  }

  else
  {
    v33 = 0;
    v34 = ((63 - v29) >> 6) - 1;
    v32 = *(v0 + 224);
    while (v34 != v33)
    {
      v31 = v33 + 1;
      v30 = *(v32 + 8 * v33++ + 64);
      if (v30)
      {
        goto LABEL_29;
      }
    }

    v49 = *(v0 + 192);
    v50 = *(v0 + 200);

    sub_100007BAC((v0 + 16));

    v51 = *(v0 + 8);

    return v51();
  }
}

uint64_t sub_100B89868()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_100B89980, 0, 0);
}

uint64_t sub_100B89980(void *a1, uint64_t (*a2)(), uint64_t a3, char *a4)
{
  v5 = *(v4 + 240);
  v6 = (*(v4 + 232) - 1) & *(v4 + 232);
  if (v6)
  {
    a1 = *(v4 + 224);
LABEL_7:
    *(v4 + 232) = v6;
    *(v4 + 240) = v5;
    v8 = *(v4 + 192);
    v9 = *(v4 + 200);
    v10 = *(v4 + 176);
    v11 = *(v4 + 184);
    v12 = *(v4 + 168);
    v26 = *(v4 + 264);
    v13 = *(v4 + 144);
    v25 = *(v4 + 136);
    (*(v10 + 16))(v8, a1[6] + *(v10 + 72) * (__clz(__rbit64(v6)) | (v5 << 6)), v12);
    v14 = *(v10 + 32);
    v14(v9, v8, v12);
    sub_10001F280(v4 + 16, v4 + 96);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v4 + 248) = v17;
    *(v17 + 16) = v13;
    v14(v17 + v15, v9, v12);
    sub_100031694((v4 + 96), v17 + v16);
    v18 = v17 + ((v16 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v18 = v25;
    *(v18 + 8) = v26;
    v19 = async function pointer to unsafeBlocking<A>(_:)[1];
    v20 = v25;

    a1 = swift_task_alloc();
    *(v4 + 256) = a1;
    *a1 = v4;
    a1[1] = sub_100B89868;
    a2 = sub_100B8A0AC;
    a4 = &type metadata for () + 8;
    a3 = v17;

    return unsafeBlocking<A>(_:)(a1, a2, a3, a4);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return unsafeBlocking<A>(_:)(a1, a2, a3, a4);
      }

      a1 = *(v4 + 224);
      if (v7 >= (((1 << *(v4 + 265)) + 63) >> 6))
      {
        break;
      }

      v6 = a1[v7 + 7];
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v21 = *(v4 + 192);
    v22 = *(v4 + 200);

    sub_100007BAC((v4 + 16));

    v23 = *(v4 + 8);

    return v23();
  }
}

uint64_t sub_100B89C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v7 = type metadata accessor for UUID();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v4[13] = sub_1000280DC(v4 + 2);
  (*(*(a3 - 8) + 16))();

  return _swift_task_switch(sub_100B89D24, 0, 0);
}

uint64_t sub_100B89D24()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  *(v0 + 112) = *(v2 + 72);
  *(v0 + 136) = *(v2 + 80);
  v5 = swift_allocObject();
  *(v0 + 120) = v5;
  *(v5 + 16) = xmmword_101385D80;
  (*(*(*(v3 + 8) + 8) + 32))(v4);
  if ((*(v3 + 88))(v4, v3))
  {
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_100B89ED4;
    v7 = *(v0 + 96);
    v8 = *(v0 + 56);

    return sub_1007F18CC(v7, v0 + 16);
  }

  else
  {
    v10 = *(v0 + 96);
    sub_100007BAC((v0 + 16));

    v11 = *(v0 + 8);

    return v11(v5);
  }
}

uint64_t sub_100B89ED4()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_100B89FD0, 0, 0);
}

uint64_t sub_100B89FD0()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = (*(v0 + 136) + 32) & ~*(v0 + 136);
  v6 = sub_100A5BFE0(1uLL, 2, 1, *(v0 + 120));
  *(v6 + 16) = 2;
  (*(v3 + 32))(v6 + v1 + v5, v2, v4);
  v7 = *(v0 + 96);
  sub_100007BAC((v0 + 16));

  v8 = *(v0 + 8);

  return v8(v6);
}

uint64_t sub_100B8A0AC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_100B85BDC(v4, v0 + v2, (v0 + v3), v6, v7);
}

uint64_t sub_100B8A160()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014650;

  return sub_100B861F4(v2, v3, v4, v7, v5, v6);
}

uint64_t sub_100B8A224()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014650;

  return sub_100B863CC(v2, v3, v6, v4, v5);
}

unint64_t sub_100B8A2E0()
{
  result = qword_1016AA570;
  if (!qword_1016AA570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016AA570);
  }

  return result;
}

BOOL sub_100B8A32C@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  result = sub_100B88920(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

Swift::Int sub_100B8A400()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013DB378[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B8A488()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013DB378[v1]);
  return Hasher._finalize()();
}

int *sub_100B8A4D4@<X0>(int *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 21760)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 22034)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 8233)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_100B8A52C()
{
  result = qword_1016B6E28;
  if (!qword_1016B6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6E28);
  }

  return result;
}

uint64_t sub_100B8A580(unint64_t a1)
{
  if (HIDWORD(a1))
  {
    return 3;
  }

  if (a1 == 8233)
  {
    return 2;
  }

  if (a1 == 21760)
  {
    return 0;
  }

  if (a1 != 22034)
  {
    return 3;
  }

  return 1;
}

uint64_t sub_100B8A5CC(uint64_t a1, void *a2)
{
  v78 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v73 = *(v78 - 8);
  v4 = *(v73 + 64);
  v5 = __chkstk_darwin(v78);
  v86 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v69 - v7;
  v87 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v8 = *(*(v87 - 8) + 64);
  v9 = __chkstk_darwin(v87);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v75 = &v69 - v12;
  v13 = __chkstk_darwin(v11);
  v74 = (&v69 - v14);
  v15 = __chkstk_darwin(v13);
  v17 = (&v69 - v16);
  __chkstk_darwin(v15);
  v85 = (&v69 - v18);
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v80 = a1;

  v24 = 0;
  v70 = v23;
  v71 = a1 + 64;
  v79 = a2;
  v72 = v17;
  while (v22)
  {
LABEL_11:
    v27 = __clz(__rbit64(v22)) | (v24 << 6);
    v28 = *(v80 + 56);
    v29 = (*(v80 + 48) + 16 * v27);
    v31 = v29[1];
    v81 = *v29;
    v30 = v81;
    v32 = (type metadata accessor for MultipartAccessoryPairingInfo(0) - 8);
    v33 = v28 + *(*v32 + 72) * v27;
    v34 = v85;
    sub_100B98760(v33, v85 + *(v87 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
    *v34 = v30;
    v34[1] = v31;
    sub_1000D2A70(v34, v17, &qword_101696E38, &qword_1013D8510);
    v35 = *v17;
    v83 = v17[1];
    v84 = v35;
    v36 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
    v37 = v77;
    v82 = &v77[*(v36 + 48)];
    v38 = v74;
    sub_1000D2A70(v34, v74, &qword_101696E38, &qword_1013D8510);
    v40 = *v38;
    v39 = v38[1];
    sub_100017D5C(v81, v31);
    sub_100016590(v40, v39);
    v41 = v87;
    v42 = v38 + *(v87 + 48);
    sub_1000D2A70(v42 + v32[8], v37, &qword_1016A40D0, &unk_10138BE70);
    sub_100B986D4(v42, type metadata accessor for MultipartAccessoryPairingInfo);
    v43 = v75;
    sub_1000D2A70(v34, v75, &qword_101696E38, &qword_1013D8510);
    sub_100016590(*v43, *(v43 + 8));
    v44 = *(v41 + 48);
    LOBYTE(v42) = *(v43 + v44);
    sub_100B986D4(v43 + v44, type metadata accessor for MultipartAccessoryPairingInfo);
    v45 = v76;
    sub_1000D2A70(v34, v76, &qword_101696E38, &qword_1013D8510);
    sub_100016590(*v45, *(v45 + 8));
    v46 = v45 + *(v41 + 48);
    LOBYTE(v32) = *(v46 + v32[9]);
    sub_100B986D4(v46, type metadata accessor for MultipartAccessoryPairingInfo);
    v47 = v82;
    *v82 = v42;
    v47[1] = 0;
    v47[2] = v32;
    swift_storeEnumTagMultiPayload();
    v48 = v37;
    v49 = v83;
    sub_100B987C8(v48, v86, type metadata accessor for OwnedBeaconGroup.PairingState);
    v50 = v79;
    v51 = *v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = *v50;
    v53 = v88;
    v54 = v84;
    v56 = sub_100771E30(v84, v49);
    v57 = v53[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_24;
    }

    v60 = v55;
    if (v53[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v63 = v88;
        if (v55)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_10100586C();
        v63 = v88;
        if (v60)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_100FE71DC(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_100771E30(v54, v49);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_26;
      }

      v56 = v61;
      v63 = v88;
      if (v60)
      {
LABEL_4:
        sub_100101D24(v86, v63[7] + *(v73 + 72) * v56);
        sub_100016590(v54, v49);
        goto LABEL_5;
      }
    }

    v63[(v56 >> 6) + 8] |= 1 << v56;
    v64 = (v63[6] + 16 * v56);
    *v64 = v54;
    v64[1] = v49;
    sub_100B987C8(v86, v63[7] + *(v73 + 72) * v56, type metadata accessor for OwnedBeaconGroup.PairingState);
    v65 = v63[2];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      goto LABEL_25;
    }

    v63[2] = v67;
LABEL_5:
    v22 &= v22 - 1;
    v25 = *(v87 + 48);
    *v50 = v63;
    v17 = v72;
    sub_100B986D4(v72 + v25, type metadata accessor for MultipartAccessoryPairingInfo);
    sub_10000B3A8(v85, &qword_101696E38, &qword_1013D8510);
    v23 = v70;
    v19 = v71;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100B8ABC8(uint64_t a1)
{
  v51 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v3 = *(*(v51 - 8) + 64);
  v4 = __chkstk_darwin(v51);
  v50 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v49 = (&v43 - v7);
  v8 = __chkstk_darwin(v6);
  v48 = (&v43 - v9);
  __chkstk_darwin(v8);
  v47 = (&v43 - v10);
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v43 = v1;
  v58 = _swiftEmptyArrayStorage;
  sub_101123CB8(0, v11, 0);
  v12 = v58;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v16 = result;
  v17 = 0;
  v57 = *(a1 + 36);
  v44 = a1 + 72;
  v45 = v11;
  v46 = a1 + 64;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_22;
    }

    if (v57 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v53 = 1 << v16;
    v54 = v16 >> 6;
    v52 = v17;
    v19 = v51;
    v20 = *(v51 + 48);
    v21 = *(a1 + 56);
    v55 = *(*(a1 + 48) + 16 * v16);
    v22 = v47;
    *v47 = v55;
    v23 = type metadata accessor for MultipartAccessoryPairingInfo(0);
    sub_100B98760(v21 + *(*(v23 - 8) + 72) * v16, v22 + v20, type metadata accessor for MultipartAccessoryPairingInfo);
    v24 = *v22;
    v56 = v12;
    v25 = v48;
    *v48 = v24;
    sub_100B987C8(v22 + v20, v25 + *(v19 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
    v26 = v49;
    sub_1000D2A70(v25, v49, &qword_101696E38, &qword_1013D8510);
    v27 = *(v19 + 48);
    v28 = v50;
    *v50 = *v26;
    sub_100B987C8(v26 + v27, v28 + v27, type metadata accessor for MultipartAccessoryPairingInfo);
    v29 = a1;
    v31 = *v28;
    v30 = v28[1];
    sub_100017D5C(v55, *(&v55 + 1));
    sub_100017D5C(v31, v30);
    sub_10000B3A8(v28, &qword_101696E38, &qword_1013D8510);
    v32 = v25;
    v12 = v56;
    result = sub_10000B3A8(v32, &qword_101696E38, &qword_1013D8510);
    v58 = v12;
    v34 = v12[2];
    v33 = v12[3];
    if (v34 >= v33 >> 1)
    {
      result = sub_101123CB8((v33 > 1), v34 + 1, 1);
      v12 = v58;
    }

    v12[2] = v34 + 1;
    v35 = &v12[2 * v34];
    v35[4] = v31;
    v35[5] = v30;
    v18 = 1 << *(v29 + 32);
    if (v16 >= v18)
    {
      goto LABEL_24;
    }

    a1 = v29;
    v13 = v46;
    v36 = *(v46 + 8 * v54);
    if ((v36 & v53) == 0)
    {
      goto LABEL_25;
    }

    if (v57 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v37 = v36 & (-2 << (v16 & 0x3F));
    if (v37)
    {
      v18 = __clz(__rbit64(v37)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v38 = v54 << 6;
      v39 = v54 + 1;
      v40 = (v44 + 8 * v54);
      while (v39 < (v18 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          result = sub_1000BB408(v16, v57, 0);
          v18 = __clz(__rbit64(v41)) + v38;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v16, v57, 0);
    }

LABEL_4:
    v17 = v52 + 1;
    v16 = v18;
    if (v52 + 1 == v45)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100B8AFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v131 = a7;
  v121 = a6;
  v120 = a5;
  v122 = a3;
  v123 = a4;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v125 = (&v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v119 - v15;
  v17 = type metadata accessor for AccessoryProductInfo();
  v127 = *(v17 - 8);
  v18 = *(v127 + 8);
  __chkstk_darwin(v17);
  v128 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v119 - v22;
  v24 = type metadata accessor for OwnedBeaconGroup(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v129 = (&v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v26);
  v30 = &v119 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v119 - v32;
  v126 = v34;
  __chkstk_darwin(v31);
  v135 = &v119 - v35;
  v132 = a1;
  v133 = a2;
  v36 = a2;
  v38 = v37;
  v130 = v7;
  sub_100AC57E4(a1, v36, v23);
  v124 = v38;
  v39 = *(v38 + 6);
  v138 = v24;
  v40 = v39(v23, 1, v24);
  if (v40 == 1)
  {
    sub_10000B3A8(v23, &unk_1016AF8B0, &unk_1013A0700);
    v41 = v131;
    v42 = *(v131 + 112);
    if (v42 >> 60 == 15)
    {
LABEL_5:
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177C418);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Missing product info to handle pairing lock error.", v48, 2u);
      }

      sub_100139CA0();
      swift_allocError();
      *v49 = 5;
      swift_willThrow();
      return;
    }

    v43 = *(v131 + 104);
    v44 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    swift_beginAccess();
    sub_1000D2A70(v41 + v44, v16, &qword_101697268, &qword_101394FE0);
    if ((*(v127 + 6))(v16, 1, v17) == 1)
    {
      sub_10000B3A8(v16, &qword_101697268, &qword_101394FE0);
      goto LABEL_5;
    }

    v103 = v128;
    sub_100B987C8(v16, v128, type metadata accessor for AccessoryProductInfo);
    sub_10002E98C(v43, v42);
    v131 = v43;
    v104 = sub_100B98388(v43, v42, v103);
    v106 = v105;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    sub_1000076D4(v107, qword_10177C418);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.info.getter();
    v110 = os_log_type_enabled(v108, v109);
    v63 = v135;
    v64 = v133;
    if (v110)
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&_mh_execute_header, v108, v109, "Creating new OwnedBeaconGroup.", v111, 2u);
    }

    v112 = v138;
    v113 = v138[7];
    v114 = type metadata accessor for MACAddress();
    (*(*(v114 - 8) + 16))(v63 + v113, v120, v114);
    v115 = v63 + v112[6];
    UUID.init()();
    *v63 = xmmword_10138C660;
    *(v63 + 16) = v104;
    *(v63 + 24) = v106 & 1;
    v136[0] = _swiftEmptyDictionarySingleton;
    v116 = v134;
    sub_100B8A5CC(v121, v136);
    v134 = v116;
    sub_100006654(v131, v42);
    sub_100B986D4(v128, type metadata accessor for AccessoryProductInfo);
    *(v63 + v112[8]) = 1;
    v117 = (v63 + v112[9]);
    v118 = v123;
    *v117 = v122;
    v117[1] = v118;
    *(v63 + v112[10]) = v136[0];

    v62 = v132;
  }

  else
  {
    sub_100B987C8(v23, v33, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    v51 = sub_1000076D4(v50, qword_10177C418);
    sub_100B98760(v33, v30, type metadata accessor for OwnedBeaconGroup);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v137 = v55;
      *v54 = 141558275;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      v56 = v138[6];
      type metadata accessor for UUID();
      LODWORD(v131) = v40;
      v57 = v51;
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      sub_100B986D4(v30, type metadata accessor for OwnedBeaconGroup);
      v61 = sub_1000136BC(v58, v60, &v137);
      v51 = v57;
      v40 = v131;

      *(v54 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v52, v53, "Found existing OwnedBeaconGroup %{private,mask.hash}s", v54, 0x16u);
      sub_100007BAC(v55);
    }

    else
    {

      sub_100B986D4(v30, type metadata accessor for OwnedBeaconGroup);
    }

    v62 = v132;
    sub_1005160CC(v51);
    v63 = v135;
    sub_100B987C8(v33, v135, type metadata accessor for OwnedBeaconGroup);
    v64 = v133;
  }

  v65 = swift_allocBox();
  v67 = v66;
  sub_100B98760(v63, v66, type metadata accessor for OwnedBeaconGroup);
  if (sub_100521E14(v62, v64))
  {
    v68 = dispatch_group_create();
    v69 = swift_allocObject();
    *(v69 + 16) = 0;
    v70 = (v69 + 16);
    dispatch_group_enter(v68);
    if (v40 == 1)
    {
      v71 = v67;
      v72 = v129;
      sub_100B98760(v71, v129, type metadata accessor for OwnedBeaconGroup);
      v73 = v68;

      sub_100B08178(v72, 0, v130, v73, v69);

      sub_100B986D4(v72, type metadata accessor for OwnedBeaconGroup);
    }

    else
    {
      v83 = swift_allocObject();
      *(v83 + 16) = v68;
      *(v83 + 24) = v69;
      v128 = v83;

      v84 = v68;
      v133 = v69;

      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v131 = v69 + 16;
      v132 = v68;
      v138 = v65;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_101385D80;
      *(v85 + 56) = &type metadata for String;
      *(v85 + 64) = sub_100008C00();
      *(v85 + 32) = 0x65736C6166;
      *(v85 + 40) = 0xE500000000000000;
      os_log(_:dso:log:_:_:)();

      v86 = objc_autoreleasePoolPush();
      v87 = v134;
      sub_1011218E0(v63);
      if (v87)
      {
        objc_autoreleasePoolPop(v86);
        __break(1u);
        return;
      }

      v89 = v88;
      objc_autoreleasePoolPop(v86);
      v90 = *(v130 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v134 = 0;
      v127 = type metadata accessor for OwnedBeaconGroup;
      v91 = v129;
      sub_100B98760(v63, v129, type metadata accessor for OwnedBeaconGroup);
      v92 = v124[80];
      v93 = v126;
      v94 = swift_allocObject();
      v95 = v138;
      *(v94 + 16) = sub_100B98CA0;
      *(v94 + 24) = v95;
      v125 = type metadata accessor for OwnedBeaconGroup;
      sub_100B987C8(v91, v94 + ((v92 + 32) & ~v92), type metadata accessor for OwnedBeaconGroup);

      sub_100FDCA40(v89, sub_100B98CA4, v94);

      v96 = swift_allocObject();
      v124 = v89;
      v97 = v128;
      *(v96 + 16) = sub_100B98A9C;
      *(v96 + 24) = v97;

      Future.addFailure(block:)();

      sub_100B98760(v63, v91, v127);
      v98 = (v92 + 16) & ~v92;
      v99 = (v93 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
      v100 = swift_allocObject();
      sub_100B987C8(v91, v100 + v98, v125);
      *(v100 + v99) = v130;
      v101 = (v100 + ((v99 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v101 = sub_100B98A9C;
      v101[1] = v97;

      Future.addSuccess(block:)();

      v68 = v132;
      v70 = v131;
    }

    OS_dispatch_group.wait()();
    swift_beginAccess();
    if (*v70)
    {
      sub_100139CA0();
      swift_allocError();
      *v102 = 14;
      swift_willThrow();

      sub_100B986D4(v135, type metadata accessor for OwnedBeaconGroup);
    }

    else
    {
      sub_100B986D4(v135, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_1000076D4(v74, qword_10177C418);
    sub_100017D5C(v62, v64);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    sub_100016590(v62, v64);
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v136[0] = v78;
      *v77 = 136315138;
      static String.Encoding.utf8.getter();
      v79 = String.init(data:encoding:)();
      if (!v80)
      {
        v79 = Data.hexString.getter();
      }

      v81 = sub_1000136BC(v79, v80, v136);

      *(v77 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "Unable to set pairing locked state for %s", v77, 0xCu);
      sub_100007BAC(v78);
    }

    sub_100139CA0();
    swift_allocError();
    *v82 = 2;
    swift_willThrow();
    sub_100B986D4(v63, type metadata accessor for OwnedBeaconGroup);
  }
}

uint64_t sub_100B90BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[19] = a7;
  v8[20] = v7;
  v8[17] = a5;
  v8[18] = a6;
  v8[15] = a3;
  v8[16] = a4;
  v8[13] = a1;
  v8[14] = a2;
  v9 = type metadata accessor for StandaloneBeacon();
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v8[23] = *(v10 + 64);
  v8[24] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v12 = type metadata accessor for Connection.TransactionMode();
  v8[28] = v12;
  v13 = *(v12 - 8);
  v8[29] = v13;
  v14 = *(v13 + 64) + 15;
  v8[30] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v8[31] = v15;
  v16 = *(v15 - 8);
  v8[32] = v16;
  v8[33] = *(v16 + 64);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v8[36] = v17;
  v18 = *(v17 - 8);
  v8[37] = v18;
  v19 = *(v18 + 64) + 15;
  v8[38] = swift_task_alloc();
  v20 = type metadata accessor for Table();
  v8[39] = v20;
  v21 = *(v20 - 8);
  v8[40] = v21;
  v22 = *(v21 + 64) + 15;
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v23 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v8[43] = swift_task_alloc();

  return _swift_task_switch(sub_100B90EC8, 0, 0);
}

uint64_t sub_100B90EC8()
{
  v1 = v0[15];
  v2 = *(v1 + 104);
  v0[44] = v2;
  v3 = *(v1 + 112);
  v0[45] = v3;
  if (v3 >> 60 != 15)
  {
    v4 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v5 = *v4;
    v0[46] = *v4;
    v6 = v4[1];
    v0[47] = v6;
    if (v6 >> 60 != 15)
    {
      v7 = v0[43];
      sub_10002E98C(v2, v3);
      sub_10002E98C(v5, v6);
      static String.Encoding.utf8.getter();
      v8 = String.init(data:encoding:)();
      v0[48] = v8;
      v0[49] = v9;
      if (v9)
      {
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {
          v11 = async function pointer to daemon.getter[1];
          v12 = swift_task_alloc();
          v0[50] = v12;
          *v12 = v0;
          v12[1] = sub_100B911CC;

          return daemon.getter();
        }
      }

      sub_100006654(v5, v6);
      sub_100006654(v2, v3);
    }
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C418);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "generateStandaloneBeacon: could not get basic device info from the session.", v16, 2u);
  }

  sub_100139CA0();
  swift_allocError();
  *v17 = 5;
  swift_willThrow();
  v19 = v0[42];
  v18 = v0[43];
  v20 = v0[41];
  v21 = v0[38];
  v23 = v0[34];
  v22 = v0[35];
  v24 = v0[30];
  v26 = v0[26];
  v25 = v0[27];
  v29 = v0[25];
  v30 = v0[24];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100B911CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v12 = *v1;
  *(v3 + 408) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 416) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_1000196A8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000196A8(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v6 = v12;
  v6[1] = sub_100B913A8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100B913A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  v4[53] = a1;
  v4[54] = v1;

  if (v1)
  {
    v7 = sub_100B92A7C;
    v8 = 0;
  }

  else
  {
    v9 = v4[51];

    v7 = sub_100B914E0;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100B914E0()
{
  v28 = *(v0[53] + 128);
  if (qword_1016949B8 != -1)
  {
    swift_once();
  }

  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v9 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v9, qword_10177B458);
  v0[11] = v1;
  v0[12] = v2;

  == infix<A>(_:_:)();

  QueryType.filter(_:)();
  v10 = *(v7 + 8);
  v0[55] = v10;
  v0[56] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v0[5] = v4;
  v0[6] = &protocol witness table for Table;
  v11 = sub_1000280DC(v0 + 2);
  (*(v5 + 16))(v11, v3, v4);
  if (!sub_1002182F4())
  {
    v20 = v0[42];
    v21 = v0[39];
    v22 = v0[40];
    sub_10020223C();
    v19 = swift_allocError();
    *v23 = 2;
    *(v23 + 4) = 1;
    swift_willThrow();
    (*(v22 + 8))(v20, v21);
    goto LABEL_7;
  }

  v12 = v0[54];
  Connection.prepare(_:)();
  v0[57] = v12;
  v13 = v0[42];
  v14 = v0[39];
  v15 = v0[40];
  v18 = *(v15 + 8);
  v16 = v15 + 8;
  v17 = v18;
  if (v12)
  {
    v19 = v12;
    v17(v0[42], v14);

LABEL_7:
    v0[61] = v19;
    v24 = v0[49];
    sub_100007BAC(v0 + 2);

    v25 = sub_100B91B90;
    goto LABEL_9;
  }

  v0[58] = v17;
  v0[59] = v16 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);

  sub_100007BAC(v0 + 2);

  v0[60] = sub_100B37A58(v26, sub_100F86728, 0);

  v25 = sub_100B917C0;
LABEL_9:

  return _swift_task_switch(v25, 0, 0);
}

uint64_t sub_100B917C0()
{
  v53 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 480);
  v2 = *(v0 + 392);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C418);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 480);
  if (v6)
  {
    v9 = *(v0 + 384);
    v8 = *(v0 + 392);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52 = v11;
    *v10 = 134218499;
    *(v10 + 4) = *(v7 + 16);

    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;

    v12 = sub_1000136BC(v9, v8, &v52);

    *(v10 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing %ld existing beacons matching %{private,mask.hash}s", v10, 0x20u);
    sub_100007BAC(v11);
  }

  else
  {
    v13 = *(v0 + 480);
  }

  v16 = *(v0 + 480);
  v17 = *(v16 + 2);
  *(v0 + 496) = v17;
  if (v17)
  {
    v18 = *(v0 + 256);
    v19 = *(v0 + 176);
    *(v0 + 568) = enum case for Connection.TransactionMode.deferred(_:);
    *(v0 + 504) = *(v0 + 456);
    *(v0 + 512) = 0;
    if (!*(v16 + 2))
    {
      __break(1u);
      return _swift_task_switch(v16, v14, v15);
    }

    v20 = *(v0 + 424);
    v21 = *(v0 + 280);
    v22 = *(v0 + 248);
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = *(v18 + 16);
    *(v0 + 520) = v24;
    *(v0 + 528) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v21, v16 + v23, v22);
    v16 = sub_100B91CAC;
    v14 = v20;
  }

  else
  {
    *(v0 + 552) = *(v0 + 456);
    v51 = *(v0 + 424);
    v47 = *(v0 + 392);
    v48 = *(v0 + 360);
    v45 = *(v0 + 384);
    v46 = *(v0 + 352);
    v25 = *(v0 + 168);
    v44 = *(v0 + 160);
    v49 = *(v0 + 144);
    v50 = *(v0 + 152);
    v42 = *(v0 + 136);
    v39 = *(v0 + 128);
    v27 = *(v0 + 104);
    v26 = *(v0 + 112);

    v28 = v26[3];
    v43 = v26[2];
    v29 = *v26;
    v30 = v26[1];
    v40 = v26[5];
    v41 = v26[4];
    sub_100017D5C(v43, v28);
    sub_100017D5C(v29, v30);
    sub_100017D5C(v41, v40);
    UUID.init()();
    v31 = v25[5];
    v32 = type metadata accessor for MACAddress();
    v33 = *(*(v32 - 8) + 16);
    v33(v27 + v31, v39, v32);
    v33(v27 + v25[6], v42, v32);
    sub_100A82D10(v27 + v25[8]);
    v34 = (v27 + v25[7]);
    *v34 = v45;
    v34[1] = v47;
    v35 = (v27 + v25[9]);
    *v35 = v46;
    v35[1] = v48;
    v36 = (v27 + v25[10]);
    *v36 = v43;
    v36[1] = v28;
    v36[2] = v29;
    v36[3] = v30;
    v36[4] = v41;
    v36[5] = v40;
    v37 = (v27 + v25[11]);
    *v37 = v49;
    v37[1] = v50;
    sub_100017D5C(v49, v50);
    v16 = sub_100B92668;
    v14 = v51;
  }

  v15 = 0;

  return _swift_task_switch(v16, v14, v15);
}

uint64_t sub_100B91B90()
{
  v1 = v0[53];
  v2 = v0[46];
  v3 = v0[47];
  v5 = v0[44];
  v4 = v0[45];

  sub_100006654(v2, v3);
  sub_100006654(v5, v4);
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v9 = v0[38];
  v11 = v0[34];
  v10 = v0[35];
  v12 = v0[30];
  v14 = v0[26];
  v13 = v0[27];
  v15 = v0[25];
  v18 = v0[24];
  v19 = v0[61];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100B91CAC()
{
  v1 = *(*(*(v0 + 424) + 128) + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1 || (v3 = sub_1000196A8(&qword_101699E78, type metadata accessor for StandaloneBeaconDatabase), v4 = *(v3 + 16), v5 = type metadata accessor for StandaloneBeaconDatabase(), (v6 = v4(v5, v3)) == 0))
  {
    v18 = (v0 + 280);
    v28 = *(v0 + 480);
    v29 = *(v0 + 392);
    v30 = *(v0 + 256);

    v27 = (v30 + 8);

    sub_10020223C();
    v17 = swift_allocError();
    *v31 = 2;
    *(v31 + 4) = 1;
    swift_willThrow();
    v19 = (v0 + 248);
    goto LABEL_8;
  }

  v76 = *(v6 + 24);

  if (qword_1016949A0 != -1)
  {
    swift_once();
  }

  v73 = *(v0 + 504);
  v70 = *(v0 + 568);
  v63 = *(v0 + 440);
  v65 = *(v0 + 448);
  v7 = *(v0 + 328);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 280);
  v11 = *(v0 + 288);
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  v14 = *(v0 + 232);
  v67 = *(v0 + 224);
  v15 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v15, qword_10177B410);
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  v63(v9, v11);
  v16 = swift_task_alloc();
  *(v16 + 16) = v76;
  *(v16 + 24) = v7;
  (*(v14 + 104))(v12, v70, v67);
  Connection.transaction(_:block:)();
  *(v0 + 536) = v73;
  if (v73)
  {
    v17 = v73;
    v18 = (v0 + 328);
    v19 = (v0 + 312);
    v20 = *(v0 + 480);
    v21 = *(v0 + 392);
    v22 = *(v0 + 256);
    v71 = *(v0 + 248);
    v74 = *(v0 + 280);
    v23 = *(v0 + 232);
    v24 = *(v0 + 240);
    v25 = *(v0 + 224);

    (*(v23 + 8))(v24, v25);
    (*(v22 + 8))(v74, v71);

    v26 = *(v0 + 472);
    v27 = (v0 + 464);
LABEL_8:
    v32 = *v18;
    v33 = *v19;
    v34 = *v27;
    *(v0 + 544) = v17;
    v34(v32, v33);
    v35 = sub_100B92550;
    goto LABEL_9;
  }

  v66 = *(v0 + 520);
  v68 = *(v0 + 528);
  v36 = *(v0 + 464);
  v37 = *(v0 + 328);
  v38 = *(v0 + 312);
  v61 = *(v0 + 272);
  v39 = *(v0 + 256);
  v69 = *(v0 + 264);
  v72 = *(v0 + 424);
  v40 = *(v0 + 240);
  v59 = *(v0 + 472);
  v60 = *(v0 + 248);
  v42 = *(v0 + 224);
  v41 = *(v0 + 232);
  v43 = *(v0 + 216);
  v62 = v43;
  v64 = *(v0 + 280);
  v75 = *(v0 + 208);

  (*(v41 + 8))(v40, v42);

  v36(v37, v38);
  v44 = type metadata accessor for TaskPriority();
  v45 = *(v44 - 8);
  (*(v45 + 56))(v43, 1, 1, v44);
  v66(v61, v64, v60);
  v46 = sub_1000196A8(&qword_1016B6E30, type metadata accessor for StandaloneBeaconService);
  v47 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v48 = swift_allocObject();
  *(v48 + 2) = v72;
  *(v48 + 3) = v46;
  *(v48 + 4) = v72;
  (*(v39 + 32))(&v48[v47], v61, v60);
  sub_1000D2A70(v62, v75, &qword_101698C00, &qword_10138B570);
  LODWORD(v46) = (*(v45 + 48))(v75, 1, v44);
  swift_retain_n();

  v49 = *(v0 + 208);
  if (v46 == 1)
  {
    sub_10000B3A8(*(v0 + 208), &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v45 + 8))(v49, v44);
  }

  v51 = *(v48 + 2);
  v50 = *(v48 + 3);
  swift_unknownObjectRetain();

  if (v51)
  {
    swift_getObjectType();
    v52 = dispatch thunk of Actor.unownedExecutor.getter();
    v54 = v53;
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  sub_10000B3A8(*(v0 + 216), &qword_101698C00, &qword_10138B570);
  if (v54 | v52)
  {
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = v52;
    *(v0 + 80) = v54;
  }

  v55 = *(v0 + 280);
  v56 = *(v0 + 248);
  v57 = *(v0 + 256);
  swift_task_create();

  (*(v57 + 8))(v55, v56);
  v35 = sub_100B922F8;
LABEL_9:

  return _swift_task_switch(v35, 0, 0);
}

uint64_t sub_100B922F8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[64] + 1;
  v5 = v3[67];
  if (v4 == v3[62])
  {
    v3[69] = v5;
    v6 = v3[60];
    v40 = v3[53];
    v36 = v3[49];
    v37 = v3[45];
    v34 = v3[48];
    v35 = v3[44];
    v7 = v3[21];
    v33 = v3[20];
    v38 = v3[18];
    v39 = v3[19];
    v31 = v3[17];
    v28 = v3[16];
    v9 = v3[13];
    v8 = v3[14];

    v10 = v8[3];
    v32 = v8[2];
    v11 = *v8;
    v12 = v8[1];
    v29 = v8[5];
    v30 = v8[4];
    sub_100017D5C(v32, v10);
    sub_100017D5C(v11, v12);
    sub_100017D5C(v30, v29);
    UUID.init()();
    v13 = v7[5];
    v14 = type metadata accessor for MACAddress();
    v15 = *(*(v14 - 8) + 16);
    v15(v9 + v13, v28, v14);
    v15(v9 + v7[6], v31, v14);
    sub_100A82D10(v9 + v7[8]);
    v16 = (v9 + v7[7]);
    *v16 = v34;
    v16[1] = v36;
    v17 = (v9 + v7[9]);
    *v17 = v35;
    v17[1] = v37;
    v18 = (v9 + v7[10]);
    *v18 = v32;
    v18[1] = v10;
    v18[2] = v11;
    v18[3] = v12;
    v18[4] = v30;
    v18[5] = v29;
    v19 = (v9 + v7[11]);
    *v19 = v38;
    v19[1] = v39;
    sub_100017D5C(v38, v39);
    a1 = sub_100B92668;
    a2 = v40;
  }

  else
  {
    v3[63] = v5;
    v3[64] = v4;
    v20 = v3[60];
    if (v4 >= *(v20 + 16))
    {
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    v21 = v3[53];
    v22 = v3[35];
    v23 = v3[31];
    v24 = v3[32];
    v25 = v20 + ((*(v3[22] + 80) + 32) & ~*(v3[22] + 80)) + *(v3[22] + 72) * v4;
    v26 = *(v24 + 16);
    v3[65] = v26;
    v3[66] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v22, v25, v23);
    a1 = sub_100B91CAC;
    a2 = v21;
  }

  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100B92550()
{
  v1 = v0[53];
  v3 = v0[46];
  v2 = v0[47];
  sub_100006654(v0[44], v0[45]);
  sub_100006654(v3, v2);

  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[38];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[30];
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[25];
  v16 = v0[24];
  v17 = v0[68];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100B92668()
{
  v1 = v0[69];
  sub_100F85058(v0[13], *(v0[53] + 128));
  v0[70] = v1;
  if (v1)
  {
    v2 = sub_100B92954;
  }

  else
  {
    v3 = v0[53];
    v5 = v0[24];
    v4 = v0[25];
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[13];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_100B98760(v8, v5, type metadata accessor for StandaloneBeacon);
    v10 = sub_1000196A8(&qword_1016B6E30, type metadata accessor for StandaloneBeaconService);
    v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v12 = swift_allocObject();
    v12[2] = v3;
    v12[3] = v10;
    v12[4] = v3;
    sub_100B987C8(v5, v12 + v11, type metadata accessor for StandaloneBeacon);
    swift_retain_n();
    sub_100A838D4(0, 0, v4, &unk_1013DB3B0, v12);

    v2 = sub_100B92838;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B92838()
{
  v1 = v0[53];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];
  v7 = v0[38];
  v9 = v0[34];
  v8 = v0[35];
  v12 = v0[30];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  sub_100B040D4();
  sub_100006654(v3, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100B92954()
{
  v1 = v0[53];
  v2 = v0[13];
  sub_100006654(v0[46], v0[47]);

  sub_100B986D4(v2, type metadata accessor for StandaloneBeacon);
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v6 = v0[38];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[30];
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];
  v15 = v0[24];
  v16 = v0[70];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100B92A7C()
{
  v1 = v0[51];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];

  sub_100006654(v4, v3);
  sub_100006654(v6, v5);
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[41];
  v10 = v0[38];
  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[30];
  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[25];
  v19 = v0[24];
  v20 = v0[54];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100B92BA4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v110 = &v103 - v6;
  v132 = type metadata accessor for SystemInfo.DeviceLockState();
  v134 = *(v132 - 8);
  v7 = *(v134 + 64);
  v8 = __chkstk_darwin(v132);
  v131 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v103 - v10;
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v129 = &v103 - v13;
  v128 = type metadata accessor for OwnedBeaconRecord();
  v114 = *(v128 - 8);
  v14 = *(v114 + 64);
  v15 = __chkstk_darwin(v128);
  v104 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v103 - v17;
  v19 = type metadata accessor for UUID();
  v135 = *(v19 - 8);
  v20 = *(v135 + 64);
  __chkstk_darwin(v19);
  v136 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OwnedBeaconGroup(0);
  v107 = *(v22 - 8);
  v23 = *(v107 + 64);
  v24 = __chkstk_darwin(v22);
  v105 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v108 = &v103 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v103 - v29;
  __chkstk_darwin(v28);
  v32 = &v103 - v31;
  if (qword_1016950D0 != -1)
  {
LABEL_44:
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_1000076D4(v33, qword_10177C418);
  sub_100B98760(a1, v32, type metadata accessor for OwnedBeaconGroup);
  v106 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v112 = v30;
  v116 = v2;
  v111 = v22;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = v19;
    v40 = swift_slowAlloc();
    v138 = v40;
    *v38 = 136315138;
    v41 = sub_10051F7B0();
    v43 = v42;
    sub_100B986D4(v32, type metadata accessor for OwnedBeaconGroup);
    v44 = sub_1000136BC(v41, v43, &v138);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Clean up existing beacon group %s", v38, 0xCu);
    sub_100007BAC(v40);
    v19 = v39;
  }

  else
  {

    sub_100B986D4(v32, type metadata accessor for OwnedBeaconGroup);
  }

  v109 = a1;
  v45 = sub_100519FB0();
  v46 = v45 + 56;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  a1 = v48 & *(v45 + 56);
  v32 = ((v47 + 63) >> 6);
  v125 = v135 + 16;
  v124 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v122 = (v134 + 8);
  v123 = (v134 + 104);
  v115 = (v114 + 56);
  v119 = (v114 + 48);
  v120 = (v135 + 8);
  v134 = v45;

  v118 = 0;
  v2 = &_mh_execute_header;
  v117 = xmmword_101385D80;
  v113 = _swiftEmptyArrayStorage;
  v30 = v136;
  v133 = v19;
  v126 = v32;
  v127 = v46;
  v121 = v18;
  v49 = 0;
  if (a1)
  {
    while (1)
    {
      v22 = v49;
LABEL_12:
      (*(v135 + 16))(v30, *(v134 + 48) + *(v135 + 72) * (__clz(__rbit64(a1)) | (v22 << 6)), v19);
      static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v50 = swift_allocObject();
      *(v50 + 16) = v117;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = sub_100008C00();
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      os_log(_:dso:log:_:_:)();

      v54 = v130;
      static SystemInfo.lockState.getter();
      v56 = v131;
      v55 = v132;
      (*v123)(v131, v124, v132);
      sub_1000196A8(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      LOBYTE(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = *v122;
      (*v122)(v56, v55);
      v57(v54, v55);
      if (v51)
      {
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        v58 = v128;
        v59 = v129;
        (*v115)(v129, 1, 1, v128);
        v19 = v133;
        v30 = v136;
      }

      else
      {
        v60 = sub_100025044();
        __chkstk_darwin(v60);
        v61 = v136;
        *(&v103 - 2) = v136;
        v59 = v129;
        v62 = v118;
        sub_1012BBBD0(sub_100406F84, v60, v129);
        v118 = v62;

        v19 = v133;
        v58 = v128;
        v30 = v61;
      }

      a1 &= a1 - 1;
      (*v120)(v30, v19);
      v63 = (*v119)(v59, 1, v58);
      v18 = v121;
      if (v63 == 1)
      {
        sub_10000B3A8(v59, &unk_1016A9A20, &qword_10138B280);
        v49 = v22;
        v32 = v126;
        v46 = v127;
        if (!a1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_100B987C8(v59, v104, type metadata accessor for OwnedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_100A5C050(0, v113[2] + 1, 1, v113);
        }

        v32 = v126;
        v65 = v113[2];
        v64 = v113[3];
        if (v65 >= v64 >> 1)
        {
          v113 = sub_100A5C050(v64 > 1, v65 + 1, 1, v113);
        }

        v66 = v113;
        v113[2] = v65 + 1;
        sub_100B987C8(v104, v66 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v65, type metadata accessor for OwnedBeaconRecord);
        v46 = v127;
        v49 = v22;
        if (!a1)
        {
          goto LABEL_9;
        }
      }
    }
  }

  while (1)
  {
LABEL_9:
    v22 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v22 >= v32)
    {
      break;
    }

    a1 = *(v46 + 8 * v22);
    ++v49;
    if (a1)
    {
      goto LABEL_12;
    }
  }

  v67 = v113[2];
  if (v67)
  {
    v68 = v113 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v69 = *(v114 + 72);
    v70 = v112;
    v71 = v111;
    do
    {
      sub_100B98760(v68, v18, type metadata accessor for OwnedBeaconRecord);
      sub_100DDE55C(v18, 1, 0);

      sub_100B986D4(v18, type metadata accessor for OwnedBeaconRecord);
      v68 += v69;
      --v67;
    }

    while (v67);
  }

  else
  {

    v70 = v112;
    v71 = v111;
  }

  v72 = v110;
  sub_100AC53EC(v109 + *(v71 + 24), v110);
  v73 = (*(v107 + 48))(v72, 1, v71);
  v74 = v108;
  if (v73 == 1)
  {
    return sub_10000B3A8(v72, &unk_1016AF8B0, &unk_1013A0700);
  }

  sub_100B987C8(v72, v70, type metadata accessor for OwnedBeaconGroup);
  sub_100B98760(v70, v74, type metadata accessor for OwnedBeaconGroup);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v138 = v79;
    *v78 = 141558275;
    *(v78 + 4) = 1752392040;
    *(v78 + 12) = 2081;
    v80 = *(v71 + 24);
    sub_1000196A8(&qword_101696930, &type metadata accessor for UUID);
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v74;
    v84 = v83;
    sub_100B986D4(v82, type metadata accessor for OwnedBeaconGroup);
    v85 = sub_1000136BC(v81, v84, &v138);

    *(v78 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v76, v77, "Group %{private,mask.hash}s still exists. Need to clean up", v78, 0x16u);
    sub_100007BAC(v79);
  }

  else
  {

    sub_100B986D4(v74, type metadata accessor for OwnedBeaconGroup);
  }

  v86 = sub_100B93B5C(v70);
  if (v86)
  {
    v87 = v86;
    v88 = v105;
    sub_100B98760(v70, v105, type metadata accessor for OwnedBeaconGroup);
    swift_errorRetain();
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v91 = 141558531;
      *(v91 + 4) = 1752392040;
      *(v91 + 12) = 2081;
      v92 = *(v71 + 24);
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v88;
      v95 = v93;
      v97 = v96;
      sub_100B986D4(v94, type metadata accessor for OwnedBeaconGroup);
      v98 = sub_1000136BC(v95, v97, &v138);

      *(v91 + 14) = v98;
      *(v91 + 22) = 2082;
      v137 = v87;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v99 = String.init<A>(describing:)();
      v101 = sub_1000136BC(v99, v100, &v138);

      *(v91 + 24) = v101;
      _os_log_impl(&_mh_execute_header, v89, v90, "Unable to remove %{private,mask.hash}s due to %{public}s)", v91, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100B986D4(v88, type metadata accessor for OwnedBeaconGroup);
    }

    v102 = v70;
  }

  else
  {
    v102 = v70;
  }

  return sub_100B986D4(v102, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_100B93B5C(uint64_t a1)
{
  v33 = type metadata accessor for OwnedBeaconGroup(0);
  v3 = *(*(v33 - 8) + 64);
  v4 = __chkstk_darwin(v33);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v32 - v6;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);

  v17 = v16;
  sub_100B081DC(a1, v1, v15, v17);

  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v8 + 8);
  v18(v12, v7);
  OS_dispatch_group.wait(timeout:)();
  v18(v14, v7);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177BA08);
    v20 = v34;
    sub_100B98760(a1, v34, type metadata accessor for OwnedBeaconGroup);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315138;
      sub_100B98760(v20, v32, type metadata accessor for OwnedBeaconGroup);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      sub_100B986D4(v20, type metadata accessor for OwnedBeaconGroup);
      v28 = sub_1000136BC(v25, v27, &v35);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Timed out removing %s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      sub_100B986D4(v20, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100139CA0();
    v29 = swift_allocError();
    *v30 = 15;
  }

  else
  {

    swift_beginAccess();
    v29 = *(v15 + 16);
    swift_errorRetain();
  }

  return v29;
}

void sub_100B93F84(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38[-1] - v11;
  v13 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v38[-1] - v15);
  sub_1000D2A70(a1, &v38[-1] - v15, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C418);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v17;
      v38[0] = v22;
      *v21 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v23 = String.init<A>(describing:)();
      v25 = sub_1000136BC(v23, v24, v38);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to modify existing group. Error %s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {
    }

    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  else
  {
    sub_100B987C8(v16, v12, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v27 = sub_1000076D4(v26, qword_10177C418);
    sub_100B98760(v12, v10, type metadata accessor for OwnedBeaconGroup);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v32 = *(v6 + 24);
      type metadata accessor for UUID();
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_100B986D4(v10, type metadata accessor for OwnedBeaconGroup);
      v36 = sub_1000136BC(v33, v35, v38);

      *(v30 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully modified existing group %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      sub_100B986D4(v10, type metadata accessor for OwnedBeaconGroup);
    }

    sub_1005160CC(v27);
    sub_100B986D4(v12, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(a2);
}

void sub_100B94468(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v36[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36[-1] - v11;
  v13 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v36[-1] - v15);
  sub_1000D2A70(a1, &v36[-1] - v15, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C418);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v17;
      v36[0] = v22;
      *v21 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v23 = String.init<A>(describing:)();
      v25 = sub_1000136BC(v23, v24, v36);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to save new group. Error %s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    else
    {
    }

    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  else
  {
    sub_100B987C8(v16, v12, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177C418);
    sub_100B98760(v12, v10, type metadata accessor for OwnedBeaconGroup);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v29 = 136315138;
      v31 = sub_10051F7B0();
      v33 = v32;
      sub_100B986D4(v10, type metadata accessor for OwnedBeaconGroup);
      v34 = sub_1000136BC(v31, v33, v36);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Successfully saved new group %s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    else
    {

      sub_100B986D4(v10, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100B986D4(v12, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(a2);
}

void sub_100B948D4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OwnedBeaconRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    v16 = sub_1000076D4(v15, qword_10177C418);
    sub_100017D5C(a1, a2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    sub_100016590(a1, a2);
    v19 = os_log_type_enabled(v17, v18);
    v49 = v14;
    if (v19)
    {
      v48 = v16;
      v20 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50[0] = v47;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v21 = String.init(data:encoding:)();
      if (!v22)
      {
        v21 = Data.hexString.getter();
      }

      v23 = sub_1000136BC(v21, v22, v50);

      *(v20 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "unpairAllBeaconRecords for serial number: %{private,mask.hash}s", v20, 0x16u);
      sub_100007BAC(v47);
    }

    else
    {
    }

    v24 = sub_100AA372C(a1, a2);
    v14 = v24[2];
    if (!v14)
    {
      break;
    }

    v25 = 0;
    while (v25 < v24[2])
    {
      sub_100B98760(v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v10, type metadata accessor for OwnedBeaconRecord);
      sub_100B94EFC(v10, a1, a2, v3);
      ++v25;
      sub_100B986D4(v10, type metadata accessor for OwnedBeaconRecord);
      if (v14 == v25)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_11:

  static String.Encoding.utf8.getter();
  v26 = String.init(data:encoding:)();
  if (!v27)
  {
    v26 = Data.hexString.getter();
  }

  v28 = v26;
  v29 = v27;
  v30 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v30 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    sub_100017D5C(a1, a2);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50[0] = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v35 = String.init(data:encoding:)();
      if (!v36)
      {
        v35 = Data.hexString.getter();
      }

      v37 = sub_1000136BC(v35, v36, v50);

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Removing standalone beacons for serial number: %{private,mask.hash}s", v33, 0x16u);
      sub_100007BAC(v34);
    }

    type metadata accessor for Transaction();
    v38 = swift_allocObject();
    *(v38 + 16) = v28;
    *(v38 + 24) = v29;
    static Transaction.asyncTask(name:block:)();
  }

  else
  {

    sub_100017D5C(a1, a2);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50[0] = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v43 = String.init(data:encoding:)();
      if (!v44)
      {
        v43 = Data.hexString.getter();
      }

      v45 = sub_1000136BC(v43, v44, v50);

      *(v41 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Invalid serial number %{private,mask.hash}s. Cannot look up standalone beacons!", v41, 0x16u);
      sub_100007BAC(v42);
    }
  }
}

void sub_100B94EFC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v45 = type metadata accessor for OwnedBeaconRecord();
  v10 = *(*(v45 - 8) + 64);
  v11 = __chkstk_darwin(v45);
  v46 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v42 - v13;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_1000076D4(v15, qword_10177C418);
  sub_100B98760(a1, v14, type metadata accessor for OwnedBeaconRecord);
  sub_100017D5C(a2, a3);
  v44 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  sub_100016590(a2, a3);
  if (os_log_type_enabled(v17, v18))
  {
    v42[1] = a4;
    v43 = a1;
    v19 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    v48 = v42[0];
    *v19 = 141558787;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v20 = *(v45 + 20);
    type metadata accessor for UUID();
    sub_1000196A8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100B986D4(v14, type metadata accessor for OwnedBeaconRecord);
    v24 = sub_1000136BC(v21, v23, &v48);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2081;
    static String.Encoding.utf8.getter();
    v25 = String.init(data:encoding:)();
    if (!v26)
    {
      v25 = Data.hexString.getter();
    }

    v27 = v46;
    v28 = sub_1000136BC(v25, v26, &v48);

    *(v19 + 34) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unpairing beacon record %{private,mask.hash}s matching %{private,mask.hash}s", v19, 0x2Au);
    swift_arrayDestroy();

    a1 = v43;
  }

  else
  {

    sub_100B986D4(v14, type metadata accessor for OwnedBeaconRecord);
    v27 = v46;
  }

  v29 = sub_100DDE55C(a1, 0, 0);
  if (v29)
  {
    v30 = v29;
    sub_100B98760(a1, v27, type metadata accessor for OwnedBeaconRecord);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v33 = 136446723;
      v47 = v30;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v34 = String.init<A>(describing:)();
      v36 = sub_1000136BC(v34, v35, &v48);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2081;
      v37 = *(v45 + 20);
      type metadata accessor for UUID();
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_100B986D4(v27, type metadata accessor for OwnedBeaconRecord);
      v41 = sub_1000136BC(v38, v40, &v48);

      *(v33 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v31, v32, "Error %{public}s deleting %{private,mask.hash}s", v33, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100B986D4(v27, type metadata accessor for OwnedBeaconRecord);
    }
  }
}

uint64_t sub_100B954BC(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v2[18] = v10;
  *v10 = v2;
  v10[1] = sub_100B95614;

  return daemon.getter();
}

uint64_t sub_100B95614(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v12 = *v1;
  *(v3 + 152) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_1000196A8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000196A8(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v6 = v12;
  v6[1] = sub_100B957F0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100B957F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 160);
  v7 = *v2;
  *(v5 + 168) = a1;
  *(v5 + 176) = v1;

  v8 = *(v4 + 152);
  if (v1)
  {

    v9 = sub_100B95948;
    v10 = 0;
  }

  else
  {

    v9 = sub_100B95A70;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100B95948()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing StandaloneBeaconService!", v4, 2u);
  }

  v5 = v0[17];
  v6 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100B95A70()
{
  v20 = *(v0[21] + 128);
  if (qword_1016949B8 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v9 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v9, qword_10177B458);
  v0[7] = v7;
  v0[8] = v8;

  == infix<A>(_:_:)();

  QueryType.filter(_:)();
  (*(v6 + 8))(v4, v5);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v10 = sub_1000280DC(v0 + 2);
  (*(v2 + 16))(v10, v1, v3);
  if (sub_1002182F4())
  {
    v11 = v0[22];
    Connection.prepare(_:)();
    v12 = v11;
    (*(v0[16] + 8))(v0[17], v0[15]);

    if (!v11)
    {
      sub_100007BAC(v0 + 2);

      v0[23] = sub_100B37A58(v13, sub_100F86728, 0);

      v14 = sub_100B95D08;
      goto LABEL_8;
    }
  }

  else
  {
    v16 = v0[16];
    v15 = v0[17];
    v17 = v0[15];
    sub_10020223C();
    v12 = swift_allocError();
    *v18 = 2;
    *(v18 + 4) = 1;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
  }

  v0[26] = v12;
  sub_100007BAC(v0 + 2);
  v14 = sub_100B95F3C;
LABEL_8:

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_100B95D08()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = swift_task_alloc();
  v0[24] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_100B95DF8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100B95DF8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 192);

    return _swift_task_switch(sub_100B9613C, 0, 0);
  }
}

uint64_t sub_100B95F3C()
{
  v18 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[26];
  v7 = v0[21];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v0[9] = v6;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to remove standalone beacons due to %{public}s.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
  }

  v13 = v0[17];
  v14 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100B9613C()
{
  v1 = v0[21];

  v2 = v0[17];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100B961B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(type metadata accessor for StandaloneBeacon() - 8);
  v4[12] = v5;
  v4[13] = *(v5 + 64);
  v4[14] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100B962BC, 0, 0);
}

uint64_t sub_100B962BC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 96);
    v33 = **(v0 + 72);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v31 = *(v3 + 72);
    v32 = v4;
    v30 = (*(v0 + 104) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v29 = *(v7 + 56);
    v28 = (v7 + 48);
    v27 = (v7 + 8);
    do
    {
      v34 = v2;
      v11 = *(v0 + 120);
      v10 = *(v0 + 128);
      v12 = *(v0 + 112);
      v13 = *(v0 + 88);
      v29(v10, 1, 1, v6);
      sub_100B98760(v5, v12, type metadata accessor for StandaloneBeacon);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      sub_100B987C8(v12, v14 + v32, type metadata accessor for StandaloneBeacon);
      *(v14 + v30) = v13;
      sub_1000D2A70(v10, v11, &qword_101698C00, &qword_10138B570);
      LODWORD(v11) = (*v28)(v11, 1, v6);

      v16 = *(v0 + 120);
      if (v11 == 1)
      {
        sub_10000B3A8(*(v0 + 120), &qword_101698C00, &qword_10138B570);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v27)(v16, v6);
      }

      if (*v15)
      {
        v17 = *(v14 + 24);
        v18 = *v15;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = dispatch thunk of Actor.unownedExecutor.getter();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      if (v21 | v19)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v33;
      swift_task_create();

      sub_10000B3A8(v9, &qword_101698C00, &qword_10138B570);
      v5 += v31;
      v2 = v34 - 1;
    }

    while (v34 != 1);
  }

  v23 = *(v0 + 120);
  v22 = *(v0 + 128);
  v24 = *(v0 + 112);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100B96628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StandaloneBeacon() - 8) + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100B96754, 0, 0);
}

uint64_t sub_100B96754()
{
  v17 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C418);
  sub_100B98760(v2, v1, type metadata accessor for StandaloneBeacon);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = sub_100B9B27C();
    v12 = v11;
    sub_100B986D4(v7, type metadata accessor for StandaloneBeacon);
    v13 = sub_1000136BC(v10, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing standalone beacon %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100B986D4(v7, type metadata accessor for StandaloneBeacon);
  }

  v14 = v0[3];

  return _swift_task_switch(sub_100B96964, v14, 0);
}

uint64_t sub_100B96964()
{
  v1 = *(v0[3] + 128);
  sub_100F8520C(v0[2]);
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  (*(v6 + 16))(v4, v9, v8);
  v11 = sub_1000196A8(&qword_1016B6E30, type metadata accessor for StandaloneBeaconService);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v7;
  *(v13 + 3) = v11;
  *(v13 + 4) = v7;
  (*(v6 + 32))(&v13[v12], v4, v8);
  swift_retain_n();
  sub_100A838D4(0, 0, v2, &unk_1013DB3E8, v13);

  v14 = v0[1];

  return v14();
}

void sub_100B96B60(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v43 = a3;
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for OwnedBeaconRecord();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v40 - v17);
  v19 = swift_projectBox();
  sub_1000D2A70(a1, v18, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C418);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v44 = v20;
      v45[0] = v25;
      *v24 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v26 = String.init<A>(describing:)();
      v28 = sub_1000136BC(v26, v27, v45);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to save beacon record %{public}s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {
    }
  }

  else
  {
    v41 = v19;
    sub_100B987C8(v18, v14, type metadata accessor for OwnedBeaconRecord);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C418);
    sub_100B98760(v14, v12, type metadata accessor for OwnedBeaconRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45[0] = v33;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      v34 = *(v8 + 20);
      type metadata accessor for UUID();
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_100B986D4(v12, type metadata accessor for OwnedBeaconRecord);
      v38 = sub_1000136BC(v35, v37, v45);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "New beacon record has been created. %{private,mask.hash}s", v32, 0x16u);
      sub_100007BAC(v33);
    }

    else
    {

      sub_100B986D4(v12, type metadata accessor for OwnedBeaconRecord);
    }

    v39 = v41;
    sub_100B987C8(v14, v7, type metadata accessor for OwnedBeaconRecord);
    (*(v42 + 56))(v7, 0, 1, v8);
    swift_beginAccess();
    sub_10002311C(v7, v39, &unk_1016A9A20, &qword_10138B280);
  }

  dispatch_group_leave(v43);
}

void sub_100B970FC(uint64_t a1, NSObject *a2)
{
  v44 = a2;
  v3 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for OwnedBeaconGroup(0);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v41 - v16);
  v18 = swift_projectBox();
  sub_1000D2A70(a1, v17, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v17;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C418);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45[0] = v24;
      *v23 = 136446210;
      v45[3] = v19;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v25 = String.init<A>(describing:)();
      v27 = sub_1000136BC(v25, v26, v45);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to modify existing group. Error %{public}s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {
    }
  }

  else
  {
    v42 = v18;
    sub_100B987C8(v17, v13, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v29 = sub_1000076D4(v28, qword_10177C418);
    sub_100B98760(v13, v11, type metadata accessor for OwnedBeaconGroup);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41 = v29;
      v34 = v33;
      v45[0] = v33;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      v35 = *(v7 + 24);
      type metadata accessor for UUID();
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      sub_100B986D4(v11, type metadata accessor for OwnedBeaconGroup);
      v39 = sub_1000136BC(v36, v38, v45);

      *(v32 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Successfully modified existing group %{private,mask.hash}s", v32, 0x16u);
      sub_100007BAC(v34);
      v29 = v41;
    }

    else
    {

      sub_100B986D4(v11, type metadata accessor for OwnedBeaconGroup);
    }

    sub_1005160CC(v29);
    sub_100B987C8(v13, v6, type metadata accessor for OwnedBeaconGroup);
    (*(v43 + 56))(v6, 0, 1, v7);
    v40 = v42;
    swift_beginAccess();
    sub_10002311C(v6, v40, &unk_1016AF8B0, &unk_1013A0700);
  }

  dispatch_group_leave(v44);
}

void sub_100B976B0(uint64_t a1, NSObject *a2)
{
  v57 = a2;
  v3 = type metadata accessor for BeaconObservation();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v51 - v16;
  v18 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v51 - v20);
  v22 = swift_projectBox();
  sub_1000D2A70(a1, v21, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v21;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177C418);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v58[0] = v28;
      *v27 = 136446210;
      v58[3] = v23;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v29 = String.init<A>(describing:)();
      v31 = sub_1000136BC(v29, v30, v58);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to save new group. Error %{public}s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {
    }
  }

  else
  {
    v52 = v22;
    sub_100B987C8(v21, v17, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177C418);
    sub_100B98760(v17, v15, type metadata accessor for OwnedBeaconGroup);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v58[0] = v36;
      *v35 = 136315138;
      v37 = sub_10051F7B0();
      v39 = v38;
      sub_100B986D4(v15, type metadata accessor for OwnedBeaconGroup);
      v40 = sub_1000136BC(v37, v39, v58);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "Successfully saved new group %s", v35, 0xCu);
      sub_100007BAC(v36);
    }

    else
    {

      sub_100B986D4(v15, type metadata accessor for OwnedBeaconGroup);
    }

    v41 = v56;
    sub_100B98760(v17, v10, type metadata accessor for OwnedBeaconGroup);
    (*(v53 + 56))(v10, 0, 1, v11);
    v42 = v52;
    swift_beginAccess();
    sub_10002311C(v10, v42, &unk_1016AF8B0, &unk_1013A0700);
    v43 = *(v11 + 24);
    v44 = type metadata accessor for UUID();
    (*(*(v44 - 8) + 16))(v41, &v17[v43], v44);
    v45 = v54;
    static Date.trustedNow.getter(v41 + *(v54 + 20));
    *(v41 + *(v45 + 24)) = 37;
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v46 = qword_10177B2E8;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v47 = *(v55 + 72);
    v48 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_101385D80;
    sub_100B98760(v41, v49 + v48, type metadata accessor for BeaconObservation);
    v50 = type metadata accessor for Transaction();
    __chkstk_darwin(v50);
    *(&v51 - 4) = v46;
    *(&v51 - 3) = v49;
    *(&v51 - 2) = 0;
    *(&v51 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    sub_100B986D4(v41, type metadata accessor for BeaconObservation);
    sub_100B986D4(v17, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(v57);
}

uint64_t sub_100B97E18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100F8662C();
}

uint64_t sub_100B97E34(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C69A78(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B97F2C(uint64_t a1)
{
  v4 = *(type metadata accessor for StandaloneBeacon() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C69740(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B9802C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v40 = a2;
  v4 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - v6;
  v39 = type metadata accessor for OwnedBeaconGroup(0);
  v8 = *(*(v39 - 8) + 64);
  v9 = __chkstk_darwin(v39);
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v36 = &v32 - v12;
  __chkstk_darwin(v11);
  v35 = &v32 - v14;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v20 = (v13 + 48);
  v41 = a1;

  v22 = 0;
  v33 = v20;
  v34 = v7;
  while (v18)
  {
LABEL_11:
    v24 = (*(v41 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v18)))));
    v25 = *v24;
    v26 = v24[1];
    sub_100017D5C(*v24, v26);
    sub_100AC57E4(v25, v26, v7);
    if ((*v20)(v7, 1, v39) == 1)
    {
      sub_10000B3A8(v7, &unk_1016AF8B0, &unk_1013A0700);
    }

    else
    {
      v27 = v35;
      sub_100B987C8(v7, v35, type metadata accessor for OwnedBeaconGroup);
      v28 = v37;
      sub_100B98760(v27, v37, type metadata accessor for OwnedBeaconGroup);
      v29 = v36;
      sub_100DEDBEC(v36, v28);
      v30 = v29;
      v7 = v34;
      sub_100B986D4(v30, type metadata accessor for OwnedBeaconGroup);
      v31 = v27;
      v20 = v33;
      sub_100B986D4(v31, type metadata accessor for OwnedBeaconGroup);
    }

    v18 &= v18 - 1;
    result = sub_100016590(v25, v26);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
    }

    v18 = *(v15 + 8 * v23);
    ++v22;
    if (v18)
    {
      v22 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100B98334()
{
  result = qword_1016B6E38;
  if (!qword_1016B6E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6E38);
  }

  return result;
}

uint64_t sub_100B98388(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryProductInfo();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100DE68D0(a1, a2))
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C418);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Setting AlphaWasp beacon group version to 1", v13, 2u);
    }

    return 1;
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C418);
    sub_100B98760(a3, v9, type metadata accessor for AccessoryProductInfo);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136446210;
      if (v9[8])
      {
        v20 = 0xE700000000000000;
        v21 = 0x79636167656C2ELL;
      }

      else
      {
        v22 = *v9;
        v28 = 0x6E6F69737265762ELL;
        v29 = 0xEB00000000286465;
        v27 = v22;
        v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v23);

        v24._countAndFlagsBits = 41;
        v24._object = 0xE100000000000000;
        String.append(_:)(v24);
        v21 = v28;
        v20 = v29;
      }

      sub_100B986D4(v9, type metadata accessor for AccessoryProductInfo);
      v25 = sub_1000136BC(v21, v20, &v30);

      *(v18 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Getting beacon group version from product info: %{public}s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    else
    {

      sub_100B986D4(v9, type metadata accessor for AccessoryProductInfo);
    }

    result = *a3;
    v26 = *(a3 + 8);
  }

  return result;
}

uint64_t sub_100B986D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B98760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B987C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B98830()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100B954BC(v2, v3);
}

uint64_t sub_100B988C8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_100B961B0(a1, a2, v7, v6);
}

uint64_t sub_100B9897C(uint64_t a1)
{
  v4 = *(type metadata accessor for StandaloneBeacon() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100B96628(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100B98AA4()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = *(v0 + v2 + v1[11] + 8);

  v10 = *(v0 + v2 + v1[12]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100B98BF4(void **a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *a1;

  return sub_1009ED674(v10, v1 + v4, v6, v8);
}

unint64_t sub_100B98CC0(uint64_t a1)
{
  *(a1 + 8) = sub_100B98CF0();
  result = sub_10059C09C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B98CF0()
{
  result = qword_1016B6E40;
  if (!qword_1016B6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6E40);
  }

  return result;
}

void *sub_100B98D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_101123BD8(0, v1, 0);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v28 = *(v2 + 36);
  v24 = v2 + 72;
  v25 = v1;
  v26 = v2 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v28 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v27 = *(*(v2 + 48) + 8 * v6);
    v11 = *(*(v2 + 56) + 8 * v6);
    v12 = v2;
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    result = v11;
    if (v14 >= v13 >> 1)
    {
      v23 = result;
      sub_101123BD8((v13 > 1), v14 + 1, 1);
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v27;
    v15[5] = result;
    v8 = 1 << *(v12 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v3 = v26;
    v16 = *(v26 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v2 = v12;
    if (v28 != *(v12 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (v24 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1000BB408(v6, v28, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v6, v28, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100B98F98(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1011248E0(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    v6 = _HashTable.startBucket.getter();
    v7 = 0;
    v32 = *(v1 + 36);
    v27 = v1 + 72;
    v28 = v2;
    v29 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v32 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v33 = *(*(v1 + 48) + 8 * v6);
      v10 = v1;
      v11 = *(*(v1 + 56) + 8 * v6);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v13;
      v31 = v12;
      v14 = [v11 dictionaryRepresentation];
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = v3;
      v34 = v3;
      v17 = v3[2];
      v18 = v16[3];
      if (v17 >= v18 >> 1)
      {
        sub_1011248E0((v18 > 1), v17 + 1, 1);
        v16 = v34;
      }

      v16[2] = v17 + 1;
      v19 = &v16[3 * v17];
      v19[4] = v31;
      v19[5] = v30;
      v19[6] = v15;
      v8 = 1 << *(v10 + 32);
      if (v6 >= v8)
      {
        goto LABEL_24;
      }

      v1 = v10;
      v4 = v29;
      v20 = *(v29 + 8 * v9);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      v3 = v16;
      if (v32 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v8 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (v27 + 8 * v9);
        while (v23 < (v8 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_1000BB408(v6, v32, 0);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        sub_1000BB408(v6, v32, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v28)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

unint64_t sub_100B9925C()
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013917A0;
  *(inited + 32) = 108;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = UUID.data.getter();
  *(inited + 56) = v2;
  *(inited + 72) = &type metadata for Data;
  *(inited + 80) = 98;
  *(inited + 88) = 0xE100000000000000;
  v3 = type metadata accessor for OfflineFindingInfo();
  v4 = v3[5];
  v5 = type metadata accessor for Date();
  *(inited + 120) = v5;
  v6 = sub_1000280DC((inited + 96));
  (*(*(v5 - 8) + 16))(v6, v0 + v4, v5);
  *(inited + 128) = 105;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = *(v0 + v3[6]);
  *(inited + 168) = &type metadata for UInt64;
  *(inited + 176) = 112;
  *(inited + 184) = 0xE100000000000000;
  v7 = (v0 + v3[7]);
  v8 = *v7;
  v9 = v7[1];
  *(inited + 192) = *v7;
  *(inited + 200) = v9;
  *(inited + 216) = &type metadata for Data;
  *(inited + 224) = 115;
  *(inited + 232) = 0xE100000000000000;
  v10 = (v0 + v3[8]);
  v11 = *v10;
  v12 = v10[1];
  *(inited + 240) = *v10;
  *(inited + 248) = v12;
  *(inited + 264) = &type metadata for Data;
  *(inited + 272) = 118;
  *(inited + 280) = 0xE100000000000000;
  v13 = *(v0 + v3[9]);
  sub_100017D5C(v8, v9);
  sub_100017D5C(v11, v12);
  sub_100B98F98(v13);
  if (*(v14 + 16))
  {
    sub_1000BC4D4(&qword_1016B6E60, &qword_1013DB4D0);
    v15 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v15 = _swiftEmptyDictionarySingleton;
  }

  v20 = v15;

  sub_100B9AB74(v16, 1, &v20);

  v17 = v20;
  *(inited + 312) = sub_1000BC4D4(&qword_1016B6E68, &qword_1013DB4D8);
  *(inited + 288) = v17;
  v18 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_100B994B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v86 - v6;
  v8 = type metadata accessor for Date();
  v103 = *(v8 - 8);
  v9 = *(v103 + 64);
  __chkstk_darwin(v8);
  v102 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v86 - v13;
  v15 = type metadata accessor for UUID();
  v104 = *(v15 - 8);
  v16 = *(v104 + 64);
  __chkstk_darwin(v15);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OfflineFindingInfo();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v105 = a2, v24 = sub_100771D58(108, 0xE100000000000000), a2 = v105, (v25 & 1) == 0) || (sub_100013894(*(a1 + 56) + 32 * v24, &v108), (swift_dynamicCast() & 1) == 0))
  {

LABEL_8:
    v29 = 1;
    return (*(v20 + 56))(a2, v29, 1, v19);
  }

  v100 = v8;
  v101 = v18;
  v27 = v106;
  v26 = v107;
  v108 = v106;
  v109 = v107;
  sub_1000E0A3C();
  DataProtocol.deprecated_bytes.getter();
  UUID.init(bytes:)();
  v28 = v104;
  if ((*(v104 + 48))(v14, 1, v15) != 1)
  {
    v98 = v27;
    v99 = v26;
    v31 = v101;
    v96 = *(v28 + 32);
    v97 = v28 + 32;
    v96(v101, v14, v15);
    if (!*(a1 + 16) || (v32 = sub_100771D58(98, 0xE100000000000000), v28 = v104, (v33 & 1) == 0))
    {
      sub_100016590(v98, v99);

      (*(v28 + 8))(v31, v15);
      (*(v103 + 56))(v7, 1, 1, v100);
      goto LABEL_15;
    }

    sub_100013894(*(a1 + 56) + 32 * v32, &v108);
    v34 = v100;
    v35 = swift_dynamicCast();
    v36 = v103;
    (*(v103 + 56))(v7, v35 ^ 1u, 1, v34);
    if ((*(v36 + 48))(v7, 1, v34) == 1)
    {
      (*(v28 + 8))(v31, v15);
      sub_100016590(v98, v99);

LABEL_15:
      a2 = v105;
      sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
      goto LABEL_8;
    }

    v95 = *(v36 + 32);
    v95(v102, v7, v34);
    if (*(a1 + 16) && (v37 = sub_100771D58(105, 0xE100000000000000), v28 = v104, (v38 & 1) != 0))
    {
      sub_100013894(*(a1 + 56) + 32 * v37, &v108);
      v39 = swift_dynamicCast();
      v40 = v99;
      if (v39)
      {
        if (*(a1 + 16))
        {
          v94 = v106;
          v41 = sub_100771D58(112, 0xE100000000000000);
          v28 = v104;
          if (v42)
          {
            sub_100013894(*(a1 + 56) + 32 * v41, &v108);
            if (swift_dynamicCast())
            {
              v43 = v106;
              v44 = v107;
              sub_100017D5C(v106, v107);
              v92 = v43;
              v93 = v44;
              v90 = sub_10049C0AC(v43, v44);
              v91 = v47;
              if (!*(a1 + 16) || (v48 = sub_100771D58(115, 0xE100000000000000), (v49 & 1) == 0))
              {
                sub_100016590(v98, v99);
                sub_100016590(v92, v93);
                sub_100016590(v90, v91);

                (*(v103 + 8))(v102, v34);
                (*(v104 + 8))(v31, v15);
                goto LABEL_6;
              }

              sub_100013894(*(a1 + 56) + 32 * v48, &v108);
              if (swift_dynamicCast())
              {
                v50 = v106;
                v51 = v107;
                sub_100017D5C(v106, v107);
                v52 = v50;
                sub_1004A4714(v50, v51, &v108);
                v53 = v108;
                v89 = v109;
                if (!*(a1 + 16) || (v54 = sub_100771D58(118, 0xE100000000000000), (v55 & 1) == 0))
                {
                  sub_100016590(v98, v99);
                  sub_100016590(v92, v93);
                  sub_100016590(v90, v91);
                  sub_100016590(v50, v51);
                  sub_100016590(v53, v89);

                  goto LABEL_34;
                }

                sub_100013894(*(a1 + 56) + 32 * v54, &v108);

                sub_1000BC4D4(&qword_1016B34A8, &qword_1013D4490);
                if (swift_dynamicCast())
                {
                  v88 = v106;
                  if (*(v106 + 16) == 2)
                  {
                    v108 = 1;
                    v56 = dispatch thunk of CustomStringConvertible.description.getter();
                    if (*(v88 + 16))
                    {
                      v87 = sub_100771D58(v56, v57);
                      v59 = v58;

                      if ((v59 & 1) == 0)
                      {
                        sub_100016590(v98, v99);
                        sub_100016590(v90, v91);
                        sub_100016590(v53, v89);
LABEL_56:
                        sub_100016590(v52, v51);
                        sub_100016590(v92, v93);
                        goto LABEL_57;
                      }

                      v60 = v88;
                      v61 = *(*(v88 + 56) + 8 * v87);
                      v108 = 2;
                      v87 = v61;

                      v62 = dispatch thunk of CustomStringConvertible.description.getter();
                      if (*(v60 + 16))
                      {
                        v86 = sub_100771D58(v62, v63);
                        v65 = v64;

                        if (v65)
                        {
                          v66 = *(*(v88 + 56) + 8 * v86);

                          v108 = _swiftEmptyDictionarySingleton;
                          if (*(v87 + 16) && (v67 = sub_100771D58(115, 0xE100000000000000), (v68 & 1) != 0) && *(v87 + 16) && (v88 = *(*(v87 + 56) + 8 * v67), v69 = sub_100771D58(108, 0xE100000000000000), (v70 & 1) != 0))
                          {
                            v71 = *(*(v87 + 56) + 8 * v69);

                            v72 = objc_allocWithZone(SPOfflineAdvertisingConfiguration);
                            sub_1001E0530([v72 initWithShortIntervalCount:v88 longIntervalCount:v71], 1);
                          }

                          else
                          {
                          }

                          if (*(v66 + 16) && (v73 = sub_100771D58(115, 0xE100000000000000), (v74 & 1) != 0))
                          {
                            if (!*(v66 + 16) || (v88 = *(*(v66 + 56) + 8 * v73), v75 = sub_100771D58(108, 0xE100000000000000), (v76 & 1) == 0))
                            {
                              sub_100016590(v98, v99);
                              sub_100016590(v52, v51);
                              sub_100016590(v92, v93);

                              goto LABEL_67;
                            }

                            v77 = *(*(v66 + 56) + 8 * v75);

                            v78 = objc_allocWithZone(SPOfflineAdvertisingConfiguration);
                            sub_1001E0530([v78 initWithShortIntervalCount:v88 longIntervalCount:v77], 2);
                            sub_100016590(v98, v99);
                            sub_100016590(v92, v93);
                            v79 = v52;
                            v80 = v51;
                          }

                          else
                          {
                            sub_100016590(v98, v99);

                            sub_100016590(v52, v51);
                            v79 = v92;
                            v80 = v93;
                          }

                          sub_100016590(v79, v80);
LABEL_67:
                          v81 = v108;
                          if (*(v108 + 16) == 2)
                          {
                            v96(v23, v101, v15);
                            v95(&v23[v19[5]], v102, v100);
                            *&v23[v19[6]] = v94;
                            v82 = &v23[v19[7]];
                            v83 = v91;
                            *v82 = v90;
                            *(v82 + 1) = v83;
                            v84 = &v23[v19[8]];
                            v85 = v89;
                            *v84 = v53;
                            v84[1] = v85;
                            *&v23[v19[9]] = v81;
                            a2 = v105;
                            sub_100B9AF08(v23, v105);
                            v29 = 0;
                            return (*(v20 + 56))(a2, v29, 1, v19);
                          }

                          sub_100016590(v90, v91);
                          sub_100016590(v53, v89);
                          (*(v103 + 8))(v102, v100);
                          (*(v104 + 8))(v101, v15);

                          goto LABEL_6;
                        }

                        sub_100016590(v98, v99);
                        sub_100016590(v90, v91);
                        sub_100016590(v53, v89);

                        goto LABEL_56;
                      }

                      sub_100016590(v98, v99);
                      sub_100016590(v90, v91);
                      sub_100016590(v53, v89);

                      sub_100016590(v52, v51);
                      sub_100016590(v92, v93);
                    }

                    else
                    {
                      sub_100016590(v98, v99);
                      sub_100016590(v90, v91);
                      sub_100016590(v53, v89);
                      sub_100016590(v50, v51);
                      sub_100016590(v92, v93);
                    }

LABEL_57:

                    goto LABEL_34;
                  }

                  sub_100016590(v98, v99);
                  sub_100016590(v90, v91);
                  sub_100016590(v53, v89);
                }

                else
                {
                  sub_100016590(v98, v99);
                  sub_100016590(v90, v91);
                  sub_100016590(v53, v89);
                }

                sub_100016590(v50, v51);
              }

              else
              {
                sub_100016590(v98, v99);
                sub_100016590(v90, v91);
              }

              sub_100016590(v92, v93);
LABEL_34:
              (*(v103 + 8))(v102, v100);
              (*(v104 + 8))(v101, v15);
              goto LABEL_6;
            }
          }
        }
      }

      v45 = v98;
      v46 = v40;
    }

    else
    {
      v45 = v98;
      v46 = v99;
    }

    sub_100016590(v45, v46);

    (*(v103 + 8))(v102, v34);
    (*(v28 + 8))(v31, v15);
    goto LABEL_6;
  }

  sub_100016590(v27, v26);

  sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
LABEL_6:
  v29 = 1;
  a2 = v105;
  return (*(v20 + 56))(a2, v29, 1, v19);
}

uint64_t sub_100B9A2E4()
{
  v1 = v0;
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(88);
  v2 = type metadata accessor for OfflineFindingInfo();
  sub_100B9B0F8(&qword_1016B6E48, type metadata accessor for OfflineFindingInfo);
  v3._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6669746E65646928;
  v4._object = 0xED0000203A726569;
  String.append(_:)(v4);
  type metadata accessor for UUID();
  sub_100B9B0F8(&qword_101696930, &type metadata accessor for UUID);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x676E697269617020;
  v6._object = 0xEE00203A65746144;
  String.append(_:)(v6);
  v7 = v2[5];
  type metadata accessor for Date();
  sub_100B9B0F8(&qword_1016969A0, &type metadata accessor for Date);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x203A7865646E6920;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  v40 = *(v1 + v2[6]);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x3C203A4B5020;
  v11._object = 0xE600000000000000;
  String.append(_:)(v11);
  v12 = (v1 + v2[7]);
  v13 = *v12;
  v14 = v12[1];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    v16 = 0;
    if (v15 != 2)
    {
      goto LABEL_10;
    }

    v18 = v13 + 16;
    v13 = *(v13 + 16);
    v17 = *(v18 + 8);
    v19 = __OFSUB__(v17, v13);
    v16 = v17 - v13;
    if (!v19)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v14);
    goto LABEL_10;
  }

  v19 = __OFSUB__(HIDWORD(v13), v13);
  v20 = HIDWORD(v13) - v13;
  if (v19)
  {
    __break(1u);
    goto LABEL_25;
  }

  v16 = v20;
LABEL_10:
  v40 = v16;
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x203E736574796220;
  v22._object = 0xED00003C203A5353;
  String.append(_:)(v22);
  v23 = (v1 + v2[8]);
  v24 = *v23;
  v25 = v23[1];
  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v26 != 2)
    {
      v24 = 0;
      goto LABEL_20;
    }

    v29 = (v24 + 16);
    v27 = *(v24 + 16);
    v28 = v29[1];
    v19 = __OFSUB__(v28, v27);
    v24 = v28 - v27;
    if (!v19)
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_17:
    v19 = __OFSUB__(HIDWORD(v24), v24);
    LODWORD(v24) = HIDWORD(v24) - v24;
    if (!v19)
    {
      v24 = v24;
      goto LABEL_20;
    }

LABEL_25:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v26)
  {
    goto LABEL_17;
  }

  v24 = BYTE6(v25);
LABEL_20:
  v40 = v24;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._object = 0x800000010136E750;
  v31._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v31);
  if (sub_100B98D44(*(v1 + v2[9]))[2])
  {
    sub_1000BC4D4(&qword_1016B6E50, &qword_1013DB4C8);
    v32 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v32 = _swiftEmptyDictionarySingleton;
  }

  v40 = v32;

  sub_100B9A7B4(v33, 1, &v40);

  sub_100B9AB28();
  v34 = Dictionary.description.getter();
  v36 = v35;

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 41;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  return v41;
}

uint64_t type metadata accessor for OfflineFindingInfo()
{
  result = qword_1016B6EC8;
  if (!qword_1016B6EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B9A7B4(void *a1, char a2, void *a3)
{
  v46 = a1[2];
  if (!v46)
  {
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_100771C58(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  v16 = v5;
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_101004B18();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

  sub_100FE5AD8(v12, a2 & 1);
  v17 = *a3;
  v18 = sub_100771C58(v6);
  if ((v14 & 1) != (v19 & 1))
  {
LABEL_28:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_29:
    _StringGuts.grow(_:)(30);
    v44._object = 0x8000000101360AB0;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v44);
    _print_unlocked<A, B>(_:_:)();
    v45._countAndFlagsBits = 39;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = v18;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v21[6] + 8 * v13) = v6;
  *(v21[7] + 8 * v13) = v16;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v46 != 1)
  {
    v25 = (a1 + 7);
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_100771C58(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];
      v16 = v27;
      if (v37 < v34)
      {
        sub_100FE5AD8(v34, 1);
        v38 = *a3;
        v39 = sub_100771C58(v28);
        if ((v36 & 1) != (v40 & 1))
        {
          goto LABEL_28;
        }

        v35 = v39;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v41 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v41[6] + 8 * v35) = v28;
      *(v41[7] + 8 * v35) = v16;
      v42 = v41[2];
      v23 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v41[2] = v43;
      v25 += 2;
      if (v46 == v26)
      {
      }
    }

    goto LABEL_27;
  }
}

unint64_t sub_100B9AB28()
{
  result = qword_1016B6E58;
  if (!qword_1016B6E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016B6E58);
  }

  return result;
}

uint64_t sub_100B9AB74(void *a1, char a2, void *a3)
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

  v10 = sub_100771D58(v7, v6);
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
    sub_100FEBB9C(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_100771D58(v7, v6);
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
  sub_101007D78();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
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
    v38._object = 0x8000000101360AB0;
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

      v27 = sub_100771D58(v7, v6);
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
        sub_100FEBB9C(v31, 1);
        v32 = *a3;
        v27 = sub_100771D58(v7, v6);
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