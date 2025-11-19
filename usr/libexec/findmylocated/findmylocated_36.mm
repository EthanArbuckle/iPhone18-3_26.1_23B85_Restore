unint64_t sub_1003B0678()
{
  result = qword_1005B29A0;
  if (!qword_1005B29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B29A0);
  }

  return result;
}

uint64_t sub_1003B06CC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_1003AFC94(a1);
}

uint64_t sub_1003B0764(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003690;

  return sub_1003AFF40(a1, a2, v7);
}

uint64_t sub_1003B0818@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for Device();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1003B08D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1003B0920@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for Handle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1003B09E0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0B78);
  v1 = sub_10000A6F0(v0, qword_1005E0B78);
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003B0AA8()
{
  v1[2] = v0;
  MyInterface = type metadata accessor for MicroFindMyInterface();
  v1[3] = MyInterface;
  v3 = *(MyInterface - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003B0B74, 0, 0);
}

uint64_t sub_1003B0B74()
{
  v1 = v0[6];
  v2 = v0[2];
  swift_defaultActor_initialize();
  *(v2 + 112) = 0xD000000000000012;
  *(v2 + 120) = 0x80000001004D7860;
  *(v2 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sequence) = 0;
  v3 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId;
  v0[7] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId;
  v4 = (v2 + v3);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_encryptedLocations;
  v0[8] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_encryptedLocations;
  *(v2 + v5) = _swiftEmptyDictionarySingleton;
  v6 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_streamProvider;
  v0[9] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_streamProvider;
  v7 = sub_10004B564(&qword_1005B2E20, &qword_1004D7CF8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v2 + v6) = AsyncStreamProvider.init()();
  v10 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider;
  v0[10] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider;
  *(v2 + v10) = 0;
  v11 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_accountStream;
  v0[11] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_accountStream;
  v12 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_configStream;
  v0[12] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_configStream;
  v14 = sub_10004B564(&unk_1005B2AB8, &unk_1004D7950);
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_cellularWatchConnectionNonitor;
  v0[13] = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_cellularWatchConnectionNonitor;
  type metadata accessor for CellularWatchConnectionMonitor();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 112) = _swiftEmptyArrayStorage;
  v17 = sub_10004B564(&qword_1005B2E28, &unk_1004D7D00);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v16 + 120) = AsyncStreamProvider.init()();
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v2 + v15) = v16;
  *(v2 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_connectedWatches) = _swiftEmptyArrayStorage;
  MicroFindMyInterface.init()();
  v20 = v0[5];
  v21 = v0[3];
  v22 = v0[4];
  v23 = v0[2];
  v24 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  (*(v22 + 32))(v23 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface, v0[6], v21);
  (*(v22 + 16))(v20, v23 + v24, v21);
  v25 = type metadata accessor for BystanderLocationMonitor();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = swift_task_alloc();
  v0[14] = v28;
  *v28 = v0;
  v28[1] = sub_1003B0F9C;
  v29 = v0[5];

  return sub_1003ABC28(v29);
}

uint64_t sub_1003B0F9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_1003B1148;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_1003B10C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B10C4()
{
  v2 = v0[5];
  v1 = v0[6];
  *(v0[2] + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_locationMonitor) = v0[16];

  v3 = v0[1];
  v4 = v0[2];

  return v3(v4);
}

uint64_t sub_1003B1148()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v3 + 120);

  (*(v1 + 8))(v3 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface, v2);
  v24 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[5];
  v13 = v0[2];
  v14 = *(v13 + v0[7] + 8);

  v15 = *(v13 + v9);

  v16 = *(v13 + v10);

  v17 = *(v13 + v8);

  sub_100002CE0(v13 + v7, &qword_1005B02F8, &qword_1004D1870);
  sub_100002CE0(v13 + v6, &qword_1005B2E00, &qword_1004D7CC8);
  v18 = *(v13 + v5);

  v19 = *(v13 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_connectedWatches);

  type metadata accessor for MicroFindMyService(0);
  swift_defaultActor_destroy();
  v20 = *(*v13 + 48);
  v21 = *(*v13 + 52);
  swift_deallocPartialClassInstance();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1003B12DC()
{
  v1[8] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B2E00, &qword_1004D7CC8) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005B0328, &unk_1004D6A60);
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005B02F8, &qword_1004D1870) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003B1418, v0, 0);
}

uint64_t sub_1003B1418()
{
  if (static MicroFindMyInterface.isSupported.getter())
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_1003B15A8;

    return daemon.getter();
  }

  else
  {
    v3 = type metadata accessor for GenericError();
    sub_1003C24A4(&unk_1005B27C0, &type metadata accessor for GenericError);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, enum case for GenericError.notImplemented(_:), v3);
    swift_willThrow();
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[9];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1003B15A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  *(v3 + 120) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_1003C24A4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1003C24A4(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_1003B1784;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003B1784(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v4 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {
    v5 = v4[8];

    return _swift_task_switch(sub_1003B2094, v5, 0);
  }

  else
  {
    v6 = v4[15];

    type metadata accessor for SharingKeyStreamProvider();
    swift_allocObject();
    v7 = swift_task_alloc();
    v4[19] = v7;
    *v7 = v4;
    v7[1] = sub_1003B190C;

    return sub_1003C594C();
  }
}

uint64_t sub_1003B190C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  v4[20] = v1;

  v7 = v4[8];
  if (v1)
  {
    v8 = sub_1003B1F80;
  }

  else
  {
    v4[21] = a1;
    v8 = sub_1003B1A48;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003B1A48()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = *(v2 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider);
  *(v2 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider) = v0[21];

  return _swift_task_switch(sub_1003B1AC8, v1, 0);
}

uint64_t sub_1003B1AC8()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for AccountService.State(0);
  (*(v5 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1003B1BD8, v6, 0);
}

uint64_t sub_1003B1BD8()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_accountStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B02F8, &qword_1004D1870);
  swift_endAccess();
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = qword_1005DFBC8;
  v8 = *(qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo__secureLocationConfigStream);
  sub_10004B564(&qword_1005B2E18, &qword_1004D7CE8);
  v9 = *(type metadata accessor for SecureLocationsConfig() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004C1900;
  v13 = (v7 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v13);
  v14 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1003C326C(v13 + *(v14 + 28), v12 + v11, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v13);
  AsyncStreamProvider.stream(initialEvents:)();

  v15 = sub_10004B564(&unk_1005B2AB8, &unk_1004D7950);
  (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  v16 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_configStream;
  swift_beginAccess();
  sub_100022364(v5, v6 + v16, &qword_1005B2E00, &qword_1004D7CC8);
  swift_endAccess();
  v17 = *(v6 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_locationMonitor);
  v0[22] = v17;

  return _swift_task_switch(sub_1003B1EC8, v17, 0);
}

uint64_t sub_1003B1EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 176);
  v5 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_locationManager;
  v6 = *(v4 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_locationManager);
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v6 startUpdatingLocation];
  v6 = *(v4 + v5);
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v6 startMonitoringVisits];
  v6 = *(v4 + v5);
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return _swift_task_switch(v6, a2, a3);
  }

  v7 = *(v3 + 64);
  [v6 startMonitoringSignificantLocationChanges];
  v6 = sub_1003B2008;
  a2 = v7;
  a3 = 0;

  return _swift_task_switch(v6, a2, a3);
}

uint64_t sub_1003B1F80()
{
  v1 = v0[17];

  v2 = v0[20];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003B2008()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B2094()
{
  v1 = v0[15];

  v2 = v0[18];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003B211C()
{
  v1[727] = v0;
  v2 = type metadata accessor for UUID();
  v1[733] = v2;
  v3 = *(v2 - 8);
  v1[739] = v3;
  v4 = *(v3 + 64) + 15;
  v1[745] = swift_task_alloc();

  return _swift_task_switch(sub_1003B21DC, v0, 0);
}

uint64_t sub_1003B21DC()
{
  v1 = v0[745];
  v2 = v0[727];
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  UUID.init()();
  MicroFindMyInterface.set(uuid:)();
  (*(v0[739] + 8))(v0[745], v0[733]);

  return _swift_asyncLet_get(v0 + 2, v3, sub_1003B2544, v0 + 746);
}

uint64_t sub_1003B2870()
{
  v1 = *(v0 + 5960);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003B28D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003BC8B4();
}

uint64_t sub_1003B2980()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_locationMonitor);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1003B2A1C;

  return sub_1003AD188();
}

uint64_t sub_1003B2A1C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1003B2B30()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider);

  return _swift_task_switch(sub_1003B2BAC, 0, 0);
}

void sub_1003B2BAC()
{
  if (*(v0 + 24))
  {
    v1 = swift_task_alloc();
    *(v0 + 32) = v1;
    *v1 = v0;
    v1[1] = sub_1003B2C44;

    sub_1003C4870();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003B2C44()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1003B2D58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003B8958();
}

uint64_t sub_1003B2DE8(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v4 = *(*(sub_10004B564(&qword_1005B2DF8, &qword_1004D7CC0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005B2E00, &qword_1004D7CC8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005B2E08, &qword_1004D7CD0);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003B2F28, a2, 0);
}

uint64_t sub_1003B2F28()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_configStream;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B2E00, &qword_1004D7CC8);
  v4 = sub_10004B564(&unk_1005B2AB8, &unk_1004D7950);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[10];
    v11 = v0[7];
    AsyncStream.makeAsyncIterator()();
    (*(v5 + 8))(v11, v4);
    v12 = sub_1003C24A4(&qword_1005B2D58, type metadata accessor for MicroFindMyService);
    v0[11] = v12;
    v13 = v0[5];
    v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_1003B30EC;
    v16 = v0[10];
    v9 = v0[8];
    v6 = v0[6];
    v7 = v13;
    v8 = v12;
  }

  return AsyncStream.Iterator.next(isolation:)(v6, v7, v8, v9);
}

uint64_t sub_1003B30EC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1003B31FC, v2, 0);
}

uint64_t sub_1003B31FC()
{
  v1 = *(v0 + 48);
  v2 = sub_10004B564(&qword_1005B2E10, &unk_1004D7CD8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 56);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *v1;

    *(v0 + 112) = *(v2 + 48);
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_1003B3368;
    v8 = *(v0 + 40);

    return sub_1003BF2B0();
  }
}

uint64_t sub_1003B3368()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1003B3478, v2, 0);
}

uint64_t sub_1003B3478()
{
  sub_1003C32D4(*(v0 + 48) + *(v0 + 112), type metadata accessor for SecureLocationsConfig);
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1003B30EC;
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);

  return AsyncStream.Iterator.next(isolation:)(v7, v2, v1, v6);
}

uint64_t sub_1003B3554()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003B3EA8();
}

uint64_t sub_1003B35E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003BA48C();
}

uint64_t sub_1003B3674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003B7AE0();
}

uint64_t sub_1003B3704()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1003BE7D4();
}

uint64_t sub_1003B3794@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = type metadata accessor for EncryptedLocation(0);
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  v4 = __chkstk_darwin(v2);
  v81 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v60 - v6;
  v80 = type metadata accessor for Date();
  v7 = *(v80 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v80);
  v79 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for EncryptedLocation();
  v10 = *(v83 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v83);
  v77 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v65 = &v60 - v14;
  v15 = sub_10004B564(&qword_1005B2DE8, &qword_1004D7C20);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v75 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v74 = &v60 - v19;
  v20 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_encryptedLocations;
  swift_beginAccess();
  v61 = v1;
  v21 = *(v1 + v20);
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v63 = (v23 + 63) >> 6;
  v64 = v10 + 16;
  v76 = (v10 + 32);
  v69 = (v7 + 8);
  v70 = (v7 + 16);
  v66 = v10;
  v67 = v21;
  v68 = (v10 + 8);

  v27 = 0;
  v71 = v22;
  v28 = v83;
  v82 = _swiftEmptyArrayStorage;
  if (v25)
  {
    while (1)
    {
      v29 = v27;
LABEL_13:
      v33 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v34 = v33 | (v29 << 6);
      v35 = v66;
      v36 = (*(v67 + 48) + 16 * v34);
      v38 = *v36;
      v37 = v36[1];
      v39 = v65;
      (*(v66 + 16))(v65, *(v67 + 56) + *(v66 + 72) * v34, v28);
      v40 = sub_10004B564(&qword_1005B2DF0, &qword_1004D7C28);
      v41 = *(v40 + 48);
      v42 = v75;
      *v75 = v38;
      v42[1] = v37;
      v43 = *(v35 + 32);
      v32 = v42;
      v43(v42 + v41, v39, v28);
      (*(*(v40 - 8) + 56))(v32, 0, 1, v40);
      sub_100005F6C(v38, v37);
LABEL_14:
      v44 = v74;
      sub_1000176A8(v32, v74, &qword_1005B2DE8, &qword_1004D7C20);
      v45 = sub_10004B564(&qword_1005B2DF0, &qword_1004D7C28);
      if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
      {
        break;
      }

      v46 = *v44;
      v47 = *(v44 + 1);
      (*v76)(v77, &v44[*(v45 + 48)], v83);
      EncryptedLocation.locationTs.getter();
      v48 = v79;
      Date.init(timeIntervalSince1970:)();
      v49 = EncryptedLocation.fmt.getter();
      v50 = v73;
      v51 = v78;
      (*v70)(v78 + *(v73 + 24), v48, v80);
      v52 = EncryptedLocation.encryptedLocation.getter();
      *v51 = v46;
      *(v51 + 8) = v47;
      *(v51 + 16) = v49;
      v53 = (v51 + *(v50 + 28));
      *v53 = v52;
      v53[1] = v54;
      sub_1003C326C(v51, v81, type metadata accessor for EncryptedLocation);
      v55 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1001FCE1C(0, v55[2] + 1, 1, v55);
      }

      v57 = v55[2];
      v56 = v55[3];
      if (v57 >= v56 >> 1)
      {
        v55 = sub_1001FCE1C(v56 > 1, v57 + 1, 1, v55);
      }

      sub_1003C32D4(v78, type metadata accessor for EncryptedLocation);
      (*v69)(v79, v80);
      (*v68)(v77, v83);
      v55[2] = v57 + 1;
      result = sub_1003C3498(v81, v55 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v57, type metadata accessor for EncryptedLocation);
      v22 = v71;
      v82 = v55;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    v59 = *(v61 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_streamProvider);
    AsyncStreamProvider.stream(initialEvents:)();
  }

  else
  {
LABEL_5:
    if (v63 <= v27 + 1)
    {
      v30 = v27 + 1;
    }

    else
    {
      v30 = v63;
    }

    v31 = v30 - 1;
    v32 = v75;
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v63)
      {
        v58 = sub_10004B564(&qword_1005B2DF0, &qword_1004D7C28);
        (*(*(v58 - 8) + 56))(v32, 1, 1, v58);
        v25 = 0;
        v27 = v31;
        goto LABEL_14;
      }

      v25 = *(v22 + 8 * v29);
      ++v27;
      if (v25)
      {
        v27 = v29;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003B3EA8()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for Analytics();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_1003B406C, v0, 0);
}

uint64_t sub_1003B406C()
{
  v51 = v0;
  if (static Task<>.isCancelled.getter())
  {
    v2 = v0[19];
    v1 = v0[20];
    v3 = v0[18];
    v4 = v0[15];
    v6 = v0[11];
    v5 = v0[12];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = type metadata accessor for Transaction();
    v10 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
    v0[21] = v9;
    v0[22] = v10;
    v11 = v0[21];
    v13 = v0[7];
    v12 = v0[8];
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    static Transaction.named<A>(_:with:)();
    v15 = v0[22];
    v16 = v0[20];
    v17 = v0[7];

    MicroFindMyInterface.getAnalytics()();
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v18 = v0[19];
    v19 = v0[20];
    v20 = v0[16];
    v21 = v0[17];
    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005E0B78);
    v23 = *(v21 + 16);
    v23(v18, v19, v20);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[19];
    if (v26)
    {
      v28 = v0[17];
      v29 = v0[18];
      v30 = v0[16];
      v31 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v31 = 136446210;
      v23(v29, v27, v30);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      v35 = *(v28 + 8);
      v35(v27, v30);
      v36 = sub_10000D01C(v32, v34, &v50);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "MicroFindMy analytics: %{public}s.", v31, 0xCu);
      sub_100004984(v49);
    }

    else
    {
      v37 = v0[16];
      v38 = v0[17];

      v35 = *(v38 + 8);
      v35(v27, v37);
    }

    v0[23] = v35;
    v39 = v0[20];
    v40 = type metadata accessor for AnalyticsEvent();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = swift_allocObject();
    v0[24] = v43;
    swift_defaultActor_initialize();
    *(v43 + 14) = sub_100207808(_swiftEmptyArrayStorage);
    UUID.init()();
    v44 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
    v45 = type metadata accessor for DispatchTime();
    v46 = *(*(v45 - 8) + 56);
    v46(&v43[v44], 1, 1, v45);
    v46(&v43[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v45);
    *(v43 + 15) = 0xD00000000000001CLL;
    *(v43 + 16) = 0x80000001004E9430;
    v47 = swift_task_alloc();
    v0[25] = v47;
    *(v47 + 16) = v39;
    v48 = swift_task_alloc();
    v0[26] = v48;
    *v48 = v0;
    v48[1] = sub_1003B4640;

    return sub_10004F258(&unk_1004D7BF8, v47);
  }
}

uint64_t sub_1003B4640()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  v2[27] = v0;

  v5 = v2[25];
  if (v0)
  {
    v6 = v2[7];

    return _swift_task_switch(sub_1003B58D8, v6, 0);
  }

  else
  {

    type metadata accessor for AnalyticsPublisher();
    v2[28] = swift_allocObject();
    swift_defaultActor_initialize();
    v7 = swift_task_alloc();
    v2[29] = v7;
    *v7 = v4;
    v7[1] = sub_1003B47FC;
    v8 = v2[24];

    return sub_100050D70(v8);
  }
}

uint64_t sub_1003B47FC()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_1003B4928, v3, 0);
}

uint64_t sub_1003B4928()
{
  v1 = *(v0 + 120);
  static Clock<>.continuous.getter();
  *(v0 + 40) = xmmword_1004D77E0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return _swift_task_switch(sub_1003B49A8, 0, 0);
}

uint64_t sub_1003B49A8()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = sub_1003C24A4(&qword_1005B0BC8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1003C24A4(&qword_1005AFFD0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v5 + 8);
  v0[30] = v8;
  v0[31] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_1003B4B2C;
  v11 = v0[15];
  v13 = v0[12];
  v12 = v0[13];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 2, v12, v7);
}

uint64_t sub_1003B4B2C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v16 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 248);
    (*(v2 + 240))(*(v2 + 96), *(v2 + 72));
    v5 = sub_1003B5274;
    v6 = 0;
  }

  else
  {
    v8 = *(v2 + 240);
    v7 = *(v2 + 248);
    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v13 = *(v2 + 72);
    v14 = *(v2 + 56);
    v8(v11, v13);
    (*(v10 + 8))(v9, v12);
    v5 = sub_1003B4C90;
    v6 = v14;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003B4C90()
{
  v61 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];

  v2(v3, v4);
  v6 = v0[33];
  if (static Task<>.isCancelled.getter())
  {
LABEL_2:
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];
    v10 = v0[15];
    v12 = v0[11];
    v11 = v0[12];

    v13 = v0[1];

    return v13();
  }

  else
  {
    while (1)
    {
      v18 = v0[21];
      v20 = v0[7];
      v19 = v0[8];
      v21 = swift_task_alloc();
      *(v21 + 16) = v20;
      *(v21 + 24) = v19;
      static Transaction.named<A>(_:with:)();
      if (!v6)
      {
        break;
      }

      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000A6F0(v25, qword_1005E0B78);
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543362;
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&_mh_execute_header, v26, v27, "Error from encryptedLocationCatalog: %{public}@", v15, 0xCu);
        sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);
      }

      else
      {
      }

      v6 = 0;
      if (static Task<>.isCancelled.getter())
      {
        goto LABEL_2;
      }
    }

    v22 = v0[22];
    v23 = v0[20];
    v24 = v0[7];

    MicroFindMyInterface.getAnalytics()();
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v28 = v0[19];
    v29 = v0[20];
    v30 = v0[16];
    v31 = v0[17];
    v32 = type metadata accessor for Logger();
    sub_10000A6F0(v32, qword_1005E0B78);
    v33 = *(v31 + 16);
    v33(v28, v29, v30);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[19];
    if (v36)
    {
      v38 = v0[17];
      v39 = v0[18];
      v40 = v0[16];
      v41 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v41 = 136446210;
      v33(v39, v37, v40);
      v42 = String.init<A>(describing:)();
      v44 = v43;
      v45 = *(v38 + 8);
      v45(v37, v40);
      v46 = sub_10000D01C(v42, v44, &v60);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "MicroFindMy analytics: %{public}s.", v41, 0xCu);
      sub_100004984(v59);
    }

    else
    {
      v47 = v0[16];
      v48 = v0[17];

      v45 = *(v48 + 8);
      v45(v37, v47);
    }

    v0[23] = v45;
    v49 = v0[20];
    v50 = type metadata accessor for AnalyticsEvent();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    v53 = swift_allocObject();
    v0[24] = v53;
    swift_defaultActor_initialize();
    *(v53 + 14) = sub_100207808(_swiftEmptyArrayStorage);
    UUID.init()();
    v54 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
    v55 = type metadata accessor for DispatchTime();
    v56 = *(*(v55 - 8) + 56);
    v56(&v53[v54], 1, 1, v55);
    v56(&v53[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v55);
    *(v53 + 15) = 0xD00000000000001CLL;
    *(v53 + 16) = 0x80000001004E9430;
    v57 = swift_task_alloc();
    v0[25] = v57;
    *(v57 + 16) = v49;
    v58 = swift_task_alloc();
    v0[26] = v58;
    *v58 = v0;
    v58[1] = sub_1003B4640;

    return sub_10004F258(&unk_1004D7BF8, v57);
  }
}

uint64_t sub_1003B5274()
{
  v1 = v0[7];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return _swift_task_switch(sub_1003B52F0, v1, 0);
}

uint64_t sub_1003B52F0()
{
  v60 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];

  v2(v3, v4);
  v6 = v0[33];
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0B78);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error from encryptedLocationCatalog: %{public}@", v10, 0xCu);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    if (static Task<>.isCancelled.getter())
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (static Task<>.isCancelled.getter())
    {
LABEL_8:
      v21 = v0[19];
      v20 = v0[20];
      v22 = v0[18];
      v23 = v0[15];
      v25 = v0[11];
      v24 = v0[12];

      v26 = v0[1];

      return v26();
    }
  }

  v13 = v0[21];
  v15 = v0[7];
  v14 = v0[8];
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  static Transaction.named<A>(_:with:)();
  v17 = v0[22];
  v18 = v0[20];
  v19 = v0[7];

  MicroFindMyInterface.getAnalytics()();
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v28 = v0[19];
  v29 = v0[20];
  v30 = v0[16];
  v31 = v0[17];
  sub_10000A6F0(v7, qword_1005E0B78);
  v32 = *(v31 + 16);
  v32(v28, v29, v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v0[19];
  if (v35)
  {
    v37 = v0[17];
    v38 = v0[18];
    v39 = v0[16];
    v40 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = v58;
    *v40 = 136446210;
    v32(v38, v36, v39);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    v44 = *(v37 + 8);
    v44(v36, v39);
    v45 = sub_10000D01C(v41, v43, &v59);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v33, v34, "MicroFindMy analytics: %{public}s.", v40, 0xCu);
    sub_100004984(v58);
  }

  else
  {
    v46 = v0[16];
    v47 = v0[17];

    v44 = *(v47 + 8);
    v44(v36, v46);
  }

  v0[23] = v44;
  v48 = v0[20];
  v49 = type metadata accessor for AnalyticsEvent();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  v0[24] = v52;
  swift_defaultActor_initialize();
  *(v52 + 14) = sub_100207808(_swiftEmptyArrayStorage);
  UUID.init()();
  v53 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
  v54 = type metadata accessor for DispatchTime();
  v55 = *(*(v54 - 8) + 56);
  v55(&v52[v53], 1, 1, v54);
  v55(&v52[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v54);
  *(v52 + 15) = 0xD00000000000001CLL;
  *(v52 + 16) = 0x80000001004E9430;
  v56 = swift_task_alloc();
  v0[25] = v56;
  *(v56 + 16) = v48;
  v57 = swift_task_alloc();
  v0[26] = v57;
  *v57 = v0;
  v57[1] = sub_1003B4640;

  return sub_10004F258(&unk_1004D7BF8, v56);
}

uint64_t sub_1003B58D8()
{
  v60 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];

  v2(v3, v4);
  v6 = v0[27];
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0B78);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error from encryptedLocationCatalog: %{public}@", v10, 0xCu);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    if (static Task<>.isCancelled.getter())
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (static Task<>.isCancelled.getter())
    {
LABEL_8:
      v21 = v0[19];
      v20 = v0[20];
      v22 = v0[18];
      v23 = v0[15];
      v25 = v0[11];
      v24 = v0[12];

      v26 = v0[1];

      return v26();
    }
  }

  v13 = v0[21];
  v15 = v0[7];
  v14 = v0[8];
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  static Transaction.named<A>(_:with:)();
  v17 = v0[22];
  v18 = v0[20];
  v19 = v0[7];

  MicroFindMyInterface.getAnalytics()();
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v28 = v0[19];
  v29 = v0[20];
  v30 = v0[16];
  v31 = v0[17];
  sub_10000A6F0(v7, qword_1005E0B78);
  v32 = *(v31 + 16);
  v32(v28, v29, v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v0[19];
  if (v35)
  {
    v37 = v0[17];
    v38 = v0[18];
    v39 = v0[16];
    v40 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = v58;
    *v40 = 136446210;
    v32(v38, v36, v39);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    v44 = *(v37 + 8);
    v44(v36, v39);
    v45 = sub_10000D01C(v41, v43, &v59);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v33, v34, "MicroFindMy analytics: %{public}s.", v40, 0xCu);
    sub_100004984(v58);
  }

  else
  {
    v46 = v0[16];
    v47 = v0[17];

    v44 = *(v47 + 8);
    v44(v36, v46);
  }

  v0[23] = v44;
  v48 = v0[20];
  v49 = type metadata accessor for AnalyticsEvent();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  v0[24] = v52;
  swift_defaultActor_initialize();
  *(v52 + 14) = sub_100207808(_swiftEmptyArrayStorage);
  UUID.init()();
  v53 = OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_startTime;
  v54 = type metadata accessor for DispatchTime();
  v55 = *(*(v54 - 8) + 56);
  v55(&v52[v53], 1, 1, v54);
  v55(&v52[OBJC_IVAR____TtC13findmylocated14AnalyticsEvent_endTime], 1, 1, v54);
  *(v52 + 15) = 0xD00000000000001CLL;
  *(v52 + 16) = 0x80000001004E9430;
  v56 = swift_task_alloc();
  v0[25] = v56;
  *(v56 + 16) = v48;
  v57 = swift_task_alloc();
  v0[26] = v57;
  *v57 = v0;
  v57[1] = sub_1003B4640;

  return sub_10004F258(&unk_1004D7BF8, v56);
}

void sub_1003B5EC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v266 = a2;
  v4 = type metadata accessor for EncryptedLocation(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v247 = (&v213 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Date();
  v265 = *(v7 - 8);
  v8 = *(v265 + 64);
  v9 = __chkstk_darwin(v7);
  v251 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v240 = &v213 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v213 - v14);
  v16 = __chkstk_darwin(v13);
  v244 = &v213 - v17;
  __chkstk_darwin(v16);
  v254 = &v213 - v18;
  v19 = sub_10004B564(&qword_1005B2DD8, &qword_1004D7C10);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v261 = &v213 - v21;
  v262 = type metadata accessor for EncryptedLocation();
  v259 = *(v262 - 8);
  v22 = *(v259 + 64);
  v23 = __chkstk_darwin(v262);
  v248 = &v213 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v246 = &v213 - v26;
  v27 = __chkstk_darwin(v25);
  v243 = &v213 - v28;
  v29 = __chkstk_darwin(v27);
  v242 = &v213 - v30;
  v31 = __chkstk_darwin(v29);
  v241 = &v213 - v32;
  v33 = __chkstk_darwin(v31);
  v255 = &v213 - v34;
  __chkstk_darwin(v33);
  v252 = &v213 - v35;
  v36 = sub_10004B564(&qword_1005B2DE0, &qword_1004D7C18);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v213 - v38;
  v40 = type metadata accessor for EncryptedLocationCatalog();
  v257 = *(v40 - 8);
  v258 = v40;
  v41 = *(v257 + 64);
  v42 = __chkstk_darwin(v40);
  v250 = &v213 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v256 = &v213 - v44;
  if (qword_1005A84E8 != -1)
  {
LABEL_62:
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  v46 = sub_10000A6F0(v45, qword_1005E0B78);

  v263 = v46;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v245 = v15;
  if (v49)
  {
    v50 = v7;
    v51 = swift_slowAlloc();
    *v51 = 67109120;
    *(v51 + 4) = *(v266 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sequence);

    _os_log_impl(&_mh_execute_header, v47, v48, "Calling interface.encryptedLocationCatalog(sequence: %u)", v51, 8u);
    v7 = v50;
  }

  else
  {
  }

  v52 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  v53 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sequence;
  v54 = *(v266 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sequence);
  MicroFindMyInterface.encryptedLocationCatalog(sequence:)();
  if (!v3)
  {
    v239 = v52;
    v15 = 0;
    v56 = v257;
    v55 = v258;
    if ((*(v257 + 48))(v39, 1, v258) == 1)
    {
      sub_100002CE0(v39, &qword_1005B2DE0, &qword_1004D7C18);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "No catalog changes.", v59, 2u);
      }

      return;
    }

    v228 = v53;
    (*(v56 + 32))(v256, v39, v55);
    v60 = EncryptedLocationCatalog.catalog.getter();
    v39 = (v60 + 64);
    v61 = *(v60 + 64);
    v249 = v60;
    v62 = 1 << *(v60 + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v63 & v61;
    v226 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_streamProvider;
    v253 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_encryptedLocations;
    swift_beginAccess();
    v3 = 0;
    v65 = (v62 + 63) >> 6;
    v234 = (v259 + 16);
    v236 = (v259 + 8);
    v232 = (v259 + 48);
    v229 = (v259 + 32);
    v231 = (v265 + 16);
    v233 = (v265 + 8);
    v222 = v259 + 40;
    *&v66 = 136315138;
    v223 = v66;
    *&v66 = 136315650;
    v218 = v66;
    *&v66 = 136316162;
    v217 = v66;
    *&v66 = 138543362;
    v230 = v66;
    v227 = v4;
    v4 = 0;
    v237 = v39;
    v238 = v65;
    v235 = v7;
    while (1)
    {
      if (!v64)
      {
        while (1)
        {
          v67 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            __break(1u);
            goto LABEL_62;
          }

          if (v67 >= v65)
          {
            break;
          }

          v64 = *&v39[8 * v67];
          ++v3;
          if (v64)
          {
            v265 = v4;
            v3 = v67;
            goto LABEL_22;
          }
        }

        v200 = v4;

        v201 = v257;
        v202 = v250;
        v203 = v258;
        (*(v257 + 16))(v250, v256, v258);

        v204 = Logger.logObject.getter();
        v205 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          v265 = v200;
          v207 = v206;
          *v206 = 67109376;
          v208 = v228;
          v206[1] = *(v266 + v228);

          *(v207 + 4) = 1024;
          v209 = EncryptedLocationCatalog.sequence.getter();
          v210 = *(v201 + 8);
          v210(v202, v203);
          *(v207 + 10) = v209;
          _os_log_impl(&_mh_execute_header, v204, v205, "Sequence %u -> %u", v207, 0xEu);
        }

        else
        {
          v210 = *(v201 + 8);
          v210(v202, v203);

          v208 = v228;
        }

        v211 = v256;
        v212 = EncryptedLocationCatalog.sequence.getter();
        v210(v211, v203);
        *(v266 + v208) = v212;
        return;
      }

      v265 = v4;
LABEL_22:
      v68 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v69 = v68 | (v3 << 6);
      v70 = (*(v249 + 48) + 16 * v69);
      v7 = *v70;
      v71 = v70[1];
      v72 = *(*(v249 + 56) + 8 * v69);
      v73 = *(v266 + v253);
      v74 = *(v73 + 16);
      sub_100005F6C(*v70, v71);
      v264 = v71;
      if (v74)
      {

        v75 = v7;
        v76 = sub_1001FDA54(v7, v71);
        if (v77)
        {
          v78 = v259;
          v79 = v252;
          v15 = v262;
          (*(v259 + 16))(v252, *(v73 + 56) + *(v259 + 72) * v76, v262);

          v80 = EncryptedLocation.locationTs.getter();
          v81 = *(v78 + 8);
          v39 = v237;
          v81(v79, v15);
          v7 = v75;
          if (v80 >= v72)
          {
            sub_1000049D0(v75, v264);
            v4 = v265;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v82 = v265;
      v83 = v261;
      v260 = v7;
      MicroFindMyInterface.encryptedLocation(for:)();
      v15 = v82;
      if (!v82)
      {
        break;
      }

      swift_errorRetain();
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v15 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v15 = v230;
        swift_errorRetain();
        v87 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v87;
        *v86 = v87;
        _os_log_impl(&_mh_execute_header, v84, v85, "ERROR fetching encrypted location: %{public}@", v15, 0xCu);
        sub_100002CE0(v86, &qword_1005A9670, &unk_1004C2480);

        sub_1000049D0(v260, v264);
        v39 = v237;
      }

      else
      {
        sub_1000049D0(v260, v264);
      }

      v4 = 0;
LABEL_15:
      v65 = v238;
    }

    v265 = 0;
    v88 = v262;
    v89 = (*v232)(v83, 1, v262);
    v90 = v235;
    if (v89 == 1)
    {
      sub_100002CE0(v83, &qword_1005B2DD8, &qword_1004D7C10);
      v91 = v260;
      v92 = v264;
      sub_100005F6C(v260, v264);
      v93 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      sub_1000049D0(v91, v92);
      if (os_log_type_enabled(v93, v7))
      {
        v94 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        v267 = v225;
        *v94 = v223;
        sub_100005F6C(v91, v92);
        v95 = Data.description.getter();
        v96 = v92;
        v98 = v97;
        sub_1000049D0(v91, v96);
        v99 = sub_10000D01C(v95, v98, &v267);

        *(v94 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v93, v7, "Expected location for %s", v94, 0xCu);
        v15 = v225;
        sub_100004984(v225);

        sub_1000049D0(v91, v96);
      }

      else
      {

        sub_1000049D0(v91, v92);
      }

      goto LABEL_55;
    }

    v216 = *v229;
    v216(v255, v83, v88);
    EncryptedLocation.locationTs.getter();
    Date.init(timeIntervalSince1970:)();
    v100 = *(v266 + v253);
    v101 = v251;
    v102 = v260;
    if (*(v100 + 16))
    {
      v103 = *(v266 + v253);

      v104 = sub_1001FDA54(v102, v264);
      if (v105)
      {
        v106 = *(v100 + 56) + *(v259 + 72) * v104;
        v224 = *(v259 + 16);
        v221 = v234 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v107 = v241;
        v108 = v262;
        v224(v241, v106, v262);

        EncryptedLocation.locationTs.getter();
        v109 = v244;
        Date.init(timeIntervalSince1970:)();
        v110 = *v231;
        v111 = v235;
        (*v231)(v245, v109, v235);
        v112 = v224;
        v224(v242, v107, v108);
        v113 = v240;
        v220 = v110;
        v110(v240, v254, v111);
        v114 = v260;
        v115 = v264;
        v112(v243, v255, v108);
        sub_100005F6C(v114, v115);
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();
        sub_1000049D0(v114, v115);
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v219 = swift_slowAlloc();
          v267 = v219;
          *v118 = v217;
          v119 = Data.hexString.getter();
          v215 = v117;
          v121 = sub_10000D01C(v119, v120, &v267);

          *(v118 + 4) = v121;
          *(v118 + 12) = 2080;
          v213 = sub_1003C24A4(&qword_1005A9800, &type metadata accessor for Date);
          v122 = v245;
          v123 = v235;
          v124 = dispatch thunk of CustomStringConvertible.description.getter();
          v214 = v116;
          v126 = v125;
          v225 = *v233;
          (v225)(v122, v123);
          v127 = sub_10000D01C(v124, v126, &v267);

          *(v118 + 14) = v127;
          *(v118 + 22) = 2048;
          v128 = v242;
          v129 = EncryptedLocation.locationTs.getter();
          v130 = *v236;
          (*v236)(v128, v262);
          *(v118 + 24) = v129;
          *(v118 + 32) = 2080;
          v131 = v240;
          v132 = dispatch thunk of CustomStringConvertible.description.getter();
          v134 = v133;
          (v225)(v131, v123);
          v135 = sub_10000D01C(v132, v134, &v267);
          v112 = v224;

          *(v118 + 34) = v135;
          *(v118 + 42) = 2048;
          v136 = v243;
          v137 = EncryptedLocation.locationTs.getter();
          v138 = v262;
          (v130)(v136, v262);
          *(v118 + 44) = v137;
          v139 = v214;
          _os_log_impl(&_mh_execute_header, v214, v215, "Updating encrypted location for %s: %s [%llu] -> %s [%llu]", v118, 0x34u);
          swift_arrayDestroy();

          (v225)(v244, v235);
          v140 = v138;
          v219 = v130;
          (v130)(v241, v138);
          v141 = v248;
          v142 = v264;
          v143 = v260;
          v144 = v140;
        }

        else
        {
          v180 = *v236;
          v181 = v262;
          (*v236)(v243, v262);
          (v180)(v242, v181);

          v182 = *v233;
          v183 = v113;
          v184 = v235;
          (*v233)(v183, v235);
          (v182)(v245, v184);
          v225 = v182;
          (v182)(v244, v184);
          v185 = v262;
          v219 = v180;
          (v180)(v241, v262);
          v141 = v248;
          v142 = v115;
          v143 = v260;
          v144 = v185;
        }

        goto LABEL_43;
      }
    }

    v220 = *v231;
    v220(v101, v254, v90);
    v145 = *v234;
    v221 = v234 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v146 = v246;
    v147 = v102;
    v148 = v262;
    v224 = v145;
    v145(v246, v255, v262);
    v142 = v264;
    sub_100005F6C(v102, v264);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.default.getter();
    sub_1000049D0(v147, v142);
    v215 = v150;
    if (os_log_type_enabled(v149, v150))
    {
      v151 = v90;
      v152 = swift_slowAlloc();
      v267 = swift_slowAlloc();
      *v152 = v218;
      v153 = Data.hexString.getter();
      v214 = v149;
      v155 = sub_10000D01C(v153, v154, &v267);
      v156 = v251;
      v157 = v155;

      *(v152 + 4) = v157;
      *(v152 + 12) = 2080;
      sub_1003C24A4(&qword_1005A9800, &type metadata accessor for Date);
      v158 = dispatch thunk of CustomStringConvertible.description.getter();
      v160 = v159;
      v161 = v156;
      v142 = v264;
      v225 = *v233;
      (v225)(v161, v151);
      v162 = sub_10000D01C(v158, v160, &v267);

      *(v152 + 14) = v162;
      *(v152 + 22) = 2048;
      v163 = EncryptedLocation.locationTs.getter();
      v164 = v262;
      v219 = *v236;
      (v219)(v146, v262);
      *(v152 + 24) = v163;
      v165 = v214;
      _os_log_impl(&_mh_execute_header, v214, v215, "Storing encrypted location for %s: %s [%llu]", v152, 0x20u);
      swift_arrayDestroy();

      v141 = v248;
      v143 = v260;
      v144 = v164;
    }

    else
    {
      v219 = *v236;
      (v219)(v146, v148);

      v225 = *v233;
      (v225)(v251, v90);
      v144 = v148;
      v141 = v248;
      v143 = v260;
    }

    v112 = v224;
LABEL_43:
    v112(v141, v255, v144);
    v166 = v253;
    v167 = v266;
    swift_beginAccess();
    sub_100005F6C(v143, v142);
    v168 = *(v167 + v166);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v268 = *(v167 + v166);
    v170 = v268;
    *(v167 + v166) = 0x8000000000000000;
    v171 = sub_1001FDA54(v143, v142);
    v173 = v170[2];
    v174 = (v172 & 1) == 0;
    v175 = __OFADD__(v173, v174);
    v176 = v173 + v174;
    if (v175)
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v177 = v172;
    if (v170[3] >= v176)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v186 = v171;
        sub_100205E88();
        v171 = v186;
        v179 = v268;
        if (v177)
        {
          goto LABEL_49;
        }

        goto LABEL_52;
      }
    }

    else
    {
      sub_1002328D4(v176, isUniquelyReferenced_nonNull_native);
      v171 = sub_1001FDA54(v143, v142);
      if ((v177 & 1) != (v178 & 1))
      {
        goto LABEL_65;
      }
    }

    v179 = v268;
    if (v177)
    {
LABEL_49:
      (*(v259 + 40))(v179[7] + *(v259 + 72) * v171, v141, v262);
      sub_1000049D0(v143, v142);
LABEL_54:
      v190 = *(v266 + v253);
      *(v266 + v253) = v179;

      swift_endAccess();
      v191 = v255;
      v192 = EncryptedLocation.fmt.getter();
      v193 = v227;
      v15 = v247;
      v194 = v254;
      v7 = v235;
      v220((v247 + *(v227 + 24)), v254, v235);
      v195 = EncryptedLocation.encryptedLocation.getter();
      v196 = v264;
      *v15 = v260;
      v15[1] = v196;
      *(v15 + 16) = v192;
      v197 = (v15 + *(v193 + 28));
      *v197 = v195;
      v197[1] = v198;
      v199 = *(v266 + v226);
      AsyncStreamProvider.yield(value:transaction:)();
      sub_1003C32D4(v15, type metadata accessor for EncryptedLocation);
      (v225)(v194, v7);
      (v219)(v191, v262);
LABEL_55:
      v4 = v265;
      v39 = v237;
      goto LABEL_15;
    }

LABEL_52:
    v179[(v171 >> 6) + 8] |= 1 << v171;
    v187 = (v179[6] + 16 * v171);
    *v187 = v143;
    v187[1] = v142;
    v216((v179[7] + *(v259 + 72) * v171), v141, v262);
    v188 = v179[2];
    v175 = __OFADD__(v188, 1);
    v189 = v188 + 1;
    if (v175)
    {
      goto LABEL_64;
    }

    v179[2] = v189;
    goto LABEL_54;
  }
}

uint64_t sub_1003B77A0(uint64_t a1)
{
  v1[62] = a1;
  v2 = type metadata accessor for Date();
  v1[63] = v2;
  v3 = *(v2 - 8);
  v1[64] = v3;
  v4 = *(v3 + 64) + 15;
  v1[65] = swift_task_alloc();

  return _swift_task_switch(sub_1003B7860, 0, 0);
}

uint64_t sub_1003B7860()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[62];
  sub_10004B564(&qword_1005B2DD0, &unk_1004D7C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BE0;
  *(inited + 32) = 0x656D6954746F6F62;
  *(inited + 40) = 0xE800000000000000;
  static SystemInfo.bootTime.getter();
  v6 = Date.epoch.getter();
  (*(v3 + 8))(v1, v2);
  *(inited + 72) = &type metadata for Int64;
  *(inited + 80) = sub_100053494();
  *(inited + 48) = v6;
  *(inited + 88) = 2;
  *(inited + 96) = 0xD000000000000011;
  *(inited + 104) = 0x80000001004E9450;
  v7 = Analytics.locationsReceived.getter();
  *(inited + 136) = &type metadata for Int;
  v8 = sub_100054734();
  *(inited + 144) = v8;
  *(inited + 112) = v7;
  *(inited + 152) = 2;
  strcpy((inited + 160), "pushesReceived");
  *(inited + 175) = -18;
  v9 = Analytics.pushesReceived.getter();
  *(inited + 200) = &type metadata for Int;
  *(inited + 208) = v8;
  *(inited + 176) = v9;
  *(inited + 216) = 2;
  *(inited + 224) = 0xD000000000000020;
  *(inited + 232) = 0x80000001004E9470;
  v10 = Analytics.backgroundProactivePushesHandled.getter();
  *(inited + 264) = &type metadata for Int;
  *(inited + 272) = v8;
  *(inited + 240) = v10;
  *(inited + 280) = 2;
  *(inited + 288) = 0xD000000000000015;
  *(inited + 296) = 0x80000001004E94A0;
  v11 = Analytics.locationPushesHandled.getter();
  *(inited + 328) = &type metadata for Int;
  *(inited + 336) = v8;
  *(inited + 304) = v11;
  *(inited + 344) = 2;
  *(inited + 352) = 0xD000000000000017;
  *(inited + 360) = 0x80000001004E94C0;
  v12 = Analytics.successfulReversePushes.getter();
  *(inited + 392) = &type metadata for Int;
  *(inited + 400) = v8;
  *(inited + 368) = v12;
  *(inited + 408) = 2;
  *(inited + 416) = 0xD000000000000013;
  *(inited + 424) = 0x80000001004E94E0;
  v13 = Analytics.failedReversePushes.getter();
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = v8;
  *(inited + 432) = v13;
  *(inited + 472) = 2;
  v14 = sub_100209E2C(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005B0160, &qword_1004D16F0);
  swift_arrayDestroy();

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_1003B7AE0()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = type metadata accessor for ContinuousClock.Instant();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003B7C30, v0, 0);
}

uint64_t sub_1003B7C30()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = v0[15];
    v2 = v0[11];
    v3 = v0[12];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[16] = type metadata accessor for Transaction();
    v7 = v0[7];
    v6 = v0[8];
    v8 = swift_task_alloc();
    v0[17] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = async function pointer to static Transaction.named<A>(_:with:)[1];
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_1003B7D7C;
    v11 = v0[16];

    return static Transaction.named<A>(_:with:)();
  }
}

uint64_t sub_1003B7D7C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_1003B83DC;
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 56);

    v5 = sub_1003B7EA4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003B7EA4()
{
  v1 = *(v0 + 120);
  static Clock<>.continuous.getter();
  *(v0 + 40) = xmmword_1004D77F0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return _swift_task_switch(sub_1003B7F24, 0, 0);
}

uint64_t sub_1003B7F24()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = sub_1003C24A4(&qword_1005B0BC8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1003C24A4(&qword_1005AFFD0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v5 + 8);
  v0[20] = v8;
  v0[21] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_1003B80A8;
  v11 = v0[15];
  v13 = v0[12];
  v12 = v0[13];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 2, v12, v7);
}

uint64_t sub_1003B80A8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v19 = *v1;

  if (v0)
  {
    v5 = v2[20];
    v4 = v2[21];
    v6 = v2[12];
    v7 = v2[9];

    v5(v6, v7);
    v8 = sub_1003B8360;
    v9 = 0;
  }

  else
  {
    v11 = v2[20];
    v10 = v2[21];
    v13 = v2[14];
    v12 = v2[15];
    v14 = v2[12];
    v15 = v2[13];
    v16 = v2[9];
    v17 = v2[7];
    v11(v14, v16);
    (*(v13 + 8))(v12, v15);
    v8 = sub_1003B8220;
    v9 = v17;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1003B8220()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = v0[15];
    v2 = v0[11];
    v3 = v0[12];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = swift_task_alloc();
    v0[17] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = async function pointer to static Transaction.named<A>(_:with:)[1];
    v10 = swift_task_alloc();
    v0[18] = v10;
    *v10 = v0;
    v10[1] = sub_1003B7D7C;
    v11 = v0[16];

    return static Transaction.named<A>(_:with:)();
  }
}

uint64_t sub_1003B8360()
{
  v1 = v0[7];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return _swift_task_switch(sub_1003C3A7C, v1, 0);
}

uint64_t sub_1003B83DC()
{
  v1 = *(v0 + 136);

  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B78);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error from shouldPublishFromAP: %{public}@", v8, 0xCu);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v11 = *(v0 + 120);
  static Clock<>.continuous.getter();
  *(v0 + 40) = xmmword_1004D77F0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return _swift_task_switch(sub_1003B7F24, 0, 0);
}

uint64_t sub_1003B85D0()
{
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = sub_10000A6F0(v1, qword_1005E0B78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Calling interface.pollForFallbackPublishing()", v4, 2u);
  }

  v5 = v0[2];

  My = MicroFindMyInterface.shouldPublishFromAP()();
  if (v7)
  {
    v8 = v0[1];
LABEL_12:

    return v8();
  }

  if (!My)
  {
    v8 = v0[1];
    goto LABEL_12;
  }

  v9 = *(v0[2] + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_locationMonitor);
  v0[4] = v9;

  return _swift_task_switch(sub_1003B8768, v9, 0);
}

uint64_t sub_1003B8768()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_pushTokenMonitor);
  *(v0 + 40) = v1;
  return _swift_task_switch(sub_1003B8794, v1, 0);
}

uint64_t sub_1003B8794()
{
  *(v0 + 56) = [*(*(v0 + 40) + 112) isConnected];

  return _swift_task_switch(sub_1003B880C, 0, 0);
}

uint64_t sub_1003B880C()
{
  if (*(v0 + 56) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 48) = v1;
    *v1 = v0;
    v1[1] = sub_1002F4F88;
    v2 = *(v0 + 16);

    return sub_1003C0238();
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Skipping fallbackPublish() because we're not connected", v7, 2u);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1003B8958()
{
  v1[10] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B2D90, &unk_1004D7B90) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for HashAlgorithm();
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for Advertisement();
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005B2D70, &qword_1004D7B70) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v10 = type metadata accessor for SearchpartyAccount();
  v1[19] = v10;
  v11 = *(v10 - 8);
  v1[20] = v11;
  v12 = *(v11 + 64) + 15;
  v1[21] = swift_task_alloc();
  v13 = type metadata accessor for PublicKey();
  v1[22] = v13;
  v14 = *(v13 - 8);
  v1[23] = v14;
  v15 = *(v14 + 64) + 15;
  v1[24] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005B0608, &qword_1004D1F38) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v17 = *(*(sub_10004B564(&qword_1005B2DB0, &qword_1004D7BC0) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v18 = sub_10004B564(&qword_1005B2DB8, &qword_1004D7BC8);
  v1[28] = v18;
  v19 = *(v18 - 8);
  v1[29] = v19;
  v20 = *(v19 + 64) + 15;
  v1[30] = swift_task_alloc();
  v21 = sub_10004B564(&qword_1005B2DC0, &qword_1004D7BD0);
  v1[31] = v21;
  v22 = *(v21 - 8);
  v1[32] = v22;
  v23 = *(v22 + 64) + 15;
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1003B8CE8, v0, 0);
}

void sub_1003B8CE8()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider);
  v0[34] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[35] = v2;
    *v2 = v0;
    v2[1] = sub_1003B8DA4;
    v3 = v0[30];

    sub_1003C4994(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003B8DA4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_1003B8ED0, v3, 0);
}

uint64_t sub_1003B8ED0()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_1003C24A4(&qword_1005B2D58, type metadata accessor for MicroFindMyService);
  v6 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  *(v0 + 288) = v5;
  *(v0 + 296) = v6;
  v7 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId;
  *(v0 + 360) = enum case for HashAlgorithm.sha256(_:);
  *(v0 + 304) = v7;
  *(v0 + 312) = 0;
  v8 = *(v0 + 80);
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  *(v0 + 320) = v10;
  *v10 = v0;
  v10[1] = sub_1003B9010;
  v11 = *(v0 + 264);
  v12 = *(v0 + 248);
  v13 = *(v0 + 216);

  return AsyncStream.Iterator.next(isolation:)(v13, v8, v5, v12);
}

uint64_t sub_1003B9010()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_1003B9120, v2, 0);
}

uint64_t sub_1003B9120()
{
  v1 = v0[27];
  v2 = sub_10004B564(&qword_1005B2DC8, &qword_1004D7BD8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[32] + 8))(v0[33], v0[31]);
    v3 = v0[33];
    v4 = v0[30];
    v6 = v0[26];
    v5 = v0[27];
    v8 = v0[24];
    v7 = v0[25];
    v9 = v0[21];
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[14];
    v49 = v0[11];

    v13 = v0[1];

    return v13();
  }

  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[22];
  v18 = v0[23];
  v19 = *v1;

  sub_1000176A8(v1 + *(v2 + 48), v15, &qword_1005B0608, &qword_1004D1F38);
  sub_100005F04(v15, v16, &qword_1005B0608, &qword_1004D1F38);
  v20 = *(v18 + 48);
  v0[41] = v20;
  v0[42] = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v21 = v20(v16, 1, v17);
  v22 = v0[25];
  if (v21 == 1)
  {
    sub_100002CE0(v0[25], &qword_1005B0608, &qword_1004D1F38);
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005E0B78);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Flushing public key because sharingKeyStreamProvider emitted a nil.", v26, 2u);
    }

    v27 = v0[39];
    v28 = v0[37];
    v29 = v0[10];

    MicroFindMyInterface.flushPublicKey()();
    if (!v30)
    {
      goto LABEL_25;
    }

    v31 = v0[42];
    if ((v0[41])(v0[26], 1, v0[22]) == 1)
    {
      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v23, qword_1005E0B78);
      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138543362;
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v36;
        *v35 = v36;
        v37 = "Error flushing public key: %{public}@";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v32, v33, v37, v34, 0xCu);
        sub_100002CE0(v35, &qword_1005A9670, &unk_1004C2480);

LABEL_25:
        sub_100002CE0(v0[26], &qword_1005B0608, &qword_1004D1F38);
        v0[39] = 0;
        v42 = v0[36];
        v43 = v0[10];
        v44 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
        v45 = swift_task_alloc();
        v0[40] = v45;
        *v45 = v0;
        v45[1] = sub_1003B9010;
        v46 = v0[33];
        v47 = v0[31];
        v48 = v0[27];

        return AsyncStream.Iterator.next(isolation:)(v48, v43, v42, v47);
      }
    }

    else
    {
      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v23, qword_1005E0B78);
      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138543362;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v41;
        *v35 = v41;
        v37 = "Error setting public key: %{public}@";
        goto LABEL_23;
      }
    }

    goto LABEL_25;
  }

  (*(v0[23] + 32))(v0[24], v0[25], v0[22]);
  v38 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v39 = swift_task_alloc();
  v0[43] = v39;
  *v39 = v0;
  v39[1] = sub_1003B9744;
  v40 = v0[18];

  return static AppleAccount.searchpartyAccount.getter(v40);
}

uint64_t sub_1003B9744()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1003BA17C;
  }

  else
  {
    v6 = sub_1003B9870;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003B9870()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  if ((*(v1 + 48))(v2, 1, *(v0 + 152)) == 1)
  {
    sub_100002CE0(v2, &qword_1005B2D70, &qword_1004D7B70);
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0B78);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No account", v6, 2u);
    }

    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 248);
    v10 = *(v0 + 208);
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 176);

    (*(v12 + 8))(v11, v13);
    (*(v8 + 8))(v7, v9);
    sub_100002CE0(v10, &qword_1005B0608, &qword_1004D1F38);
    v14 = *(v0 + 264);
    v15 = *(v0 + 240);
    v17 = *(v0 + 208);
    v16 = *(v0 + 216);
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 168);
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 112);
    v92 = *(v0 + 88);

    v24 = *(v0 + 8);

    return v24();
  }

  v93 = *(v0 + 360);
  v26 = *(v0 + 192);
  v28 = *(v0 + 128);
  v27 = *(v0 + 136);
  v29 = *(v0 + 112);
  v30 = *(v0 + 120);
  v31 = *(v0 + 104);
  v87 = *(v0 + 96);
  v88 = *(v0 + 168);
  v90 = (*(v0 + 80) + *(v0 + 304));
  (*(v1 + 32))();
  PublicKey.advertisement.getter();
  v32 = Advertisement.data.getter();
  v34 = v33;
  (*(v28 + 8))(v27, v30);
  *(v0 + 16) = v32;
  *(v0 + 24) = v34;
  (*(v31 + 104))(v29, v93, v87);
  sub_1000CA210();
  v35 = DataProtocol.hash(algorithm:)();
  v37 = v36;
  (*(v31 + 8))(v29, v87);
  sub_1000049D0(*(v0 + 16), *(v0 + 24));
  Data.base64EncodedString(options:)(0);
  sub_1000049D0(v35, v37);
  SearchpartyAccount.dsid.getter();
  v38 = String.utf8Data.getter();
  v40 = v39;

  v41 = Data.base64EncodedString(options:)(0);
  sub_1000049D0(v38, v40);
  *(v0 + 32) = v41;
  *(v0 + 48) = 61;
  *(v0 + 56) = 0xE100000000000000;
  *(v0 + 64) = 126;
  *(v0 + 72) = 0xE100000000000000;
  sub_1000246F4();
  v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v44 = v43;

  v45 = v90[1];
  *v90 = v42;
  v90[1] = v44;

  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_10000A6F0(v46, qword_1005E0B78);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Setting new public key after a key roll event.", v49, 2u);
  }

  v50 = *(v0 + 352);
  v51 = *(v0 + 296);
  v52 = *(v0 + 192);
  v53 = *(v0 + 80);

  v54 = PublicKey.data.getter();
  v56 = v55;
  MicroFindMyInterface.set(publicKey:)();
  if (v50)
  {
    v89 = *(v0 + 192);
    v91 = v46;
    v58 = *(v0 + 176);
    v57 = *(v0 + 184);
    v59 = *(v0 + 160);
    v60 = *(v0 + 168);
    v61 = *(v0 + 152);
    sub_1000049D0(v54, v56);

    (*(v59 + 8))(v60, v61);
    (*(v57 + 8))(v89, v58);
    v72 = *(v0 + 336);
    if ((*(v0 + 328))(*(v0 + 208), 1, *(v0 + 176)) == 1)
    {
      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v91, qword_1005E0B78);
      swift_errorRetain();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138543362;
        swift_errorRetain();
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v75 + 4) = v77;
        *v76 = v77;
        v78 = "Error flushing public key: %{public}@";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v73, v74, v78, v75, 0xCu);
        sub_100002CE0(v76, &qword_1005A9670, &unk_1004C2480);

        goto LABEL_27;
      }
    }

    else
    {
      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v91, qword_1005E0B78);
      swift_errorRetain();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138543362;
        swift_errorRetain();
        v79 = _swift_stdlib_bridgeErrorToNSError();
        *(v75 + 4) = v79;
        *v76 = v79;
        v78 = "Error setting public key: %{public}@";
        goto LABEL_25;
      }
    }

    goto LABEL_27;
  }

  v62 = *(v0 + 296);
  v63 = *(v0 + 80);
  v64 = *(v0 + 88);
  sub_1000049D0(v54, v56);
  Identifier.init(keyId:findMyId:)();
  v65 = type metadata accessor for Identifier();
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  MicroFindMyInterface.set(identifier:)();
  v67 = *(v0 + 184);
  v66 = *(v0 + 192);
  v69 = *(v0 + 168);
  v68 = *(v0 + 176);
  v70 = *(v0 + 152);
  v71 = *(v0 + 160);
  sub_100002CE0(*(v0 + 88), &qword_1005B2D90, &unk_1004D7B90);
  (*(v71 + 8))(v69, v70);
  (*(v67 + 8))(v66, v68);
LABEL_27:
  sub_100002CE0(*(v0 + 208), &qword_1005B0608, &qword_1004D1F38);
  *(v0 + 312) = 0;
  v80 = *(v0 + 288);
  v81 = *(v0 + 80);
  v82 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v83 = swift_task_alloc();
  *(v0 + 320) = v83;
  *v83 = v0;
  v83[1] = sub_1003B9010;
  v84 = *(v0 + 264);
  v85 = *(v0 + 248);
  v86 = *(v0 + 216);

  return AsyncStream.Iterator.next(isolation:)(v86, v81, v80, v85);
}

uint64_t sub_1003BA17C()
{
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  if ((*(v0 + 328))(*(v0 + 208), 1, *(v0 + 176)) == 1)
  {
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0B78);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      v9 = "Error flushing public key: %{public}@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, v5, v9, v6, 0xCu);
      sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0B78);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v11;
      *v7 = v11;
      v9 = "Error setting public key: %{public}@";
      goto LABEL_10;
    }
  }

LABEL_12:
  sub_100002CE0(*(v0 + 208), &qword_1005B0608, &qword_1004D1F38);
  *(v0 + 312) = 0;
  v12 = *(v0 + 288);
  v13 = *(v0 + 80);
  v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v15 = swift_task_alloc();
  *(v0 + 320) = v15;
  *v15 = v0;
  v15[1] = sub_1003B9010;
  v16 = *(v0 + 264);
  v17 = *(v0 + 248);
  v18 = *(v0 + 216);

  return AsyncStream.Iterator.next(isolation:)(v18, v13, v12, v17);
}

uint64_t sub_1003BA48C()
{
  v1[12] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B2D90, &unk_1004D7B90) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  My = type metadata accessor for MicroFindMyInterface.Configuration();
  v1[15] = My;
  v4 = *(My - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = type metadata accessor for PublicKey();
  v1[18] = v6;
  v7 = *(v6 - 8);
  v1[19] = v7;
  v8 = *(v7 + 64) + 15;
  v1[20] = swift_task_alloc();
  v9 = type metadata accessor for HashAlgorithm();
  v1[21] = v9;
  v10 = *(v9 - 8);
  v1[22] = v10;
  v11 = *(v10 + 64) + 15;
  v1[23] = swift_task_alloc();
  v12 = type metadata accessor for Advertisement();
  v1[24] = v12;
  v13 = *(v12 - 8);
  v1[25] = v13;
  v14 = *(v13 + 64) + 15;
  v1[26] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005B2D70, &qword_1004D7B70) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v16 = type metadata accessor for SearchpartyAccount();
  v1[28] = v16;
  v17 = *(v16 - 8);
  v1[29] = v17;
  v18 = *(v17 + 64) + 15;
  v1[30] = swift_task_alloc();
  v19 = *(*(sub_10004B564(&qword_1005B0608, &qword_1004D1F38) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v20 = sub_10004B564(&qword_1005B2D98, &qword_1004D7BB0);
  v1[34] = v20;
  v21 = *(v20 - 8);
  v1[35] = v21;
  v22 = *(v21 + 64) + 15;
  v1[36] = swift_task_alloc();
  v23 = sub_10004B564(&qword_1005B2DA0, &qword_1004D7BB8);
  v1[37] = v23;
  v24 = *(v23 - 8);
  v1[38] = v24;
  v25 = *(v24 + 64) + 15;
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_1003BA858, v0, 0);
}

uint64_t sub_1003BA858()
{
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  *(v0 + 80) = *(*(qword_1005DFBF8 + 24) + 24);
  sub_10004B564(&unk_1005AB520, &unk_1004C54A0);
  sub_10001DF0C(&qword_1005AA6F0, &unk_1005AB520, &unk_1004C54A0);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  v4 = sub_1003C24A4(&qword_1005B2D58, type metadata accessor for MicroFindMyService);
  v5 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider;
  *(v0 + 320) = v4;
  *(v0 + 328) = v5;
  *(v0 + 336) = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  *(v0 + 456) = enum case for HashAlgorithm.sha256(_:);
  v6 = sub_10001DF0C(&qword_1005B2DA8, &qword_1005B2D98, &qword_1004D7BB0);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  *(v0 + 344) = v8;
  *v8 = v0;
  v8[1] = sub_1003BAA5C;
  v9 = *(v0 + 288);
  v10 = *(v0 + 272);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 460, v10, v6);
}

uint64_t sub_1003BAA5C()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  v2[44] = v0;

  v5 = v2[12];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[40];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1003BAE04;
  }

  else
  {
    if (v5)
    {
      v11 = v2[40];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1003BABF4;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1003BABF4()
{
  v1 = *(v0 + 96);
  *(v0 + 462) = *(v0 + 460);
  return _swift_task_switch(sub_1003BAC18, v1, 0);
}

void sub_1003BAC18()
{
  if (*(v0 + 462) == 5)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 312);
    v3 = *(v0 + 296);
    v5 = *(v0 + 256);
    v4 = *(v0 + 264);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 216);
    v13 = *(v0 + 208);
    v14 = *(v0 + 184);
    v15 = *(v0 + 160);
    v16 = *(v0 + 136);
    v17 = *(v0 + 112);
    v18 = *(v0 + 104);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v1 + 8))(v2, v3);

    v9 = *(v0 + 8);

    v9();
  }

  else
  {
    v10 = *(*(v0 + 96) + *(v0 + 328));
    *(v0 + 360) = v10;
    if (v10)
    {

      v11 = swift_task_alloc();
      *(v0 + 368) = v11;
      *v11 = v0;
      v11[1] = sub_1003BAE90;
      v12 = *(v0 + 264);

      sub_1003C4E84(v12);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003BAE04()
{
  *(v0 + 88) = *(v0 + 352);
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1003BAE90()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_1003BAFBC, v3, 0);
}

uint64_t sub_1003BAFBC()
{
  v22 = v0;
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 376) = v1;
  *(v0 + 384) = sub_10000A6F0(v1, qword_1005E0B78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 462);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    *(v0 + 461) = v4;
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "meDevice: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  if (*(v0 + 462) - 2 >= 3)
  {
    if (*(v0 + 462))
    {
      v18 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
      v19 = swift_task_alloc();
      *(v0 + 392) = v19;
      *v19 = v0;
      v19[1] = sub_1003BB2EC;
      v20 = *(v0 + 216);

      return static AppleAccount.searchpartyAccount.getter(v20);
    }

    else
    {
      sub_100002CE0(*(v0 + 264), &qword_1005B0608, &qword_1004D1F38);
      v13 = sub_10001DF0C(&qword_1005B2DA8, &qword_1005B2D98, &qword_1004D7BB0);
      v14 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v15 = swift_task_alloc();
      *(v0 + 344) = v15;
      *v15 = v0;
      v15[1] = sub_1003BAA5C;
      v16 = *(v0 + 288);
      v17 = *(v0 + 272);

      return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 460, v17, v13);
    }
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 448) = v10;
    *v10 = v0;
    v10[1] = sub_1003BBF60;
    v11 = *(v0 + 96);

    return sub_1003BF2B0();
  }
}

uint64_t sub_1003BB2EC()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_1003BC3D8;
  }

  else
  {
    v6 = sub_1003BB418;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003BB418()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 384);
    sub_100002CE0(v3, &qword_1005B2D70, &qword_1004D7B70);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No account even though this device is the Me device!", v7, 2u);
    }

    sub_100002CE0(*(v0 + 264), &qword_1005B0608, &qword_1004D1F38);
    v8 = *(v0 + 304);
    v9 = *(v0 + 312);
    v10 = *(v0 + 296);
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 216);
    v50 = *(v0 + 208);
    v51 = *(v0 + 184);
    v52 = *(v0 + 160);
    v53 = *(v0 + 136);
    v54 = *(v0 + 112);
    v55 = *(v0 + 104);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v8 + 8))(v9, v10);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v19 = *(v0 + 256);
    v18 = *(v0 + 264);
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);
    (*(v2 + 32))(*(v0 + 240), v3, v1);
    sub_100005F04(v18, v19, &qword_1005B0608, &qword_1004D1F38);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_100002CE0(*(v0 + 256), &qword_1005B0608, &qword_1004D1F38);
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      v56 = *(v0 + 456);
      v24 = *(v0 + 256);
      v26 = *(v0 + 200);
      v25 = *(v0 + 208);
      v27 = *(v0 + 184);
      v28 = *(v0 + 192);
      v29 = *(v0 + 168);
      v30 = *(v0 + 176);
      v32 = *(v0 + 144);
      v31 = *(v0 + 152);
      PublicKey.advertisement.getter();
      (*(v31 + 8))(v24, v32);
      v33 = Advertisement.data.getter();
      v35 = v34;
      (*(v26 + 8))(v25, v28);
      *(v0 + 64) = v33;
      *(v0 + 72) = v35;
      (*(v30 + 104))(v27, v56, v29);
      sub_1000CA210();
      v36 = DataProtocol.hash(algorithm:)();
      v38 = v37;
      (*(v30 + 8))(v27, v29);
      sub_1000049D0(*(v0 + 64), *(v0 + 72));
      v39 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v39._countAndFlagsBits;
      object = v39._object;
      sub_1000049D0(v36, v38);
    }

    *(v0 + 408) = countAndFlagsBits;
    *(v0 + 416) = object;
    v40 = *(v0 + 240);
    SearchpartyAccount.dsid.getter();
    v41 = String.utf8Data.getter();
    v43 = v42;

    v44 = Data.base64EncodedString(options:)(0);
    sub_1000049D0(v41, v43);
    *(v0 + 16) = v44;
    *(v0 + 32) = 61;
    *(v0 + 40) = 0xE100000000000000;
    *(v0 + 48) = 126;
    *(v0 + 56) = 0xE100000000000000;
    sub_1000246F4();
    v45 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v47 = v46;

    *(v0 + 424) = v45;
    *(v0 + 432) = v47;
    v48 = swift_task_alloc();
    *(v0 + 440) = v48;
    *v48 = v0;
    v48[1] = sub_1003BB8D8;
    v49 = *(v0 + 96);

    return sub_1003BF2B0();
  }
}

uint64_t sub_1003BB8D8()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1003BB9E8, v2, 0);
}

uint64_t sub_1003BB9E8()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v6 = v0[31];
  v7 = v0[18];
  v8 = v0[19];
  sub_100005F04(v0[33], v6, &qword_1005B0608, &qword_1004D1F38);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[31];
  if (v9 == 1)
  {

    sub_100002CE0(v10, &qword_1005B0608, &qword_1004D1F38);
    goto LABEL_8;
  }

  (*(v0[19] + 32))(v0[20], v0[31], v0[18]);
  if (!v3 || !v1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

LABEL_8:
    v20 = v0[12] + v0[42];
    MicroFindMyInterface.flushPublicKey()();
    if (!v21)
    {
      v22 = v0[42];
      v24 = v0[12];
      v23 = v0[13];
      v25 = type metadata accessor for Identifier();
      (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
      MicroFindMyInterface.set(identifier:)();
      sub_100002CE0(v0[13], &qword_1005B2D90, &unk_1004D7B90);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v11 = v0[42];
  v12 = v0[17];
  v13 = v0[12];
  sub_1003BC61C();
  MicroFindMyInterface.set(configuration:)();
  if (!v5)
  {
    v48 = v0[42];
    v36 = v0[20];
    v37 = v0[12];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v38 = PublicKey.data.getter();
    v40 = v39;
    MicroFindMyInterface.set(publicKey:)();
    v49 = v0[42];
    v41 = v0[14];
    v42 = v0[12];
    sub_1000049D0(v38, v40);
    Identifier.init(keyId:findMyId:)();
    v43 = type metadata accessor for Identifier();
    (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
    MicroFindMyInterface.set(identifier:)();
    v45 = v0[19];
    v44 = v0[20];
    v46 = v0[18];
    sub_100002CE0(v0[14], &qword_1005B2D90, &unk_1004D7B90);
    (*(v45 + 8))(v44, v46);
    goto LABEL_15;
  }

  v15 = v0[19];
  v14 = v0[20];
  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[15];
  v19 = v0[16];

  (*(v19 + 8))(v17, v18);
  (*(v15 + 8))(v14, v16);
LABEL_10:
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[47], qword_1005E0B90);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "Error configuring MicroFindMy: %{public}@", v28, 0xCu);
    sub_100002CE0(v29, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

LABEL_15:
  sub_100002CE0(v0[33], &qword_1005B0608, &qword_1004D1F38);
  v31 = sub_10001DF0C(&qword_1005B2DA8, &qword_1005B2D98, &qword_1004D7BB0);
  v32 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v33 = swift_task_alloc();
  v0[43] = v33;
  *v33 = v0;
  v33[1] = sub_1003BAA5C;
  v34 = v0[36];
  v35 = v0[34];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 460, v35, v31);
}

uint64_t sub_1003BBF60()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1003BC070, v2, 0);
}

uint64_t sub_1003BC070()
{
  v1 = v0[44];
  v2 = v0[31];
  v3 = v0[18];
  v4 = v0[19];
  sub_100005F04(v0[33], v2, &qword_1005B0608, &qword_1004D1F38);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[31];
  if (v5 == 1)
  {
    swift_bridgeObjectRelease_n();
    sub_100002CE0(v6, &qword_1005B0608, &qword_1004D1F38);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[31], v0[18]);
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  v7 = v0[12] + v0[42];
  MicroFindMyInterface.flushPublicKey()();
  if (v8)
  {
    if (qword_1005A84F0 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v0[47], qword_1005E0B90);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error configuring MicroFindMy: %{public}@", v15, 0xCu);
      sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);
    }

    else
    {
    }
  }

  else
  {
    v9 = v0[42];
    v11 = v0[12];
    v10 = v0[13];
    v12 = type metadata accessor for Identifier();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    MicroFindMyInterface.set(identifier:)();
    sub_100002CE0(v0[13], &qword_1005B2D90, &unk_1004D7B90);
  }

  sub_100002CE0(v0[33], &qword_1005B0608, &qword_1004D1F38);
  v18 = sub_10001DF0C(&qword_1005B2DA8, &qword_1005B2D98, &qword_1004D7BB0);
  v19 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v20 = swift_task_alloc();
  v0[43] = v20;
  *v20 = v0;
  v20[1] = sub_1003BAA5C;
  v21 = v0[36];
  v22 = v0[34];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 460, v22, v18);
}

uint64_t sub_1003BC3D8()
{
  v1 = v0[50];
  v2 = v0[48];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[50];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get account: %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  v9 = v0[50];

  sub_100002CE0(v0[33], &qword_1005B0608, &qword_1004D1F38);
  v10 = v0[38];
  v11 = v0[39];
  v12 = v0[37];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[27];
  v20 = v0[26];
  v21 = v0[23];
  v22 = v0[20];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[13];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v10 + 8))(v11, v12);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003BC61C()
{
  v0 = type metadata accessor for SecureLocationsConfig();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v4 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v4);
  v5 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1003C326C(v4 + *(v5 + 28), v3, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v4);

  v6 = *&v3[*(v0 + 80)];

  sub_1003C32D4(v3, type metadata accessor for SecureLocationsConfig);
  if (!*(v6 + 16) || (v7 = sub_1000110D8(0xD000000000000013, 0x80000001004DDB80), (v8 & 1) == 0))
  {

    return MicroFindMyInterface.Configuration.init(activeDurationInSeconds:timeThresholdInSeconds:distanceThresholdInMeters:minimumTimeBetweenPublishInSeconds:)();
  }

  v9 = (*(v6 + 56) + 88 * v7);
  v10 = v9[1];
  v11 = v9[7];
  v12 = v9[9];

  if (v10 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v12 < 9.22337204e18)
  {
    return MicroFindMyInterface.Configuration.init(activeDurationInSeconds:timeThresholdInSeconds:distanceThresholdInMeters:minimumTimeBetweenPublishInSeconds:)();
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1003BC8B4()
{
  v1[13] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B2D90, &unk_1004D7B90) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  My = type metadata accessor for MicroFindMyInterface.Configuration();
  v1[16] = My;
  v4 = *(My - 8);
  v1[17] = v4;
  v5 = *(v4 + 64) + 15;
  v1[18] = swift_task_alloc();
  v6 = type metadata accessor for PublicKey();
  v1[19] = v6;
  v7 = *(v6 - 8);
  v1[20] = v7;
  v8 = *(v7 + 64) + 15;
  v1[21] = swift_task_alloc();
  v9 = type metadata accessor for HashAlgorithm();
  v1[22] = v9;
  v10 = *(v9 - 8);
  v1[23] = v10;
  v11 = *(v10 + 64) + 15;
  v1[24] = swift_task_alloc();
  v12 = type metadata accessor for Advertisement();
  v1[25] = v12;
  v13 = *(v12 - 8);
  v1[26] = v13;
  v14 = *(v13 + 64) + 15;
  v1[27] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005B2D70, &qword_1004D7B70) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v16 = type metadata accessor for SearchpartyAccount();
  v1[29] = v16;
  v17 = *(v16 - 8);
  v1[30] = v17;
  v18 = *(v17 + 64) + 15;
  v1[31] = swift_task_alloc();
  v19 = *(*(sub_10004B564(&qword_1005B0608, &qword_1004D1F38) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v20 = type metadata accessor for AccountService.State(0);
  v1[35] = v20;
  v21 = *(v20 - 8);
  v1[36] = v21;
  v22 = *(v21 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v23 = *(*(sub_10004B564(&qword_1005B02E8, &unk_1004D7BA0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v24 = *(*(sub_10004B564(&qword_1005B02F8, &qword_1004D1870) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v25 = sub_10004B564(&qword_1005B02F0, &unk_1004D6A70);
  v1[41] = v25;
  v26 = *(v25 - 8);
  v1[42] = v26;
  v27 = *(v26 + 64) + 15;
  v1[43] = swift_task_alloc();

  return _swift_task_switch(sub_1003BCCF0, v0, 0);
}

uint64_t sub_1003BCCF0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 104);
  v3 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_accountStream;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B02F8, &qword_1004D1870);
  v4 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 344);
    v11 = *(v0 + 320);
    AsyncStream.makeAsyncIterator()();
    (*(v5 + 8))(v11, v4);
    v12 = sub_1003C24A4(&qword_1005B2D58, type metadata accessor for MicroFindMyService);
    v13 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider;
    *(v0 + 352) = v12;
    *(v0 + 360) = v13;
    v14 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
    *(v0 + 464) = enum case for HashAlgorithm.sha256(_:);
    *(v0 + 368) = v14;
    *(v0 + 376) = 0;
    v15 = *(v0 + 104);
    v16 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v17 = swift_task_alloc();
    *(v0 + 384) = v17;
    *v17 = v0;
    v17[1] = sub_1003BCED8;
    v18 = *(v0 + 344);
    v9 = *(v0 + 328);
    v6 = *(v0 + 312);
    v7 = v15;
    v8 = v12;
  }

  return AsyncStream.Iterator.next(isolation:)(v6, v7, v8, v9);
}

uint64_t sub_1003BCED8()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_1003BCFE8, v2, 0);
}

uint64_t sub_1003BCFE8()
{
  v1 = v0[39];
  if ((*(v0[36] + 48))(v1, 1, v0[35]) == 1)
  {
    v2 = v0[40];
    v4 = v0[37];
    v3 = v0[38];
    v5 = v0[33];
    v6 = v0[34];
    v8 = v0[31];
    v7 = v0[32];
    v17 = v0[28];
    v18 = v0[27];
    v19 = v0[24];
    v20 = v0[21];
    v9 = v0[18];
    v21 = v0[15];
    v22 = v0[14];
    (*(v0[42] + 8))(v0[43], v0[41]);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[45];
    v13 = v0[13];
    result = sub_1003C3498(v1, v0[38], type metadata accessor for AccountService.State);
    v14 = *(v13 + v12);
    v0[49] = v14;
    if (v14)
    {

      v15 = swift_task_alloc();
      v0[50] = v15;
      *v15 = v0;
      v15[1] = sub_1003BD214;
      v16 = v0[34];

      return sub_1003C4E84(v16);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003BD214()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return _swift_task_switch(sub_1003BD340, v3, 0);
}

uint64_t sub_1003BD340()
{
  v1 = v0[37];
  sub_1003C326C(v0[38], v1, type metadata accessor for AccountService.State);
  v2 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v3 = (*(*(v2 - 8) + 48))(v1, 3, v2);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v8 = v0[47];
      v9 = v0[32];
      v10 = v0[19];
      v11 = v0[20];
      sub_100005F04(v0[34], v9, &qword_1005B0608, &qword_1004D1F38);
      v12 = (*(v11 + 48))(v9, 1, v10);
      v13 = v0[32];
      if (v12 == 1)
      {
        swift_bridgeObjectRelease_n();
        sub_100002CE0(v13, &qword_1005B0608, &qword_1004D1F38);
      }

      else
      {
        (*(v0[20] + 32))(v0[21], v0[32], v0[19]);
        (*(v0[20] + 8))(v0[21], v0[19]);
      }

      v14 = v0[13] + v0[46];
      MicroFindMyInterface.flushPublicKey()();
      if (v15)
      {
        if (qword_1005A84E8 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_10000A6F0(v20, qword_1005E0B78);
        swift_errorRetain();
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 138543362;
          swift_errorRetain();
          v25 = _swift_stdlib_bridgeErrorToNSError();
          *(v23 + 4) = v25;
          *v24 = v25;
          _os_log_impl(&_mh_execute_header, v21, v22, "Error configuring MicroFindMy: %{public}@", v23, 0xCu);
          sub_100002CE0(v24, &qword_1005A9670, &unk_1004C2480);
        }
      }

      else
      {
        v16 = v0[46];
        v18 = v0[13];
        v17 = v0[14];
        v19 = type metadata accessor for Identifier();
        (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
        MicroFindMyInterface.set(identifier:)();
        sub_100002CE0(v0[14], &qword_1005B2D90, &unk_1004D7B90);
      }

      v7 = 0;
      goto LABEL_19;
    }
  }

  else if (!v3)
  {
    v4 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
    v5 = swift_task_alloc();
    v0[51] = v5;
    *v5 = v0;
    v5[1] = sub_1003BD798;
    v6 = v0[28];

    return static AppleAccount.searchpartyAccount.getter(v6);
  }

  v7 = v0[47];
LABEL_19:
  v26 = v0[38];
  sub_100002CE0(v0[34], &qword_1005B0608, &qword_1004D1F38);
  sub_1003C32D4(v26, type metadata accessor for AccountService.State);
  v0[47] = v7;
  v27 = v0[44];
  v28 = v0[13];
  v29 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v30 = swift_task_alloc();
  v0[48] = v30;
  *v30 = v0;
  v30[1] = sub_1003BCED8;
  v31 = v0[43];
  v32 = v0[41];
  v33 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v33, v28, v27, v32);
}

uint64_t sub_1003BD798()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_1003BE4E4;
  }

  else
  {
    v6 = sub_1003BD8C4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003BD8C4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B2D70, &qword_1004D7B70);
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0B78);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No account even though accountStream in .available state!", v7, 2u);
    }

    v9 = *(v0 + 336);
    v8 = *(v0 + 344);
    v10 = *(v0 + 328);
    v11 = *(v0 + 304);
    sub_100002CE0(*(v0 + 272), &qword_1005B0608, &qword_1004D1F38);
    sub_1003C32D4(v11, type metadata accessor for AccountService.State);
    (*(v9 + 8))(v8, v10);
    v12 = type metadata accessor for Account();
    v13 = *(v0 + 344);
    v15 = *(v0 + 312);
    v14 = *(v0 + 320);
    v16 = *(v0 + 304);
    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v56 = *(v0 + 224);
    v57 = *(v0 + 216);
    v58 = *(v0 + 192);
    v59 = *(v0 + 168);
    v21 = *(v0 + 144);
    v60 = *(v0 + 120);
    v61 = *(v0 + 112);
    (*(*(v12 - 8) + 8))(*(v0 + 296), v12);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v25 = *(v0 + 264);
    v24 = *(v0 + 272);
    v26 = *(v0 + 152);
    v27 = *(v0 + 160);
    (*(v2 + 32))(*(v0 + 248), v3, v1);
    sub_100005F04(v24, v25, &qword_1005B0608, &qword_1004D1F38);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {
      sub_100002CE0(*(v0 + 264), &qword_1005B0608, &qword_1004D1F38);
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      v62 = *(v0 + 464);
      v30 = *(v0 + 264);
      v32 = *(v0 + 208);
      v31 = *(v0 + 216);
      v33 = *(v0 + 192);
      v34 = *(v0 + 200);
      v35 = *(v0 + 176);
      v36 = *(v0 + 184);
      v38 = *(v0 + 152);
      v37 = *(v0 + 160);
      PublicKey.advertisement.getter();
      (*(v37 + 8))(v30, v38);
      v39 = Advertisement.data.getter();
      v41 = v40;
      (*(v32 + 8))(v31, v34);
      *(v0 + 88) = v39;
      *(v0 + 96) = v41;
      (*(v36 + 104))(v33, v62, v35);
      sub_1000CA210();
      v42 = DataProtocol.hash(algorithm:)();
      v44 = v43;
      (*(v36 + 8))(v33, v35);
      sub_1000049D0(*(v0 + 88), *(v0 + 96));
      v45 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v45._countAndFlagsBits;
      object = v45._object;
      sub_1000049D0(v42, v44);
    }

    *(v0 + 424) = countAndFlagsBits;
    *(v0 + 432) = object;
    v46 = *(v0 + 248);
    SearchpartyAccount.dsid.getter();
    v47 = String.utf8Data.getter();
    v49 = v48;

    v50 = Data.base64EncodedString(options:)(0);
    sub_1000049D0(v47, v49);
    *(v0 + 40) = v50;
    *(v0 + 56) = 61;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 126;
    *(v0 + 80) = 0xE100000000000000;
    sub_1000246F4();
    v51 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v53 = v52;

    *(v0 + 440) = v51;
    *(v0 + 448) = v53;
    v54 = swift_task_alloc();
    *(v0 + 456) = v54;
    *v54 = v0;
    v54[1] = sub_1003BDE30;
    v55 = *(v0 + 104);

    return sub_1003BF2B0();
  }
}

uint64_t sub_1003BDE30()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_1003BDF40, v2, 0);
}

uint64_t sub_1003BDF40()
{
  v1 = v0[37];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v2 = type metadata accessor for Account();
  (*(*(v2 - 8) + 8))(v1, v2);
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[53];
  v5 = v0[54];
  v7 = v0[52];
  v8 = v0[32];
  v9 = v0[19];
  v10 = v0[20];
  sub_100005F04(v0[34], v8, &qword_1005B0608, &qword_1004D1F38);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = v0[32];
  if (v11 == 1)
  {

    sub_100002CE0(v12, &qword_1005B0608, &qword_1004D1F38);
    goto LABEL_8;
  }

  (*(v0[20] + 32))(v0[21], v0[32], v0[19]);
  if (!v5 || !v3)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

LABEL_8:
    v22 = v0[13] + v0[46];
    MicroFindMyInterface.flushPublicKey()();
    if (!v23)
    {
      v24 = v0[46];
      v26 = v0[13];
      v25 = v0[14];
      v27 = type metadata accessor for Identifier();
      (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
      MicroFindMyInterface.set(identifier:)();
      sub_100002CE0(v0[14], &qword_1005B2D90, &unk_1004D7B90);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v13 = v0[46];
  v14 = v0[18];
  v15 = v0[13];
  sub_1003BC61C();
  MicroFindMyInterface.set(configuration:)();
  if (!v7)
  {
    v54 = v0[46];
    v42 = v0[21];
    v43 = v0[13];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v44 = PublicKey.data.getter();
    v46 = v45;
    MicroFindMyInterface.set(publicKey:)();
    v55 = v0[46];
    v47 = v0[15];
    v48 = v0[13];
    sub_1000049D0(v44, v46);
    Identifier.init(keyId:findMyId:)();
    v49 = type metadata accessor for Identifier();
    (*(*(v49 - 8) + 56))(v47, 0, 1, v49);
    MicroFindMyInterface.set(identifier:)();
    v51 = v0[20];
    v50 = v0[21];
    v52 = v0[19];
    sub_100002CE0(v0[15], &qword_1005B2D90, &unk_1004D7B90);
    (*(v51 + 8))(v50, v52);
    goto LABEL_15;
  }

  v17 = v0[20];
  v16 = v0[21];
  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[16];
  v21 = v0[17];

  (*(v21 + 8))(v19, v20);
  (*(v17 + 8))(v16, v18);
LABEL_10:
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000A6F0(v28, qword_1005E0B78);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Error configuring MicroFindMy: %{public}@", v31, 0xCu);
    sub_100002CE0(v32, &qword_1005A9670, &unk_1004C2480);
  }

LABEL_15:
  v34 = v0[38];
  sub_100002CE0(v0[34], &qword_1005B0608, &qword_1004D1F38);
  sub_1003C32D4(v34, type metadata accessor for AccountService.State);
  v0[47] = 0;
  v35 = v0[44];
  v36 = v0[13];
  v37 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v38 = swift_task_alloc();
  v0[48] = v38;
  *v38 = v0;
  v38[1] = sub_1003BCED8;
  v39 = v0[43];
  v40 = v0[41];
  v41 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v41, v36, v35, v40);
}

uint64_t sub_1003BE4E4()
{
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B78);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[52];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get account: %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  v9 = v0[52];

  v11 = v0[42];
  v10 = v0[43];
  v12 = v0[41];
  v13 = v0[38];
  sub_100002CE0(v0[34], &qword_1005B0608, &qword_1004D1F38);
  sub_1003C32D4(v13, type metadata accessor for AccountService.State);
  (*(v11 + 8))(v10, v12);
  v14 = type metadata accessor for Account();
  v15 = v0[43];
  v17 = v0[39];
  v16 = v0[40];
  v18 = v0[38];
  v20 = v0[33];
  v19 = v0[34];
  v22 = v0[31];
  v21 = v0[32];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[24];
  v29 = v0[21];
  v23 = v0[18];
  v30 = v0[15];
  v31 = v0[14];
  (*(*(v14 - 8) + 8))(v0[37], v14);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1003BE7D4()
{
  v1[4] = v0;
  v2 = sub_10004B564(&qword_1005B2D80, &qword_1004D7B80);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005B2D88, &qword_1004D7B88);
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003BE908, v0, 0);
}

uint64_t sub_1003BE908()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_cellularWatchConnectionNonitor);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1003BE9AC;
  v3 = v0[10];

  return sub_1003AE728(v3);
}

uint64_t sub_1003BE9AC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1003BF0F8;
  }

  else
  {
    v6 = sub_1003BEAD8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003BEAD8()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  AsyncStream.makeAsyncIterator()();
  v4 = sub_1003C24A4(&qword_1005B2D58, type metadata accessor for MicroFindMyService);
  v5 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_connectedWatches;
  v0[13] = v4;
  v0[14] = v5;
  v6 = v0[4];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1003BEBDC;
  v9 = v0[7];
  v10 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v6, v4, v10);
}

uint64_t sub_1003BEBDC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1003BECEC, v2, 0);
}

uint64_t sub_1003BECEC()
{
  v23 = v0;
  if (v0[2])
  {
    v1 = v0[3];

    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0B78);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315138;
      v7 = Array.description.getter();
      v9 = sub_10000D01C(v7, v8, &v22);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Connected watches: %s", v5, 0xCu);
      sub_100004984(v6);
    }

    v10 = v0[14];
    v11 = v0[4];
    v12 = *(v11 + v10);
    *(v11 + v10) = v1;

    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_1003BEF60;
    v14 = v0[4];

    return sub_1003BF2B0();
  }

  else
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = v0[8];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v17 + 8))(v16, v18);
    v19 = v0[10];
    v20 = v0[7];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1003BEF60()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;

  v4 = v1[13];
  v5 = v1[4];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v3;
  v7[1] = sub_1003BEBDC;
  v8 = v1[7];
  v9 = v1[5];

  return AsyncStream.Iterator.next(isolation:)(v1 + 2, v5, v4, v9);
}

uint64_t sub_1003BF0F8()
{
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B78);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error configuring MicroFindMy: %{public}@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003BF2B0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for TimeZone();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for SecureLocationsConfig();
  v1[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v1[11] = v10;
  v11 = *(v10 - 8);
  v1[12] = v11;
  v12 = *(v11 + 64) + 15;
  v1[13] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005B2D70, &qword_1004D7B70) - 8) + 64) + 15;
  v14 = swift_task_alloc();
  v1[14] = v14;
  v15 = type metadata accessor for SearchpartyAccount();
  v1[15] = v15;
  v16 = *(v15 - 8);
  v1[16] = v16;
  v17 = *(v16 + 64) + 15;
  v1[17] = swift_task_alloc();
  v18 = *(*(sub_10004B564(&qword_1005B2D78, &qword_1004D7B78) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v19 = async function pointer to static AppleAccount.searchpartyAccount.getter[1];
  v20 = swift_task_alloc();
  v1[19] = v20;
  *v20 = v1;
  v20[1] = sub_1003BF560;

  return static AppleAccount.searchpartyAccount.getter(v14);
}

uint64_t sub_1003BF560()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1003BFC58;
  }

  else
  {
    v6 = sub_1003BF68C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003BF68C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B2D70, &qword_1004D7B70);
    v4 = 1;
  }

  else
  {
    (*(v2 + 32))(v0[17], v3, v1);
    v5 = RequestCredential.authHeaders.getter();
    if (*(v5 + 16) && (v6 = sub_1000110D8(0x7A69726F68747541, 0xED00006E6F697461), (v7 & 1) != 0))
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v47 = *v8;
      v48 = v8[1];
    }

    else
    {
    }

    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v43 = v0[18];
    v46 = v0[17];
    v44 = v0[16];
    v45 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[10];
    v12 = v0[9];
    v37 = v0[8];
    v38 = v0[11];
    v40 = v0[7];
    v41 = v0[6];
    v14 = v0[4];
    v13 = v0[5];
    v15 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
    v39 = v0[3];
    v42 = v0[2];

    os_unfair_lock_lock(v15);
    v16 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1003C326C(v15 + *(v16 + 28), v11, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v15);

    (*(v9 + 16))(v10, v11 + *(v12 + 76), v38);
    sub_1003C32D4(v11, type metadata accessor for SecureLocationsConfig);
    sub_1003C2D00();
    _StringGuts.grow(_:)(25);

    v17._countAndFlagsBits = sub_1003C2DF0();
    String.append(_:)(v17);

    static TimeZone.current.getter();
    Date.init()();
    TimeZone.abbreviation(for:)();
    (*(v14 + 8))(v13, v39);
    (*(v40 + 8))(v37, v41);
    static SystemInfo.uniqueDeviceID.getter();
    v18 = *(v42 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_connectedWatches);

    MicroFindMyInterface.EndpointConfiguration.init(url:contextApp:authorization:mmeClientInfo:userAgent:timezone:udid:connectedWatches:useTestInstances:)();
    (*(v44 + 8))(v46, v45);
    v4 = 0;
  }

  v19 = v0[20];
  v20 = v0[18];
  v21 = v0[2];
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  (*(*(My - 8) + 56))(v20, v4, 1, My);
  MicroFindMyInterface.set(endpointConfiguration:)();
  if (v19)
  {
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005E0B78);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "set(endpointConfiguration:) failed: %{public}@", v26, 0xCu);
      sub_100002CE0(v27, &qword_1005A9670, &unk_1004C2480);
    }

    else
    {
    }
  }

  v29 = v0[17];
  v31 = v0[13];
  v30 = v0[14];
  v32 = v0[10];
  v33 = v0[8];
  v34 = v0[5];
  sub_100002CE0(v0[18], &qword_1005B2D78, &qword_1004D7B78);

  v35 = v0[1];

  return v35();
}

uint64_t sub_1003BFC58()
{
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B78);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get account: %{public}@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v10 = v0[18];
  v11 = v0[2];
  My = type metadata accessor for MicroFindMyInterface.EndpointConfiguration();
  (*(*(My - 8) + 56))(v10, 1, 1, My);
  MicroFindMyInterface.set(endpointConfiguration:)();
  v13 = v0[17];
  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[10];
  v17 = v0[8];
  v18 = v0[5];
  sub_100002CE0(v0[18], &qword_1005B2D78, &qword_1004D7B78);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1003BFFFC()
{
  v2 = v1;
  v3 = v0;
  MyInterface = type metadata accessor for MicroFindMyInterface();
  v5 = *(MyInterface - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(MyInterface);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A84E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0B78);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = MyInterface;
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Forwarding location command payload to MicroFindMy", v12, 2u);
    v2 = v1;
    MyInterface = v19;
  }

  (*(v5 + 16))(v8, v3 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface, MyInterface);
  v13 = sub_1003C2A38();
  if (v2)
  {
    return (*(v5 + 8))(v8, MyInterface);
  }

  v16 = v13;
  v17 = v14;
  MicroFindMyInterface.simulateRecievePush(payload:)();
  (*(v5 + 8))(v8, MyInterface);
  return sub_1000049D0(v16, v17);
}

uint64_t sub_1003C0238()
{
  v1[5] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B27B8, &unk_1004D7B60) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Location();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  v7[1] = sub_1003C036C;

  return daemon.getter();
}

uint64_t sub_1003C036C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_1003C24A4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1003C24A4(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_1003C0548;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C0548(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 40);
  v6 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v7 = sub_1003C10E4;
  }

  else
  {
    v8 = v3[12];

    v7 = sub_1003C0688;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_1003C0688()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_locationMonitor);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1003C06B4, v1, 0);
}

uint64_t sub_1003C06B4()
{
  v1 = v0[16];
  v2 = v0[5];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_cachedLatestLocation;
  swift_beginAccess();
  sub_100005F04(v1 + v4, v3, &qword_1005B27B8, &unk_1004D7B60);

  return _swift_task_switch(sub_1003C075C, v2, 0);
}

uint64_t sub_1003C075C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[14];

    sub_100002CE0(v3, &qword_1005B27B8, &unk_1004D7B60);
LABEL_3:
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[6];

    v8 = v0[1];

    return v8();
  }

  v10 = v0[5];
  (*(v2 + 32))(v0[10], v3, v1);
  v11 = *(v10 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId + 8);
  if (!v11)
  {
    if (qword_1005A84E8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000A6F0(v25, qword_1005E0B78);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No findMyID -- not signed in?", v28, 2u);
    }

    v29 = v0[15];
    v30 = v0[5];

    MicroFindMyInterface.markAsPublishedFromAP()();
    v31 = v0[14];
    (*(v0[8] + 8))(v0[10], v0[7]);

    goto LABEL_3;
  }

  v12 = *(v10 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId);
  v13 = qword_1005A84E8;
  v14 = *(v10 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId + 8);

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005E0B78);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Fallback publish because MicroFindMy does not have network acccess", v18, 2u);
  }

  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[7];
  v22 = v0[8];

  sub_10039610C();
  (*(v22 + 16))(v20, v19, v21);
  v0[17] = sub_1003C116C(v12, v11, v20);
  v23 = swift_task_alloc();
  v0[18] = v23;
  *v23 = v0;
  v23[1] = sub_1003C0B08;
  v24 = v0[14];

  return sub_10001CC28();
}

uint64_t sub_1003C0B08(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1003C0C08, 0, 0);
}

uint64_t sub_1003C0C08()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = swift_task_alloc();
  v0[20] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1003C0D00;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000013, 0x80000001004E8830, sub_100396104, v3, &type metadata for () + 8);
}

uint64_t sub_1003C0D00()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1003C0F5C;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_1003C0E1C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C0E1C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1003C0E94, v2, 0);
}

uint64_t sub_1003C0E94()
{
  v1 = v0[22];
  v2 = v0[5] + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  MicroFindMyInterface.markAsPublishedFromAP()();
  v3 = v0[14];
  (*(v0[8] + 8))(v0[10], v0[7]);

  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003C0F5C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[14];

  return _swift_task_switch(sub_1003C0FD0, v3, 0);
}

uint64_t sub_1003C0FD0()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1003C103C, v1, 0);
}

uint64_t sub_1003C103C()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 8))(v2, v3);
  v5 = v0[22];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003C10E4()
{
  v1 = v0[12];

  v2 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

id sub_1003C116C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = String._bridgeToObjectiveC()();

  [v9 setFindMyId:v10];

  Location.latitude.getter();
  [v9 setLatitude:?];
  Location.longitude.getter();
  [v9 setLongitude:?];
  Location.horizontalAccuracy.getter();
  [v9 setHorizontalAccuracy:?];
  [v9 setVerticalAccuracy:0.0];
  [v9 setSpeed:-1.0];
  [v9 setCourse:-1.0];
  [v9 setAltitude:0.0];
  Location.timestamp.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v9 setTimestamp:isa];

  [v9 setMotionActivityState:0];
  [v9 setPublishReason:0];

  v12 = type metadata accessor for Location();
  (*(*(v12 - 8) + 8))(a3, v12);
  return v9;
}

uint64_t sub_1003C13BC()
{
  v1 = *(v0 + 120);

  v2 = OBJC_IVAR____TtC13findmylocated18MicroFindMyService_interface;
  MyInterface = type metadata accessor for MicroFindMyInterface();
  (*(*(MyInterface - 8) + 8))(v0 + v2, MyInterface);
  v4 = *(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_locationMonitor);

  v5 = *(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_findMyId + 8);

  v6 = *(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_encryptedLocations);

  v7 = *(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_streamProvider);

  v8 = *(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_sharingKeyStreamProvider);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_accountStream, &qword_1005B02F8, &qword_1004D1870);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_configStream, &qword_1005B2E00, &qword_1004D7CC8);
  v9 = *(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_cellularWatchConnectionNonitor);

  v10 = *(v0 + OBJC_IVAR____TtC13findmylocated18MicroFindMyService_connectedWatches);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1003C14E0()
{
  sub_1003C13BC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003C150C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyService = type metadata accessor for MicroFindMyService(0);
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(MyService, a2);
}

uint64_t sub_1003C15B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  MyService = type metadata accessor for MicroFindMyService(0);
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, MyService, a4);
}

uint64_t sub_1003C1680(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  MyService = type metadata accessor for MicroFindMyService(0);
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(MyService, a2);
}

uint64_t sub_1003C172C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003B12DC();
}

uint64_t sub_1003C17B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003788;

  return sub_1003B211C();
}

uint64_t sub_1003C1844()
{
  v1 = *v0;
  type metadata accessor for MicroFindMyService(0);
  sub_1003C24A4(&qword_1005A9DF8, type metadata accessor for MicroFindMyService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1003C18B0(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v9 = static String.Encoding.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    static String.Encoding.ascii.getter();
    v11 = static String.Encoding.== infix(_:_:)();
    v10(v8, v4);
    if ((v11 & 1) == 0)
    {
      static String.Encoding.nonLossyASCII.getter();
      v12 = static String.Encoding.== infix(_:_:)();
      v10(v8, v4);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_1003C29B4(v13);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  static String.Encoding.utf8.getter();
  v17 = static String.Encoding.== infix(_:_:)();
  v10(v8, v4);
  if (v17)
  {

LABEL_17:
    v10(a2, v4);
    return v16;
  }

  if ((_StringGuts._isContiguousASCII.getter() & 1) == 0)
  {

LABEL_10:
    v18 = *(a1 + 16);
    if (v18)
    {
      v8 = 0;
      while (v8[a1 + 32])
      {
        if (v18 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v19 = [objc_allocWithZone(NSString) initWithBytes:a1 + 32 length:v8 encoding:String.Encoding.rawValue.getter()];

    if (!v19)
    {
      v10(a2, v4);
      return 0;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_17;
  }

  v10(a2, v4);

  return v16;
}

uint64_t EncryptedLocation.keyIdentifier.getter()
{
  v1 = *v0;
  sub_100005F6C(*v0, *(v0 + 8));
  return v1;
}

uint64_t EncryptedLocation.fmt.getter()
{
  return *(v0 + 16);
}

{
  return EncryptedLocation.fmt.getter();
}

uint64_t EncryptedLocation.locationTs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EncryptedLocation(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EncryptedLocation.encryptedLocation.getter()
{
  v1 = v0 + *(type metadata accessor for EncryptedLocation(0) + 28);
  v2 = *v1;
  sub_100005F6C(*v1, *(v1 + 8));
  return v2;
}

{
  return EncryptedLocation.encryptedLocation.getter();
}

unint64_t sub_1003C1CB0()
{
  v1 = 0x746E65644979656BLL;
  v2 = 0x6E6F697461636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 7630182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1003C1D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003C30F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003C1D60(uint64_t a1)
{
  v2 = sub_1003C203C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C1D9C(uint64_t a1)
{
  v2 = sub_1003C203C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EncryptedLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B2A08, &qword_1004D7810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1003C203C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 8);
  v18 = *v3;
  v19 = v11;
  v20 = 0;
  sub_100005F6C(v18, v11);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v18, v19);
  if (!v2)
  {
    v12 = *(v3 + 16);
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = type metadata accessor for EncryptedLocation(0);
    v14 = *(v13 + 24);
    LOBYTE(v18) = 2;
    type metadata accessor for Date();
    sub_1003C24A4(&qword_1005A9848, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + *(v13 + 28));
    v16 = v15[1];
    v18 = *v15;
    v19 = v16;
    v20 = 3;
    sub_100005F6C(v18, v16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v18, v19);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1003C203C()
{
  result = qword_1005B2A10;
  if (!qword_1005B2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2A10);
  }

  return result;
}

uint64_t EncryptedLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Date();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10004B564(&qword_1005B2A18, &qword_1004D7818);
  v27 = *(v29 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v29);
  v10 = v24 - v9;
  v11 = type metadata accessor for EncryptedLocation(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v30 = a1;
  sub_100011AEC(a1, v15);
  sub_1003C203C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v30);
  }

  v25 = v7;
  v17 = v14;
  v18 = v27;
  v19 = v28;
  v32 = 0;
  v20 = sub_1000F4D64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v17 = v31;
  LOBYTE(v31) = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v24[1] = v20;
  *(v17 + 16) = v21;
  LOBYTE(v31) = 2;
  sub_1003C24A4(&qword_1005A9820, &type metadata accessor for Date);
  v22 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v17 + *(v11 + 24), v22, v4);
  v32 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v10, v29);
  *(v17 + *(v11 + 28)) = v31;
  sub_1003C326C(v17, v26, type metadata accessor for EncryptedLocation);
  sub_100004984(v30);
  return sub_1003C32D4(v17, type metadata accessor for EncryptedLocation);
}

uint64_t sub_1003C24A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003C2544()
{
  MyInterface = type metadata accessor for MicroFindMyInterface();
  if (v1 <= 0x3F)
  {
    v6 = *(MyInterface - 8) + 64;
    sub_1001AE28C(319, &qword_1005AFB10, &unk_1005AFB18, &qword_1004D12E8);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1001AE28C(319, &qword_1005B2AB0, &unk_1005B2AB8, &unk_1004D7950);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1003C2708()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1003C27A0()
{
  result = qword_1005B2D48;
  if (!qword_1005B2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2D48);
  }

  return result;
}

unint64_t sub_1003C2888()
{
  result = qword_1005B2D60;
  if (!qword_1005B2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2D60);
  }

  return result;
}

unint64_t sub_1003C28E0()
{
  result = qword_1005B2D68;
  if (!qword_1005B2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2D68);
  }

  return result;
}

uint64_t sub_1003C2934()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0B90);
  sub_10000A6F0(v0, qword_1005E0B90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003C29B4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = static String._tryFromUTF8(_:)();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1003C2A38()
{
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v13 = 0;
  v2 = [v0 JSONObjectWithData:isa options:0 error:&v13];

  if (!v2)
  {
    v9 = v13;
LABEL_8:
    _convertNSErrorToError(_:)();

    goto LABEL_9;
  }

  v3 = v13;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v4 = sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
  if (!swift_dynamicCast())
  {
    v9 = type metadata accessor for GenericError();
    sub_1003C24A4(&unk_1005B27C0, &type metadata accessor for GenericError);
    swift_allocError();
    *v10 = 0xD000000000000015;
    v10[1] = 0x80000001004E9290;
    (*(*(v9 - 1) + 104))(v10, enum case for GenericError.error(_:), v9);
LABEL_9:
    swift_willThrow();
    return v9;
  }

  v14 = v4;
  *&v13 = *&v12[0];
  sub_10004B064(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1004528F8(v12, 0x7377796D646E6966, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v13 = 0;
  v7 = [v0 dataWithJSONObject:v6 options:0 error:{&v13, &_swiftEmptyDictionarySingleton}];

  v8 = v13;
  if (!v7)
  {
    v9 = v8;
    goto LABEL_8;
  }

  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

uint64_t sub_1003C2D00()
{
  _StringGuts.grow(_:)(40);

  v0._countAndFlagsBits = static SystemInfo.productType.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x6E6F6850693C203ELL;
  v1._object = 0xED00003B534F2065;
  String.append(_:)(v1);
  v2._countAndFlagsBits = static SystemInfo.osVersion.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 59;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = static SystemInfo.buildVersion.getter();
  String.append(_:)(v4);

  v5._object = 0x80000001004E93D0;
  v5._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v5);
  return 60;
}

uint64_t sub_1003C2DF0()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 64;
  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v4 + 16) = 64;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 32) = 0u;
  if (sysctlbyname("kern.osrelease", (v4 + 32), &v21, 0, 0))
  {
    v9 = errno.getter();
    if (!strerror(v9))
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  static String.Encoding.ascii.getter();
  v5 = sub_1003C18B0(v4, v3);
  if (!v6)
  {
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_7:
      v10 = String.init(utf8String:)();
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0x6E776F6E6B6E55;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      if (qword_1005A84E8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000A6F0(v14, qword_1005E0B78);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136446466;
        v19 = sub_10000D01C(v12, v13, &v22);

        *(v17 + 4) = v19;
        *(v17 + 12) = 1024;
        *(v17 + 14) = errno.getter();
        _os_log_impl(&_mh_execute_header, v15, v16, "Error from sysctlbyname: %{public}s (%d)", v17, 0x12u);
        sub_100004984(v18);
      }

      else
      {
      }
    }
  }

  v7 = v5;

  return v7;
}

uint64_t sub_1003C30F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65644979656BLL && a2 == 0xED00007265696669;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7630182 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEA00000000007354 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E9270 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1003C326C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C32D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003C3334(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100003690;

  return sub_1003B85B0(a1, a2, v7);
}

uint64_t sub_1003C3404()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002D40;

  return sub_1003B77A0(v2);
}

uint64_t sub_1003C3498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003C3500()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B28D0();
}

uint64_t sub_1003C359C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1003B2960(a1, v1);
}

uint64_t sub_1003C3638(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1003B2B14(a1, v1);
}

uint64_t sub_1003C36D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B2D58();
}

uint64_t sub_1003C3770(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1003B2DE8(a1, v1);
}

uint64_t sub_1003C380C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B3554();
}

uint64_t sub_1003C38A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B35E4();
}

uint64_t sub_1003C3944()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B3674();
}

uint64_t sub_1003C39E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003B3704();
}

uint64_t sub_1003C3A80()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0BA8);
  v1 = sub_10000A6F0(v0, qword_1005E0BA8);
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003C3B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_1003C3B70, 0, 0);
}

uint64_t sub_1003C3B70()
{
  v1 = v0[8];
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  v2 = sub_10004B564(&qword_1005B2FB0, &unk_1004D7DA0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v1 + 128) = AsyncStreamProvider.init()();
  if (qword_1005A8500 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = qword_1005B2E30;
  v10 = objc_allocWithZone(APSConnection);
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v10 initWithEnvironmentName:v12 namedDelegatePort:v13 queue:v11];

  if (v14)
  {
    v18 = v0[7];
    v19 = v0[8];
    v20 = v0[5];

    *(v19 + 112) = v14;
    v15 = sub_1003C3CE0;
    v16 = v19;
    v17 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1003C3CE0()
{
  receiver = v0[4].receiver;
  v2 = receiver[14];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 _setEnabledTopics:isa];

  v4 = type metadata accessor for PushTokenMonitor.PushDelegate();
  v5 = objc_allocWithZone(v4);
  swift_weakInit();
  swift_weakAssign();
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v6 = objc_msgSendSuper2(v0 + 1, "init");
  v7 = receiver[15];
  receiver[15] = v6;
  v8 = v6;

  v9 = receiver[14];
  [v9 setDelegate:v8];

  super_class = v0->super_class;
  v11 = v0[4].receiver;

  return super_class(v11);
}

uint64_t sub_1003C3E0C()
{
  v1 = [*(v0 + 112) publicToken];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = *(v0 + 128);
    sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1004C1900;
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    sub_100005F6C(v3, v5);
    AsyncStreamProvider.stream(initialEvents:)();

    return sub_1000049D0(v3, v5);
  }

  else
  {
    v9 = *(v0 + 128);
    return AsyncStreamProvider.stream(initialEvents:)();
  }
}

uint64_t sub_1003C3F04(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1005A84F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0BA8);
  sub_100005F6C(a1, a2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_1000049D0(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    v11 = Data.hexString.getter();
    v13 = sub_10000D01C(v11, v12, v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "APNS public token: %s", v9, 0xCu);
    sub_100004984(v10);
  }

  v14 = *(v3 + 128);
  v16[0] = a1;
  v16[1] = a2;
  return AsyncStreamProvider.yield(value:transaction:)();
}

uint64_t sub_1003C4090()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003C40FC()
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
  sub_10014311C();
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10004B5AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1005B2E30 = result;
  return result;
}

uint64_t sub_1003C4300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1003C4324, a4, 0);
}

uint64_t sub_1003C4324()
{
  v1 = v0[2];
  sub_1003C3F04(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

void sub_1003C44A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a2 >> 60 == 15)
    {
      if (qword_1005A84F0 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000A6F0(v10, qword_1005E0B90);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "publicToken is nil!", v13, 2u);
      }
    }

    else
    {
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v9;
      v19[5] = a1;
      v19[6] = a2;
      sub_100005F6C(a1, a2);
      sub_1001D7F30(0, 0, v7, &unk_1004D7D88, v19);
    }
  }

  else
  {
    if (qword_1005A84F0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0B90);
    v21 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v21, v15, "target is nil!", v16, 2u);
    }

    v17 = v21;
  }
}

uint64_t sub_1003C47A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_1003C4300(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003C4890()
{
  v1 = v0[3];
  v0[2] = *(v1 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_10004B564(&qword_1005A9F68, &unk_1004C46C0);
  sub_1003C6BB0();
  v2 = Publisher<>.sink(receiveValue:)();

  v3 = *(v1 + 32);
  *(v1 + 32) = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003C4994(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for PublicKey();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(sub_10004B564(&qword_1005B0608, &qword_1004D1F38) - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[10] = v8;
  v9 = swift_task_alloc();
  v2[11] = v9;
  *v9 = v2;
  v9[1] = sub_1003C4B08;

  return sub_1003C4E84(v8);
}

uint64_t sub_1003C4B08()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_1003C4C04, 0, 0);
}

uint64_t sub_1003C4C04()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];
  sub_10004B564(&qword_1005B0600, &qword_1004D7E00);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1003C6B38(v1, v9 + v8);
  sub_1003C6B38(v9 + v8, v2);
  sub_100260160(v2, v4);
  v10 = (*(v6 + 48))(v4, 1, v5);
  v11 = v0[8];
  if (v10 == 1)
  {
    sub_100002CE0(v0[8], &qword_1005B0608, &qword_1004D1F38);
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v13 = *(v0[5] + 32);
    v13(v0[6], v0[8], v0[4]);
    v12 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1001FD504(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1001FD504(v14 > 1, v15 + 1, 1, v12);
    }

    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[4];
    *(v12 + 2) = v15 + 1;
    v13(&v12[((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15], v16, v18);
  }

  v20 = v0[9];
  v19 = v0[10];
  v26 = v0[8];
  v27 = v0[6];
  v22 = v0[2];
  v21 = v0[3];
  swift_setDeallocating();
  sub_100002CE0(v9 + v8, &qword_1005B0608, &qword_1004D1F38);
  swift_deallocClassInstance();
  v23 = *(v21 + 24);
  sub_100258648(v12);

  AsyncStreamProvider.stream(initialEvents:)();

  sub_100002CE0(v19, &qword_1005B0608, &qword_1004D1F38);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1003C4E84(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1003C4F18;

  return daemon.getter();
}

uint64_t sub_1003C4F18(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_100009638(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009638(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_1003C50F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C50F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003C57E4, 0, 0);
  }

  else
  {
    v7 = v4[4];

    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_1003C527C;

    return sub_10001CC28();
  }
}

uint64_t sub_1003C527C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1003C537C, 0, 0);
}

uint64_t sub_1003C537C()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  v0[10] = v2;
  v3 = sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  *v2 = v0;
  v2[1] = sub_1003C5464;
  v4 = v0[9];
  v5 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0x4B676E6972616873, 0xEA00000000007965, sub_1003C6B30, v4, v3);
}

uint64_t sub_1003C5464()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1003C55E0;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1003C5580;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003C5580()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003C55E0()
{
  v1 = v0[9];

  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B90);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v8 = v0[6];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "getSharingKey error: %{public}@", v9, 0xCu);
    sub_100002CE0(v10, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v12 = v0[2];
  v13 = type metadata accessor for PublicKey();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = v0[1];

  return v14();
}

uint64_t sub_1003C57E4()
{
  v1 = v0[4];

  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Missing LocationService!", v5, 2u);
  }

  v6 = v0[7];
  v7 = v0[2];

  v8 = type metadata accessor for PublicKey();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = v0[1];

  return v9();
}

uint64_t sub_1003C594C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_1003C5994, 0, 0);
}

uint64_t sub_1003C5994()
{
  v1 = *(v0 + 16);
  v2 = sub_10004B564(&qword_1005B3068, &qword_1004D7E28);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v1 + 24) = AsyncStreamProvider.init()();
  *(v1 + 32) = 0;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_1003C5A54;

  return daemon.getter();
}

uint64_t sub_1003C5A54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_100009638(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009638(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_1003C5C30;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C5C30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003C5F88, 0, 0);
  }

  else
  {
    v7 = v4[5];

    v4[8] = a1;
    v8 = swift_task_alloc();
    v4[9] = v8;
    *v8 = v6;
    v8[1] = sub_1003C5DBC;

    return sub_10001CC28();
  }
}

uint64_t sub_1003C5DBC(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1003C5EBC, 0, 0);
}

uint64_t sub_1003C5EBC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[2];

  v4 = *(v1 + 56);

  v5 = *(v4 + 24);

  v6 = *(v5 + 72);

  v7 = *(v6 + 24);

  *(v3 + 16) = v7;
  v8 = v0[1];
  v9 = v0[2];

  return v8(v9);
}

uint64_t sub_1003C5F88()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  v4 = *(v2 + 24);

  v5 = *(v2 + 32);

  swift_deallocPartialClassInstance();
  v6 = v0[1];
  v7 = v0[7];

  return v6();
}

uint64_t sub_1003C6014(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_10020D620(0, 0, v6, &unk_1004D7E18, v8);
}

uint64_t sub_1003C6120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(sub_10004B564(&qword_1005B0608, &qword_1004D1F38) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003C6218, 0, 0);
}

uint64_t sub_1003C6218()
{
  v1 = *(v0 + 96);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1003C62E4;
  v3 = *(v0 + 96);

  return sub_100291918(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1003C62E4()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1003C66CC;
  }

  else
  {
    v6 = sub_1003C6454;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003C6454()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_1003C673C;
    v4 = v0[9];

    return sub_1003C4E84(v4);
  }

  else
  {
    v6 = v0[9];
    v7 = type metadata accessor for PublicKey();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    if (qword_1005A84F0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0B90);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "SharingKeyStreamProvider yielding nil", v11, 2u);
    }

    v12 = v0[8];

    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    if (v13)
    {
      v14 = v0[9];
      v15 = *(v13 + 24);

      AsyncStreamProvider.yield(value:transaction:)();
    }

    v16 = v0[12];
    sub_100002CE0(v0[9], &qword_1005B0608, &qword_1004D1F38);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1003C66CC()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1003C673C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_1003C6854, 0, 0);
}

uint64_t sub_1003C6854()
{
  v1 = v0[9];
  v2 = type metadata accessor for PublicKey();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    if (qword_1005A84F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0B90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "SharingKeyStreamProvider yielding nil";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  else
  {
    if (qword_1005A84F0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0B90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "SharingKeyStreamProvider yielding publicKey";
      goto LABEL_10;
    }
  }

  v9 = v0[8];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = v0[9];
    v12 = *(Strong + 24);

    AsyncStreamProvider.yield(value:transaction:)();
  }

  v13 = v0[12];
  sub_100002CE0(v0[9], &qword_1005B0608, &qword_1004D1F38);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003C6AC4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1003C6B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003C6BB0()
{
  result = qword_1005A9F70;
  if (!qword_1005A9F70)
  {
    sub_10004B610(&qword_1005A9F68, &unk_1004C46C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9F70);
  }

  return result;
}

uint64_t sub_1003C6C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_1003C6120(a1, v4, v5, v6);
}

uint64_t sub_1003C6CC8()
{
  result = static Duration.seconds(_:)();
  qword_1005B3070 = result;
  *algn_1005B3078 = v1;
  return result;
}

uint64_t sub_1003C6CF0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0BC0);
  sub_10000A6F0(v0, qword_1005E0BC0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003C6D70()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0BD8);
  sub_10000A6F0(v0, qword_1005E0BD8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003C6E48(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  sub_10004F154(v7, a2);
  v8 = sub_10000A6F0(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A6F0(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_1003C6F30()
{
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0BF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "NIRangingService startup()", v4, 2u);
  }

  v5 = *(v0 + 696);

  v6 = objc_allocWithZone(sub_10004B564(&qword_1005B3248, &qword_1004D8158));

  v7 = sub_1003D9350();
  *(v0 + 704) = v7;

  v8 = *(v5 + 128);
  *(v5 + 128) = v7;
  v9 = v7;

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_1003C70D0(uint64_t a1, uint64_t a2)
{
  *(v3 + 712) = v2;
  if (v2)
  {
    v4 = sub_1003C7190;
  }

  else
  {
    v4 = sub_1003C7104;
  }

  return _swift_asyncLet_finish(v3 + 16, a2, v4, v3 + 656);
}

uint64_t sub_1003C7120()
{
  v1 = *(v0 + 696);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003C71AC()
{
  v1 = *(v0 + 696);

  v2 = *(v0 + 8);
  v3 = *(v0 + 712);

  return v2();
}

uint64_t sub_1003C721C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003C72AC();
}

uint64_t sub_1003C72AC()
{
  *(v1 + 56) = *v0;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1003C736C, v0, 0);
}

uint64_t sub_1003C736C()
{
  v20 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if ((My & 1) == 0)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0BF0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E9840, &v19);
    v14 = "%{public}s Feature.FindMy.redStripe FF disabled.";
    goto LABEL_12;
  }

  if (sub_1003F399C())
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = type metadata accessor for TaskPriority();
    v6 = *(*(v5 - 8) + 56);
    v6(v3, 1, 1, v5);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v4;
    sub_1001D7F30(0, 0, v3, &unk_1004D8138, v7);

    v6(v3, 1, 1, v5);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v4;
    sub_1001D7F30(0, 0, v3, &unk_1004D8148, v8);

    goto LABEL_14;
  }

  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005E0BF0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E9840, &v19);
    v14 = "%{public}s isFindingCapable == false.";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v10, v11, v14, v12, 0xCu);
    sub_100004984(v13);
  }

LABEL_13:

LABEL_14:
  v16 = v0[8];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003C775C()
{
  v1 = type metadata accessor for DarwinNotification();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_10004B564(&qword_1005AACD0, &unk_1004C4750) - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v0[6] = v5;
  v6 = *(v5 - 8);
  v0[7] = v6;
  v7 = *(v6 + 64) + 15;
  v0[8] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v0[9] = v8;
  v9 = *(v8 - 8);
  v0[10] = v9;
  v10 = *(v9 + 64) + 15;
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003C7920, 0, 0);
}

uint64_t sub_1003C7920()
{
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 96) = sub_10000A6F0(v1, qword_1005E0BF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering listener for Darwin notification: NILocalDeviceStartedInteractingWithTokenNotification", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1003C7A70;

  return daemon.getter();
}

uint64_t sub_1003C7A70(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v8 = *v1;
  *(v3 + 112) = a1;

  *(v3 + 120) = type metadata accessor for Daemon();
  sub_1003DA8C4(&qword_1005AB4E0, &type metadata accessor for Daemon);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C7BD4, v6, v5);
}

uint64_t sub_1003C7BD4()
{
  v1 = *(v0 + 112);
  *(v0 + 128) = Daemon.darwinNotificationHandler.getter();

  type metadata accessor for DarwinNotificationHandler();
  sub_1003DA8C4(&qword_1005AACE8, &type metadata accessor for DarwinNotificationHandler);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C7CAC, v3, v2);
}

uint64_t sub_1003C7CAC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1003C7D38, 0, 0);
}

uint64_t sub_1003C7D38()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1003C7E14;
  v7 = v0[11];
  v8 = v0[9];
  v9 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v8);
}

uint64_t sub_1003C7E14()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_1003C7F10, 0, 0);
}

uint64_t sub_1003C7F10()
{
  v24 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    v5 = v0[4];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[12];
    (*(v3 + 32))(v0[4], v1, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[3];
    v12 = v0[4];
    v14 = v0[2];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      sub_1003DA8C4(&qword_1005B3240, &type metadata accessor for DarwinNotification);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_10000D01C(v17, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Darwin NILocalDeviceStartedInteractingWithToken: %s", v15, 0xCu);
      sub_100004984(v16);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v21 = async function pointer to daemon.getter[1];
    v22 = swift_task_alloc();
    v0[18] = v22;
    *v22 = v0;
    v22[1] = sub_1003C81D8;

    return daemon.getter();
  }
}

uint64_t sub_1003C81D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v5 = *v1;
  v3[19] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[20] = v7;
  v8 = type metadata accessor for NITokenService();
  v9 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1003DA8C4(&qword_1005AD548, type metadata accessor for NITokenService);
  *v7 = v5;
  v7[1] = sub_1003C83B4;
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v9, v10);
}

uint64_t sub_1003C83B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003C8700, 0, 0);
  }

  else
  {
    v7 = v4[19];

    v8 = swift_task_alloc();
    v4[23] = v8;
    *v8 = v6;
    v8[1] = sub_1003C853C;

    return sub_100430CDC();
  }
}

uint64_t sub_1003C853C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1003C88B4;
  }

  else
  {
    v3 = sub_1003C8650;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003C8650()
{
  v1 = v0[21];

  v2 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1003C7E14;
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1003C8700()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[12];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "ERROR: %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_1003C7E14;
  v11 = v0[11];
  v12 = v0[9];
  v13 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v13, 0, 0, v12);
}

uint64_t sub_1003C88B4()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[12];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "ERROR: %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_1003C7E14;
  v11 = v0[11];
  v12 = v0[9];
  v13 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v13, 0, 0, v12);
}

uint64_t sub_1003C8A68()
{
  v1 = type metadata accessor for DarwinNotification();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_10004B564(&qword_1005AACD0, &unk_1004C4750) - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v0[6] = v5;
  v6 = *(v5 - 8);
  v0[7] = v6;
  v7 = *(v6 + 64) + 15;
  v0[8] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v0[9] = v8;
  v9 = *(v8 - 8);
  v0[10] = v9;
  v10 = *(v9 + 64) + 15;
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003C8C2C, 0, 0);
}

uint64_t sub_1003C8C2C()
{
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 96) = sub_10000A6F0(v1, qword_1005E0BF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering listener for Darwin notification: NILocalDeviceStoppedInteractingWithTokenNotification", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1003C8D7C;

  return daemon.getter();
}

uint64_t sub_1003C8D7C(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = a1;

  type metadata accessor for Daemon();
  sub_1003DA8C4(&qword_1005AB4E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C8ED4, v5, v4);
}

uint64_t sub_1003C8ED4()
{
  v1 = *(v0 + 112);
  *(v0 + 120) = Daemon.darwinNotificationHandler.getter();

  type metadata accessor for DarwinNotificationHandler();
  sub_1003DA8C4(&qword_1005AACE8, &type metadata accessor for DarwinNotificationHandler);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C8FAC, v3, v2);
}

uint64_t sub_1003C8FAC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1003C9038, 0, 0);
}

uint64_t sub_1003C9038()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1003C9114;
  v7 = v0[11];
  v8 = v0[9];
  v9 = v0[5];

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v8);
}

uint64_t sub_1003C9114()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_1003C9210, 0, 0);
}

uint64_t sub_1003C9210()
{
  v27 = v0;
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    v5 = v0[4];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[12];
    (*(v3 + 32))(v0[4], v1, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[3];
    v12 = v0[4];
    v14 = v0[2];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315138;
      sub_1003DA8C4(&qword_1005B3240, &type metadata accessor for DarwinNotification);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_10000D01C(v17, v19, &v26);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Darwin NILocalDeviceStoppedInteractingWithToken: %s", v15, 0xCu);
      sub_100004984(v16);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v21 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v22 = swift_task_alloc();
    v0[16] = v22;
    *v22 = v0;
    v22[1] = sub_1003C9114;
    v23 = v0[11];
    v24 = v0[9];
    v25 = v0[5];

    return AsyncStream.Iterator.next(isolation:)(v25, 0, 0, v24);
  }
}

uint64_t sub_1003C94F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Date();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005B0F30, &qword_1004D3308) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for DiscoveryToken(0);
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003C96AC, v1, 0);
}

uint64_t sub_1003C96AC()
{
  v36 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = v0[19];
    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[7];
    v7 = type metadata accessor for Logger();
    v0[20] = sub_10000A6F0(v7, qword_1005E0BF0);
    v8 = *(v5 + 16);
    v0[21] = v8;
    v0[22] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v3, v6, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[19];
    v13 = v0[16];
    v14 = v0[17];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v15 = 136446723;
      *(v15 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E9820, &v35);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = *(v14 + 8);
      v19(v12, v13);
      v20 = sub_10000D01C(v16, v18, &v35);

      *(v15 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s %{private,mask.hash}s", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v19 = *(v14 + 8);
      v19(v12, v13);
    }

    v0[23] = v19;
    v33 = async function pointer to daemon.getter[1];
    v34 = swift_task_alloc();
    v0[24] = v34;
    *v34 = v0;
    v34[1] = sub_1003C9B90;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005E0BF0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E9820, &v35);
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Feature.FindMy.redStripe FF disabled.", v24, 0xCu);
      sub_100004984(v25);
    }

    v27 = v0[18];
    v26 = v0[19];
    v28 = v0[15];
    v30 = v0[11];
    v29 = v0[12];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1003C9B90(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v12 = *v1;
  *(v3 + 200) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 208) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for NITokenService();
  v9 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1003DA8C4(&qword_1005AD548, type metadata accessor for NITokenService);
  *v6 = v12;
  v6[1] = sub_1003C9D6C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003C9D6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v10 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = v3[8];
    v6 = sub_1003CA628;
  }

  else
  {
    v7 = v3[25];
    v8 = v3[8];

    v6 = sub_1003C9E94;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003C9E94()
{
  v1 = v0[11];
  static ReferenceClock.now.getter();
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_1003C9F38;
  v3 = v0[27];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[7];

  return sub_100403E38(v4, v6, v5);
}

uint64_t sub_1003C9F38()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[8];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_1003CA6CC;
  }

  else
  {
    v9 = sub_1003CA0B4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003CA0B4()
{
  v34 = v0;
  v1 = v0[12];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    v3 = v0[21];
    v2 = v0[22];
    v4 = v0[20];
    v5 = v0[18];
    v6 = v0[16];
    v7 = v0[7];
    sub_100002CE0(v1, &qword_1005B0F30, &qword_1004D3308);
    v3(v5, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[23];
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[16];
    if (v10)
    {
      v15 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v15 = 136446723;
      *(v15 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E9820, v33);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v11(v12, v14);
      v19 = sub_10000D01C(v16, v18, v33);

      *(v15 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s cannot generate token for %{private,mask.hash}s!", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v11(v12, v14);
    }

    v25 = v0[27];
    sub_1003DA6A0();
    swift_allocError();
    *v26 = 18;
    swift_willThrow();

    v28 = v0[18];
    v27 = v0[19];
    v29 = v0[15];
    v31 = v0[11];
    v30 = v0[12];

    v32 = v0[1];

    return v32();
  }

  else
  {
    v20 = v0[15];
    sub_1003DA6F4(v1, v20, type metadata accessor for DiscoveryToken);
    v21 = *v20;
    v22 = swift_task_alloc();
    v0[31] = v22;
    *v22 = v0;
    v22[1] = sub_1003CA440;
    v23 = v0[8];

    return sub_1003CB690(v21);
  }
}

uint64_t sub_1003CA440()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1003CA770;
  }

  else
  {
    v6 = sub_1003CA56C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003CA56C()
{
  v1 = v0[27];
  v2 = v0[15];

  sub_1003DA1C4(v2, type metadata accessor for DiscoveryToken);
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003CA628()
{
  v1 = v0[25];

  v2 = v0[28];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003CA6CC()
{
  v1 = v0[27];

  v2 = v0[30];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003CA770()
{
  v1 = v0[27];
  v2 = v0[15];

  sub_1003DA1C4(v2, type metadata accessor for DiscoveryToken);
  v3 = v0[32];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003CA834()
{
  v1[7] = v0;
  v2 = type metadata accessor for Date();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003CA8F4, v0, 0);
}

uint64_t sub_1003CA8F4()
{
  v19 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[11] = sub_10000A6F0(v3, qword_1005E0BF0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E6CD0, &v18);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_1003CAC88;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0BF0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E6CD0, &v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s Feature.FindMy.redStripe FF disabled.", v13, 0xCu);
      sub_100004984(v14);
    }

    v15 = v0[10];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1003CAC88(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for NITokenService();
  v9 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1003DA8C4(&qword_1005AD548, type metadata accessor for NITokenService);
  *v6 = v12;
  v6[1] = sub_1003CAE64;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003CAE64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v10 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_1003CB544;
  }

  else
  {
    v7 = v3[13];
    v8 = v3[7];

    v6 = sub_1003CAF8C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003CAF8C()
{
  v1 = v0[10];
  static ReferenceClock.now.getter();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1003CB02C;
  v3 = v0[15];
  v4 = v0[10];

  return sub_100403F98();
}

uint64_t sub_1003CB02C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  v7 = v3[10];
  v8 = v3[9];
  v9 = v3[8];
  v10 = v3[7];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_1003CB5B0;
  }

  else
  {
    v11 = sub_1003CB1B0;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_1003CB1B0()
{
  v15 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_1003CB3A4;
    v3 = v0[7];

    return sub_1003CB690(v1);
  }

  else
  {
    v5 = v0[11];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E6CD0, &v14);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s cannot generate owner token!", v8, 0xCu);
      sub_100004984(v9);
    }

    v10 = v0[15];
    sub_1003DA6A0();
    swift_allocError();
    *v11 = 18;
    swift_willThrow();

    v12 = v0[10];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1003CB3A4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1003CB61C;
  }

  else
  {
    v6 = sub_1003CB4D0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003CB4D0()
{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003CB544()
{
  v1 = v0[13];

  v2 = v0[16];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003CB5B0()
{
  v1 = v0[15];

  v2 = v0[19];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003CB61C()
{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[21];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003CB690(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005B3220, &qword_1004D80F8);
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005B3228, &qword_1004D8100);
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v2[11] = *(v8 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005B31F8, &qword_1004D8018) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003CB888, v1, 0);
}

uint64_t sub_1003CB888()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  *(v0 + 136) = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  *(v0 + 144) = v8;
  *(v0 + 152) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1, v6);
  *(v0 + 160) = sub_1000545A4(0, &qword_1005B31F0, NINearbyObject_ptr);
  *(swift_task_alloc() + 16) = v1;
  *(v0 + 224) = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  v9 = *(v4 + 104);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  *(v0 + 184) = v11;
  *v11 = v0;
  v11[1] = sub_1003CBA34;

  return daemon.getter();
}

uint64_t sub_1003CBA34(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v12 = *v1;
  *(v3 + 192) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 200) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FriendshipService();
  v9 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1003DA8C4(&qword_1005AA6E0, type metadata accessor for FriendshipService);
  *v6 = v12;
  v6[1] = sub_1003CBC10;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003CBC10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *(*v2 + 192);
  v7 = *v2;
  v4[26] = v1;

  v8 = v4[3];
  if (v1)
  {
    v9 = sub_1003CC180;
  }

  else
  {
    v4[27] = a1;
    v9 = sub_1003CBD68;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1003CBD68()
{
  v32 = *(v0 + 216);
  v23 = *(v0 + 224);
  v24 = *(v0 + 168);
  v25 = *(v0 + 176);
  v26 = *(v0 + 160);
  v17 = *(v0 + 144);
  v18 = *(v0 + 152);
  v16 = *(v0 + 136);
  v31 = *(v0 + 128);
  v1 = *(v0 + 112);
  v33 = *(v0 + 120);
  v28 = v1;
  v2 = *(v0 + 104);
  v27 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v34 = *(v0 + 64);
  v6 = *(v0 + 40);
  v20 = *(v0 + 48);
  v14 = v6;
  v35 = *(v0 + 32);
  v29 = *(v0 + 16);
  v30 = *(v0 + 24);
  v22 = type metadata accessor for TaskPriority();
  v21 = *(*(v22 - 8) + 56);
  v21(v6, 1, 1, v22);
  v19 = *(v3 + 16);
  v19(v2, v1, v5);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = (((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v15 = *(v3 + 32);
  v15(v9 + v7, v2, v5);
  *(v9 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  *(v9 + v8) = v35;

  sub_1001D7F30(0, 0, v6, &unk_1004D8110, v9);

  v17(v33, 1, 1, v16);
  *(swift_task_alloc() + 16) = v33;
  v24(v34, v23, v20);
  AsyncStream.init(_:bufferingPolicy:_:)();

  v21(v6, 1, 1, v22);
  v19(v27, v2, v5);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v15(v10 + v7, v27, v5);
  *(v10 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  *(v10 + v8) = v35;

  sub_1001D7F30(0, 0, v14, &unk_1004D8120, v10);

  sub_1003DA9B0(v29, v31, v33);

  v11 = *(v3 + 8);
  v11(v2, v5);
  v11(v28, v5);
  sub_100002CE0(v33, &qword_1005B31F8, &qword_1004D8018);
  sub_100002CE0(v31, &qword_1005B31F8, &qword_1004D8018);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1003CC180()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[5];
  (*(v0[10] + 8))(v0[14], v0[9]);
  sub_100002CE0(v2, &qword_1005B31F8, &qword_1004D8018);

  v7 = v0[1];
  v8 = v0[26];

  return v7();
}

uint64_t sub_1003CC270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_10004B564(&qword_1005B3230, &qword_1004D8128);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003CC33C, 0, 0);
}

uint64_t sub_1003CC33C()
{
  v1 = v0[8];
  v2 = v0[4];
  sub_10004B564(&qword_1005B3228, &qword_1004D8100);
  AsyncStream.makeAsyncIterator()();
  v0[9] = 0;
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1003CC40C;
  v5 = v0[8];
  v6 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v6);
}

uint64_t sub_1003CC40C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_1003CC508, 0, 0);
}

uint64_t sub_1003CC508()
{
  v24 = v0;
  v1 = v0[2];
  v0[11] = v1;
  if (!v1)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
LABEL_16:
    v21 = v0[8];

    v22 = v0[1];

    return v22();
  }

  v2 = v0[9];
  static Task<>.checkCancellation()();
  v0[12] = v2;
  if (v2)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0BF0);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136446210;
      v0[3] = v2;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v8 = String.init<A>(describing:)();
      v10 = sub_10000D01C(v8, v9, &v23);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Discover stream error: %{public}s", v6, 0xCu);
      sub_100004984(v7);
    }

    else
    {
    }

    goto LABEL_16;
  }

  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0BF0);
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2113;
    *(v15 + 14) = v12;
    *v16 = v1;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "discoverStream: %{private,mask.hash}@", v15, 0x16u);
    sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);
  }

  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_1003CC8C4;
  v19 = v0[5];

  return sub_1002B9A14(v12);
}

uint64_t sub_1003CC8C4()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_1003CC9C0, 0, 0);
}

uint64_t sub_1003CC9C0()
{
  *(v0 + 72) = *(v0 + 96);
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1003CC40C;
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v4);
}

uint64_t sub_1003CCA78(uint64_t a1, uint64_t a2)
{
  sub_100002CE0(a2, &qword_1005B31F8, &qword_1004D8018);
  v4 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_1003CCB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_10004B564(&qword_1005B3230, &qword_1004D8128);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003CCC20, 0, 0);
}

uint64_t sub_1003CCC20()
{
  v1 = v0[8];
  v2 = v0[4];
  sub_10004B564(&qword_1005B3228, &qword_1004D8100);
  AsyncStream.makeAsyncIterator()();
  v0[9] = 0;
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1003CCCF0;
  v5 = v0[8];
  v6 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v6);
}

uint64_t sub_1003CCCF0()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_1003CCDEC, 0, 0);
}

uint64_t sub_1003CCDEC()
{
  v24 = v0;
  v1 = v0[2];
  v0[11] = v1;
  if (!v1)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
LABEL_16:
    v21 = v0[8];

    v22 = v0[1];

    return v22();
  }

  v2 = v0[9];
  static Task<>.checkCancellation()();
  v0[12] = v2;
  if (v2)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0BF0);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136446210;
      v0[3] = v2;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v8 = String.init<A>(describing:)();
      v10 = sub_10000D01C(v8, v9, &v23);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Update stream error: %{public}s", v6, 0xCu);
      sub_100004984(v7);
    }

    else
    {
    }

    goto LABEL_16;
  }

  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0BF0);
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2113;
    *(v15 + 14) = v12;
    *v16 = v1;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "updateStream: %{private,mask.hash}@", v15, 0x16u);
    sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);
  }

  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_1003CD1A8;
  v19 = v0[5];

  return sub_1002BA904(v12);
}

uint64_t sub_1003CD1A8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_1003CD2A4, 0, 0);
}

uint64_t sub_1003CD2A4()
{
  *(v0 + 72) = *(v0 + 96);
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1003CCCF0;
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v4);
}

uint64_t sub_1003CD37C()
{
  v17 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0BF0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0x676E6152706F7473, 0xED00002928676E69, &v16);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = v0[7];
    sub_1003DAB8C();
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0BF0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(0x676E6152706F7473, 0xED00002928676E69, &v16);
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s Feature.FindMy.redStripe FF disabled.", v12, 0xCu);
      sub_100004984(v13);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003CD6B0()
{
  v1 = *(v0 + 120);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated16NIRangingService_discoverContinuation, &qword_1005B31F8, &qword_1004D8018);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated16NIRangingService_updateContinuation, &qword_1005B31F8, &qword_1004D8018);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for NIRangingService()
{
  result = qword_1005B30A8;
  if (!qword_1005B30A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003CD794()
{
  sub_1003CD844();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1003CD844()
{
  if (!qword_1005B30B8)
  {
    sub_10004B610(&qword_1005AD558, &qword_1004D7EE0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B30B8);
    }
  }
}

uint64_t sub_1003CD8A8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for NIRangingService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1003CD954(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for NIRangingService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1003CDA00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003C6F10();
}

uint64_t sub_1003CDA8C()
{
  v1 = *v0;
  type metadata accessor for NIRangingService();
  sub_1003DA8C4(&qword_1005AD560, type metadata accessor for NIRangingService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1003CDAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_1003CDB1C, v3, 0);
}

uint64_t sub_1003CDB1C()
{
  v26 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = v0[7];
    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0BF0);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[7];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v9 = 136446723;
      *(v9 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E96C0, &v25);
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2113;
      *(v9 + 24) = v8;
      *v10 = v8;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s token: %{private,mask.hash}@", v9, 0x20u);
      sub_100002CE0(v10, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v11);
    }

    v13 = *(v0[10] + 128);
    v0[11] = v13;
    if (v13)
    {
      v13;
      v14 = swift_task_alloc();
      v0[12] = v14;
      *v14 = v0;
      v14[1] = sub_1003CDF5C;
      v15 = v0[8];
      v16 = v0[9];
      v17 = v0[7];

      return sub_1003CE068(v17, v15, v16);
    }
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0BF0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E96C0, &v25);
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s Feature.FindMy.redStripe FF disabled.", v22, 0xCu);
      sub_100004984(v23);
    }
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1003CDF5C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1003CE068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Handle();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003CE140, 0, 0);
}

uint64_t sub_1003CE140()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v17 = v2;
  v18 = v0[4];
  v19 = v0[2];
  v20 = *(v0[5] + qword_1005B3258);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v3 + 16);
  v8(v1, v6, v5);
  v8(v2, v18, v5);
  v9 = *(v3 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = (v4 + v9 + v10) & ~v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v19;
  v13 = *(v3 + 32);
  v13(v12 + v10, v1, v5);
  v13(v12 + v11, v17, v5);

  v14 = v19;
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003CE300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Handle();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003CE3C4, v3, 0);
}

uint64_t sub_1003CE3C4()
{
  v33 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v6 = v0[7];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0BF0);
    (*(v4 + 16))(v3, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[11];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v14 = 136446723;
      *(v14 + 4) = sub_10000D01C(0xD000000000000032, 0x80000001004E97E0, &v32);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      v15 = Handle.identifier.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_10000D01C(v15, v17, &v32);

      *(v14 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s with handle: %{private,mask.hash}s", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v24 = *(v0[10] + 128);
    if (v24)
    {
      v25 = v0[8];
      v26 = v0[9];
      v27 = v0[7];
      v28 = v24;
      sub_1003CE7EC(v27);
    }
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0BF0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_10000D01C(0xD000000000000032, 0x80000001004E97E0, &v32);
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s Feature.FindMy.redStripe FF disabled.", v22, 0xCu);
      sub_100004984(v23);
    }
  }

  v29 = v0[13];

  v30 = v0[1];

  return v30();
}

void sub_1003CE7EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = objc_allocWithZone(NIDiscoveryToken);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithBytes:isa];

  v10 = *(v2 + qword_1005B3258);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v9;
  (*(v5 + 32))(v13 + v12, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  v14 = v9;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003CE9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v6[15] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_1003CEA84, v5, 0);
}

uint64_t sub_1003CEA84()
{
  v53 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003DA8C4(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    v3 = v0[11];
    v4 = v0[12];
    v5 = objc_allocWithZone(NIDiscoveryToken);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [v5 initWithBytes:isa];
    v0[18] = v7;

    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v8 = v0[17];
    v10 = v0[13];
    v9 = v0[14];
    v12 = v0[9];
    v11 = v0[10];
    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005E0BF0);
    sub_100005F04(v10, v8, &qword_1005B3360, &unk_1004C6AA0);

    sub_100005F6C(v12, v11);
    v14 = v7;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    sub_1000049D0(v12, v11);

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[17];
    if (v17)
    {
      v50 = v0[16];
      v51 = v0[15];
      v19 = v0[14];
      v47 = v0[9];
      v48 = v0[10];
      v20 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v20 = 136448003;
      *(v20 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004E9750, &v52);
      *(v20 + 12) = 2080;
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1004D8070;
      *(v21 + 24) = v19;
      v0[7] = &unk_1004D8080;
      v0[8] = v21;

      sub_10004B564(&qword_1005B3218, &qword_1004D8088);
      v22 = String.init<A>(describing:)();
      v24 = sub_10000D01C(v22, v23, &v52);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2160;
      *(v20 + 24) = 1752392040;
      *(v20 + 32) = 2081;
      v25 = Data.description.getter();
      v27 = sub_10000D01C(v25, v26, &v52);

      *(v20 + 34) = v27;
      *(v20 + 42) = 2160;
      *(v20 + 44) = 1752392040;
      *(v20 + 52) = 2113;
      *(v20 + 54) = v14;
      *v49 = v14;
      *(v20 + 62) = 2160;
      *(v20 + 64) = 1752392040;
      *(v20 + 72) = 2081;
      sub_100005F04(v18, v50, &qword_1005B3360, &unk_1004C6AA0);
      v28 = v14;
      v29 = String.init<A>(describing:)();
      v31 = v30;
      sub_100002CE0(v18, &qword_1005B3360, &unk_1004C6AA0);
      v32 = sub_10000D01C(v29, v31, &v52);

      *(v20 + 74) = v32;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s \n\ncached ConfigData: %s\nreceived configData:%{private,mask.hash}s\npeerToken: %{private,mask.hash}@\nreplyHandle: %{private,mask.hash}s", v20, 0x52u);
      sub_100002CE0(v49, &qword_1005A9670, &unk_1004C2480);

      swift_arrayDestroy();
    }

    else
    {

      sub_100002CE0(v18, &qword_1005B3360, &unk_1004C6AA0);
    }

    v38 = *(v0[14] + 128);
    v0[19] = v38;
    if (v38)
    {
      v38;
      v39 = swift_task_alloc();
      v0[20] = v39;
      *v39 = v0;
      v39[1] = sub_1003CF118;
      v40 = v0[13];
      v42 = v0[9];
      v41 = v0[10];

      return sub_1003CF494(v42, v41, v14, v40);
    }
  }

  else
  {
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000A6F0(v33, qword_1005E0BF0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004E9750, &v52);
      _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s Feature.FindMy.redStripe FF disabled.", v36, 0xCu);
      sub_100004984(v37);
    }
  }

  v45 = v0[16];
  v44 = v0[17];

  v46 = v0[1];

  return v46();
}