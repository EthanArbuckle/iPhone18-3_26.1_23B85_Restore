uint64_t sub_100F8DA1C(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = a1;
  a7(v15, a6, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100F8DB60(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 64) = v9;
  *(v5 + 72) = 0xD000000000000021;
  *(v5 + 80) = 0x80000001013750F0;
  os_log(_:dso:log:_:_:)();

  v10 = *sub_1000035D0((v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  return sub_1006CC0A0(a1, a2);
}

uint64_t sub_100F8DF5C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(a1, 0);
  }

  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  swift_willThrowTypedImpl();
  swift_errorRetain();
  a3(0, a1);
  sub_1001DB7B8(a1, 1);
  return sub_1001DB7B8(a1, 1);
}

void sub_100F8E134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_100F8E3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_100F8E444;

  return sub_100715BF4();
}

uint64_t sub_100F8E444(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_100F8E6C4;
  }

  else
  {
    v5 = sub_100F8E558;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F8E558()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v2;
  sub_1000BC4D4(&qword_1016C1A58, &unk_1013F54B0);
  sub_100F98FA8();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[6];
  if (v1)
  {

    v9 = v0[3];
    v10 = v0[4];
    swift_errorRetain();
    v9(0, 0xF000000000000000, v1);
  }

  else
  {
    v12 = v0[3];
    v11 = v0[4];
    v13 = v6;
    v14 = v7;

    sub_100017D5C(v13, v14);
    v12(v13, v14, 0);
    sub_100016590(v13, v14);
    sub_100016590(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100F8E6C4()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100F8E8A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000023;
  *(v6 + 80) = 0x8000000101353A20;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *v11;

  sub_1003CDF00(sub_100F993D4, v12);
}

uint64_t sub_100F8EA94(void *a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD000000000000026;
  *(v7 + 80) = 0x8000000101353970;
  os_log(_:dso:log:_:_:)();

  v12 = sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = *v12;

  sub_1003CE3B0(a1, sub_1007B78F8, v13);
}

uint64_t sub_100F8EC90(void *a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD000000000000022;
  *(v7 + 80) = 0x8000000101353300;
  os_log(_:dso:log:_:_:)();

  v12 = sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = *v12;

  sub_1003CF218(a1, sub_100F98AC4, v13);
}

uint64_t sub_100F8EE8C(void *a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  *(v7 + 72) = 0xD000000000000024;
  *(v7 + 80) = 0x8000000101352920;
  os_log(_:dso:log:_:_:)();

  v12 = sub_1000035D0((v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = *v12;

  sub_1003D2B68(a1, sub_100F993D4, v13);
}

uint64_t sub_100F8F088(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_100F8F36C(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_100F8F40C(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_100F8F6C4(char *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = *sub_1000035D0(&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&a1[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
  v12 = a1;
  a6(a5, v10);
}

id sub_100F8F79C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BeaconManagerTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100F8F840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100F8F864, 0, 0);
}

uint64_t sub_100F8F864()
{
  v1 = (v0[3] + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[6];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100F8F9A0;
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t sub_100F8F9A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_100F8FB50;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_100F8FAC8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F8FAC8()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100F8FB50()
{
  v17 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B810);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "bluetoothConnectionKeys error: %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = v0[8];
  v13 = v0[5];
  v12 = v0[6];
  swift_errorRetain();
  v13(0, v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100F8FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = v17;
  v7[6] = v18;
  v7[3] = a3;
  v7[4] = a7;
  v8 = type metadata accessor for UUID();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v11 = type metadata accessor for KeySyncMetadata();
  v7[11] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  v7[13] = v14;
  *v14 = v7;
  v14[1] = sub_100F8FF8C;

  return daemon.getter();
}

uint64_t sub_100F8FF8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100F989D0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100F989D0(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100F90168;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100F90168(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v8 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = sub_100F90490;
  }

  else
  {
    v6 = v3[14];

    v5 = sub_100F90284;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F90284()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[4];
  (*(v0[8] + 16))(v2, v0[3], v0[7]);
  v4 = (v2 + v1[6]);
  v4[3] = &type metadata for PrimaryIndex;
  v4[4] = sub_10002A2B8();
  *v4 = v3;
  static Date.trustedNow.getter(v2 + v1[7]);
  *(v2 + v1[5]) = 4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_100F9037C;
  v6 = v0[16];
  v7 = v0[12];

  return sub_1010CDAC4(v7);
}

uint64_t sub_100F9037C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100F90A94;
  }

  else
  {
    v3 = sub_100F909E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F90490()
{
  v50 = v0;
  v1 = *(v0 + 112);

  v2 = *(v0 + 136);
  *(v0 + 16) = v2;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 160) == 1)
  {

    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v0 + 24);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177B810);
    (*(v5 + 16))(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v49 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v49);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Ignoring out of sync key during successfulConnection, beacon: %{private,mask.hash}s.", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    v40 = *(v0 + 48);
    (*(v0 + 40))(0);
    v41 = *(v0 + 16);
  }

  else
  {
    v20 = *(v0 + 16);

    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 56);
    v24 = *(v0 + 24);
    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177B810);
    (*(v22 + 16))(v21, v24, v23);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    v31 = *(v0 + 56);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v32 = 138543875;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v33;
      *v47 = v33;
      *(v32 + 12) = 2160;
      *(v32 + 14) = 1752392040;
      *(v32 + 22) = 2081;
      sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v30 + 8))(v29, v31);
      v37 = sub_1000136BC(v34, v36, &v49);

      *(v32 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error from successfulConnection: %{public}@, beacon: %{private,mask.hash}s.", v32, 0x20u);
      sub_10000B3A8(v47, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v48);
    }

    else
    {

      (*(v30 + 8))(v29, v31);
    }

    v39 = *(v0 + 40);
    v38 = *(v0 + 48);
    swift_errorRetain();
    v39(v2);
  }

  v42 = *(v0 + 96);
  v43 = *(v0 + 72);
  v44 = *(v0 + 80);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100F909E0()
{
  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[5];
  v3 = v0[6];

  sub_100F99274(v2, type metadata accessor for KeySyncMetadata);
  v4(0);
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F90A94()
{
  v51 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  sub_100F99274(v2, type metadata accessor for KeySyncMetadata);
  v3 = *(v0 + 152);
  *(v0 + 16) = v3;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 160) == 1)
  {

    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v0 + 24);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177B810);
    (*(v6 + 16))(v4, v7, v5);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v50 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v14 + 8))(v12, v13);
      v20 = sub_1000136BC(v17, v19, &v50);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Ignoring out of sync key during successfulConnection, beacon: %{private,mask.hash}s.", v15, 0x16u);
      sub_100007BAC(v16);
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }

    v41 = *(v0 + 48);
    (*(v0 + 40))(0);
    v42 = *(v0 + 16);
  }

  else
  {
    v21 = *(v0 + 16);

    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 64);
    v22 = *(v0 + 72);
    v24 = *(v0 + 56);
    v25 = *(v0 + 24);
    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177B810);
    (*(v23 + 16))(v22, v25, v24);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    v29 = os_log_type_enabled(v27, v28);
    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = *(v0 + 56);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v33 = 138543875;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v34;
      *v48 = v34;
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2081;
      sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v31 + 8))(v30, v32);
      v38 = sub_1000136BC(v35, v37, &v50);

      *(v33 + 24) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error from successfulConnection: %{public}@, beacon: %{private,mask.hash}s.", v33, 0x20u);
      sub_10000B3A8(v48, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v49);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
    }

    v40 = *(v0 + 40);
    v39 = *(v0 + 48);
    swift_errorRetain();
    v40(v3);
  }

  v43 = *(v0 + 96);
  v44 = *(v0 + 72);
  v45 = *(v0 + 80);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_100F913BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_100F913E4, 0, 0);
}

uint64_t sub_100F913E4()
{
  v1 = *(v0 + 24);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation);
  v3 = v2[3];
  v4 = v2[6];
  sub_1000035D0(v2, v3);
  v5 = sub_100F97734(v1);
  *(v0 + 48) = v5;
  v6 = *(v4 + 16);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_100F9153C;
  v9 = *(v0 + 64);

  return v11(v5, v9, v3, v4);
}

uint64_t sub_100F9153C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100A7327C, 0, 0);
}

uint64_t sub_100F9178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100F918C4, 0, 0);
}

uint64_t sub_100F918C4()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[3];
  v6 = (v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation);
  v7 = v6[3];
  v8 = v6[6];
  sub_1000035D0(v6, v7);
  v9 = *(v4 + 16);
  v0[13] = v9;
  v0[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v5, v3);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v10 = *(v8 + 24);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_100F91A64;
  v13 = v0[12];

  return v15(v13, v7, v8);
}

uint64_t sub_100F91A64()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100F91E2C;
  }

  else
  {
    v6 = sub_100F91BD4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F91BD4()
{
  v26 = v0;
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C0A8);
  v2(v3, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1000136BC(v15, v17, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Successfully paired pencil: %{public}s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = *(v0 + 40);
  (*(v0 + 32))(0);
  v20 = *(v0 + 96);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100F91E2C()
{
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C0A8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error pairing pencil: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[16];
  v11 = v0[4];
  v10 = v0[5];

  swift_errorRetain();
  v11(v9);

  v12 = v0[12];
  v13 = v0[8];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100F92220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100F92358, 0, 0);
}

uint64_t sub_100F92358()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[3];
  v6 = (v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation);
  v7 = v6[3];
  v8 = v6[6];
  sub_1000035D0(v6, v7);
  v9 = *(v4 + 16);
  v0[13] = v9;
  v0[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v5, v3);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v10 = *(v8 + 32);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_100F924F8;
  v13 = v0[12];

  return v15(v13, v7, v8);
}

uint64_t sub_100F924F8()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100F928C0;
  }

  else
  {
    v6 = sub_100F92668;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F92668()
{
  v26 = v0;
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C0A8);
  v2(v3, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1000136BC(v15, v17, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Successfully unpaired pencil: %{public}s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = *(v0 + 40);
  (*(v0 + 32))(0);
  v20 = *(v0 + 96);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100F928C0()
{
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C0A8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error unpairing pencil: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[16];
  v11 = v0[4];
  v10 = v0[5];

  swift_errorRetain();
  v11(v9);

  v12 = v0[12];
  v13 = v0[8];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

void sub_100F92CB4(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_101694B78 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B7E0);
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v11 = 136446466;
    swift_getObjectType();
    v12 = _typeName(_:qualified:)();
    v14 = sub_1000136BC(v12, v13, &v16);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1000136BC(0xD000000000000038, 0x8000000101374FA0, &v16);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *sub_1000035D0(&v8[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation], *&v8[OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24]);
  sub_100A40740(a1 & 1, a2, a3);
}

uint64_t sub_100F92EC0(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  a7(a3, a6, v12);
}

uint64_t sub_100F92F5C(uint64_t (*a1)(void))
{
  if (qword_101694B78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7E0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136446466;
    swift_getObjectType();
    v8 = _typeName(_:qualified:)();
    v10 = sub_1000136BC(v8, v9, &v12);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000136BC(0xD000000000000019, 0x8000000101374F80, &v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return a1(0);
}

uint64_t sub_100F93144(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_100F931D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v8 = type metadata accessor for UUID();
  v7[5] = v8;
  v9 = *(v8 - 8);
  v7[6] = v9;
  v10 = *(v9 + 64) + 15;
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100F932A8, 0, 0);
}

uint64_t sub_100F932A8()
{
  v23 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_1000076D4(v5, qword_10177B7F8);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101374F50, &v22);
    *(v13 + 12) = 2082;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s beacon:%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_100F9357C;
  v20 = v0[2];

  return sub_100718F74(v20);
}

uint64_t sub_100F9357C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_100F936B0;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v9 = sub_100F993C0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100F936B0()
{
  v30 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 112);
    v6 = *(v0 + 56);
    v26 = *(v0 + 48);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_1000136BC(0xD000000000000025, 0x8000000101374F50, &v29);
    *(v8 + 12) = 2082;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v27(v6, v7);
    v13 = sub_1000136BC(v10, v12, &v29);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s beacon:%{public}s %{public}@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 96);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 40);

    v15(v16, v18);
  }

  v19 = *(v0 + 112);
  v21 = *(v0 + 24);
  v20 = *(v0 + 32);
  swift_errorRetain();
  v21(0, 0xF000000000000000, v19);

  v23 = *(v0 + 56);
  v22 = *(v0 + 64);

  v24 = *(v0 + 8);

  return v24();
}

void sub_100F939D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t sub_100F93A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v8 = type metadata accessor for UUID();
  v7[5] = v8;
  v9 = *(v8 - 8);
  v7[6] = v9;
  v10 = *(v9 + 64) + 15;
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100F93B3C, 0, 0);
}

uint64_t sub_100F93B3C()
{
  v23 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_1000076D4(v5, qword_10177B7F8);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000136BC(0xD000000000000024, 0x8000000101374F20, &v22);
    *(v13 + 12) = 2082;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s beacon:%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_100F93E10;
  v20 = v0[2];

  return sub_10071B5A8(v20);
}

uint64_t sub_100F93E10(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_100F93FF4;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v9 = sub_100F93F44;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100F93F44()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[3];
  v3 = v0[4];
  sub_100017D5C(v1, v2);
  v4(v1, v2, 0);
  sub_100016590(v1, v2);
  sub_100016590(v1, v2);
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100F93FF4()
{
  v30 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 112);
    v6 = *(v0 + 56);
    v26 = *(v0 + 48);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_1000136BC(0xD000000000000024, 0x8000000101374F20, &v29);
    *(v8 + 12) = 2082;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v27(v6, v7);
    v13 = sub_1000136BC(v10, v12, &v29);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s beacon:%{public}s %{public}@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 96);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 40);

    v15(v16, v18);
  }

  v19 = *(v0 + 112);
  v21 = *(v0 + 24);
  v20 = *(v0 + 32);
  swift_errorRetain();
  v21(0, 0xF000000000000000, v19);

  v23 = *(v0 + 56);
  v22 = *(v0 + 64);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100F94318(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a7;
  v34 = a8;
  v31 = a6;
  v32 = a1;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  v20 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v14 + 16))(v17, v19, v13);
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v14 + 32))(v25 + v23, v17, v13);
  v27 = v32;
  v26 = v33;
  *(v25 + v24) = v32;
  v28 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v28 = v26;
  v28[1] = v21;
  v29 = v27;

  sub_10025EDD4(0, 0, v12, v34, v25);

  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_100F945A8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  if (a3)
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC90);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_1007BF380(a1, a2, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error reading raw posh metadata: %{public}@", v10, 0xCu);
      sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
    }

    v13 = 0;
    v14 = 0xF000000000000000;
    v15 = a1;
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177AC90);
    sub_100017D5C(a1, a2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    sub_1007BF380(a1, a2, 0);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = Data.description.getter();
      v23 = sub_1000136BC(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Read raw posh metadata: %s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    v13 = a1;
    v14 = a2;
    v15 = 0;
  }

  return a4(v13, v14, v15);
}

id sub_100F949B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 32))(v16, a1, a3);
  v17 = (*(a4 + 16))(a3, a4);
  v18 = (*(a4 + 24))(a3, a4);
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = (*(a4 + 32))(a3, a4);
  (*(a4 + 8))(a3, a4);
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v12, v7);
  v22 = [v19 initWithCoordinate:isa altitude:v17 horizontalAccuracy:v18 verticalAccuracy:-1.0 timestamp:{v20, -1.0}];

  (*(v13 + 8))(v16, a3);
  return v22;
}

void sub_100F94C20(uint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000017;
  *(v6 + 80) = 0x800000010135D780;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100700AF8(a1, *v11, aBlock);
  _Block_release(aBlock);
}

void sub_100F94DB0(uint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000026;
  *(v6 + 80) = 0x8000000101375630;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_1007067F8(a1, *v11, aBlock);
  _Block_release(aBlock);
}

void sub_100F94F40(uint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD00000000000002BLL;
  *(v6 + 80) = 0x8000000101375600;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100707E44(a1, *v11, aBlock);
  _Block_release(aBlock);
}

void sub_100F950D0(char *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD00000000000002BLL;
  *(v6 + 80) = 0x80000001013755D0;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100708A5C(a1, *v11, aBlock);
  _Block_release(aBlock);
}

void sub_100F95260(uint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000031;
  *(v6 + 80) = 0x8000000101375590;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100709DE0(a1, *v11, aBlock);
  _Block_release(aBlock);
}

void sub_100F953F0(unint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD00000000000002BLL;
  *(v8 + 80) = 0x8000000101375560;
  os_log(_:dso:log:_:_:)();

  v13 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070ABB8(a1, a2, 0, *v13, aBlock);
  _Block_release(aBlock);
}

void sub_100F9558C(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10138BBE0;
  *&v11[0] = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v7;
  *(v3 + 64) = v7;
  *(v3 + 72) = 0xD00000000000001FLL;
  *(v3 + 80) = 0x8000000101375540;
  os_log(_:dso:log:_:_:)();

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010743B8(*&v11[0], v11);

  v13[0] = v11[0];
  v13[1] = v11[1];
  v13[2] = v11[2];
  v14 = v12;
  sub_10038E124(v13, &v10);
  sub_10015056C(v11);
  v9 = MacBeaconConfig.xpcObject()();
  sub_100F992FC(v13);
  (*(a2 + 16))(a2, v9, 0);
}

void sub_100F957B4(char a1, uint64_t a2, void (**a3)(void))
{
  *(swift_allocObject() + 16) = a3;
  v6 = *(*sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24)) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_theftDeterrenceStateManager);
  _Block_copy(a3);
  if (sub_100EFAE94())
  {
    v7 = type metadata accessor for Transaction();
    __chkstk_darwin(v7);
    static Transaction.named<A>(_:with:)();
    v8 = [objc_opt_self() standardUserDefaults];
    [v8 setUserHasAcknowledgedFindMy:a1 & 1];
  }

  else
  {
    a3[2](a3);
  }
}

void sub_100F95948(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  *(v9 + 72) = 0xD00000000000003CLL;
  *(v9 + 80) = 0x800000010135D610;
  os_log(_:dso:log:_:_:)();

  v14 = sub_1000035D0((a4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a4 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070ABB8(a1, a2, a3 & 1, *v14, aBlock);
  _Block_release(aBlock);
}

void sub_100F95AE8(uint64_t a1, void *a2, uint64_t a3, void (**a4)(const void *, Class))
{
  v34 = a2;
  v31 = a1;
  v6 = sub_1000BC4D4(&qword_1016C1A80, &qword_1013F54C8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v33 = type metadata accessor for TimeBasedKeysCriteria();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v33);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_allocObject();
  *(v35 + 16) = a4;
  v32 = a4;
  _Block_copy(a4);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10138BBE0;
  ObjectType = swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v14 = String.init<A>(describing:)();
  v29 = a3;
  v15 = v14;
  v17 = v16;
  *(v13 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v18;
  *(v13 + 64) = v18;
  *(v13 + 72) = 0xD000000000000021;
  *(v13 + 80) = 0x80000001013754D0;
  os_log(_:dso:log:_:_:)();

  v19 = v34;
  sub_1008864D4(v19, v9);
  if ((*(v10 + 48))(v9, 1, v33) == 1)
  {
    sub_10000B3A8(v9, &qword_1016C1A80, &qword_1013F54C8);
    static os_log_type_t.error.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    v21 = v19;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v18;
    *(v20 + 32) = v23;
    *(v20 + 40) = v25;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_1016C1A88, SPCommandKey_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v32[2](v32, isa);
  }

  else
  {
    v27 = v30;
    sub_100887D08(v9, v30);
    v28 = *sub_1000035D0((v29 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(v29 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
    sub_1006BE1F8(v31, v27, sub_100F99248, v35);
    sub_100F99274(v27, type metadata accessor for TimeBasedKeysCriteria);
  }
}

void sub_100F95EF8(uint64_t a1, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 64) = v8;
  *(v4 + 72) = 0xD00000000000002ALL;
  *(v4 + 80) = 0x800000010135D460;
  os_log(_:dso:log:_:_:)();

  v9 = sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070B938(*v9, aBlock);
  _Block_release(aBlock);
}

void sub_100F96078(uint64_t a1, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 64) = v8;
  *(v4 + 72) = 0xD00000000000001BLL;
  *(v4 + 80) = 0x800000010135D420;
  os_log(_:dso:log:_:_:)();

  v9 = sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070C7F8(*v9, aBlock);
  _Block_release(aBlock);
}

void sub_100F961F8(void *a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD00000000000001FLL;
  *(v8 + 80) = 0x800000010135D350;
  os_log(_:dso:log:_:_:)();

  v13 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070CD88(a1, a2, *v13, aBlock);
  _Block_release(aBlock);
}

void sub_100F96390(void (*a1)(char *, uint64_t), void *a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000023;
  *(v8 + 80) = 0x800000010135D0A0;
  os_log(_:dso:log:_:_:)();

  v13 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070DDC0(a1, a2, *v13, aBlock);
  _Block_release(aBlock);
}

void sub_100F96528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v15 = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 64) = v15;
  *(v11 + 72) = 0xD000000000000039;
  *(v11 + 80) = 0x8000000101375490;
  os_log(_:dso:log:_:_:)();

  v16 = sub_1000035D0((a5 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a5 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  if ((a2 | a1 | a3) < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10070F644(a1, a2, a3, a4, *v16, aBlock);
    _Block_release(aBlock);
  }
}

void sub_100F966E0(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD00000000000002BLL;
  *(v8 + 80) = 0x800000010135CFD0;
  os_log(_:dso:log:_:_:)();

  v13 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10070F468(a2, *v13, aBlock);
    _Block_release(aBlock);
  }
}

void sub_100F9687C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD00000000000002FLL;
  *(v8 + 80) = 0x800000010135CFA0;
  os_log(_:dso:log:_:_:)();

  v13 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_10070FF28(a1, a2, *v13, aBlock);
  _Block_release(aBlock);
}

void sub_100F96A14(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD000000000000024;
  *(v8 + 80) = 0x8000000101375460;
  os_log(_:dso:log:_:_:)();

  v13 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1007106F0(a1, a2, *v13, aBlock);
    _Block_release(aBlock);
  }
}

void sub_100F96BB4(unint64_t a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  *(v6 + 72) = 0xD000000000000038;
  *(v6 + 80) = 0x8000000101375420;
  os_log(_:dso:log:_:_:)();

  v11 = sub_1000035D0((a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a2 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100713C58(a1, *v11, aBlock);
  _Block_release(aBlock);
}

uint64_t sub_100F96D44(uint64_t a1, uint64_t a2, const void *a3, void (**a4)(void, void))
{
  v32 = a1;
  v33 = a3;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v30 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  v19 = sub_100513050(a2);
  if (v19 == 8)
  {
    sub_1007BEBB0();
    swift_allocError();
    *v20 = 0;
    _Block_copy(a4);
    v21 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v21);
  }

  else
  {
    v23 = v19;
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    (*(v11 + 16))(&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v10);
    sub_100015794(v33, v9);
    v25 = *(v11 + 80);
    v32 = v9;
    v33 = a4;
    v26 = (v25 + 33) & ~v25;
    v27 = (v12 + *(v31 + 80) + v26) & ~*(v31 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v23;
    (*(v11 + 32))(v28 + v26, v13, v10);
    sub_10012C154(v32, v28 + v27);
    v29 = (v28 + ((v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_10026AE30;
    v29[1] = v18;
    _Block_copy(v33);

    sub_10025EDD4(0, 0, v17, &unk_1013F54C0, v28);
  }
}

void sub_100F970E0(uint64_t a1, char a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v12;
  *(v8 + 64) = v12;
  *(v8 + 72) = 0xD00000000000001ELL;
  *(v8 + 80) = 0x8000000101375400;
  os_log(_:dso:log:_:_:)();

  v13 = sub_1000035D0((a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a3 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100408A2C(a1, a2 & 1, *v13, aBlock);
  _Block_release(aBlock);
}

void sub_100F97278(uint64_t a1, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 64) = v8;
  *(v4 + 72) = 0xD000000000000020;
  *(v4 + 80) = 0x80000001013753D0;
  os_log(_:dso:log:_:_:)();

  v9 = sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconManagerTrampoline_implementation + 24));
  sub_100403718(*v9, aBlock);
  _Block_release(aBlock);
}

void sub_100F973F8(char a1, int a2, void *aBlock)
{
  _Block_copy(aBlock);
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 64) = v9;
  *(v5 + 72) = 0xD000000000000027;
  *(v5 + 80) = 0x80000001013753A0;
  os_log(_:dso:log:_:_:)();

  sub_100409474(a1 & 1, aBlock);
  _Block_release(aBlock);
}

uint64_t sub_100F97568(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10138BBE0;
  swift_getObjectType();
  sub_1000BC4D4(&unk_1016A99F0, &qword_10139AA40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v7 = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = v7;
  *(v3 + 64) = v7;
  *(v3 + 72) = 0xD000000000000022;
  *(v3 + 80) = 0x8000000101375370;
  os_log(_:dso:log:_:_:)();

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 BOOLForKey:v9];

  return (*(a2 + 16))(a2, v10);
}

uint64_t sub_100F97734(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_8;
  }

  v4 = sub_100771D58(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0 || (sub_100013894(*(a1 + 56) + 32 * v4, &v51), sub_1000BC4D4(&qword_1016C1A38, &unk_1013F5438), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:

    return a1;
  }

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v7;
  v52 = sub_1000BC4D4(&qword_1016C1A40, &qword_101399650);
  v8 = *&v50[0] + 64;
  v9 = 1 << *(*&v50[0] + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(*&v50[0] + 64);
  v12 = (v9 + 63) >> 6;
  v45 = a1;

  v48 = *&v50[0];

  v13 = 0;
  v14 = _swiftEmptyDictionarySingleton;
  v46 = v12;
  v47 = *&v50[0] + 64;
  while (v11)
  {
    v19 = v13;
LABEL_17:
    v20 = (v19 << 10) | (16 * __clz(__rbit64(v11)));
    v21 = (*(v48 + 48) + v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = (*(v48 + 56) + v20);
    v26 = *v24;
    v25 = v24[1];
    sub_100017D5C(*v21, v22);
    sub_100017D5C(v23, v22);
    sub_100017D5C(v26, v25);
    sub_100017D5C(v23, v22);
    sub_100017D5C(v26, v25);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v28 = [objc_opt_self() UUIDWithData:isa];

    sub_100016590(v23, v22);
    v49 = v25;
    sub_100017D5C(v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50[0] = v14;
    v31 = sub_100772D3C(v28);
    v32 = v14[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_28;
    }

    v35 = v30;
    if (v14[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10100E290();
      }
    }

    else
    {
      sub_100FF74B8(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_100772D3C(v28);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_30;
      }

      v31 = v36;
    }

    v11 &= v11 - 1;
    v14 = *&v50[0];
    if (v35)
    {
      v16 = (*(*&v50[0] + 56) + 16 * v31);
      v17 = *v16;
      v18 = v16[1];
      *v16 = v26;
      v16[1] = v49;
      sub_100016590(v17, v18);

      sub_100016590(v26, v49);
      sub_100016590(v23, v22);
      sub_100016590(v23, v22);
      sub_100016590(v26, v49);
    }

    else
    {
      *(*&v50[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
      *(v14[6] + 8 * v31) = v28;
      v38 = (v14[7] + 16 * v31);
      *v38 = v26;
      v38[1] = v49;
      sub_100016590(v26, v49);
      sub_100016590(v23, v22);
      sub_100016590(v23, v22);
      sub_100016590(v26, v49);
      v39 = v14[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_29;
      }

      v14[2] = v41;
    }

    v13 = v19;
    v12 = v46;
    v8 = v47;
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= v12)
    {

      *&v51 = v14;
      sub_1001E6224(&v51, v50);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFB368(v50, v43, v44, v42);

      return v45;
    }

    v11 = *(v8 + 8 * v19);
    ++v13;
    if (v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_100008BB8(0, &qword_1016A9120, CBUUID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100F97B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v43 = a2;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v42 = &v35 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v13;
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177AC90);
  v38 = *(v10 + 16);
  v38(v15, a1, v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a4;
    v20 = v19;
    v36 = swift_slowAlloc();
    v44 = v36;
    *v20 = 136315138;
    sub_100F989D0(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = a1;
    v24 = v23;
    (*(v10 + 8))(v15, v9);
    v25 = sub_1000136BC(v21, v24, &v44);
    a1 = v22;

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Read raw posh for beaconId: %s", v20, 0xCu);
    sub_100007BAC(v36);

    a4 = v37;
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v40;
  *(v26 + 24) = a4;
  v27 = type metadata accessor for TaskPriority();
  v28 = v42;
  (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
  v29 = v41;
  v38(v41, a1, v9);
  v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v31 = (v39 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v10 + 32))(v32 + v30, v29, v9);
  *(v32 + v31) = v43;
  v33 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v33 = sub_100F97FAC;
  v33[1] = v26;

  sub_10025EDD4(0, 0, v28, &unk_1013F53D0, v32);
}

uint64_t sub_100F97FB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014650;

  return sub_1006DAB08(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_100F980FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_100F93A6C(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_100F98240()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_100F98334(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014744;

  return sub_100F931D8(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_100F98478()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_100F92220(v4, v0 + v3, v6, v7);
}

uint64_t sub_100F98590()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100F9866C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_100F9178C(v4, v0 + v3, v6, v7);
}

uint64_t sub_100F98784()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100F913BC(v2, v3, v4, v6, v5);
}

uint64_t sub_100F98840()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v0 + 16);
  v21 = *(v0 + v7);
  v12 = *(v0 + v8 + 8);
  v20 = *(v0 + v8);
  v13 = *(v0 + v9);
  v15 = *(v0 + v10);
  v14 = *(v0 + v10 + 8);
  v16 = *(v0 + v11);
  v17 = *(v0 + v11 + 8);
  v18 = swift_task_alloc();
  *(v1 + 16) = v18;
  *v18 = v1;
  v18[1] = sub_100014744;

  return sub_100F8FE54(v23, v0 + v4, v0 + v6, v21, v20, v12, v13);
}

uint64_t sub_100F989D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100F98A18()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100F8F840(v2, v3, v5, v4);
}

uint64_t sub_100F98AC8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = a1;
    a1 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v3(a1, v5);
}

uint64_t sub_100F98B0C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = *(v1 + v6);
  v14 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_1006C6C94(a1, v9, v10, v11, v12, v1 + v5, v13, v1 + v8);
}

uint64_t sub_100F98CC0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_10069B4D4(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100F98DE4(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 & 1);
}

uint64_t sub_100F98E10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1003DB8E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100F98EE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100F8E3A0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100F98FA8()
{
  result = qword_1016C1A60;
  if (!qword_1016C1A60)
  {
    sub_1000BC580(&qword_1016C1A58, &unk_1013F54B0);
    sub_100F989D0(&unk_1016C1A68, type metadata accessor for KeySyncMetadataDisplay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1A60);
  }

  return result;
}

uint64_t sub_100F9905C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + 32);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014744;

  return sub_1006D1B60(a1, v10, v11, v15, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_100F99274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100F9936C()
{
  result = qword_1016C1AA8;
  if (!qword_1016C1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1AA8);
  }

  return result;
}

unint64_t TimeBasedKey.debugDescription.getter()
{
  _StringGuts.grow(_:)(41);

  v6 = *v0;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._object = 0x800000010135B6D0;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  v3 = *(type metadata accessor for TimeBasedKey() + 20);
  type metadata accessor for DateInterval();
  sub_10047B0A4();
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  return 0xD000000000000015;
}

uint64_t type metadata accessor for TimeBasedKey()
{
  result = qword_1016C1B08;
  if (!qword_1016C1B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F99560()
{
  result = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100F99608@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double sub_100F99678@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100F998DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100F9993C()
{
  result = qword_1016C1B48;
  if (!qword_1016C1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1B48);
  }

  return result;
}

uint64_t sub_100F99990@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  v32 = a1;
  sub_1000035D0(a1, v10);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v36, v36[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
LABEL_6:
    v22 = v32;
    goto LABEL_7;
  }

  v37 = v34[0];
  static Endianness.current.getter();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v9, v5);
  v12 = v35[0];
  v13 = sub_10027FDB0(v35[0]);
  if (v13 == 6)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    LOWORD(v35[0]) = v12;
    v15 = FixedWidthInteger.data.getter();
    v17 = v16;
    v18 = Data.hexString.getter();
    v20 = v19;
    sub_100016590(v15, v17);
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v18;
    *(v14 + 40) = v20;
    os_log(_:dso:log:_:_:)();

    sub_1009A022C();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    goto LABEL_6;
  }

  if (v13 > 2u)
  {
    v22 = v32;
    v24 = v13;
    if (v13 == 3)
    {
      v25 = &type metadata for SendPairingStatusCommandPayloadv2;
      v26 = sub_100F9BBE4();
    }

    else if (v13 == 4)
    {
      v25 = &type metadata for PairingCompleteCommandPayloadv2;
      v26 = sub_100F9BB88();
    }

    else
    {
      v25 = &type metadata for UnpairCommandPayload;
      v26 = sub_10027EE90();
    }
  }

  else
  {
    v22 = v32;
    v24 = v13;
    if (v13)
    {
      if (v13 == 1)
      {
        v25 = &type metadata for SendPairingDataCommandPayload;
        v26 = sub_1009BEA74();
      }

      else
      {
        v25 = &type metadata for FinalizePairingCommandPayloadv2;
        v26 = sub_100F9BB2C();
      }
    }

    else
    {
      v25 = &type metadata for InitiatePairingCommandPayload;
      v26 = sub_1009BE9C4();
    }
  }

  v27 = v26;
  sub_10001F280(v22, v34);
  v35[3] = v25;
  v35[4] = v27;
  sub_1000280DC(v35);
  v28 = *(v27 + 8);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v35, v34);
  sub_100F9A1A0(v24, v34, v33);
  v29 = v33[3];
  a2[2] = v33[2];
  a2[3] = v29;
  a2[4] = v33[4];
  v30 = v33[1];
  *a2 = v33[0];
  a2[1] = v30;
  sub_100007BAC(v35);
LABEL_7:
  sub_100007BAC(v36);
  return sub_100007BAC(v22);
}

uint64_t sub_100F99D98@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  v32 = a1;
  sub_1000035D0(a1, v10);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v36, v36[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
LABEL_6:
    v22 = v32;
    goto LABEL_7;
  }

  v37 = v34[0];
  static Endianness.current.getter();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v9, v5);
  v12 = v35[0];
  v13 = sub_10027FDB0(v35[0]);
  if (v13 == 6)
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    LOWORD(v35[0]) = v12;
    v15 = FixedWidthInteger.data.getter();
    v17 = v16;
    v18 = Data.hexString.getter();
    v20 = v19;
    sub_100016590(v15, v17);
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v18;
    *(v14 + 40) = v20;
    os_log(_:dso:log:_:_:)();

    sub_1009A022C();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    goto LABEL_6;
  }

  if (v13 > 2u)
  {
    v22 = v32;
    v24 = v13;
    if (v13 == 3)
    {
      v25 = &type metadata for SendPairingStatusCommandPayload;
      v26 = sub_1009BEACC();
    }

    else if (v13 == 4)
    {
      v25 = &type metadata for PairingCompleteCommandPayload;
      v26 = sub_1009BEA1C();
    }

    else
    {
      v25 = &type metadata for UnpairCommandPayload;
      v26 = sub_10027EE90();
    }
  }

  else
  {
    v22 = v32;
    v24 = v13;
    if (v13)
    {
      if (v13 == 1)
      {
        v25 = &type metadata for SendPairingDataCommandPayload;
        v26 = sub_1009BEA74();
      }

      else
      {
        v25 = &type metadata for FinalizePairingCommandPayload;
        v26 = sub_1009BE96C();
      }
    }

    else
    {
      v25 = &type metadata for InitiatePairingCommandPayload;
      v26 = sub_1009BE9C4();
    }
  }

  v27 = v26;
  sub_10001F280(v22, v34);
  v35[3] = v25;
  v35[4] = v27;
  sub_1000280DC(v35);
  v28 = *(v27 + 8);
  dispatch thunk of BinaryDecodable.init(from:)();
  sub_10001F280(v35, v34);
  sub_100F9A650(v24, v34, v33);
  v29 = v33[3];
  a2[2] = v33[2];
  a2[3] = v29;
  a2[4] = v33[4];
  v30 = v33[1];
  *a2 = v33[0];
  a2[1] = v30;
  sub_100007BAC(v35);
LABEL_7:
  sub_100007BAC(v36);
  return sub_100007BAC(v22);
}

uint64_t sub_100F9A1A0@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_100F9BBE4();
      v6 = &type metadata for SendPairingStatusCommandPayloadv2;
    }

    else if (a1 == 4)
    {
      sub_100F9BB88();
      v6 = &type metadata for PairingCompleteCommandPayloadv2;
    }

    else
    {
      sub_10027EE90();
      v6 = &type metadata for UnpairCommandPayload;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_1009BEA74();
      v6 = &type metadata for SendPairingDataCommandPayload;
    }

    else
    {
      sub_100F9BB2C();
      v6 = &type metadata for FinalizePairingCommandPayloadv2;
    }
  }

  else
  {
    sub_1009BE9C4();
    v6 = &type metadata for InitiatePairingCommandPayload;
  }

  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    if (a1 > 2u)
    {
      if (a1 == 3)
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v13 = v24;
          v14 = v25;
          v15 = *(&v24 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v8 = v26;
          v16 = *(&v25 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v11 = *(&v26 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v12 = 0x1000000000000000;
          v17 = 0x2000000000000000;
          goto LABEL_26;
        }

        v24 = xmmword_10138BBF0;
        v25 = 0u;
        v26 = 0u;
        sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
      }

      else if (a1 == 4)
      {
        sub_10001F280(a2, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v16 = 0;
          v11 = 0;
          v17 = 0;
          v14 = *(&v19 + 1);
          v13 = v19;
          v15 = *(&v19 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v12 = 0x2000000000000000;
          goto LABEL_26;
        }

        v19 = xmmword_10138BBF0;
        sub_100006654(0, 0xF000000000000000);
      }

      else
      {
        sub_10001F280(a2, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v13 = 0;
          v15 = 0;
          v14 = 0;
          v16 = 0;
          v8 = 0;
          v11 = 0;
          v9 = 0;
          v10 = 0;
          v17 = 0x2000000000000000;
          v12 = 0x2000000000000000;
          goto LABEL_26;
        }
      }

      goto LABEL_35;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        sub_10001F280(a2, v29);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v13 = v24;
          v14 = v25;
          v8 = v26;
          v9 = v27;
          v10 = v28;
          v15 = *(&v24 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v16 = *(&v25 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v11 = *(&v26 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v17 = *(&v27 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v12 = *(&v28 + 1) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
          goto LABEL_26;
        }

        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = xmmword_10138BBF0;
        v19 = xmmword_10138BBF0;
        v20 = 0u;
        sub_10000B3A8(&v19, &qword_1016C1C90, &qword_1013F57A0);
        goto LABEL_35;
      }

      sub_10001F280(a2, &v24);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        result = sub_100007BAC(a2);
        v11 = 0;
        v12 = 0;
        v13 = v19;
        v14 = v20;
        v15 = *(&v19 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v16 = *(&v20 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v17 = 0x2000000000000000;
LABEL_26:
        *a3 = v13;
        a3[1] = v15;
        a3[2] = v14;
        a3[3] = v16;
        a3[4] = v8;
        a3[5] = v11;
        a3[6] = v9;
        a3[7] = v17;
        a3[8] = v10;
        a3[9] = v12;
        return result;
      }
    }

    else
    {
      sub_10001F280(a2, &v24);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        result = sub_100007BAC(a2);
        v11 = 0;
        v17 = 0;
        v12 = 0;
        v13 = v19;
        v14 = v20;
        v15 = *(&v19 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v16 = *(&v20 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        goto LABEL_26;
      }
    }

    v19 = xmmword_10138BBF0;
    v20 = 0uLL;
    sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_35:
    sub_1009A022C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return sub_100007BAC(a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_100F9A650@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_1009BEACC();
      v6 = &type metadata for SendPairingStatusCommandPayload;
    }

    else if (a1 == 4)
    {
      sub_1009BEA1C();
      v6 = &type metadata for PairingCompleteCommandPayload;
    }

    else
    {
      sub_10027EE90();
      v6 = &type metadata for UnpairCommandPayload;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      sub_1009BEA74();
      v6 = &type metadata for SendPairingDataCommandPayload;
    }

    else
    {
      sub_1009BE96C();
      v6 = &type metadata for FinalizePairingCommandPayload;
    }
  }

  else
  {
    sub_1009BE9C4();
    v6 = &type metadata for InitiatePairingCommandPayload;
  }

  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    if (a1 > 2u)
    {
      if (a1 == 3)
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v13 = v24;
          v14 = v25;
          v15 = *(&v24 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v8 = v26;
          v16 = *(&v25 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v11 = *(&v26 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v12 = 0x1000000000000000;
          v17 = 0x2000000000000000;
          goto LABEL_31;
        }

        v24 = xmmword_10138BBF0;
        v25 = 0u;
        v26 = 0u;
        sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
      }

      else if (a1 == 4)
      {
        sub_10001F280(a2, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v13 = 0;
          v15 = 0;
          v14 = 0;
          v16 = 0;
          v8 = 0;
          v11 = 0;
          v9 = 0;
          v17 = 0;
          v10 = 0;
          v12 = 0x2000000000000000;
          goto LABEL_31;
        }
      }

      else
      {
        sub_10001F280(a2, &v24);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v15 = 0;
          v14 = 0;
          v16 = 0;
          v8 = 0;
          v11 = 0;
          v9 = 0;
          v17 = 0;
          v10 = 0;
          v12 = 0x2000000000000000;
          v13 = 1;
          goto LABEL_31;
        }
      }

      goto LABEL_34;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        sub_10001F280(a2, v29);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v13 = v24;
          v14 = v25;
          v8 = v26;
          v9 = v27;
          result = *(&v28 + 1);
          v10 = v28;
          v15 = *(&v24 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v16 = *(&v25 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v11 = *(&v26 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v17 = *(&v27 + 1) & 0xCFFFFFFFFFFFFFFFLL;
          v12 = *(&v28 + 1) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
          goto LABEL_31;
        }

        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = xmmword_10138BBF0;
        v19 = xmmword_10138BBF0;
        v20 = 0u;
        sub_10000B3A8(&v19, &qword_1016C1CA8, &qword_1013F57B8);
        goto LABEL_34;
      }

      sub_10001F280(a2, &v24);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        result = sub_100007BAC(a2);
        v11 = 0;
        v12 = 0;
        v13 = v19;
        v14 = v20;
        v15 = *(&v19 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v16 = *(&v20 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v17 = 0x2000000000000000;
LABEL_31:
        *a3 = v13;
        a3[1] = v15;
        a3[2] = v14;
        a3[3] = v16;
        a3[4] = v8;
        a3[5] = v11;
        a3[6] = v9;
        a3[7] = v17;
        a3[8] = v10;
        a3[9] = v12;
        return result;
      }
    }

    else
    {
      sub_10001F280(a2, &v24);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        result = sub_100007BAC(a2);
        v11 = 0;
        v17 = 0;
        v12 = 0;
        v13 = v19;
        v14 = v20;
        v15 = *(&v19 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        v16 = *(&v20 + 1) & 0xCFFFFFFFFFFFFFFFLL;
        goto LABEL_31;
      }
    }

    v19 = xmmword_10138BBF0;
    v20 = 0uLL;
    sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_34:
    sub_1009A022C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return sub_100007BAC(a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_100F9AAF4(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v11 = *(v3 + 56);
  v12 = *(v3 + 72);
  v13 = (v12 >> 59) & 6 | ((v11 & 0x2000000000000000) != 0);
  if (v13 <= 1)
  {
    v14 = 257;
    v15 = 256;
    v16 = v13 == 0;
  }

  else
  {
    if (v13 == 2)
    {
      v14 = 258;
      goto LABEL_13;
    }

    if (v13 == 3)
    {
      v14 = 259;
      goto LABEL_13;
    }

    v17 = vorrq_s8(*(v3 + 24), *(v3 + 40));
    if (*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)) | *v3 | *(v3 + 64) | *(v3 + 16) | *(v3 + 8) | v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = v12 == 0x2000000000000000;
    }

    v14 = 516;
    v15 = 260;
  }

  if (v16)
  {
    v14 = v15;
  }

LABEL_13:
  LOWORD(v32) = v14;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v9, v5);
  LOWORD(v32) = v38;
  sub_10015049C(v43, v44);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v2)
  {
    v18 = *(v3 + 56);
    v19 = *(v3 + 72);
    v20 = (v19 >> 59) & 6 | ((v18 & 0x2000000000000000) != 0);
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        sub_1009BEB20(v37);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v40 = v34;
          v41 = v35;
          v42 = v36;
          v38 = v32;
          v39 = v33;
          sub_10015049C(v43, v44);
          sub_10073F26C();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v29 = v40;
          v30 = v41;
          v31 = v42;
          v27 = v38;
          v28 = v39;
          sub_100F9C4F8(&v27);
          return sub_100007BAC(v43);
        }

        v32 = xmmword_10138BBF0;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v27 = xmmword_10138BBF0;
        v28 = 0u;
        sub_10000B3A8(&v27, &qword_1016C1CA8, &qword_1013F57B8);
      }

      else
      {
        if (v20 != 3)
        {
          if (v19 != 0x2000000000000000 || (v23 = vorrq_s8(*(v3 + 24), *(v3 + 40)), *v3 | *&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)) | v18 | *(v3 + 8) | *(v3 + 16) | *(v3 + 64)))
          {
            sub_1009BEB20(&v38);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_37;
            }

            sub_10015049C(v43, v44);
            sub_10027FBB8();
          }

          else
          {
            sub_1009BEB20(&v38);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_37;
            }

            sub_10015049C(v43, v44);
            sub_100507A8C();
          }

          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          return sub_100007BAC(v43);
        }

        sub_1009BEB20(&v27);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v38 = v32;
          v39 = v33;
          v40 = v34;
          sub_10015049C(v43, v44);
          sub_10088E074();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v21 = v39;
          v22 = v40;
          sub_100016590(v38, *(&v38 + 1));
          sub_100016590(v21, *(&v21 + 1));
          sub_100016590(v22, *(&v22 + 1));
          return sub_100007BAC(v43);
        }

        v32 = xmmword_10138BBF0;
        v33 = 0u;
        v34 = 0u;
        sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
      }

LABEL_37:
      sub_1009A022C();
      swift_allocError();
      *v25 = 0;
      swift_willThrow();
      return sub_100007BAC(v43);
    }

    if (v20)
    {
      sub_1009BEB20(&v38);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v32 = v27;
        v33 = v28;
        sub_10015049C(v43, v44);
        sub_1008ADEA4();
        goto LABEL_30;
      }
    }

    else
    {
      sub_1009BEB20(&v38);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v32 = v27;
        v33 = v28;
        sub_10015049C(v43, v44);
        sub_100D597F4();
LABEL_30:
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v24 = v33;
        sub_100016590(v32, *(&v32 + 1));
        sub_100016590(v24, *(&v24 + 1));
        return sub_100007BAC(v43);
      }
    }

    v27 = xmmword_10138BBF0;
    v28 = 0uLL;
    sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
    goto LABEL_37;
  }

  return sub_100007BAC(v43);
}

uint64_t sub_100F9B1CC(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  LOWORD(v22) = word_1013F5E1E[(*(v3 + 72) >> 59) & 6 | (*(v3 + 56) >> 61) & 1];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v9, v5);
  LOWORD(v22) = v28;
  sub_10015049C(v33, v34);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v2)
  {
    v11 = (*(v3 + 72) >> 59) & 6 | ((*(v3 + 56) & 0x2000000000000000) != 0);
    if (v11 <= 2)
    {
      if (!v11)
      {
        sub_100F9BC38(&v28);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v22 = v17;
          v23 = v18;
          sub_10015049C(v33, v34);
          sub_100D597F4();
          goto LABEL_13;
        }

        goto LABEL_16;
      }

      if (v11 == 1)
      {
        sub_100F9BC38(&v28);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v22 = v17;
          v23 = v18;
          sub_10015049C(v33, v34);
          sub_1008ADEA4();
LABEL_13:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v12 = v23;
          sub_100016590(v22, *(&v22 + 1));
          sub_100016590(v12, *(&v12 + 1));
          return sub_100007BAC(v33);
        }

LABEL_16:
        v17 = xmmword_10138BBF0;
        v18 = 0uLL;
        sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
        goto LABEL_24;
      }

      sub_100F9BC38(v27);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v30 = v24;
        v31 = v25;
        v32 = v26;
        v28 = v22;
        v29 = v23;
        sub_10015049C(v33, v34);
        sub_10098DBB0();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v19 = v30;
        v20 = v31;
        v21 = v32;
        v17 = v28;
        v18 = v29;
        sub_100F9BFFC(&v17);
        return sub_100007BAC(v33);
      }

      v22 = xmmword_10138BBF0;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v17 = xmmword_10138BBF0;
      v18 = 0u;
      sub_10000B3A8(&v17, &qword_1016C1C90, &qword_1013F57A0);
LABEL_24:
      sub_1009A022C();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
      return sub_100007BAC(v33);
    }

    if (v11 == 3)
    {
      sub_100F9BC38(&v17);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v28 = v22;
        v29 = v23;
        v30 = v24;
        sub_10015049C(v33, v34);
        sub_100F9BFA8();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v13 = v29;
        v14 = v30;
        sub_100016590(v28, *(&v28 + 1));
        sub_100016590(v13, *(&v13 + 1));
        sub_100016590(v14, *(&v14 + 1));
        return sub_100007BAC(v33);
      }

      v22 = xmmword_10138BBF0;
      v23 = 0u;
      v24 = 0u;
      sub_100A21CD8(0, 0xF000000000000000, 0, 0, 0, 0);
      goto LABEL_24;
    }

    if (v11 != 4)
    {
      sub_100F9BC38(&v28);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_10015049C(v33, v34);
        sub_10027FBB8();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        return sub_100007BAC(v33);
      }

      goto LABEL_24;
    }

    sub_100F9BC38(&v28);
    sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v17 = xmmword_10138BBF0;
      sub_100006654(0, 0xF000000000000000);
      goto LABEL_24;
    }

    v22 = v17;
    sub_10015049C(v33, v34);
    sub_100289670();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    sub_100016590(v22, *(&v22 + 1));
  }

  return sub_100007BAC(v33);
}

unint64_t sub_100F9B834()
{
  result = sub_10098E9DC(3157554, 0xE300000000000000);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    LOWORD(dword_10177C460) = result;
    BYTE2(dword_10177C460) = BYTE2(result);
    HIBYTE(dword_10177C460) = BYTE3(result);
  }

  return result;
}

uint64_t *sub_100F9B87C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for CollaborativeKeyGen.v2.C3;
  result = sub_10010194C();
  a3[4] = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = 0;
      goto LABEL_20;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      if (v11 != 85)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 85)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = a1;
      a3[1] = a2;
      return sub_100017D5C(a1, a2);
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 85)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v7 == 2)
  {
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v7 != 1)
  {
LABEL_19:
    v12 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v12 = HIDWORD(a1) - a1;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v15 = 85;
    *(v15 + 8) = v12;
    *(v15 + 16) = 0;
    swift_willThrow();
    return sub_100101758(a3);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100F9B9BC()
{
  if (qword_101695100 != -1)
  {
    swift_once();
  }

  return dword_10177C460;
}

__n128 sub_100F9BA10@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  sub_100F9C28C(a1, a2, a3, a4, a5, a6, a7, a8, v14, a10, a11);
  v12 = v14[3];
  *(a9 + 32) = v14[2];
  *(a9 + 48) = v12;
  *(a9 + 64) = v14[4];
  result = v14[1];
  *a9 = v14[0];
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_100F9BA60@<X0>(uint64_t *a1@<X8>)
{
  sub_101063248();
  sub_100101824();
  result = FixedWidthInteger.data.getter();
  *a1 = result;
  a1[1] = v3 & 0xCFFFFFFFFFFFFFFFLL;
  a1[3] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[9] = 0x2000000000000000;
  return result;
}

__n128 sub_100F9BADC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100F9C0C0(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a4 + 32) = v8[2];
    *(a4 + 48) = v7;
    *(a4 + 64) = v8[4];
    result = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = result;
  }

  return result;
}

unint64_t sub_100F9BB2C()
{
  result = qword_1016C1BB0;
  if (!qword_1016C1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1BB0);
  }

  return result;
}

unint64_t sub_100F9BB88()
{
  result = qword_1016C1BB8;
  if (!qword_1016C1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1BB8);
  }

  return result;
}

unint64_t sub_100F9BBE4()
{
  result = qword_1016C1BC0;
  if (!qword_1016C1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1BC0);
  }

  return result;
}

unint64_t sub_100F9BC38@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[7];
  v10 = v1[9];
  v11 = (v10 >> 59) & 6 | ((v9 & 0x2000000000000000) != 0);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      a1[3] = &type metadata for SendPairingStatusCommandPayloadv2;
      a1[4] = sub_100F9BBE4();
      v15 = swift_allocObject();
      *a1 = v15;
      v15[2] = v4;
      v15[3] = v3;
      v15[4] = v5;
      v15[5] = v6;
      v15[6] = v8;
      v15[7] = v7;
      sub_100017D5C(v4, v3);
      sub_100017D5C(v5, v6);
      v12 = v8;
      v13 = v7;
    }

    else
    {
      if (v11 != 4)
      {
        a1[3] = &type metadata for UnpairCommandPayload;
        result = sub_10027EE90();
        a1[4] = result;
        return result;
      }

      a1[3] = &type metadata for PairingCompleteCommandPayloadv2;
      a1[4] = sub_100F9BB88();
      *a1 = v4;
      a1[1] = v3;
      v12 = v4;
      v13 = v3;
    }
  }

  else
  {
    if (v11)
    {
      if (v11 != 1)
      {
        v21 = v1[8];
        v17 = v1[6];
        v18 = v9 & 0xDFFFFFFFFFFFFFFFLL;
        v19 = v10 & 0xCFFFFFFFFFFFFFFFLL;
        a1[3] = &type metadata for FinalizePairingCommandPayloadv2;
        a1[4] = sub_100F9BB2C();
        v20 = swift_allocObject();
        *a1 = v20;
        v20[2] = v4;
        v20[3] = v3;
        v20[4] = v5;
        v20[5] = v6;
        v20[6] = v8;
        v20[7] = v7;
        v20[8] = v17;
        v20[9] = v18;
        v20[10] = v21;
        v20[11] = v19;
        v23[0] = v4;
        v23[1] = v3;
        v23[2] = v5;
        v23[3] = v6;
        v23[4] = v8;
        v23[5] = v7;
        v23[6] = v17;
        v23[7] = v18;
        v23[8] = v21;
        v23[9] = v19;
        return sub_100F9C050(v23, v22);
      }

      a1[3] = &type metadata for SendPairingDataCommandPayload;
      a1[4] = sub_1009BEA74();
    }

    else
    {
      a1[3] = &type metadata for InitiatePairingCommandPayload;
      a1[4] = sub_1009BE9C4();
    }

    v14 = swift_allocObject();
    *a1 = v14;
    v14[2] = v4;
    v14[3] = v3;
    v14[4] = v5;
    v14[5] = v6;
    sub_100017D5C(v4, v3);
    v12 = v5;
    v13 = v6;
  }

  return sub_100017D5C(v12, v13);
}

unint64_t sub_100F9BE74(uint64_t a1)
{
  *(a1 + 8) = sub_100F9BEA4();
  result = sub_100F9BEF8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100F9BEA4()
{
  result = qword_1016C1C80;
  if (!qword_1016C1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1C80);
  }

  return result;
}

unint64_t sub_100F9BEF8()
{
  result = qword_1016C1C88;
  if (!qword_1016C1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1C88);
  }

  return result;
}

uint64_t sub_100F9BF64(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_100F9B1CC(a1);
}

unint64_t sub_100F9BFA8()
{
  result = qword_1016C1C98;
  if (!qword_1016C1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1C98);
  }

  return result;
}

uint64_t sub_100F9C050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016C1CA0, &unk_1013F57A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F9C0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (a3 >> 60 == 15)
  {
    sub_1009BF3DC();
    swift_allocError();
    *v5 = 9;
    return swift_willThrow();
  }

  v9 = v4;
  sub_10001F280(a1, v18);
  sub_100017D5C(a2, a3);
  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
  if (!swift_dynamicCast())
  {
    sub_1009BF3DC();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
    return sub_100006654(a2, a3);
  }

  v11 = v19;
  CCCKG2ParamsP224Sha256Version2();
  OpeningSize = CCCKG2GetOpeningSize();

  sub_1001003F4(a2, a3, v11, OpeningSize, v17);
  if (v9)
  {

    sub_1009BF3DC();
    swift_allocError();
    *v13 = 10;
    swift_willThrow();

    return sub_100006654(a2, a3);
  }

  sub_100006654(a2, a3);

  v15 = v17[3];
  a4[2] = v17[2];
  a4[3] = v15;
  a4[4] = v17[4];
  v16 = v17[1];
  *a4 = v17[0];
  a4[1] = v16;
  return result;
}

uint64_t sub_100F9C28C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v15 = *(result + 16);
  v14 = *(result + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_8:
    LODWORD(v13) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v13 = v13;
  }

LABEL_10:
  if (v13 != 114)
  {
    goto LABEL_56;
  }

  if ((a4 >> 62) <= 1)
  {
    if (a4 >> 62 == 1)
    {
      LODWORD(v17) = HIDWORD(a3) - a3;
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v17 = v17;
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_50;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (a4 >> 62 != 2)
  {
    goto LABEL_55;
  }

  v19 = *(a3 + 16);
  v18 = *(a3 + 24);
  v16 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v16)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_17:
  if (v17 != 1040)
  {
    goto LABEL_55;
  }

  v20 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(a6);
      goto LABEL_27;
    }

LABEL_25:
    LODWORD(v21) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v21 = v21;
      goto LABEL_27;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v20 != 2)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v23 = *(a5 + 16);
  v22 = *(a5 + 24);
  v16 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v16)
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_27:
  if (v21 != 32)
  {
    goto LABEL_57;
  }

  v24 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(a11);
      goto LABEL_37;
    }

LABEL_35:
    LODWORD(v25) = HIDWORD(a10) - a10;
    if (!__OFSUB__(HIDWORD(a10), a10))
    {
      v25 = v25;
      goto LABEL_37;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v24 != 2)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = *(a10 + 16);
  v26 = *(a10 + 24);
  v16 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v16)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_37:
  if (v25 != 100)
  {
    goto LABEL_58;
  }

  v28 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = BYTE6(a8);
      goto LABEL_47;
    }

LABEL_45:
    LODWORD(v29) = HIDWORD(a7) - a7;
    if (!__OFSUB__(HIDWORD(a7), a7))
    {
      v29 = v29;
      goto LABEL_47;
    }

    goto LABEL_54;
  }

  if (v28 != 2)
  {
    goto LABEL_59;
  }

  v31 = *(a7 + 16);
  v30 = *(a7 + 24);
  v16 = __OFSUB__(v30, v31);
  v29 = v30 - v31;
  if (v16)
  {
    __break(1u);
    goto LABEL_45;
  }

LABEL_47:
  if (v29 == 60)
  {
    v39 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    v40 = a4 & 0xCFFFFFFFFFFFFFFFLL;
    v42 = a8 & 0xCFFFFFFFFFFFFFFFLL;
    v41 = a6 & 0xCFFFFFFFFFFFFFFFLL;
    v32 = result;
    sub_100017D5C(result, a2);
    sub_100017D5C(a3, a4);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a7, a8);
    result = sub_100017D5C(a10, a11);
    *a9 = v32;
    a9[1] = v39;
    a9[2] = a3;
    a9[3] = v40;
    a9[4] = a5;
    a9[5] = v41;
    a9[6] = a7;
    a9[7] = v42;
    a9[8] = a10;
    a9[9] = a11 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
    return result;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_100F9C54C(uint64_t a1)
{
  v1 = (*(a1 + 72) >> 59) & 6 | ((*(a1 + 56) & 0x2000000000000000) != 0);
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_100F9C578(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FB && *(a1 + 80))
  {
    return (*a1 + 1019);
  }

  v3 = ((((*(a1 + 72) >> 52) & 0x300 | (*(a1 + 56) >> 54) & 0xC0) >> 7) & 0xFFFFFC07 | (8 * ((*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0x40))) ^ 0x3FF;
  if (v3 >= 0x3FA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100F9C608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 1019;
    if (a3 >= 0x3FB)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0x7F | ((-a2 & 0x3FF) << 7);
      *result = 0;
      *(result + 8) = ((-a2 >> 3) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0;
      *(result + 40) = (v3 << 56) & 0x3000000000000000;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 54) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 52) & 0x3000000000000000;
    }
  }

  return result;
}

void *sub_100F9C69C(void *result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = result[3] & 0xCFFFFFFFFFFFFFFFLL;
    v3 = result[5] & 0xCFFFFFFFFFFFFFFFLL;
    v4 = result[7] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
    v5 = result[9] & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 3) << 60);
    result[1] &= 0xCFFFFFFFFFFFFFFFLL;
    result[3] = v2;
    result[5] = v3;
    result[7] = v4;
    result[9] = v5;
  }

  else
  {
    *result = a2 - 5;
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *(result + 5) = 0u;
    *(result + 7) = xmmword_10139BF70;
    result[9] = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_100F9C72C(void *a1)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    _Block_release(v3);
    v4 = *(v1 + 16);
    __chkstk_darwin(v5);
    sub_1000BC4D4(&qword_1016C2218, &unk_1013F6328);
    OS_dispatch_queue.sync<A>(execute:)();
    return v20;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136446466;
      v21 = v19;
      sub_1000BC4D4(&qword_1016BC548, &qword_1013F6320);
      sub_1000041A4(&unk_1016BC550, &qword_1016BC548, &qword_1013F6320);
      v13._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 8250;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 62;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);

      v17 = sub_1000136BC(60, 0xE100000000000000, &v21);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: Not adding invalidated connection: %@", v11, 0x16u);
      sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v19);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9CA44(void *a1)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    _Block_release(v3);
    v4 = *(v1 + 16);
    __chkstk_darwin(v5);
    sub_1000BC4D4(&qword_1016C2238, &qword_1013F6348);
    OS_dispatch_queue.sync<A>(execute:)();
    return v20;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136446466;
      v21 = v19;
      sub_1000BC4D4(&qword_1016BC578, &unk_1013EA760);
      sub_1000041A4(&qword_1016BC580, &qword_1016BC578, &unk_1013EA760);
      v13._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 8250;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 62;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);

      v17 = sub_1000136BC(60, 0xE100000000000000, &v21);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: Not adding invalidated connection: %@", v11, 0x16u);
      sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v19);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9CD5C(void *a1)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    _Block_release(v3);
    v4 = *(v1 + 16);
    __chkstk_darwin(v5);
    sub_1000BC4D4(&qword_1016C2210, &qword_1013F6308);
    OS_dispatch_queue.sync<A>(execute:)();
    return v20;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136446466;
      v21 = v19;
      sub_1000BC4D4(&unk_1016C2200, &unk_1013EA6C0);
      sub_1000041A4(&unk_1016BC530, &unk_1016C2200, &unk_1013EA6C0);
      v13._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 8250;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 62;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);

      v17 = sub_1000136BC(60, 0xE100000000000000, &v21);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: Not adding invalidated connection: %@", v11, 0x16u);
      sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v19);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9D074(void *a1)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    _Block_release(v3);
    v4 = *(v1 + 16);
    __chkstk_darwin(v5);
    sub_1000BC4D4(&qword_1016C21F0, &qword_1013F62E8);
    OS_dispatch_queue.sync<A>(execute:)();
    return v20;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136446466;
      v21 = v19;
      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690);
      v13._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 8250;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 62;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);

      v17 = sub_1000136BC(60, 0xE100000000000000, &v21);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: Not adding invalidated connection: %@", v11, 0x16u);
      sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v19);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9D38C(void *a1)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    _Block_release(v3);
    v4 = *(v1 + 16);
    __chkstk_darwin(v5);
    sub_1000BC4D4(&qword_1016C2230, &unk_1013F6338);
    OS_dispatch_queue.sync<A>(execute:)();
    return v20;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136446466;
      v21 = v19;
      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670);
      v13._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 8250;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 62;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);

      v17 = sub_1000136BC(60, 0xE100000000000000, &v21);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: Not adding invalidated connection: %@", v11, 0x16u);
      sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v19);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9D6A4(void *a1)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    _Block_release(v3);
    v4 = *(v1 + 16);
    __chkstk_darwin(v5);
    sub_1000BC4D4(&qword_1016C2198, &qword_1013F6168);
    OS_dispatch_queue.sync<A>(execute:)();
    return v20;
  }

  else
  {
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v11 = 136446466;
      v21 = v19;
      sub_1000BC4D4(&qword_1016BC4C8, &qword_1013F6160);
      sub_1000041A4(&unk_1016BC4D0, &qword_1016BC4C8, &qword_1013F6160);
      v13._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 8250;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 62;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);

      v17 = sub_1000136BC(60, 0xE100000000000000, &v21);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: Not adding invalidated connection: %@", v11, 0x16u);
      sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v19);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_100F9D9C8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C468);
  sub_1000076D4(v0, qword_10177C468);
  return Logger.init(subsystem:category:)();
}

void sub_100F9DAB0(char *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = *sub_1000035D0(&a1[OBJC_IVAR____TtC12searchpartyd19BTFindingTrampoline_implementation], *&a1[OBJC_IVAR____TtC12searchpartyd19BTFindingTrampoline_implementation + 24]);
  v19 = a1;
  a7(v15, a6, v17);

  (*(v12 + 8))(v15, v11);
}

Swift::Int sub_100F9DD90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100F9DE04()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100F9DE58@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160B160, *a1);

  *a2 = v3 != 0;
  return result;
}

void sub_100F9DECC()
{
  v1 = v0;
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C468);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "All sessions went away.", v5, 2u);
  }

  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = *(v1 + 48);

    v6(v8);

    sub_1000BB27C(v6);
  }
}

uint64_t sub_100F9DFF4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  sub_1000BB27C(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BTFindingServiceConnections()
{
  result = qword_1016C1DA0;
  if (!qword_1016C1DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100F9E0D4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C1CB0);
  v1 = sub_1000076D4(v0, qword_1016C1CB0);
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C468);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_100F9E19C()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 32);

  v4 = sub_10112CD04(v3);

  if (v4)
  {
    v5 = XPCSession.connection.getter();
    v6 = NSXPCConnection.codeSigningIdentity.getter();
    v8 = v7;

    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016C1CB0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1000136BC(v6, v8, &v16);
      _os_log_impl(&_mh_execute_header, v10, v11, "Client: %{public}s", v12, 0xCu);
      sub_100007BAC(v13);
    }

    if (v6 == 0xD000000000000017 && 0x8000000101360B10 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v14 = sub_1000140F4();
    }
  }

  else
  {
    return 0;
  }

  return v14;
}

unint64_t sub_100F9E400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0xE000000000000000;
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v16 = 0xD000000000000013;
  v17 = 0x80000001013757D0;
  v15[1] = a2;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x7469206B726F5720;
  v11._object = 0xEC000000203A6D65;
  String.append(_:)(v11);
  if (a1)
  {
    WorkItemQueue.WorkItem.id.getter();
    a1 = UUID.uuidString.getter();
    v9 = v12;
    (*(v5 + 8))(v8, v4);
  }

  v13._countAndFlagsBits = a1;
  v13._object = v9;
  String.append(_:)(v13);

  return v16;
}

uint64_t sub_100F9E904(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_101698E38, &unk_101395BA0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100F9EA04, 0, 0);
}

uint64_t sub_100F9EA04()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  swift_defaultActor_initialize();
  *(v4 + 112) = 0xD000000000000010;
  *(v4 + 120) = 0x80000001013F5F10;
  v6 = type metadata accessor for XPCSessionManager();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v4 + 144) = XPCSessionManager.init(name:)();
  *(v4 + 152) = 0;
  type metadata accessor for BTFindingServiceConnections();
  v9 = swift_allocObject();
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v4 + 160) = sub_100F04FA4();
  type metadata accessor for WorkItemQueue();
  v10 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  UUID.init()();
  *(v4 + 168) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v4 + 176) = 0;
  *(v4 + 183) = 0;
  *(v4 + 192) = &_swiftEmptySetSingleton;
  *(v4 + 200) = _swiftEmptyDictionarySingleton;
  *(v4 + 208) = _swiftEmptyDictionarySingleton;
  *(v4 + 216) = _swiftEmptyDictionarySingleton;
  *(v4 + 128) = v5;
  type metadata accessor for CentralManager();
  sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
  v11 = type metadata accessor for CentralManager.Options();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138B360;

  static CentralManager.Options.allowDuplicates.getter();
  static CentralManager.Options.enableFindMy.getter();
  static CentralManager.Options.needsRestrictedStateOperation.getter();
  v0[2] = v15;
  sub_100FC4DB8(&unk_1016C1210, 255, &type metadata accessor for CentralManager.Options);
  sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
  sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 56))(v3, 0, 1, v11);
  v16 = async function pointer to CentralManager.__allocating_init(options:)[1];
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_100F9ED64;
  v18 = v0[5];

  return CentralManager.__allocating_init(options:)(v18);
}

uint64_t sub_100F9ED64(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100F9EE64, 0, 0);
}

uint64_t sub_100F9EE64()
{
  v1 = *(v0 + 32);
  *(v1 + 136) = *(v0 + 72);
  return _swift_task_switch(sub_100F9EE88, v1, 0);
}

uint64_t sub_100F9EE88()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  v6 = *(v4 + 160);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v6 + 40);
  v9 = *(v6 + 48);
  *(v6 + 40) = sub_100FC4E00;
  *(v6 + 48) = v7;

  sub_1000BB27C(v8);

  v10 = v0[1];
  v11 = v0[4];

  return v10(v11);
}

uint64_t sub_100F9EF90()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Transaction();

    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_100F9F028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100FA4648();
}

uint64_t sub_100F9F0D8()
{
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C468);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BTFindingService: Starting up.", v4, 2u);
  }

  v5 = *(v0 + 16);

  sub_100F9F1F8();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100F9F1F8()
{
  v1 = type metadata accessor for XPCServiceDescription();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  __chkstk_darwin(v1);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MachServiceName();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  MachServiceName.init(_:)();
  v11 = type metadata accessor for BTFindingService();
  v47 = v11;
  v48 = &off_10165D9E0;
  v46[0] = v0;
  v12 = type metadata accessor for BTFindingTrampoline();
  v13 = objc_allocWithZone(v12);
  v14 = v47;
  v15 = sub_10015049C(v46, v47);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v45[3] = v11;
  v45[4] = &off_10165D9E0;
  v45[0] = v20;
  sub_10001F280(v45, v13 + OBJC_IVAR____TtC12searchpartyd19BTFindingTrampoline_implementation);
  v44.receiver = v13;
  v44.super_class = v12;

  v21 = objc_msgSendSuper2(&v44, "init");
  sub_100007BAC(v45);
  sub_100007BAC(v46);
  v22 = *(v0 + 152);
  *(v0 + 152) = v21;
  v23 = v21;

  v24 = *(v43 + 16);
  v39 = v4;
  v40 = v10;
  v24(v8, v10, v4);
  v25 = qword_101695118;
  v26 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = qword_1016C1CC8;
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 interfaceWithProtocol:&OBJC_PROTOCOL___SPBTFindingXPCClientProtocol];

  v31 = v38;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  v32 = *(v0 + 144);
  XPCSessionManager.register(service:)();
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177C468);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "BTFindingService: Successfully registered XPC services.", v36, 2u);
  }

  (*(v41 + 8))(v31, v42);
  return (*(v43 + 8))(v40, v39);
}

void sub_100F9F680()
{
  v0 = objc_opt_self();
  v1 = &OBJC_PROTOCOL___SPBTFindingXPCProtocol;
  v2 = [v0 interfaceWithProtocol:v1];

  qword_1016C1CC8 = v2;
}

void sub_100F9F6E8(void *a1)
{
  if (!a1)
  {
    return;
  }

  v3 = *(v1 + 160);
  swift_beginAccess();
  v4 = *(v3 + 32);
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *(v3 + 32);
    }

    v6 = a1;

    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
    sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
    Set.Iterator.init(_cocoa:)();
    v4 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
  }

  else
  {
    v11 = -1 << *(v4 + 32);
    v7 = v4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v4 + 56);
    v14 = a1;

    v9 = 0;
  }

  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680), swift_dynamicCast(), v17 = v9, v18 = v10, !v20))
    {
LABEL_23:
      sub_1000128F8();

      return;
    }

LABEL_21:
    XPCSession.proxy.getter();
    if (v20)
    {
      [v20 updatedBTRSSIResult:a1];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v9 = v17;
    v10 = v18;
  }

  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (v10)
  {
LABEL_17:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= ((v8 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_100F9F950(uint64_t a1)
{
  v35[0] = a1;
  v37 = type metadata accessor for UUID();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v37);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v1;
  v5 = *(v1 + 160);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *(v5 + 32);
    }

    v8 = *(v5 + 32);

    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
    sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
    Set.Iterator.init(_cocoa:)();
    v6 = v41;
    v9 = v42;
    v11 = v43;
    v10 = v44;
    v12 = v45;
  }

  else
  {
    v13 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v11 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v6 + 56);
    v16 = *(v5 + 32);

    v10 = 0;
  }

  v35[1] = v11;
  v17 = (v11 + 64) >> 6;
  v18 = (v2 + 8);
  while (v6 < 0)
  {
    v24 = __CocoaSet.Iterator.next()();
    if (!v24 || (v39 = v24, sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680), swift_dynamicCast(), v21 = v10, v22 = v12, !v40))
    {
LABEL_29:
      sub_1000128F8();
      return;
    }

LABEL_22:
    v25 = v36;
    XPCSession.identifier.getter();
    v26 = v38;
    swift_beginAccess();
    v27 = *(v26 + 208);
    if (!*(v27 + 16))
    {
      goto LABEL_11;
    }

    v28 = *(v26 + 208);

    v29 = sub_1000210EC(v25);
    if ((v30 & 1) == 0)
    {

LABEL_11:

      (*v18)(v25, v37);
      goto LABEL_12;
    }

    v31 = *v18;
    v32 = *(*(v27 + 56) + 8 * v29);
    v33 = v25;
    v34 = v32;
    v31(v33, v37);

    if ([v34 optInRawRSSIMeasurement])
    {
      XPCSession.proxy.getter();
      if (v40)
      {
        [v40 updatedBTRSSIMeasurement:v35[0]];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_12:
    v10 = v21;
    v12 = v22;
  }

  v19 = v10;
  v20 = v12;
  v21 = v10;
  if (v12)
  {
LABEL_18:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v6 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));

    if (!v23)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      goto LABEL_29;
    }

    v20 = *(v9 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_100F9FD08(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for UUID();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100F9FDD4, v1, 0);
}

uint64_t sub_100F9FDD4()
{
  v23 = v0;
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = type metadata accessor for Logger();
  v0[17] = sub_1000076D4(v5, qword_10177C468);
  v6 = *(v3 + 16);
  v0[18] = v6;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Read TX Power for %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_100FA0068;

  return daemon.getter();
}

uint64_t sub_100FA0068(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v12 = *v1;
  v3[21] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[22] = v6;
  v7 = type metadata accessor for Daemon();
  v3[23] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100FC4DB8(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100FA0250;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100FA0250(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v7 = v4[21];

    v8 = v4[12];
    v9 = sub_100FA0720;
  }

  else
  {
    v9 = sub_100FA0394;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100FA0394()
{
  v1 = v0[24];
  v2 = v0[25];
  sub_1003A8474();
  v0[26] = v3;
  v4 = v0[23];
  v5 = v0[21];
  if (v2)
  {

    sub_100FC4DB8(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_100FA06AC;
  }

  else
  {
    sub_100FC4DB8(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_100FA04C4;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_100FA04C4()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_100FA0570;
  v4 = v0[26];
  v5 = v0[11];

  return sub_10065AD5C(v5);
}

uint64_t sub_100FA0570(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  v4[28] = v1;

  v7 = v4[12];
  if (v1)
  {
    v8 = sub_100FA0BF8;
  }

  else
  {
    v4[29] = a1;
    v8 = sub_100FA0A8C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100FA06AC()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[12];

  return _swift_task_switch(sub_100FA0720, v3, 0);
}

uint64_t sub_100FA0720()
{
  v32 = v0;
  v1 = *(v0 + 136);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing OwnerCommandManager to read TX Power!", v4, 2u);
  }

  type metadata accessor for SPBTFindingSessionError(0);
  *(v0 + 72) = 4;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100FC4DB8(&unk_1016C2170, 255, type metadata accessor for SPBTFindingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v5 = *(v0 + 64);
  swift_willThrow();
  v6 = *(v0 + 136);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136446210;
    *(v0 + 80) = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v31);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to fetch TX Power due to %{public}s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {
  }

  v14 = *(v0 + 96);
  swift_beginAccess();
  if (!*(*(v14 + 200) + 16) || (v15 = *(v0 + 88), v16 = *(v14 + 200), , sub_1000210EC(v15), LOBYTE(v15) = v17, , (v15 & 1) == 0))
  {
    v18 = *(v0 + 152);
    v19 = *(v0 + 120);
    v20 = *(v0 + 88);
    (*(v0 + 144))(v19, v20, *(v0 + 104));
    v21 = type metadata accessor for BTRSSIFilter();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_10058D7E8(v19, 0, 0);
    swift_beginAccess();
    v25 = *(v14 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v14 + 200);
    *(v14 + 200) = 0x8000000000000000;
    sub_101001ED8(v24, v20, isUniquelyReferenced_nonNull_native);
    *(v14 + 200) = v31;
    swift_endAccess();
  }

  v28 = *(v0 + 120);
  v27 = *(v0 + 128);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100FA0A8C()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 232);
  v3 = *(v0 + 96);
  swift_beginAccess();
  if (!*(*(v3 + 200) + 16) || (v4 = *(v0 + 88), v5 = *(v3 + 200), , sub_1000210EC(v4), LOBYTE(v4) = v6, , (v4 & 1) == 0))
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 120);
    v9 = *(v0 + 88);
    (*(v0 + 144))(v8, v9, *(v0 + 104));
    v10 = type metadata accessor for BTRSSIFilter();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_10058D7E8(v8, v2, 0);
    swift_beginAccess();
    v14 = *(v3 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v3 + 200);
    *(v3 + 200) = 0x8000000000000000;
    sub_101001ED8(v13, v9, isUniquelyReferenced_nonNull_native);
    *(v3 + 200) = v20;
    swift_endAccess();
  }

  v17 = *(v0 + 120);
  v16 = *(v0 + 128);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100FA0BF8()
{
  v29 = v0;
  v1 = *(v0 + 208);

  v2 = *(v0 + 224);
  v3 = *(v0 + 136);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136446210;
    *(v0 + 80) = v2;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v28);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch TX Power due to %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  v11 = *(v0 + 96);
  swift_beginAccess();
  if (!*(*(v11 + 200) + 16) || (v12 = *(v0 + 88), v13 = *(v11 + 200), , sub_1000210EC(v12), LOBYTE(v12) = v14, , (v12 & 1) == 0))
  {
    v15 = *(v0 + 152);
    v16 = *(v0 + 120);
    v17 = *(v0 + 88);
    (*(v0 + 144))(v16, v17, *(v0 + 104));
    v18 = type metadata accessor for BTRSSIFilter();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_10058D7E8(v16, 0, 0);
    swift_beginAccess();
    v22 = *(v11 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v11 + 200);
    *(v11 + 200) = 0x8000000000000000;
    sub_101001ED8(v21, v17, isUniquelyReferenced_nonNull_native);
    *(v11 + 200) = v28;
    swift_endAccess();
  }

  v25 = *(v0 + 120);
  v24 = *(v0 + 128);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100FA0E84(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100FA0F7C, v1, 0);
}

uint64_t sub_100FA0F7C()
{
  v45 = v0;
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C468);
  v43 = *(v2 + 16);
  v43(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = v11;
    v17 = *(v10 + 8);
    v17(v9, v16);
    v18 = sub_1000136BC(v13, v15, &v44);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "startScanning for beacon %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v42);
  }

  else
  {

    v19 = v11;
    v17 = *(v10 + 8);
    v17(v9, v19);
  }

  v20 = v0[8];
  v21 = v0[9];
  v22 = v0[5];
  v23 = v0[6];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v24 = *(v21 + 72);
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  v43(v26 + v25, v22, v20);
  swift_beginAccess();
  sub_10062536C(v26);
  swift_setDeallocating();
  v17(v26 + v25, v20);
  swift_deallocClassInstance();
  swift_endAccess();
  if (*(v23 + 176))
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Existing scan in progress. Not starting a new one.", v29, 2u);
    }
  }

  else
  {
    v30 = v0[6];
    v31 = v0[7];
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    v34 = sub_100FC4DB8(&qword_1016C2128, v33, type metadata accessor for BTFindingService);
    v35 = swift_allocObject();
    v35[2] = v30;
    v35[3] = v34;
    v35[4] = v30;
    swift_retain_n();
    v36 = sub_100A838D4(0, 0, v31, &unk_1013F6138, v35);
    v37 = *(v23 + 176);
    *(v23 + 176) = v36;
  }

  v38 = v0[10];
  v39 = v0[7];

  v40 = v0[1];

  return v40();
}

uint64_t sub_100FA1424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = *(*(type metadata accessor for BeaconKeyManager.IndexInformation(0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&unk_1016C1190, &qword_101392FF8) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v15 = type metadata accessor for DiscoveredObject(0);
  v4[25] = v15;
  v16 = *(v15 - 8);
  v4[26] = v16;
  v17 = *(v16 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&qword_1016973D0, &qword_10138BF60) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v19 = sub_1000BC4D4(&unk_1016C11A0, &qword_10138BF68);
  v4[31] = v19;
  v20 = *(v19 - 8);
  v4[32] = v20;
  v21 = *(v20 + 64) + 15;
  v4[33] = swift_task_alloc();
  v22 = sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  v4[34] = v22;
  v23 = *(v22 - 8);
  v4[35] = v23;
  v24 = *(v23 + 64) + 15;
  v4[36] = swift_task_alloc();
  v25 = type metadata accessor for ScanMode();
  v4[37] = v25;
  v26 = *(v25 - 8);
  v4[38] = v26;
  v27 = *(v26 + 64) + 15;
  v4[39] = swift_task_alloc();
  v28 = sub_1000BC4D4(&unk_1016C2160, &qword_10138BF78);
  v4[40] = v28;
  v29 = *(v28 - 8);
  v4[41] = v29;
  v30 = *(v29 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return _swift_task_switch(sub_100FA1868, a4, 0);
}

uint64_t sub_100FA1868()
{
  v0[44] = *(v0[11] + 136);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[45] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v9 = swift_task_alloc();
  v0[46] = v9;
  v10 = type metadata accessor for CentralManager();
  v11 = sub_100FC4DB8(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v9 = v0;
  v9[1] = sub_100FA1A50;

  return CentralManagerProtocol.await(states:)(v5, v10, v11);
}

uint64_t sub_100FA1A50()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_100FA3A44;
  }

  else
  {
    v6 = *(v2 + 360);
    v7 = *(v2 + 88);

    v5 = sub_100FA1B78;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100FA1B78()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = enum case for ScanUseCase.btFinding(_:);
  v5 = type metadata accessor for ScanUseCase();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for ScanMode.useCase(_:), v3);
  v6 = *(&async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:) + 1);
  v12 = &async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:) + async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:);
  v7 = swift_task_alloc();
  v0[48] = v7;
  *v7 = v0;
  v7[1] = sub_100FA1CB4;
  v8 = v0[43];
  v9 = v0[44];
  v10 = v0[39];

  return (v12)(v8, v10, 0xD02AB486CEDC0000, 0);
}

uint64_t sub_100FA1CB4()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 304);
  v6 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 392) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  if (v0)
  {
    v9 = sub_100FA3B98;
  }

  else
  {
    v9 = sub_100FA1E3C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100FA1E3C()
{
  v1 = v0[36];
  v2 = v0[34];
  v11 = v0[33];
  v3 = v0[30];
  v4 = v0[11];
  (*(v0[41] + 16))(v0[42], v0[43], v0[40]);
  v0[50] = type metadata accessor for Peripheral();
  sub_1000041A4(&qword_1016973E0, &unk_1016C2160, &qword_10138BF78);
  AsyncCompactMapSequence.init(_:transform:)();
  AsyncCompactMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v0[51] = sub_100FC4DB8(&qword_1016C2128, v5, type metadata accessor for BTFindingService);
  swift_beginAccess();
  swift_beginAccess();
  v6 = v0[51];
  v7 = v0[11];
  v8 = swift_task_alloc();
  v0[52] = v8;
  *v8 = v0;
  v8[1] = sub_100FA2070;
  v9 = v0[33];

  return sub_1011EBA70(v7, v6);
}

uint64_t sub_100FA2070(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  *(v4 + 424) = a1;
  *(v4 + 432) = v1;

  v7 = *(v3 + 88);
  if (v1)
  {
    v8 = sub_100FA3CE4;
  }

  else
  {
    v8 = sub_100FA21A4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100FA21A4()
{
  if (v0[53])
  {
    v1 = v0[50];
    sub_100FC4DB8(&unk_1016C11B0, 255, &type metadata accessor for Peripheral);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[55] = v3;
    v0[56] = v2;

    return _swift_task_switch(sub_100FA2490, v3, v2);
  }

  else
  {
    (*(v0[32] + 8))(v0[33], v0[31]);
    if (qword_101695108 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C468);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Done scanning", v7, 2u);
    }

    v8 = v0[42];
    v9 = v0[43];
    v10 = v0[40];
    v11 = v0[41];
    v12 = v0[39];
    v13 = v0[33];
    v15 = v0[29];
    v14 = v0[30];
    v19 = v0[28];
    v20 = v0[27];
    v21 = v0[24];
    v22 = v0[23];
    v23 = v0[22];
    v24 = v0[21];
    v25 = v0[20];
    v26 = v0[19];
    v16 = v0[18];
    v27 = v0[15];
    v28 = v0[14];
    (*(v0[35] + 8))(v0[36], v0[34]);
    (*(v11 + 8))(v9, v10);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100FA2490()
{
  v1 = v0[53];
  v2 = v0[11];
  v0[57] = dispatch thunk of Peripheral.advertisementData.getter();

  return _swift_task_switch(sub_100FA2500, v2, 0);
}

uint64_t sub_100FA2500()
{
  v25 = v0;
  v1 = v0[57];
  if (v1)
  {
    v0[58] = sub_100695B6C(v1);
    v2 = v0[55];
    v3 = v0[56];

    return _swift_task_switch(sub_100FA27D0, v2, v3);
  }

  else
  {
    if (qword_101695108 != -1)
    {
      swift_once();
    }

    v4 = v0[53];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C468);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[53];
    if (v8)
    {
      v10 = v0[13];
      v11 = v0[14];
      v12 = v0[12];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136446210;
      v24 = v14;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v10 + 8))(v11, v12);
      v18 = sub_1000136BC(v15, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing advertisementData for %{public}s!", v13, 0xCu);
      sub_100007BAC(v14);
    }

    else
    {
    }

    v19 = v0[51];
    v20 = v0[11];
    v21 = swift_task_alloc();
    v0[52] = v21;
    *v21 = v0;
    v21[1] = sub_100FA2070;
    v22 = v0[33];

    return sub_1011EBA70(v20, v19);
  }
}

uint64_t sub_100FA27D0()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 88);
  *(v0 + 472) = dispatch thunk of Peripheral.rssi.getter();
  *(v0 + 560) = v3;

  return _swift_task_switch(sub_100FA2844, v2, 0);
}

uint64_t sub_100FA2844()
{
  v42 = v0;
  if (*(v0 + 560))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 472);
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  sub_1002DEDAC(*(v0 + 464), v1, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 192), &unk_1016C1190, &qword_101392FF8);
    if (qword_101695108 == -1)
    {
LABEL_8:
      v5 = *(v0 + 456);
      v6 = *(v0 + 424);
      v7 = type metadata accessor for Logger();
      sub_1000076D4(v7, qword_10177C468);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 456);
      v12 = *(v0 + 424);
      if (v10)
      {
        v13 = *(v0 + 104);
        v14 = *(v0 + 112);
        v15 = *(v0 + 96);
        v16 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v16 = 136446466;
        v41 = v40;
        Peripheral.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*(v13 + 8))(v14, v15);
        v20 = sub_1000136BC(v17, v19, &v41);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
        v21 = Dictionary.description.getter();
        v23 = v22;

        v24 = sub_1000136BC(v21, v23, &v41);

        *(v16 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v8, v9, "Could not parse advertisementData for %{public}s: %s", v16, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v36 = *(v0 + 408);
      v37 = *(v0 + 88);
      v38 = swift_task_alloc();
      *(v0 + 416) = v38;
      *v38 = v0;
      v38[1] = sub_100FA2070;
      v39 = *(v0 + 264);

      return sub_1011EBA70(v37, v36);
    }

LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  v25 = *(v0 + 456);
  v26 = *(v0 + 232);
  v27 = *(v0 + 192);
  v28 = *(v0 + 200);

  sub_100FC4778(v27, v26, type metadata accessor for DiscoveredObject);
  v29 = (v26 + *(v28 + 36));
  v31 = *v29;
  v30 = v29[1];
  v32 = swift_task_alloc();
  *(v0 + 480) = v32;
  *v32 = v0;
  v32[1] = sub_100FA2CA0;
  v33 = *(v0 + 184);
  v34 = *(v0 + 88);

  return sub_100FA8594(v33, v31, v30);
}

uint64_t sub_100FA2CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_100FA3F9C;
  }

  else
  {
    v6 = sub_100FA2DCC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FA2DCC()
{
  v78 = v0;
  v1 = v0[22];
  sub_1000D2A70(v0[23], v1, &qword_10169CBD8, &unk_1013996D0);
  v2 = type metadata accessor for BeaconDetails(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[53];
    v4 = v0[29];
    v5 = v0[22];
    sub_10000B3A8(v0[23], &qword_10169CBD8, &unk_1013996D0);

LABEL_9:
    sub_10000B3A8(v5, &qword_10169CBD8, &unk_1013996D0);
    sub_100FC47E0(v4, type metadata accessor for DiscoveredObject);
    v40 = v0[51];
    v41 = v0[11];
    v42 = swift_task_alloc();
    v0[52] = v42;
    *v42 = v0;
    v42[1] = sub_100FA2070;
    v43 = v0[33];

    return sub_1011EBA70(v41, v40);
  }

  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[15];
  v12 = v0[11];
  sub_100FC4840(v7, v11, type metadata accessor for BeaconKeyManager.IndexInformation);
  sub_100FC47E0(v7, type metadata accessor for BeaconDetails);
  v13 = *(v10 + 16);
  v13(v8, v11, v9);
  sub_100FC47E0(v11, type metadata accessor for BeaconKeyManager.IndexInformation);
  (*(v10 + 32))(v6, v8, v9);
  v14 = *(v12 + 192);

  LOBYTE(v6) = sub_100037E20(v6, v14);

  if ((v6 & 1) == 0)
  {
    v36 = v0[53];
    v37 = v0[17];

    v38 = *(v37 + 8);
    v4 = v0[29];
    v5 = v0[23];
    v39 = v0[17] + 8;
    v38(v0[21], v0[16]);
    goto LABEL_9;
  }

  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v15 = v0[28];
  v16 = v0[29];
  v17 = v0[27];
  v18 = v0[21];
  v19 = v0[19];
  v20 = v0[16];
  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177C468);
  v76 = v13;
  v13(v19, v18, v20);
  sub_100FC4840(v16, v15, type metadata accessor for DiscoveredObject);
  sub_100FC4840(v16, v17, type metadata accessor for DiscoveredObject);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[28];
  if (v24)
  {
    v72 = v0[25];
    v73 = v0[27];
    v75 = v23;
    v26 = v0[19];
    v27 = v0[16];
    v28 = v0[17];
    v29 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v77 = v74;
    *v29 = 136315650;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    log = v22;
    v33 = *(v28 + 8);
    v33(v26, v27);
    v34 = sub_1000136BC(v30, v32, &v77);

    *(v29 + 4) = v34;
    *(v29 + 12) = 1024;
    LODWORD(v27) = *(v25 + *(v72 + 60));
    sub_100FC47E0(v25, type metadata accessor for DiscoveredObject);
    *(v29 + 14) = v27;
    *(v29 + 18) = 2048;
    v35 = *(v73 + *(v72 + 40));
    sub_100FC47E0(v73, type metadata accessor for DiscoveredObject);
    *(v29 + 20) = v35;
    _os_log_impl(&_mh_execute_header, log, v75, "Found matching beacon %s. RSSI: %d. Channel: %ld", v29, 0x1Cu);
    sub_100007BAC(v74);
  }

  else
  {
    v45 = v0[19];
    v46 = v0[16];
    v47 = v0[17];
    sub_100FC47E0(v0[27], type metadata accessor for DiscoveredObject);
    sub_100FC47E0(v25, type metadata accessor for DiscoveredObject);

    v33 = *(v47 + 8);
    v33(v45, v46);
  }

  v0[62] = v33;
  v48 = v0[29];
  v49 = v0[25];
  v50 = v0[21];
  v51 = v0[11];
  v52 = *(v48 + v49[10]);
  v53 = v49[7];
  v54 = *(v48 + v49[15]);
  v55 = objc_allocWithZone(SPBTRSSIMeasurement);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v57 = Date._bridgeToObjectiveC()().super.isa;
  v58 = [v55 initWithBeaconIdentifier:isa timestamp:v57 channel:v52 rssi:v54];
  v0[63] = v58;

  v59 = *(v51 + 200);
  if (!*(v59 + 16))
  {
    goto LABEL_17;
  }

  v60 = v0[21];
  v61 = *(v51 + 200);

  v62 = sub_1000210EC(v60);
  if ((v63 & 1) == 0)
  {

LABEL_17:
    v66 = v0[18];
    v76(v66, v0[21], v0[16]);
    v67 = type metadata accessor for BTRSSIFilter();
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    swift_allocObject();
    v0[67] = sub_10058D7E8(v66, 0, 0);
    v70 = swift_task_alloc();
    v0[68] = v70;
    *v70 = v0;
    v70[1] = sub_100FA3764;
    v65 = v58;
    goto LABEL_18;
  }

  v0[64] = *(*(v59 + 56) + 8 * v62);

  v64 = swift_task_alloc();
  v0[65] = v64;
  *v64 = v0;
  v64[1] = sub_100FA34E8;
  v65 = v58;
LABEL_18:

  return sub_10058DB6C(v65);
}

uint64_t sub_100FA34E8(uint64_t a1)
{
  v2 = *(*v1 + 520);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 528) = a1;

  return _swift_task_switch(sub_100FA3600, v3, 0);
}

uint64_t sub_100FA3600()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 512);

  v3 = *(v0 + 528);
  v4 = *(v0 + 504);
  v5 = *(v0 + 424);
  v6 = *(v0 + 88);
  v7 = v1;
  sub_100F9F950(v4);
  sub_100F9F6E8(v3);

  v8 = *(v0 + 232);
  v9 = *(v0 + 184);
  v10 = *(v0 + 136) + 8;
  (*(v0 + 496))(*(v0 + 168), *(v0 + 128));
  sub_10000B3A8(v9, &qword_10169CBD8, &unk_1013996D0);
  sub_100FC47E0(v8, type metadata accessor for DiscoveredObject);
  v11 = *(v0 + 408);
  v12 = *(v0 + 88);
  v13 = swift_task_alloc();
  *(v0 + 416) = v13;
  *v13 = v0;
  v13[1] = sub_100FA2070;
  v14 = *(v0 + 264);

  return sub_1011EBA70(v12, v11);
}

uint64_t sub_100FA3764(uint64_t a1)
{
  v2 = *(*v1 + 544);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 552) = a1;

  return _swift_task_switch(sub_100FA387C, v3, 0);
}

uint64_t sub_100FA387C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 168);
  v4 = *(v0 + 88);
  swift_beginAccess();
  v5 = v1;

  v6 = *(v4 + 200);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v4 + 200);
  *(v4 + 200) = 0x8000000000000000;
  sub_101001ED8(v2, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 200) = v20;
  swift_endAccess();

  v8 = *(v0 + 552);
  v9 = *(v0 + 504);
  v10 = *(v0 + 424);
  v11 = *(v0 + 88);
  sub_100F9F950(v9);
  sub_100F9F6E8(v8);

  v12 = *(v0 + 232);
  v13 = *(v0 + 184);
  v14 = *(v0 + 136) + 8;
  (*(v0 + 496))(*(v0 + 168), *(v0 + 128));
  sub_10000B3A8(v13, &qword_10169CBD8, &unk_1013996D0);
  sub_100FC47E0(v12, type metadata accessor for DiscoveredObject);
  v15 = *(v0 + 408);
  v16 = *(v0 + 88);
  v17 = swift_task_alloc();
  *(v0 + 416) = v17;
  *v17 = v0;
  v17[1] = sub_100FA2070;
  v18 = *(v0 + 264);

  return sub_1011EBA70(v16, v15);
}

uint64_t sub_100FA3A44()
{
  v1 = v0[45];

  v22 = v0[47];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[39];
  v5 = v0[36];
  v6 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[24];
  v14 = v0[23];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[20];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[15];
  v21 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100FA3B98()
{
  v21 = v0[49];
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[33];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100FA3CE4()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  v1 = v0[54];
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C468);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error during scan: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v8 = v0[42];
  v9 = v0[43];
  v10 = v0[40];
  v11 = v0[41];
  v12 = v0[39];
  v13 = v0[33];
  v15 = v0[29];
  v14 = v0[30];
  v19 = v0[28];
  v20 = v0[27];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v16 = v0[18];
  v27 = v0[15];
  v28 = v0[14];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v11 + 8))(v9, v10);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100FA3F9C()
{
  v1 = v0[53];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[29];

  (*(v3 + 8))(v2, v4);
  sub_100FC47E0(v5, type metadata accessor for DiscoveredObject);
  v6 = v0[61];
  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C468);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = _convertErrorToNSError(_:)();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error during scan: %{public}@", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  v13 = v0[42];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[41];
  v17 = v0[39];
  v18 = v0[33];
  v20 = v0[29];
  v19 = v0[30];
  v24 = v0[28];
  v25 = v0[27];
  v26 = v0[24];
  v27 = v0[23];
  v28 = v0[22];
  v29 = v0[21];
  v30 = v0[20];
  v31 = v0[19];
  v21 = v0[18];
  v32 = v0[15];
  v33 = v0[14];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v16 + 8))(v14, v15);

  v22 = v0[1];

  return v22();
}

uint64_t sub_100FA4284(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100FA437C, v1, 0);
}

uint64_t sub_100FA437C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  swift_beginAccess();
  sub_1010F6584(v5, v1);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  (*(v4 + 16))(v2, v5, v3);
  swift_beginAccess();
  sub_1001E1CC8(0, v2);
  swift_endAccess();
  if (*(*(v6 + 192) + 16))
  {
    v8 = v0[12];
    v7 = v0[13];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_100FA4518;
    v12 = v0[9];

    return sub_100FA4648();
  }
}

uint64_t sub_100FA4518()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v7 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100FA4648()
{
  v1[14] = v0;
  v2 = type metadata accessor for UUID();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016C2138, &qword_1013F60F0) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_100FA4758, v0, 0);
}

uint64_t sub_100FA4758()
{
  v50 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 168) = sub_1000076D4(v1, qword_1016C1CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v49 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0x6164696C61766E69, 0xEC00000029286574, &v49);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 112);
  swift_beginAccess();
  v7 = v6[24];
  v6[24] = &_swiftEmptySetSingleton;

  swift_beginAccess();
  v8 = v6[25];
  v6[25] = _swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v9 = v6[26];
  v6[26] = _swiftEmptyDictionarySingleton;

  if (v6[22])
  {
    v10 = v6[22];

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();

    v11 = v6[22];
  }

  v12 = *(v0 + 112);
  v6[22] = 0;

  swift_beginAccess();
  v13 = *(v12 + 216);
  *(v0 + 176) = v13;
  v14 = *(v13 + 32);
  *(v0 + 248) = v14;
  v15 = -1;
  v16 = -1 << v14;
  if (-(-1 << v14) < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & *(v13 + 64);

  if (v17)
  {
    v18 = 0;
LABEL_14:
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    v23 = *(v0 + 120);
    v24 = *(v0 + 128);
    v48 = (v17 - 1) & v17;
    v25 = __clz(__rbit64(v17)) | (v18 << 6);
    (*(v24 + 16))(v22, *(v13 + 48) + *(v24 + 72) * v25, v23);
    v26 = (*(v13 + 56) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
    v30 = (v21 + *(v29 + 48));
    (*(v24 + 32))(v21, v22, v23);
    *v30 = v27;
    v30[1] = v28;
    (*(*(v29 - 8) + 56))(v21, 0, 1, v29);

    v31 = v48;
    v20 = v18;
  }

  else
  {
    v19 = 0;
    v20 = ((63 - v16) >> 6) - 1;
    while (v20 != v19)
    {
      v18 = v19 + 1;
      v17 = *(v13 + 72 + 8 * v19++);
      if (v17)
      {
        goto LABEL_14;
      }
    }

    v46 = *(v0 + 152);
    v47 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
    v31 = 0;
  }

  *(v0 + 184) = v31;
  *(v0 + 192) = v20;
  v32 = *(v0 + 160);
  sub_1000D2AD8(*(v0 + 152), v32, &qword_1016C2138, &qword_1013F60F0);
  v33 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
  {
    v34 = *(v0 + 176);

    v35 = swift_task_alloc();
    *(v0 + 216) = v35;
    *v35 = v0;
    v35[1] = sub_100FA52C4;
    v36 = *(v0 + 112);

    return sub_100FA6AC8();
  }

  else
  {
    v38 = *(v0 + 160);
    v40 = *(v0 + 128);
    v39 = *(v0 + 136);
    v41 = *(v0 + 120);
    v42 = *(v38 + *(v33 + 48));

    (*(v40 + 32))(v39, v38, v41);
    v43 = swift_task_alloc();
    *(v0 + 200) = v43;
    *v43 = v0;
    v43[1] = sub_100FA4CE0;
    v44 = *(v0 + 136);
    v45 = *(v0 + 112);

    return sub_100FA58D8(v44);
  }
}

uint64_t sub_100FA4CE0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = swift_task_alloc();
  v2[26] = v5;
  *v5 = v4;
  v5[1] = sub_100FA4E28;
  v6 = v2[14];
  v7 = v2[17];

  return sub_100FA5EC8(v7);
}

uint64_t sub_100FA4E28()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100FA4F38, v2, 0);
}

uint64_t sub_100FA4F38()
{
  result = (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  if (v2)
  {
    v4 = *(v0 + 176);
LABEL_11:
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v35 = (v2 - 1) & v2;
    v13 = __clz(__rbit64(v2)) | (v3 << 6);
    (*(v12 + 16))(v9, *(v4 + 48) + *(v12 + 72) * v13, v11);
    v14 = (*(v4 + 56) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
    v18 = (v10 + *(v17 + 48));
    (*(v12 + 32))(v10, v9, v11);
    *v18 = v15;
    v18[1] = v16;
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);

    v19 = v35;
    v7 = v3;
LABEL_12:
    *(v0 + 184) = v19;
    *(v0 + 192) = v7;
    v20 = *(v0 + 160);
    sub_1000D2AD8(*(v0 + 152), v20, &qword_1016C2138, &qword_1013F60F0);
    v21 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {
      v22 = *(v0 + 176);

      v23 = swift_task_alloc();
      *(v0 + 216) = v23;
      *v23 = v0;
      v23[1] = sub_100FA52C4;
      v24 = *(v0 + 112);

      return sub_100FA6AC8();
    }

    else
    {
      v25 = *(v0 + 160);
      v27 = *(v0 + 128);
      v26 = *(v0 + 136);
      v28 = *(v0 + 120);
      v29 = *(v25 + *(v21 + 48));

      (*(v27 + 32))(v26, v25, v28);
      v30 = swift_task_alloc();
      *(v0 + 200) = v30;
      *v30 = v0;
      v30[1] = sub_100FA4CE0;
      v31 = *(v0 + 136);
      v32 = *(v0 + 112);

      return sub_100FA58D8(v31);
    }
  }

  else
  {
    v5 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v5 <= (v3 + 1))
    {
      v6 = v3 + 1;
    }

    else
    {
      v6 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v7 = v6 - 1;
    while (1)
    {
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        v33 = *(v0 + 152);
        v34 = sub_1000BC4D4(&unk_1016C2140, &unk_1013F60F8);
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
        v19 = 0;
        goto LABEL_12;
      }

      v4 = *(v0 + 176);
      v2 = *(v4 + 8 * v8 + 64);
      ++v3;
      if (v2)
      {
        v3 = v8;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100FA52C4()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 224) = v4;
  *v4 = v3;
  v4[1] = sub_100FA5404;
  v5 = *(v1 + 112);

  return sub_100FA6F48();
}

uint64_t sub_100FA5404()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {
    v4 = v3[14];

    return _swift_task_switch(sub_100FA56DC, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[30] = v5;
    *v5 = v3;
    v5[1] = sub_100FA5570;
    v6 = v3[14];

    return sub_100FA74A0();
  }
}

uint64_t sub_100FA5570()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 136);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100FA56DC()
{
  v15 = v0;
  v1 = v0[29];
  v2 = v0[21];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[29];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0x6164696C61766E69, 0xEC00000029286574, &v14);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Failed to stopLocalFindableScanning %{public}@", v7, 0x16u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {
  }

  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_100FA5570;
  v12 = v0[14];

  return sub_100FA74A0();
}

uint64_t sub_100FA58D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100FA5998, v1, 0);
}

uint64_t sub_100FA5998()
{
  v21 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_1000136BC(0xD000000000000019, 0x80000001013758A0, &v20);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v20);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  *(v0[3] + 185) = 0;
  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_100FA5C60;
  v18 = v0[3];

  return sub_100FA74A0();
}

uint64_t sub_100FA5C60()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v3;
  v4[1] = sub_100FA5DB8;
  v5 = v1[3];
  v6 = v1[2];

  return sub_100FAAD8C(v6);
}

uint64_t sub_100FA5DB8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100FA5EC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100FA6028, v1, 0);
}

uint64_t sub_100FA6028()
{
  v18 = v0;
  if (*(v0[3] + 186) == 1)
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v0[11] = sub_1000076D4(v1, qword_1016C1CB0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Saving .disappeared event", v4, 2u);
    }

    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_100FA62EC;

    return daemon.getter();
  }

  else
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016C1CB0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000136BC(0xD00000000000001CLL, 0x8000000101375880, &v17);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s Never detected nearby. NOT saving .disappeared event", v10, 0xCu);
      sub_100007BAC(v11);
    }

    v12 = v0[10];
    v13 = v0[7];
    v14 = v0[4];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100FA62EC(uint64_t a1)
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
  v9 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100FC4DB8(&qword_10169A090, 255, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_100FA64D0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100FA64D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_100FA6940;
  }

  else
  {
    v9 = v4[13];
    v10 = v4[3];

    v4[16] = a1;
    v8 = sub_100FA6610;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100FA6610()
{
  v1 = v0[10];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  (*(v2 + 16))(v0[7], v0[2], v3);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  (*(v2 + 56))(v4, 1, 1, v3);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100FA6720;
  v6 = v0[16];
  v7 = v0[10];
  v8 = v0[4];

  return sub_100D739FC(v7, v8);
}

uint64_t sub_100FA6720()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v8 = *v0;

  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100FA68C0, v6, 0);
}

uint64_t sub_100FA68C0()
{
  v1 = v0[16];

  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100FA6940()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save .disappeared event %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[10];
  v12 = v0[7];
  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100FA6AE8()
{
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C1CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Clearing throttles", v4, 2u);
  }

  if (qword_101695130 != -1)
  {
    swift_once();
  }

  v0[3] = qword_1016C1CE0;
  v0[4] = sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  v0[5] = sub_1000041A4(&unk_1016C2150, &qword_1016A4720, &qword_1013B1060);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FA6CA4, v6, v5);
}

uint64_t sub_100FA6CA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  dispatch thunk of AsyncKeyedThrottle.clearThrottleForKeysExcept(keys:)();

  return _swift_task_switch(sub_100FA6D14, v1, 0);
}

uint64_t sub_100FA6D14()
{
  if (qword_101695120 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v0[6] = qword_1016C1CD0;
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FA6DC0, v4, v3);
}

uint64_t sub_100FA6DC0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  dispatch thunk of AsyncKeyedThrottle.clearThrottleForKeysExcept(keys:)();

  return _swift_task_switch(sub_100FA6E34, v2, 0);
}

uint64_t sub_100FA6E34()
{
  if (qword_101695128 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v0[7] = qword_1016C1CD8;
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FA6EE0, v4, v3);
}

uint64_t sub_100FA6EE0()
{
  v1 = *(v0 + 56);
  dispatch thunk of AsyncKeyedThrottle.clearThrottleForKeysExcept(keys:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FA6F68()
{
  v10 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C1CB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD00000000000001BLL, 0x80000001013758C0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_100FA7114;

  return daemon.getter();
}

uint64_t sub_100FA7114(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100FC4DB8(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_100FA72F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100FA72F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_10050A90C;
  }

  else
  {
    v9 = v4[4];

    v4[7] = a1;
    v8 = sub_100FA7434;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100FA7434()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  sub_101219DE0();

  return _swift_task_switch(sub_100BCB8D8, v2, 0);
}

uint64_t sub_100FA74A0()
{
  v1[5] = v0;
  v2 = type metadata accessor for UUID();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016C2138, &qword_1013F60F0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100FA75BC, v0, 0);
}

uint64_t sub_100FA75BC()
{
  v74 = v0;
  if (qword_101695110 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    *(v0 + 104) = sub_1000076D4(v1, qword_1016C1CB0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v73 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101375850, &v73);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
      sub_100007BAC(v5);
    }

    v6 = *(v0 + 40);
    *(v6 + 184) = 0;
    swift_beginAccess();
    v7 = *(v6 + 216);
    *(v0 + 112) = v7;
    v8 = *(v7 + 32);
    *(v0 + 168) = v8;
    v9 = 1 << v8;
    v10 = v9 < 64 ? ~(-1 << v9) : -1;
    v11 = v10 & *(v7 + 64);

    v12 = 0;
    v13 = &unk_1016C2140;
    v70 = v0;
    if (v11)
    {
      break;
    }

LABEL_9:
    v15 = ((1 << *(v0 + 168)) + 63) >> 6;
    if (v15 <= (v12 + 1))
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = ((1 << *(v0 + 168)) + 63) >> 6;
    }

    v17 = v16 - 1;
    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        v36 = *(v0 + 88);
        v37 = sub_1000BC4D4(v13, &unk_1013F60F8);
        (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
        v11 = 0;
        goto LABEL_18;
      }

      v14 = *(v0 + 112);
      v11 = *(v14 + 8 * v18 + 64);
      ++v12;
      if (v11)
      {
        v12 = v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  while (1)
  {
    v14 = *(v0 + 112);
LABEL_17:
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);
    v23 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v24 = v23 | (v12 << 6);
    (*(v21 + 16))(v20, *(v14 + 48) + *(v21 + 72) * v24, v22);
    v25 = (*(v14 + 56) + 16 * v24);
    v26 = *v25;
    v71 = v25[1];
    v27 = sub_1000BC4D4(v13, &unk_1013F60F8);
    v28 = v13;
    v29 = (v19 + *(v27 + 48));
    (*(v21 + 32))(v19, v20, v22);
    *v29 = v26;
    v29[1] = v71;
    v13 = v28;
    v0 = v70;
    (*(*(v27 - 8) + 56))(v19, 0, 1, v27);

    v17 = v12;
LABEL_18:
    *(v0 + 120) = v11;
    *(v0 + 128) = v17;
    v30 = *(v0 + 96);
    sub_1000D2AD8(*(v0 + 88), v30, &qword_1016C2138, &qword_1013F60F0);
    v31 = sub_1000BC4D4(v13, &unk_1013F60F8);
    if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
    {
      v38 = *(v0 + 112);
      v39 = *(v0 + 40);

      v40 = *(v39 + 168);
      v41 = *(&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + 1);
      v72 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
      v42 = swift_task_alloc();
      *(v0 + 160) = v42;
      *v42 = v0;
      v42[1] = sub_100FA83D0;
      goto LABEL_28;
    }

    v32 = *(v0 + 72);
    v33 = *(v0 + 48);
    v34 = *(v0 + 56);
    v35 = *(*(v0 + 96) + *(v31 + 48));
    *(v0 + 136) = v35;
    (*(v34 + 32))(v32);
    if (v35)
    {
      break;
    }

    (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
    v12 = v17;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v43 = *(v0 + 104);
  (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 72), *(v0 + 48));

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v0 + 80);
    v47 = *(v0 + 56);
    v68 = *(v0 + 64);
    v48 = *(v0 + 48);
    v49 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v49 = 136315651;
    v69 = v45;
    WorkItemQueue.WorkItem.id.getter();
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    log = v44;
    v53 = *(v47 + 8);
    v53(v46, v48);
    v54 = sub_1000136BC(v50, v52, &v73);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2160;
    *(v49 + 14) = 1752392040;
    *(v49 + 22) = 2081;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v53(v68, v48);
    v58 = sub_1000136BC(v55, v57, &v73);

    *(v49 + 24) = v58;
    _os_log_impl(&_mh_execute_header, log, v69, "Canceling %s for %{private,mask.hash}s.", v49, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v59 = v0;
    v62 = v0 + 56;
    v61 = *(v0 + 56);
    v60 = *(v62 + 8);
    v63 = *(v59 + 48);

    v53 = *(v61 + 8);
    v53(v60, v63);
    v0 = v59;
  }

  *(v0 + 144) = v53;
  v64 = *(&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + 1);
  v72 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
  v65 = swift_task_alloc();
  *(v0 + 152) = v65;
  *v65 = v0;
  v65[1] = sub_100FA7CE0;
LABEL_28:

  return v72();
}

uint64_t sub_100FA7CE0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100FA7DF0, v2, 0);
}

uint64_t sub_100FA7DF0()
{
  v67 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  result = v2(v3, v4);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = &unk_1016C2140;
  if (v7)
  {
    while (1)
    {
      v10 = *(v0 + 112);
LABEL_11:
      v15 = *(v0 + 88);
      v64 = *(v0 + 80);
      v17 = *(v0 + 48);
      v16 = *(v0 + 56);
      v18 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v19 = v18 | (v8 << 6);
      v20 = *(v10 + 48) + *(v16 + 72) * v19;
      (*(v16 + 16))();
      v21 = (*(v10 + 56) + 16 * v19);
      v22 = *v21;
      v62 = v21[1];
      v23 = sub_1000BC4D4(v9, &unk_1013F60F8);
      v24 = v9;
      v25 = (v15 + *(v23 + 48));
      (*(v16 + 32))(v15, v64, v17);
      *v25 = v22;
      v25[1] = v62;
      v9 = v24;
      (*(*(v23 - 8) + 56))(v15, 0, 1, v23);

      v13 = v8;
LABEL_12:
      *(v0 + 120) = v7;
      *(v0 + 128) = v13;
      v26 = *(v0 + 96);
      sub_1000D2AD8(*(v0 + 88), v26, &qword_1016C2138, &qword_1013F60F0);
      v27 = sub_1000BC4D4(v9, &unk_1013F60F8);
      if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
      {
        v34 = *(v0 + 112);
        v35 = *(v0 + 40);

        v36 = *(v35 + 168);
        v37 = *(&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + 1);
        v65 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
        v38 = swift_task_alloc();
        *(v0 + 160) = v38;
        *v38 = v0;
        v38[1] = sub_100FA83D0;
        goto LABEL_22;
      }

      v28 = *(v0 + 72);
      v29 = *(v0 + 48);
      v30 = *(v0 + 56);
      v31 = *(*(v0 + 96) + *(v27 + 48));
      *(v0 + 136) = v31;
      (*(v30 + 32))(v28);
      if (v31)
      {
        break;
      }

      result = (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
      v8 = v13;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    v39 = *(v0 + 104);
    (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 72), *(v0 + 48));

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 80);
      v43 = *(v0 + 56);
      v61 = *(v0 + 64);
      v44 = *(v0 + 48);
      v45 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v45 = 136315651;
      v63 = v41;
      WorkItemQueue.WorkItem.id.getter();
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      log = v40;
      v49 = *(v43 + 8);
      v49(v42, v44);
      v50 = sub_1000136BC(v46, v48, &v66);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2160;
      *(v45 + 14) = 1752392040;
      *(v45 + 22) = 2081;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      v49(v61, v44);
      v54 = sub_1000136BC(v51, v53, &v66);

      *(v45 + 24) = v54;
      _os_log_impl(&_mh_execute_header, log, v63, "Canceling %s for %{private,mask.hash}s.", v45, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v56 = *(v0 + 56);
      v55 = *(v0 + 64);
      v57 = *(v0 + 48);

      v49 = *(v56 + 8);
      v49(v55, v57);
    }

    *(v0 + 144) = v49;
    v58 = *(&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + 1);
    v65 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
    v59 = swift_task_alloc();
    *(v0 + 152) = v59;
    *v59 = v0;
    v59[1] = sub_100FA7CE0;
LABEL_22:

    return v65();
  }

  else
  {
LABEL_3:
    v11 = ((1 << *(v0 + 168)) + 63) >> 6;
    if (v11 <= (v8 + 1))
    {
      v12 = v8 + 1;
    }

    else
    {
      v12 = ((1 << *(v0 + 168)) + 63) >> 6;
    }

    v13 = v12 - 1;
    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v32 = *(v0 + 88);
        v33 = sub_1000BC4D4(v9, &unk_1013F60F8);
        (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
        v7 = 0;
        goto LABEL_12;
      }

      v10 = *(v0 + 112);
      v7 = *(v10 + 8 * v14 + 64);
      ++v8;
      if (v7)
      {
        v8 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100FA83D0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100FA84E0, v2, 0);
}

uint64_t sub_100FA84E0()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[5];
  v7 = *(v6 + 216);
  *(v6 + 216) = _swiftEmptyDictionarySingleton;

  v8 = v0[1];

  return v8();
}

uint64_t sub_100FA8594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v4[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v4[13] = v7;
  v8 = *(v7 - 8);
  v4[14] = v8;
  v9 = *(v8 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v4[19] = v11;
  *v11 = v4;
  v11[1] = sub_100FA870C;

  return daemon.getter();
}

uint64_t sub_100FA870C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  *(v3 + 160) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100FC4DB8(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_100FA88F0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100FA88F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v10 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_100FA9848;
  }

  else
  {
    v7 = v3[20];
    v8 = v3[7];

    v6 = sub_100FA8A18;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FA8A18()
{
  v1 = *(*(v0 + 56) + 128);
  *(v0 + 192) = v1;
  return _swift_task_switch(sub_100FA8A3C, v1, 0);
}

uint64_t sub_100FA8A3C()
{
  v1 = *(v0 + 192);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100FA8B1C;
  v5 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_100FA8B1C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_100FA8C34, v2, 0);
}

uint64_t sub_100FA8C34()
{
  v1 = v0[22];
  v0[26] = v0[2];
  return _swift_task_switch(sub_100FA8C58, v1, 0);
}

uint64_t sub_100FA8C58(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 176) + 136);
  *(v3 + 216) = v4;
  if (v4)
  {
    a1 = sub_100FA8C84;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, v4, a3);
}

uint64_t sub_100FA8C84()
{
  v1 = v0[27];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_1000BC4D4(&qword_10169C980, &qword_1013C4A70);
  v5 = sub_100FC4DB8(&unk_1016C1130, 255, type metadata accessor for BeaconKeyServiceBuilder);
  v6 = swift_task_alloc();
  v0[28] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v7 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_100FA8DD4;
  v9 = v0[27];
  v10 = v0[8];

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 3, v10, v4, v9, v5, &unk_1013C4A78, v6, v10);
}

uint64_t sub_100FA8DD4()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v6 = *v0;

  v4 = *(v1 + 216);

  return _swift_task_switch(sub_100FA8F08, v4, 0);
}

uint64_t sub_100FA8F08()
{
  v1 = v0[7];
  v0[30] = v0[3];
  return _swift_task_switch(sub_100FA8F2C, v1, 0);
}

uint64_t sub_100FA8F2C()
{
  v1 = v0[30];
  if (*(v1 + 16))
  {
    v2 = v0[26];
    v3 = v0[22];
    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[4];
    v7 = *(v0[14] + 80);
    sub_100FC4840(v1 + ((v7 + 32) & ~v7), v5, type metadata accessor for BeaconKeyManager.IndexInformation);

    sub_100FC4778(v5, v4, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100FC4778(v4, v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    v8 = v0[17];
    v9 = v0[18];
    v11 = v0[15];
    v10 = v0[16];
    v13 = v0[11];
    v12 = v0[12];
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[4];
    v17 = type metadata accessor for BeaconDetails(0);
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[6];
    v21 = v0[30];

    v22 = v0[26];
    v23 = v0[5];
    v24 = v0[6];
    if ((v20 & 0x2000000000000000) != 0)
    {
      v25 = swift_allocObject();
      v0[31] = v25;
      v25[2] = v22;
      v25[3] = v23;
      v25[4] = v24 & 0xDFFFFFFFFFFFFFFFLL;

      sub_100029784(v23, v24);
      v31 = async function pointer to unsafeBlocking<A>(_:)[1];
      v32 = swift_task_alloc();
      v0[32] = v32;
      *v32 = v0;
      v32[1] = sub_100FA9250;
      v28 = v0[10];
      v29 = v0[8];
      v30 = sub_100FC3184;
    }

    else
    {
      v25 = swift_allocObject();
      v0[33] = v25;
      v25[2] = v22;
      v25[3] = v23;
      v25[4] = v24;

      sub_100029784(v23, v24);
      v26 = async function pointer to unsafeBlocking<A>(_:)[1];
      v27 = swift_task_alloc();
      v0[34] = v27;
      *v27 = v0;
      v27[1] = sub_100FA954C;
      v28 = v0[12];
      v29 = v0[8];
      v30 = sub_100FC3190;
    }

    return unsafeBlocking<A>(_:)(v28, v30, v25, v29);
  }
}

uint64_t sub_100FA9250()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_100FA937C, v3, 0);
}

uint64_t sub_100FA937C()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[9];
  v5 = v0[10];

  sub_1000D2AD8(v5, v6, &unk_1016C1120, &qword_1013C49D0);
  if ((*(v4 + 48))(v6, 1, v3) == 1)
  {
    sub_10000B3A8(v0[9], &unk_1016C1120, &qword_1013C49D0);
    v7 = 1;
  }

  else
  {
    v8 = v0[15];
    v9 = v0[4];
    sub_100FC4778(v0[9], v8, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100FC4778(v8, v9, type metadata accessor for BeaconKeyManager.IndexInformation);
    v7 = 0;
  }

  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];
  v21 = v0[9];
  v17 = v0[4];
  v18 = type metadata accessor for BeaconDetails(0);
  (*(*(v18 - 8) + 56))(v17, v7, 1, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100FA954C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_100FA9678, v3, 0);
}

uint64_t sub_100FA9678()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  sub_1000D2AD8(v5, v6, &unk_1016C1120, &qword_1013C49D0);
  if ((*(v4 + 48))(v6, 1, v3) == 1)
  {
    sub_10000B3A8(v0[11], &unk_1016C1120, &qword_1013C49D0);
    v7 = 1;
  }

  else
  {
    v8 = v0[16];
    v9 = v0[4];
    sub_100FC4778(v0[11], v8, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100FC4778(v8, v9, type metadata accessor for BeaconKeyManager.IndexInformation);
    v7 = 0;
  }

  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];
  v21 = v0[9];
  v17 = v0[4];
  v18 = type metadata accessor for BeaconDetails(0);
  (*(*(v18 - 8) + 56))(v17, v7, 1, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100FA9848()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];

  v10 = v0[1];
  v11 = v0[23];

  return v10();
}

uint64_t sub_100FA9914@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_1012DD334(a1, a2, v9);
  v12 = v11[2];
  if (v12)
  {
    v13 = v12 - 1;
    v14 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v15 = *(v14 - 8);
    sub_100FC4840(v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, a3, type metadata accessor for BeaconKeyManager.IndexInformation);

    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    return (*(v15 + 56))(a3, 0, 1, v14);
  }

  else
  {
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);

    v17 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

uint64_t sub_100FA9B28@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = sub_1012DCA30(a1, a2);
  if (v4[2])
  {
    v5 = v4;
    v6 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v13 = *(v6 - 8);
    sub_100FC4840(v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), a3, type metadata accessor for BeaconKeyManager.IndexInformation);

    v7 = *(v13 + 56);
    v8 = a3;
    v9 = 0;
    v10 = v6;
  }

  else
  {

    v11 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a3;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_100FA9C48(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for AccessoryCommand();
  v2[12] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v2[18] = *(v9 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100FA9DE4, v1, 0);
}

uint64_t sub_100FA9DE4()
{
  v22 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[23] = v6;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v11 = v0[16];
  v12 = v0[17];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD000000000000027, 0x8000000101375820, &v21);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v12 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v0[25] = v19;
  *v19 = v0;
  v19[1] = sub_100FAA0B0;

  return daemon.getter();
}

uint64_t sub_100FAA0B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v12 = *v1;
  *(v3 + 208) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 216) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100FC4DB8(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_100FAA294;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100FAA294(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v10 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    v5 = v3[9];
    v6 = sub_100FAABD4;
  }

  else
  {
    v7 = v3[26];
    v8 = v3[9];

    v6 = sub_100FAA3BC;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FAA3BC()
{
  v1 = *(*(v0 + 72) + 128);
  *(v0 + 240) = v1;
  return _swift_task_switch(sub_100FAA3E0, v1, 0);
}

uint64_t sub_100FAA3E0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  (*(v0 + 184))(v3, *(v0 + 64), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 248) = v8;
  *(v8 + 16) = v1;
  v9 = *(v5 + 32);
  *(v0 + 256) = v9;
  *(v0 + 264) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v3, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 272) = v11;
  *v11 = v0;
  v11[1] = sub_100FAA544;
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100FC4FF4, v8, v13);
}