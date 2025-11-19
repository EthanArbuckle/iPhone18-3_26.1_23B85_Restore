uint64_t sub_100C42CFC()
{
  v48 = v0;
  v45 = *(v0 + 3384);
  v46 = *(v0 + 3392);
  v42 = *(v0 + 3368);
  v43 = *(v0 + 3376);
  v40 = *(v0 + 3352);
  v41 = *(v0 + 3360);
  v1 = *(v0 + 476);
  v2 = *(v0 + 3344);
  v3 = *(v0 + 3336);
  v4 = *(v0 + 3328);
  v5 = *(v0 + 3312);
  v6 = *(v0 + 3272);
  v7 = *(v0 + 3264);
  v44 = *(v0 + 3256);
  v8 = *(v0 + 3016);
  v9 = *(v0 + 3000);
  v10 = *(v0 + 2992);
  (*(v0 + 3320))(v8, enum case for PairingExecutorState.PairingComplete.commandFinish(_:), v5);
  v3(v8, 0, 1, v5);
  v40(v8, v1, v9);
  PairingExecutor.setState(_:)();
  v45(v8, v9);
  sub_100017D5C(v7, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  sub_100016590(v7, v6);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 3272);
    v14 = *(v0 + 3264);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v47 = v16;
    *v15 = 136315138;
    v17 = *(v0 + 192);
    *(v0 + 640) = *(v0 + 176);
    *(v0 + 656) = v17;
    *(v0 + 672) = *(v0 + 208);
    v18 = *(v0 + 128);
    *(v0 + 576) = *(v0 + 112);
    *(v0 + 592) = v18;
    v19 = *(v0 + 160);
    *(v0 + 608) = *(v0 + 144);
    *(v0 + 624) = v19;
    v20 = *(v0 + 64);
    *(v0 + 512) = *(v0 + 48);
    *(v0 + 528) = v20;
    v21 = *(v0 + 96);
    *(v0 + 544) = *(v0 + 80);
    *(v0 + 560) = v21;
    v22 = *(v0 + 32);
    *(v0 + 480) = *(v0 + 16);
    *(v0 + 496) = v22;
    sub_100017D5C(v14, v13);
    v23 = String.init<A>(describing:)();
    v25 = sub_1000136BC(v23, v24, &v47);

    *(v15 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sent command: %s", v15, 0xCu);
    sub_100007BAC(v16);
  }

  v26 = *(v0 + 3256);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Wrote Pairing Complete", v29, 2u);
  }

  v30 = *(v0 + 3408);
  v31 = *(v0 + 3400);
  v32 = *(v0 + 3296);
  v33 = *(v0 + 3080);
  v34 = *(v0 + 3072);
  v35 = *(v0 + 3064);
  v36 = *(v0 + 3040);
  v37 = *(v0 + 3016);
  sub_100016590(*(v0 + 3264), *(v0 + 3272));
  sub_100016590(v31, v30);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100C43038()
{
  v1 = *(v0 + 3120);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B8F00);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on pairing stats gathering: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = sub_100C45C3C();
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 3256) = sub_1000076D4(v2, qword_1016B8F00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "nextKeyRollInterval = %u", v11, 8u);
  }

  *(v0 + 276) = v8;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  v12 = *(v0 + 3088);
  v13 = *(v0 + 3080);
  v14 = *(v0 + 3064);
  v15 = *(v0 + 2976);
  *(v0 + 3264) = v15;
  v16 = *(v0 + 2984);
  *(v0 + 3272) = v16;
  *(v0 + 16) = v15;
  *(v0 + 24) = v16;
  sub_100C45E20(v0 + 16);
  ObjectType = swift_getObjectType();
  *(v0 + 3280) = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v18 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v19 = swift_task_alloc();
  *(v0 + 3288) = v19;
  *v19 = v0;
  v19[1] = sub_100C4238C;
  v20 = *(v0 + 3064);

  return dispatch thunk of ServiceProtocol.subscript.getter(v20, ObjectType, v12);
}

uint64_t sub_100C43468()
{
  v1 = *(v0 + 3112);
  sub_100016590(*(v0 + 3144), *(v0 + 3152));
  swift_unknownObjectRelease();
  v2 = *(v0 + 3184);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016B8F00);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on pairing stats gathering: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = sub_100C45C3C();
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 3256) = sub_1000076D4(v3, qword_1016B8F00);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "nextKeyRollInterval = %u", v12, 8u);
  }

  *(v0 + 276) = v9;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  v13 = *(v0 + 3088);
  v14 = *(v0 + 3080);
  v15 = *(v0 + 3064);
  v16 = *(v0 + 2976);
  *(v0 + 3264) = v16;
  v17 = *(v0 + 2984);
  *(v0 + 3272) = v17;
  *(v0 + 16) = v16;
  *(v0 + 24) = v17;
  sub_100C45E20(v0 + 16);
  ObjectType = swift_getObjectType();
  *(v0 + 3280) = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v19 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v20 = swift_task_alloc();
  *(v0 + 3288) = v20;
  *v20 = v0;
  v20[1] = sub_100C4238C;
  v21 = *(v0 + 3064);

  return dispatch thunk of ServiceProtocol.subscript.getter(v21, ObjectType, v13);
}

uint64_t sub_100C438B0()
{
  v1 = *(v0 + 3112);
  sub_100016590(*(v0 + 3144), *(v0 + 3152));
  swift_unknownObjectRelease();
  v2 = *(v0 + 3216);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016B8F00);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on pairing stats gathering: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = sub_100C45C3C();
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 3256) = sub_1000076D4(v3, qword_1016B8F00);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "nextKeyRollInterval = %u", v12, 8u);
  }

  *(v0 + 276) = v9;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  v13 = *(v0 + 3088);
  v14 = *(v0 + 3080);
  v15 = *(v0 + 3064);
  v16 = *(v0 + 2976);
  *(v0 + 3264) = v16;
  v17 = *(v0 + 2984);
  *(v0 + 3272) = v17;
  *(v0 + 16) = v16;
  *(v0 + 24) = v17;
  sub_100C45E20(v0 + 16);
  ObjectType = swift_getObjectType();
  *(v0 + 3280) = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v19 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v20 = swift_task_alloc();
  *(v0 + 3288) = v20;
  *v20 = v0;
  v20[1] = sub_100C4238C;
  v21 = *(v0 + 3064);

  return dispatch thunk of ServiceProtocol.subscript.getter(v21, ObjectType, v13);
}

uint64_t sub_100C43CF8()
{
  v1 = *(v0 + 3112);
  sub_100016590(*(v0 + 3144), *(v0 + 3152));
  swift_unknownObjectRelease();
  v2 = *(v0 + 3248);
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016B8F00);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on pairing stats gathering: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = sub_100C45C3C();
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  *(v0 + 3256) = sub_1000076D4(v3, qword_1016B8F00);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "nextKeyRollInterval = %u", v12, 8u);
  }

  *(v0 + 276) = v9;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  v13 = *(v0 + 3088);
  v14 = *(v0 + 3080);
  v15 = *(v0 + 3064);
  v16 = *(v0 + 2976);
  *(v0 + 3264) = v16;
  v17 = *(v0 + 2984);
  *(v0 + 3272) = v17;
  *(v0 + 16) = v16;
  *(v0 + 24) = v17;
  sub_100C45E20(v0 + 16);
  ObjectType = swift_getObjectType();
  *(v0 + 3280) = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v19 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v20 = swift_task_alloc();
  *(v0 + 3288) = v20;
  *v20 = v0;
  v20[1] = sub_100C4238C;
  v21 = *(v0 + 3064);

  return dispatch thunk of ServiceProtocol.subscript.getter(v21, ObjectType, v13);
}

uint64_t sub_100C44140()
{
  v1 = v0[409];
  v2 = v0[408];
  v3 = v0[385];
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  v4 = v0[413];
  v5 = v0[384];
  v6 = v0[383];
  v7 = v0[380];
  v8 = v0[377];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C441EC()
{
  v1 = v0[412];
  v2 = v0[409];
  v3 = v0[408];
  v4 = v0[385];
  sub_100016590(v0[425], v0[426]);
  swift_unknownObjectRelease();
  sub_100016590(v3, v2);
  swift_unknownObjectRelease();
  v5 = v0[430];
  v6 = v0[384];
  v7 = v0[383];
  v8 = v0[380];
  v9 = v0[377];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C442B4()
{
  v1 = v0[432];
  v2 = v0[426];
  v3 = v0[425];
  v4 = v0[412];
  v5 = v0[409];
  v6 = v0[408];
  v7 = v0[385];

  sub_100016590(v3, v2);
  swift_unknownObjectRelease();
  sub_100016590(v6, v5);
  swift_unknownObjectRelease();
  v8 = v0[434];
  v9 = v0[384];
  v10 = v0[383];
  v11 = v0[380];
  v12 = v0[377];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100C44394()
{
  *(v1 + 1456) = v0;
  v2 = *(*(sub_1000BC4D4(&qword_1016B91A8, &unk_1013E1310) - 8) + 64) + 15;
  *(v1 + 1464) = swift_task_alloc();

  return _swift_task_switch(sub_100C44430, v0, 0);
}

uint64_t sub_100C44430()
{
  v21 = v0;
  if (qword_101694DA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[184] = sub_1000076D4(v1, qword_1016B8F00);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x41676E6972696170, 0xEC00000029286B63, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0[182] + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo);
  v7 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken);
  v8 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_pairingSessionToken + 8);

  sub_10002E98C(v7, v8);
  sub_100F514E8(v7, v8, v0 + 36);
  memcpy(v0 + 70, v0 + 36, 0x110uLL);
  sub_100006654(v7, v8);

  memcpy(v0 + 2, v0 + 36, 0x110uLL);
  if (sub_1001010A8((v0 + 2)) == 1)
  {
    sub_100C45B4C();
    swift_allocError();
    *v9 = 11;
    swift_willThrow();
    v10 = v0[183];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = (v0[182] + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_validator);
    v15 = *v13;
    v14 = v13[1];
    ObjectType = swift_getObjectType();
    v0[180] = &type metadata for AirPodsLEPairingAckData;
    v0[181] = sub_100164118();
    v17 = swift_allocObject();
    v0[177] = v17;
    memcpy((v17 + 16), v0 + 2, 0x110uLL);
    memcpy(v0 + 104, v0 + 70, 0x110uLL);
    sub_100164F7C((v0 + 104), (v0 + 138));
    v18 = async function pointer to dispatch thunk of PairingValidator.ack(_:)[1];
    v19 = swift_task_alloc();
    v0[185] = v19;
    *v19 = v0;
    v19[1] = sub_100C4476C;

    return dispatch thunk of PairingValidator.ack(_:)(v0 + 172, v0 + 177, ObjectType, v14);
  }
}

uint64_t sub_100C4476C()
{
  v2 = *v1;
  v3 = *(*v1 + 1480);
  v8 = *v1;
  *(*v1 + 1488) = v0;

  if (v0)
  {
    v4 = *(v2 + 1456);
    v5 = sub_100C44AC0;
  }

  else
  {
    v6 = *(v2 + 1456);
    sub_100007BAC((v2 + 1416));
    v5 = sub_100C44894;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C44894()
{
  v1 = v0[183];
  sub_1000BC4D4(&qword_1016A12F8, &unk_1013A51E0);
  v2 = type metadata accessor for AirPodsLEPairingLockAckResponse();
  v3 = swift_dynamicCast();
  v4 = *(*(v2 - 8) + 56);
  if (v3)
  {
    v5 = v0[184];
    v6 = v0[183];
    v4(v6, 0, 1, v2);
    sub_10000B3A8(v6, &qword_1016B91A8, &unk_1013E1310);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Pairing ack completed successfully!", v9, 2u);
    }

    v10 = v0[183];
    sub_10000B3A8((v0 + 36), &qword_1016993B8, &unk_101391960);

    v11 = v0[1];
  }

  else
  {
    v12 = v0[183];
    v4(v12, 1, 1, v2);
    sub_10000B3A8(v12, &qword_1016B91A8, &unk_1013E1310);
    sub_100C45B4C();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
    sub_10000B3A8((v0 + 36), &qword_1016993B8, &unk_101391960);
    v14 = v0[183];

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_100C44AC0()
{
  sub_10000B3A8((v0 + 36), &qword_1016993B8, &unk_101391960);
  sub_100007BAC(v0 + 177);
  v1 = v0[186];
  v2 = v0[183];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C44B44()
{
  v1 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_state;
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_stateHistory);

  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingInfo);

  v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_streamProvider);

  v8 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_validator);
  swift_unknownObjectRelease();
  v9 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheralProvider);
  swift_unknownObjectRelease();
  v10 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconStore);
  swift_unknownObjectRelease();
  memcpy(__dst, (v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingCheckData), 0x160uLL);
  sub_10000B3A8(__dst, &qword_1016993B0, &unk_1013E1330);
  v11 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_crypto);

  v12 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_service);
  swift_unknownObjectRelease();
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheral, &qword_1016A12E8, &qword_1013A51D8);
  sub_10048EAA4(*(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 8), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 16), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 24), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 32), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 40), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 48), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 56), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 64), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 72), *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconCreationInfo + 80));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingConfiguration, &qword_1016A12E0, &qword_1013A51D0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconRecordIdentifier, &qword_1016980D0, &unk_10138F3B0);
  v13 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_encoder;
  v14 = type metadata accessor for BinaryEncoder();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_decoder;
  v16 = type metadata accessor for BinaryDecoder();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100C44DB4()
{
  sub_100C44B44();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ProximityPairingExecutor()
{
  result = qword_1016B8F70;
  if (!qword_1016B8F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C44E34()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for PairingExecutorState();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_100395648();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for BinaryEncoder();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = type metadata accessor for BinaryDecoder();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100C450AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100C45134()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_validator);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_validator + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_100C45168()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheralProvider);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_peripheralProvider + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_100C451E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_pairingConfiguration;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016A12E0, &qword_1013A51D0);
  return swift_endAccess();
}

uint64_t sub_100C452B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconStore);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconStore + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_100C452EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  return sub_1000D2A70(v1 + v3, a1, &qword_1016980D0, &unk_10138F3B0);
}

uint64_t sub_100C45354(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016980D0, &unk_10138F3B0);
  return swift_endAccess();
}

uint64_t sub_100C45424(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ProximityPairingExecutor();

  return PairingExecutor.stream()(v3, a2);
}

uint64_t sub_100C45470(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100C3566C(a1);
}

uint64_t sub_100C45504()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C3A5DC();
}

uint64_t sub_100C45590(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C3F408(a1);
}

uint64_t sub_100C45628()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C40578();
}

uint64_t sub_100C456B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C44394();
}

uint64_t sub_100C45740@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100C457C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_100C458B8()
{
  v1 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_stateHistory;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100C45900(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24ProximityPairingExecutor_stateHistory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100C459B8()
{
  type metadata accessor for ProximityPairingExecutor();
  sub_100C4600C(&qword_1016B75C0, type metadata accessor for ProximityPairingExecutor);

  return PairingExecutor.setState(_:)();
}

uint64_t sub_100C45A84()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B8F00);
  v1 = sub_1000076D4(v0, qword_1016B8F00);
  if (qword_101694DA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BE08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100C45B4C()
{
  result = qword_1016B91B0;
  if (!qword_1016B91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B91B0);
  }

  return result;
}

uint64_t sub_100C45BA0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BE08);
  sub_1000076D4(v0, qword_10177BE08);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C45C3C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v9 = sub_101073524(v13[1]);

  if ((v9 * 60) >> 64 != (60 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  static Date.trustedNow.getter(v7);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  v11 = Duration.milliseconds.getter();
  v12 = *(v1 + 8);
  v12(v5, v0);
  result = (v12)(v7, v0);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(v11))
  {
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100C45E20(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(result + 192) = 1;
  return result;
}

unint64_t sub_100C45E3C()
{
  result = qword_1016B91B8;
  if (!qword_1016B91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B91B8);
  }

  return result;
}

double sub_100C45E90(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0x3000000000000000;
  *(a1 + 192) = 1;
  return result;
}

unint64_t sub_100C45ED8()
{
  result = qword_1016B91C0;
  if (!qword_1016B91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B91C0);
  }

  return result;
}

uint64_t sub_100C45FDC(uint64_t a1)
{
  if (*(a1 + 192))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(a1 + 168) >> 60) & 3 | v1;
  if (v2 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100C4600C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100C46054(uint64_t result)
{
  *(result + 168) |= 0x3000000000000000uLL;
  *(result + 192) = 0;
  return result;
}

uint64_t sub_100C46118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100C46178(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(result + 192) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for ProximityPairingExecutor.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProximityPairingExecutor.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100C462E4()
{
  result = qword_1016B91D8;
  if (!qword_1016B91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B91D8);
  }

  return result;
}

ValueMetadata *sub_100C46338(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v1 = &type metadata for AirPodsLEInitiatePairingCommandPayload;
        sub_100391B40();
      }

      else if (a1 == 3)
      {
        v1 = &type metadata for ProximitySendPairingDataCommandPayload;
        sub_100C47978();
      }

      else
      {
        v1 = &type metadata for ProximityFinalizePairingCommandPayload;
        sub_100C47924();
      }

      return v1;
    }

    if (a1)
    {
      v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
      sub_100391B94();
      return v1;
    }

LABEL_11:
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
    return v1;
  }

  if (a1 <= 6u)
  {
    if (a1 == 5)
    {
      v1 = &type metadata for ProximitySendPairingStatusCommandPayload;
      sub_100C478D0();
    }

    else
    {
      v1 = &type metadata for AirPodsSWPairingCompleteCommandPayload;
      sub_100391A98();
    }
  }

  else
  {
    if (a1 == 7)
    {
      goto LABEL_11;
    }

    if (a1 == 8)
    {
      v1 = &type metadata for ProximityPairingStatsCommandPayload;
      sub_100C4787C();
    }

    else
    {
      v1 = &type metadata for UnpairCommandPayload;
      sub_10027EE90();
    }
  }

  return v1;
}

uint64_t sub_100C46430()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v10 = *(v0 + 192);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_100C45FDC(v9);
  if (v7 > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        sub_10001F270(v9);
        return 6;
      }

      else
      {
        sub_10001F270(v9);
        return 8;
      }
    }

    else if (v7 == 7)
    {
      return 0;
    }

    else if (v7 == 8)
    {
      return 7;
    }

    else
    {
      return 9;
    }
  }

  else if (v7 <= 1)
  {
    if (v7)
    {
      sub_10001F270(v9);
      return 2;
    }

    else
    {
      sub_10001F270(v9);
      return 1;
    }
  }

  else if (v7 == 2)
  {
    sub_10001F270(v9);
    return 3;
  }

  else if (v7 == 3)
  {
    sub_10001F270(v9);
    return 4;
  }

  else
  {
    sub_10001F270(v9);
    return 5;
  }
}

void *sub_100C46554@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v87[10] = v1[10];
  v87[11] = v3;
  v88 = *(v1 + 192);
  v4 = v1[7];
  v87[6] = v1[6];
  v87[7] = v4;
  v5 = v1[9];
  v87[8] = v1[8];
  v87[9] = v5;
  v6 = v1[3];
  v87[2] = v1[2];
  v87[3] = v6;
  v7 = v1[5];
  v87[4] = v1[4];
  v87[5] = v7;
  v8 = v1[1];
  v87[0] = *v1;
  v87[1] = v8;
  v9 = sub_100C45FDC(v87);
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      if (v9 == 5)
      {
        v34 = sub_10001F270(v87);
        v35 = *v34;
        v36 = v34[1];
        a1[3] = &type metadata for AirPodsSWPairingCompleteCommandPayload;
        a1[4] = sub_100391A98();
        *a1 = v35;
        a1[1] = v36;
        v37 = v1[11];
        v84 = v1[10];
        v85 = v37;
        v86 = *(v1 + 192);
        v38 = v1[7];
        v80 = v1[6];
        v81 = v38;
        v39 = v1[9];
        v82 = v1[8];
        v83 = v39;
        v40 = v1[3];
        v76 = v1[2];
        v77 = v40;
        v41 = v1[5];
        v78 = v1[4];
        v79 = v41;
        v42 = v1[1];
        v74 = *v1;
        v75 = v42;
        v43 = sub_10001F270(&v74);
        return sub_100017D5C(*v43, *(v43 + 8));
      }

      else
      {
        v71 = sub_10001F270(v87);
        a1[3] = &type metadata for ProximityPairingStatsCommandPayload;
        a1[4] = sub_100C4787C();
        v72 = swift_allocObject();
        *a1 = v72;
        return memmove((v72 + 16), v71, 0xA8uLL);
      }
    }

    else
    {
      if (v9 == 7 || v9 == 8)
      {
        a1[3] = &type metadata for AccessoryGenericPayload;
        result = sub_10030FF74();
      }

      else
      {
        a1[3] = &type metadata for UnpairCommandPayload;
        result = sub_10027EE90();
      }

      a1[4] = result;
    }
  }

  else
  {
    if (v9 <= 1)
    {
      if (!v9)
      {
        v22 = sub_10001F270(v87);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v23 = swift_allocObject();
        *a1 = v23;
        v24 = v22[1];
        *(v23 + 16) = *v22;
        *(v23 + 32) = v24;
        v25 = v1[3];
        v76 = v1[2];
        v77 = v25;
        v26 = v1[1];
        v74 = *v1;
        v75 = v26;
        v27 = v1[7];
        v80 = v1[6];
        v81 = v27;
        v28 = v1[5];
        v78 = v1[4];
        v79 = v28;
        v86 = *(v1 + 192);
        v29 = v1[11];
        v84 = v1[10];
        v85 = v29;
        v30 = v1[9];
        v82 = v1[8];
        v83 = v30;
        v31 = sub_10001F270(&v74);
        v32 = v31[2];
        v33 = v31[3];
        sub_100017D5C(*v31, v31[1]);
        return sub_100017D5C(v32, v33);
      }

      v63 = sub_10001F270(v87);
      a1[3] = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      a1[4] = sub_100391B40();
      v64 = swift_allocObject();
      *a1 = v64;
      memmove((v64 + 16), v63, 0x50uLL);
      v65 = v1[11];
      v84 = v1[10];
      v85 = v65;
      v86 = *(v1 + 192);
      v66 = v1[7];
      v80 = v1[6];
      v81 = v66;
      v67 = v1[9];
      v82 = v1[8];
      v83 = v67;
      v68 = v1[3];
      v76 = v1[2];
      v77 = v68;
      v69 = v1[5];
      v78 = v1[4];
      v79 = v69;
      v70 = v1[1];
      v74 = *v1;
      v75 = v70;
      v18 = sub_10001F270(&v74);
      v19 = &unk_10169EAC0;
      v20 = &unk_10139E338;
    }

    else if (v9 == 2)
    {
      v44 = sub_10001F270(v87);
      a1[3] = &type metadata for ProximitySendPairingDataCommandPayload;
      a1[4] = sub_100C47978();
      v45 = swift_allocObject();
      *a1 = v45;
      memmove((v45 + 16), v44, 0xB0uLL);
      v46 = v1[11];
      v84 = v1[10];
      v85 = v46;
      v86 = *(v1 + 192);
      v47 = v1[7];
      v80 = v1[6];
      v81 = v47;
      v48 = v1[9];
      v82 = v1[8];
      v83 = v48;
      v49 = v1[3];
      v76 = v1[2];
      v77 = v49;
      v50 = v1[5];
      v78 = v1[4];
      v79 = v50;
      v51 = v1[1];
      v74 = *v1;
      v75 = v51;
      v18 = sub_10001F270(&v74);
      v19 = &qword_1016B91D0;
      v20 = &unk_1013E1340;
    }

    else if (v9 == 3)
    {
      v10 = sub_10001F270(v87);
      a1[3] = &type metadata for ProximityFinalizePairingCommandPayload;
      a1[4] = sub_100C47924();
      v11 = swift_allocObject();
      *a1 = v11;
      memmove((v11 + 16), v10, 0xC0uLL);
      v12 = v1[11];
      v84 = v1[10];
      v85 = v12;
      v86 = *(v1 + 192);
      v13 = v1[7];
      v80 = v1[6];
      v81 = v13;
      v14 = v1[9];
      v82 = v1[8];
      v83 = v14;
      v15 = v1[3];
      v76 = v1[2];
      v77 = v15;
      v16 = v1[5];
      v78 = v1[4];
      v79 = v16;
      v17 = v1[1];
      v74 = *v1;
      v75 = v17;
      v18 = sub_10001F270(&v74);
      v19 = &unk_1016B9220;
      v20 = &unk_1013E2498;
    }

    else
    {
      v52 = sub_10001F270(v87);
      a1[3] = &type metadata for ProximitySendPairingStatusCommandPayload;
      a1[4] = sub_100C478D0();
      v53 = swift_allocObject();
      *a1 = v53;
      v54 = v52[3];
      v56 = *v52;
      v55 = v52[1];
      v53[3] = v52[2];
      v53[4] = v54;
      v53[1] = v56;
      v53[2] = v55;
      v57 = v1[11];
      v84 = v1[10];
      v85 = v57;
      v86 = *(v1 + 192);
      v58 = v1[7];
      v80 = v1[6];
      v81 = v58;
      v59 = v1[9];
      v82 = v1[8];
      v83 = v59;
      v60 = v1[3];
      v76 = v1[2];
      v77 = v60;
      v61 = v1[5];
      v78 = v1[4];
      v79 = v61;
      v62 = v1[1];
      v74 = *v1;
      v75 = v62;
      v18 = sub_10001F270(&v74);
      v19 = &qword_1016B91C8;
      v20 = &qword_1013E2490;
    }

    return sub_1000D2A70(v18, &v73, v19, v20);
  }

  return result;
}

uint64_t sub_100C46A10(void *a1)
{
  v2 = type metadata accessor for Endianness();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v8 = sub_100C46430();
  LOWORD(v29) = word_1013E2552[v8];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v3 + 8))(v6, v2);
  LOWORD(v29) = v41;
  sub_10015049C(v54, v55);
  v9 = v56;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v9)
  {
    if (v8 > 4u)
    {
      if (v8 > 6u)
      {
        if (v8 != 7)
        {
          if (v8 == 8)
          {
            sub_100C46554(&v17);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (!swift_dynamicCast())
            {
              goto LABEL_31;
            }

            v37 = v49;
            v38 = v50;
            *&v39 = v51;
            v33 = v45;
            v34 = v46;
            v35 = v47;
            v36 = v48;
            v29 = v41;
            v30 = v42;
            v31 = v43;
            v32 = v44;
            sub_10015049C(v54, v55);
            sub_1004A6D58();
          }

          else
          {
            sub_100C46554(&v41);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (!swift_dynamicCast())
            {
              goto LABEL_31;
            }

            sub_10015049C(v54, v55);
            sub_10027FBB8();
          }

LABEL_25:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          return sub_100007BAC(v54);
        }

LABEL_14:
        sub_100C46554(&v41);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_31;
        }

        sub_10015049C(v54, v55);
        sub_10030FB84();
        goto LABEL_25;
      }

      if (v8 == 5)
      {
        sub_100C46554(v53);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v29 = v41;
          v30 = v42;
          v31 = v43;
          v32 = v44;
          v17 = v41;
          v18 = v42;
          v19 = v43;
          v20 = v44;
          sub_10015049C(v54, v55);
          sub_100BB2730();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_100C47780(&v29);
          return sub_100007BAC(v54);
        }

        goto LABEL_31;
      }

      sub_100C46554(&v41);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_31;
      }

      v14 = v29;
      v41 = v29;
      sub_10015049C(v54, v55);
      sub_1003928F8();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      v13 = *(&v14 + 1);
      v12 = v14;
    }

    else
    {
      if (v8 > 1u)
      {
        if (v8 == 2)
        {
          sub_100C46554(v53);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v31 = v43;
            v32 = v44;
            v33 = v45;
            v29 = v41;
            v30 = v42;
            v19 = v43;
            v20 = v44;
            v21 = v45;
            v17 = v41;
            v18 = v42;
            sub_10015049C(v54, v55);
            sub_100392A9C();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_1001DAB9C(&v29);
            return sub_100007BAC(v54);
          }
        }

        else if (v8 == 3)
        {
          sub_100C46554(v53);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v37 = v49;
            v38 = v50;
            v39 = v51;
            v33 = v45;
            v34 = v46;
            v35 = v47;
            v36 = v48;
            v29 = v41;
            v30 = v42;
            v31 = v43;
            v32 = v44;
            v25 = v49;
            v26 = v50;
            v27 = v51;
            v21 = v45;
            v22 = v46;
            v23 = v47;
            v24 = v48;
            v17 = v41;
            v18 = v42;
            v19 = v43;
            v20 = v44;
            sub_10015049C(v54, v55);
            sub_100C477D4();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_100C47828(&v29);
            return sub_100007BAC(v54);
          }
        }

        else
        {
          sub_100C46554(v53);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v37 = v49;
            v38 = v50;
            v39 = v51;
            v40 = v52;
            v33 = v45;
            v34 = v46;
            v35 = v47;
            v36 = v48;
            v29 = v41;
            v30 = v42;
            v31 = v43;
            v32 = v44;
            v25 = v49;
            v26 = v50;
            v27 = v51;
            v28 = v52;
            v21 = v45;
            v22 = v46;
            v23 = v47;
            v24 = v48;
            v17 = v41;
            v18 = v42;
            v19 = v43;
            v20 = v44;
            sub_10015049C(v54, v55);
            sub_100BB1EAC();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_100C460C4(&v29);
            return sub_100007BAC(v54);
          }
        }

LABEL_31:
        sub_100C4772C();
        swift_allocError();
        *v15 = 0;
        swift_willThrow();
        return sub_100007BAC(v54);
      }

      if (!v8)
      {
        goto LABEL_14;
      }

      sub_100C46554(&v41);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_31;
      }

      v10 = v29;
      v11 = v30;
      v41 = v29;
      v42 = v30;
      sub_10015049C(v54, v55);
      sub_100392AF0();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_100016590(v10, *(&v10 + 1));
      v13 = *(&v11 + 1);
      v12 = v11;
    }

    sub_100016590(v12, v13);
  }

  return sub_100007BAC(v54);
}

__n128 sub_100C47370@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C480B0(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11;
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_100C4740C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B91E0);
  v1 = sub_1000076D4(v0, qword_1016B91E0);
  if (qword_101694DB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BE78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C474D4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BE78);
  sub_1000076D4(v0, qword_10177BE78);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C47554(uint64_t a1)
{
  v1 = (*(a1 + 168) >> 60) & 3 | (4 * (*(a1 + 192) & 1));
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

__n128 sub_100C47578(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100C475BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F9 && *(a1 + 193))
  {
    return (*a1 + 1017);
  }

  v3 = ((*(a1 + 168) >> 60) & 3 | (4 * *(a1 + 192))) ^ 0x3FF;
  if (v3 >= 0x3F8)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100C47610(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F8)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 - 1017;
    if (a3 >= 0x3F9)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F9)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 160) = 0;
      *(result + 168) = (-a2 & 3) << 60;
      *(result + 176) = 0;
      *(result + 184) = 0;
      *(result + 192) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_100C476B0(uint64_t result, unsigned int a2)
{
  if (a2 < 7)
  {
    *(result + 168) = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 192) = a2 > 3;
  }

  else
  {
    *result = a2 - 7;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 176) = 0;
    *(result + 184) = 0;
    *(result + 168) = 0x3000000000000000;
    *(result + 192) = 1;
  }

  return result;
}

unint64_t sub_100C4772C()
{
  result = qword_1016B91F8;
  if (!qword_1016B91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B91F8);
  }

  return result;
}

unint64_t sub_100C477D4()
{
  result = qword_1016B9200;
  if (!qword_1016B9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9200);
  }

  return result;
}

unint64_t sub_100C4787C()
{
  result = qword_1016B9208;
  if (!qword_1016B9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9208);
  }

  return result;
}

unint64_t sub_100C478D0()
{
  result = qword_1016B9210;
  if (!qword_1016B9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9210);
  }

  return result;
}

unint64_t sub_100C47924()
{
  result = qword_1016B9218;
  if (!qword_1016B9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9218);
  }

  return result;
}

unint64_t sub_100C47978()
{
  result = qword_1016B9228;
  if (!qword_1016B9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9228);
  }

  return result;
}

uint64_t sub_100C479CC(unsigned __int16 a1)
{
  if (a1 > 0x104u)
  {
    if (a1 <= 0x10Au)
    {
      if (a1 == 261)
      {
        return 7;
      }

      if (a1 == 262)
      {
        return 8;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x10Bu:
          return 0;
        case 0x10Cu:
          return 1;
        case 0x204u:
          return 9;
      }
    }
  }

  else if (a1 <= 0x101u)
  {
    if (a1 == 256)
    {
      return 2;
    }

    if (a1 == 257)
    {
      return 3;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x102u:
        return 4;
      case 0x103u:
        return 5;
      case 0x104u:
        return 6;
    }
  }

  return 10;
}

void sub_100C47A90(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100C46338(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 > 4u)
    {
      if (a1 <= 6u)
      {
        if (a1 == 5)
        {
          sub_10001F280(a2, v41);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v28 = v16;
            v29 = v17;
            v30 = v18;
            v31 = v19;
            sub_100C4851C(&v28);
            goto LABEL_31;
          }
        }

        else
        {
          sub_10001F280(a2, &v16);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v28 = v14;
            sub_100C45E20(&v28);
            goto LABEL_31;
          }
        }
      }

      else if (a1 == 7)
      {
        sub_10001F280(a2, &v28);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          sub_100C45E90(&v42);
          goto LABEL_32;
        }
      }

      else
      {
        if (a1 == 8)
        {
          sub_10001F280(a2, v41);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v36 = v24;
            v37 = v25;
            *&v38 = v26;
            v32 = v20;
            v33 = v21;
            v34 = v22;
            v35 = v23;
            v28 = v16;
            v29 = v17;
            v30 = v18;
            v31 = v19;
            sub_100C48500(&v28);
            goto LABEL_31;
          }

          goto LABEL_33;
        }

        sub_10001F280(a2, &v28);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          sub_100C484B4(&v42);
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (a1 > 1u)
      {
        if (a1 == 2)
        {
          sub_10001F280(a2, v41);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v30 = v18;
            v31 = v19;
            v32 = v20;
            v28 = v16;
            v29 = v17;
            sub_100C46178(&v28);
            goto LABEL_31;
          }
        }

        else if (a1 == 3)
        {
          sub_10001F280(a2, v41);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v36 = v24;
            v37 = v25;
            v38 = v26;
            v32 = v20;
            v33 = v21;
            v34 = v22;
            v35 = v23;
            v28 = v16;
            v29 = v17;
            v30 = v18;
            v31 = v19;
            sub_100C48534(&v28);
LABEL_31:
            v52 = v38;
            v53 = v39;
            v54 = v40;
            v48 = v34;
            v49 = v35;
            v50 = v36;
            v51 = v37;
            v44 = v30;
            v45 = v31;
            v46 = v32;
            v47 = v33;
            v42 = v28;
            v43 = v29;
            goto LABEL_32;
          }
        }

        else
        {
          sub_10001F280(a2, v41);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v36 = v24;
            v37 = v25;
            v38 = v26;
            v39 = v27;
            v32 = v20;
            v33 = v21;
            v34 = v22;
            v35 = v23;
            v28 = v16;
            v29 = v17;
            v30 = v18;
            v31 = v19;
            sub_100C46054(&v28);
            goto LABEL_31;
          }
        }

        goto LABEL_33;
      }

      if (a1)
      {
        sub_10001F280(a2, &v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v28 = v14;
          v29 = v15;
          sub_100C4854C(&v28);
          goto LABEL_31;
        }
      }

      else
      {
        sub_10001F280(a2, &v28);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          sub_100C48560(&v42);
LABEL_32:
          v7 = v53;
          *(a3 + 160) = v52;
          *(a3 + 176) = v7;
          *(a3 + 192) = v54;
          v8 = v49;
          *(a3 + 96) = v48;
          *(a3 + 112) = v8;
          v9 = v51;
          *(a3 + 128) = v50;
          *(a3 + 144) = v9;
          v10 = v45;
          *(a3 + 32) = v44;
          *(a3 + 48) = v10;
          v11 = v47;
          *(a3 + 64) = v46;
          *(a3 + 80) = v11;
          v12 = v43;
          *a3 = v42;
          *(a3 + 16) = v12;
          return;
        }
      }
    }

LABEL_33:
    sub_100C4772C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    sub_100007BAC(a2);
    return;
  }

  __break(1u);
}

uint64_t sub_100C480B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  v42 = a1;
  sub_1000035D0(a1, v9);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v45, v45[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
    v11 = v42;
  }

  else
  {
    v12 = v41;
    v48 = v43[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v8, v4);
    v13 = v44[0];
    v14 = sub_100C479CC(v44[0]);
    if (v14 != 10)
    {
      v27 = v14;
      v28 = sub_100C46338(v14);
      v30 = v29;
      v31 = v42;
      sub_10001F280(v42, v43);
      v44[3] = v28;
      v44[4] = v30;
      sub_1000280DC(v44);
      v32 = *(v30 + 8);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v44, v43);
      sub_100C47A90(v27, v43, v46);
      sub_100007BAC(v44);
      sub_100007BAC(v45);
      result = sub_100007BAC(v31);
      v34 = v46[11];
      *(v12 + 10) = v46[10];
      *(v12 + 11) = v34;
      *(v12 + 192) = v47;
      v35 = v46[7];
      *(v12 + 6) = v46[6];
      *(v12 + 7) = v35;
      v36 = v46[9];
      *(v12 + 8) = v46[8];
      *(v12 + 9) = v36;
      v37 = v46[3];
      *(v12 + 2) = v46[2];
      *(v12 + 3) = v37;
      v38 = v46[5];
      *(v12 + 4) = v46[4];
      *(v12 + 5) = v38;
      v39 = v46[1];
      *v12 = v46[0];
      *(v12 + 1) = v39;
      return result;
    }

    v11 = v42;
    if (qword_101694DB0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_1016B91E0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44[0] = v41;
      *v18 = 136446210;
      LOWORD(v43[0]) = v13;
      v19 = FixedWidthInteger.data.getter();
      v21 = v20;
      v22 = Data.hexString.getter();
      v24 = v23;
      sub_100016590(v19, v21);
      v25 = sub_1000136BC(v22, v24, v44);

      *(v18 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "Invalid opcode: %{public}s", v18, 0xCu);
      sub_100007BAC(v41);
    }

    sub_100C4772C();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v45);
  return sub_100007BAC(v11);
}

double sub_100C484B4(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0x3000000000000000;
  *(a1 + 192) = 1;
  return result;
}

uint64_t sub_100C48500(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(result + 192) = 1;
  return result;
}

uint64_t sub_100C4851C(uint64_t result)
{
  *(result + 168) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 192) = 1;
  return result;
}

uint64_t sub_100C48534(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(result + 192) = 0;
  return result;
}

uint64_t sub_100C4854C(uint64_t result)
{
  *(result + 168) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 192) = 0;
  return result;
}

double sub_100C48560(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3000000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  return result;
}

unint64_t sub_100C485A4()
{
  result = qword_1016B9230;
  if (!qword_1016B9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9230);
  }

  return result;
}

uint64_t sub_100C485F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MACAddress();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100C486B8, v1, 0);
}

uint64_t sub_100C486B8()
{
  v0[7] = *(v0[3] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = type metadata accessor for CentralManager();
  v11 = sub_100C4CAA0(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v9 = v0;
  v9[1] = sub_100C488A0;

  return CentralManagerProtocol.await(states:)(v5, v10, v11);
}

uint64_t sub_100C488A0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_100C48F38;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_100C489C8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C489C8()
{
  v25 = v0;
  if (qword_101694DC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B9238);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000013, 0x800000010136FCF0, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136446210;
    sub_100C4CAA0(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Retrieving peripheral matching macAddress: %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
  v23 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v19 = swift_task_alloc();
  v0[11] = v19;
  *v19 = v0;
  v19[1] = sub_100C48D08;
  v20 = v0[7];
  v21 = v0[2];

  return v23(v21);
}

uint64_t sub_100C48D08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
    v6 = *(v3 + 48);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 24);

    return _swift_task_switch(sub_100C48E58, v9, 0);
  }
}

uint64_t sub_100C48E58()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[6];

    v3 = v0[1];

    return v3(v1);
  }

  else
  {
    sub_100C4CA4C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = v0[6];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100C48F38()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C48FA4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v11 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[16] = v11;
  v12 = *(v11 - 8);
  v2[17] = v12;
  v13 = *(v12 + 64) + 15;
  v2[18] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[21] = v16;
  v17 = *(v16 - 8);
  v2[22] = v17;
  v18 = *(v17 + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100C49270, v1, 0);
}

uint64_t sub_100C49270()
{
  v0[24] = *(v0[7] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[25] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v9 = swift_task_alloc();
  v0[26] = v9;
  v10 = type metadata accessor for CentralManager();
  v11 = sub_100C4CAA0(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v9 = v0;
  v9[1] = sub_100C49458;

  return CentralManagerProtocol.await(states:)(v5, v10, v11);
}

uint64_t sub_100C49458()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_100C4AE94;
  }

  else
  {
    v6 = *(v2 + 200);
    v7 = *(v2 + 56);

    v5 = sub_100C49580;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C49580()
{
  v21 = v0;
  if (qword_101694DC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[28] = sub_1000076D4(v1, qword_1016B9238);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000018, 0x800000010136FCD0, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v0[9];
  v10 = v0[6];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v11 = *(v9 + 72);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v0[29] = v13;
  *(v13 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v14 = *(v7 + 8);
  v0[30] = v14;
  v0[31] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v6, v8);
  v15 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v19 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v16 = swift_task_alloc();
  v0[32] = v16;
  *v16 = v0;
  v16[1] = sub_100C497E0;
  v17 = v0[24];

  return v19(v13);
}

uint64_t sub_100C497E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v10 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_100C4AF64;
  }

  else
  {
    v7 = v3[29];
    v8 = v3[7];

    v6 = sub_100C49908;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C49908()
{
  v66 = v0;
  v1 = v0[33];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v31 = v0[33];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:
    v32 = v0[33];
    v33 = v0[28];
    v34 = v0[6];

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v60 = v0[30];
      v63 = v0[31];
      v37 = v0[23];
      v38 = v0[21];
      v40 = v0[9];
      v39 = v0[10];
      v64 = v0[8];
      v41 = v0[6];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65[0] = v43;
      *v42 = 136446210;
      Peripheral.id.getter();
      Identifier.id.getter();
      v60(v37, v38);
      sub_100C4CAA0(&qword_101696930, 255, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v40 + 8))(v39, v64);
      v47 = sub_1000136BC(v44, v46, v65);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v35, v36, "Missing peripheral for %{public}s", v42, 0xCu);
      sub_100007BAC(v43);
    }

    sub_100C4CA4C();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
    v49 = v0[23];
    v51 = v0[19];
    v50 = v0[20];
    v52 = v0[18];
    v54 = v0[14];
    v53 = v0[15];
    v55 = v0[13];
    v56 = v0[10];

    v57 = v0[1];

    return v57();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v58 = v0[33];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v59 = v0[33];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[33] + 32);
  }

  v0[35] = v3;
  v4 = v0[28];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v65[0] = v8;
    *v7 = 136315138;
    v0[5] = v3;
    type metadata accessor for Peripheral();
    sub_100C4CAA0(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_1000136BC(v9, v10, v65);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connecting to peripheral: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v12 = v0[20];
  v61 = v0[19];
  v13 = v0[17];
  v14 = v0[18];
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[14];
  v18 = enum case for ConnectUseCase.findMyPair(_:);
  v19 = type metadata accessor for ConnectUseCase();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v21 = *(v13 + 72);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[2] = v23;
  sub_100C4CAA0(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_100BAFD1C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  v25 = type metadata accessor for LongTermKey();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v26 = type metadata accessor for Peripheral.Options();
  (*(*(v26 - 8) + 56))(v61, 0, 1, v26);
  v27 = *(&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + 1);
  v62 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
  v28 = swift_task_alloc();
  v0[36] = v28;
  *v28 = v0;
  v28[1] = sub_100C49FFC;
  v29 = v0[19];
  v30 = v0[20];

  return v62(v30, v29);
}

uint64_t sub_100C49FFC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = v2[20];
  v6 = v2[19];
  v7 = v2[7];
  sub_10000B3A8(v6, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v5, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v8 = sub_100C4B034;
  }

  else
  {
    v8 = sub_100C4A180;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C4A180()
{
  v19 = v0;
  v1 = v0[35];
  v2 = v0[28];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[4] = v5;
    type metadata accessor for Peripheral();
    sub_100C4CAA0(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connected to peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = v0[13];
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v12 = *(&async function pointer to dispatch thunk of Peripheral.subscript.getter + 1);
  v17 = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
  v13 = swift_task_alloc();
  v0[38] = v13;
  *v13 = v0;
  v13[1] = sub_100C4A39C;
  v14 = v0[35];
  v15 = v0[13];

  return v17(v15);
}

uint64_t sub_100C4A39C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  v4[39] = a1;
  v4[40] = v1;

  v7 = v3[13];
  v8 = v3[12];
  v9 = v3[11];
  v10 = v3[7];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100C4B104;
  }

  else
  {
    v11 = sub_100C4A520;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100C4A520()
{
  v1 = v0[28];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy service", v4, 2u);
  }

  v5 = v0[39];

  v6 = sub_100C4CAA0(&qword_1016972A8, 255, &type metadata accessor for Service);
  v0[41] = v6;
  ObjectType = swift_getObjectType();
  v0[42] = ObjectType;
  v8 = async function pointer to dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)[1];

  v9 = swift_task_alloc();
  v0[43] = v9;
  *v9 = v0;
  v9[1] = sub_100C4A698;
  v10 = v0[39];

  return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(0, ObjectType, v6);
}

uint64_t sub_100C4A698(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v7 = v4[39];
    v8 = v4[7];

    v9 = sub_100C4AA70;
    v10 = v8;
  }

  else
  {
    v4[45] = a1;
    v9 = sub_100C4A7D8;
    v10 = 0;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100C4A7D8()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[7];
  swift_getAssociatedTypeWitness();
  v0[46] = sub_1000BC4D4(&qword_1016B7500, &qword_1013DC4D8);
  v0[47] = _arrayForceCast<A, B>(_:)();

  return _swift_task_switch(sub_100C4A8A8, v5, 0);
}

uint64_t sub_100C4A8A8()
{
  v20 = v0;
  v1 = v0[47];
  v2 = v0[28];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[47];
  if (v5)
  {
    v7 = v0[46];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = Array.description.getter();
    v12 = v11;

    v13 = sub_1000136BC(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Discovered Pairing characteristic %s.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
  }

  v14 = *(&async function pointer to dispatch thunk of Peripheral.pair() + 1);
  v18 = (&async function pointer to dispatch thunk of Peripheral.pair() + async function pointer to dispatch thunk of Peripheral.pair());
  v15 = swift_task_alloc();
  v0[48] = v15;
  *v15 = v0;
  v15[1] = sub_100C4AB4C;
  v16 = v0[35];

  return v18();
}

uint64_t sub_100C4AA70()
{
  v1 = v0[39];
  v2 = v0[35];

  v3 = v0[44];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C4AB4C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_100C4B1D4;
  }

  else
  {
    v6 = sub_100C4AC78;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C4AC78()
{
  v25 = v0;
  v1 = v0[35];
  v2 = v0[28];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    type metadata accessor for Peripheral();
    sub_100C4CAA0(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Paired peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
    v11 = v0[35];
  }

  v12 = v0[23];
  v13 = v0[19];
  v14 = v0[20];
  v15 = v0[18];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];
  v19 = v0[10];

  v20 = v0[1];
  v21 = v0[41];
  v22 = v0[39];

  return v20(v22, v21);
}

uint64_t sub_100C4AE94()
{
  v1 = v0[25];

  v2 = v0[27];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C4AF64()
{
  v1 = v0[29];

  v2 = v0[34];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C4B034()
{
  v1 = v0[35];

  v2 = v0[37];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C4B104()
{
  v1 = v0[35];

  v2 = v0[40];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C4B1D4()
{
  v1 = v0[39];
  v2 = v0[35];

  v3 = v0[49];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C4B2B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_10169E750, &unk_1013DC4B0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C4B410, v1, 0);
}

uint64_t sub_100C4B410()
{
  v0[11] = *(v0[3] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[12] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v9 = swift_task_alloc();
  v0[13] = v9;
  v10 = type metadata accessor for CentralManager();
  v11 = sub_100C4CAA0(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v9 = v0;
  v9[1] = sub_100C4B5F8;

  return CentralManagerProtocol.await(states:)(v5, v10, v11);
}

uint64_t sub_100C4B5F8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_100C4C1D8;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 24);

    v5 = sub_100C4B720;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C4B720()
{
  v21 = v0;
  if (qword_101694DC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[15] = sub_1000076D4(v1, qword_1016B9238);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x5F28726961706E75, 0xEA0000000000293ALL, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v11 = *(v9 + 72);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v0[16] = v13;
  *(v13 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v14 = *(v7 + 8);
  v0[17] = v14;
  v0[18] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v6, v8);
  v15 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v19 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_100C4B980;
  v17 = v0[11];

  return v19(v13);
}

uint64_t sub_100C4B980(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v10 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100C4C260;
  }

  else
  {
    v7 = v3[16];
    v8 = v3[3];

    v6 = sub_100C4BAA8;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C4BAA8()
{
  v38 = v0;
  v1 = v0[20];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = v0[20];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v10 = v0[20];
    v11 = v0[15];
    v12 = v0[2];

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v33 = v0[17];
      v34 = v0[18];
      v15 = v0[10];
      v16 = v0[8];
      v18 = v0[5];
      v17 = v0[6];
      v36 = v0[4];
      v19 = v0[2];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = v21;
      *v20 = 136446210;
      Peripheral.id.getter();
      Identifier.id.getter();
      v33(v15, v16);
      sub_100C4CAA0(&qword_101696930, 255, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v18 + 8))(v17, v36);
      v25 = sub_1000136BC(v22, v24, &v37);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing peripheral for %{public}s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    sub_100C4CA4C();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    v27 = v0[10];
    v29 = v0[6];
    v28 = v0[7];

    v30 = v0[1];

    return v30();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v31 = v0[20];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v32 = v0[20];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[20] + 32);
  }

  v0[22] = v3;
  v4 = v0[7];

  v5 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection(options:) + 1);
  v35 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection(options:) + async function pointer to dispatch thunk of Peripheral.cancelConnection(options:));
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_100C4BE4C;
  v8 = v0[7];

  return v35(v8);
}

uint64_t sub_100C4BE4C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  v2[24] = v0;

  v5 = v2[7];
  if (v0)
  {
    v6 = v2[3];
    sub_10000B3A8(v5, &qword_10169E750, &unk_1013DC4B0);

    return _swift_task_switch(sub_100C4C2E8, v6, 0);
  }

  else
  {
    sub_10000B3A8(v5, &qword_10169E750, &unk_1013DC4B0);
    v7 = *(&async function pointer to dispatch thunk of Peripheral.unpair() + 1);
    v11 = (&async function pointer to dispatch thunk of Peripheral.unpair() + async function pointer to dispatch thunk of Peripheral.unpair());
    v8 = swift_task_alloc();
    v2[25] = v8;
    *v8 = v4;
    v8[1] = sub_100C4C020;
    v9 = v2[22];

    return v11();
  }
}

uint64_t sub_100C4C020()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100C4C370;
  }

  else
  {
    v6 = sub_100C4C14C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C4C14C()
{
  v1 = v0[22];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C4C1D8()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C4C260()
{
  v1 = v0[16];

  v2 = v0[21];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C4C2E8()
{
  v1 = v0[22];

  v2 = v0[24];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C4C370()
{
  v1 = v0[22];

  v2 = v0[26];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C4C4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PairingPeripheralProvider.getPeripheral(for:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ProximityPeripheralProvider();
  *v9 = v4;
  v9[1] = sub_100014650;

  return PairingPeripheralProvider.getPeripheral(for:)(a1, a2, v10, a4);
}

uint64_t sub_100C4C5C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF6A4;

  return sub_100C485F8(a2);
}

uint64_t sub_100C4C658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to PairingPeripheralProvider.pair<A>(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ProximityPeripheralProvider();
  *v11 = v5;
  v11[1] = sub_100014744;

  return PairingPeripheralProvider.pair<A>(_:)(a1, a2, v12, a3, a5);
}

uint64_t sub_100C4C724(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF918;

  return sub_100C48FA4(v3);
}

uint64_t sub_100C4C7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = async function pointer to PairingPeripheralProvider.unpair(_:)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for ProximityPeripheralProvider();
  *v7 = v3;
  v7[1] = sub_100014744;

  return PairingPeripheralProvider.unpair(_:)(a1, v8, a3);
}

uint64_t sub_100C4C870(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C4B2B0(v2);
}

uint64_t sub_100C4C904()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BE90);
  sub_1000076D4(v0, qword_10177BE90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C4C984()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B9238);
  v1 = sub_1000076D4(v0, qword_1016B9238);
  if (qword_101694DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BE90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100C4CA4C()
{
  result = qword_1016B9318;
  if (!qword_1016B9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9318);
  }

  return result;
}

uint64_t sub_100C4CAA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100C4CAFC()
{
  result = qword_1016B9320;
  if (!qword_1016B9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9320);
  }

  return result;
}

__n128 sub_100C4CB50(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100C4CB84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 176))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100C4CBD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 168) = 0;
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
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100C4CC64(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v19 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v19, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v6, *(&v6 + 1));
    v18 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v18, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v17 = v1[4];
    v6 = v1[4];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v17, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v16 = v1[5];
    v6 = v1[5];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v16, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v15 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v15, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v14 = v1[3];
    v6 = v1[3];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v14, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v13 = v1[6];
    v6 = v1[6];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v13, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v12 = v1[7];
    v6 = v1[7];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v12, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v11 = v1[8];
    v6 = v1[8];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v11, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v10 = v1[9];
    v6 = v1[9];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = v1[10];
    v6 = v1[10];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v6, *(&v6 + 1));
  return sub_100007BAC(v7);
}

__n128 sub_100C4D0FC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100C4D1FC(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v9[10];
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_100C4D178(uint64_t a1)
{
  *(a1 + 8) = sub_100C4D1A8();
  result = sub_100C477D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100C4D1A8()
{
  result = qword_1016B9328;
  if (!qword_1016B9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9328);
  }

  return result;
}

uint64_t sub_100C4D1FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(&v88, v89);
  v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_8;
  }

  v10 = v8;
  v11 = v9;
  sub_10015049C(&v88, v89);
  v85 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v90 = v12;
  sub_10015049C(&v88, v89);
  v83 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v84 = v13;
  sub_10015049C(&v88, v89);
  v81 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v82 = v14;
  sub_10015049C(&v88, v89);
  v79 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v80 = v15;
  sub_10015049C(&v88, v89);
  v16 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v18 = v17;
  v86 = v79;
  v87 = v80;
  sub_1000E0A3C();
  v19 = DataProtocol.intValue.getter();
  v21 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v20 = 20 * v21;
  if ((v21 * 20) >> 64 != (20 * v21) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v20 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v75 = v16;
  v76 = v18;
  v77 = Data.subdata(in:)();
  v78 = v22;
  sub_10015049C(&v88, v89);
  v73 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v74 = v23;
  sub_10015049C(&v88, v89);
  v71 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v72 = v24;
  sub_10015049C(&v88, v89);
  v25 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v27 = v26;
  sub_100017D5C(v25, v26);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE2(v86) == 1)
  {
    v28 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for BinaryEncodingError.encodingError(_:), v28);
    swift_willThrow();
    sub_100016590(v25, v27);
    sub_100016590(v71, v72);
    sub_100016590(v73, v74);
    sub_100016590(v77, v78);
    sub_100016590(v75, v76);
    sub_100016590(v79, v80);
    sub_100016590(v81, v82);
    sub_100016590(v83, v84);
    sub_100016590(v85, v90);
    sub_100016590(v10, v11);
LABEL_8:
    sub_100007BAC(&v88);
    return sub_100007BAC(a1);
  }

  v69 = v25;
  v70 = v27;
  sub_100017D5C(v71, v72);
  sub_10002EA98(v86, v71, v72, &v86);
  v67 = v86;
  v68 = v87;
  sub_10015049C(&v88, v89);
  v65 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v66 = v30;
  sub_10015049C(&v88, v89);
  v31 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v33 = v32;
  v86 = v31;
  v87 = v32;
  v34 = DataProtocol.intValue.getter();
  sub_100016590(v31, v33);
  sub_100017D5C(v65, v66);
  sub_10002EA98(v34, v65, v66, &v86);
  v63 = v86;
  v64 = v87;
  sub_10015049C(&v88, v89);
  v61 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v62 = v35;
  sub_10015049C(&v88, v89);
  v36 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v38 = v37;
  v86 = v36;
  v87 = v37;
  v39 = DataProtocol.intValue.getter();
  sub_100016590(v36, v38);
  sub_100017D5C(v61, v62);
  sub_10002EA98(v39, v61, v62, &v86);
  v59 = v86;
  v60 = v87;
  sub_10015049C(&v88, v89);
  v57 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v58 = v40;
  sub_10015049C(&v88, v89);
  v19 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
LABEL_12:
  v42 = v19;
  v43 = v20;
  v86 = v19;
  v87 = v20;
  v44 = DataProtocol.intValue.getter();
  sub_100016590(v42, v43);
  sub_10002EA98(v44, v57, v58, &v86);
  sub_100016590(v75, v76);
  sub_100016590(v61, v62);
  sub_100016590(v65, v66);
  sub_100016590(v71, v72);
  result = sub_100016590(v69, v70);
  v45 = v86;
  v46 = v87;
  v47 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v47)
    {
      v48 = BYTE6(v11);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v47 != 2)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v49 = *(v10 + 16);
  v50 = *(v10 + 24);
  v51 = __OFSUB__(v50, v49);
  v48 = v50 - v49;
  if (v51)
  {
    __break(1u);
LABEL_19:
    LODWORD(v48) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v48 = v48;
  }

LABEL_21:
  if (v48 != 32)
  {
    goto LABEL_35;
  }

  v52 = v80 >> 62;
  if ((v80 >> 62) <= 1)
  {
    if (!v52)
    {
      v53 = BYTE6(v80);
      goto LABEL_31;
    }

LABEL_29:
    LODWORD(v53) = HIDWORD(v79) - v79;
    if (!__OFSUB__(HIDWORD(v79), v79))
    {
      v53 = v53;
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (v52 != 2)
  {
    goto LABEL_36;
  }

  v55 = *(v79 + 16);
  v54 = *(v79 + 24);
  v51 = __OFSUB__(v54, v55);
  v53 = v54 - v55;
  if (v51)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_31:
  if (v53 == 1)
  {
    sub_100007BAC(&v88);
    result = sub_100007BAC(a1);
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v79;
    a2[3] = v80;
    v56 = v90;
    a2[4] = v85;
    a2[5] = v56;
    a2[6] = v77;
    a2[7] = v78;
    a2[8] = v83;
    a2[9] = v84;
    a2[10] = v81;
    a2[11] = v82;
    a2[12] = v73;
    a2[13] = v74;
    a2[14] = v67;
    a2[15] = v68;
    a2[16] = v63;
    a2[17] = v64;
    a2[18] = v59;
    a2[19] = v60;
    a2[20] = v45;
    a2[21] = v46;
    return result;
  }

LABEL_36:
  __break(1u);
  return result;
}

void *sub_100C4DB3C(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for HashAlgorithm();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 60 == 15)
  {
    sub_100C2A500();
    swift_allocError();
    *v13 = 11;
    swift_willThrow();
  }

  else
  {
    v27 = v10;
    sub_100017D5C(a2, a3);
    v14 = sub_100A7491C(a2, a3);
    if (v3)
    {

      sub_100C2A500();
      swift_allocError();
      *v16 = 2;
      swift_willThrow();
      sub_100006654(a2, a3);
    }

    else
    {
      v17 = v14;
      v18 = v15;
      sub_100017D5C(v14, v15);
      v25 = v18;
      sub_10049613C(v17, v18, v26);
      v20 = v26[0];
      v23 = v26[1];
      v24 = v26[0];
      a1[3] = &type metadata for CollaborativeKeyGen.v1.C2;
      a1[4] = sub_1001023A0();
      *a1 = v20;
      v21 = v23;
      a1[1] = v23;
      (*(v8 + 104))(v12, enum case for HashAlgorithm.sha256(_:), v27);
      sub_100017D5C(v24, v21);
      a1 = Data.hash(algorithm:)();
      sub_100006654(a2, a3);
      sub_100016590(v24, v23);
      sub_100016590(v17, v25);
      (*(v8 + 8))(v12, v27);
    }
  }

  return a1;
}

uint64_t sub_100C4DDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C4DEBC, 0, 0);
}

uint64_t sub_100C4DEBC()
{
  v1 = v0[8];
  v2 = v0[5];
  sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  AsyncThrowingStream.makeAsyncIterator()();
  v3 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100C4DF8C;
  v5 = v0[8];
  v6 = v0[6];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 2, 0, 0, v6, v0 + 4);
}

uint64_t sub_100C4DF8C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100C4E32C;
  }

  else
  {
    v3 = sub_100C4E09C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C4E09C()
{
  v18 = v0;
  v2 = v0[2];
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_101694DD0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016B9330);
    sub_100017D5C(v2, v1);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    sub_100006654(v2, v1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = Data.hexString.getter();
      v12 = sub_1000136BC(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "s2 notify: %s", v8, 0xCu);
      sub_100007BAC(v9);

      sub_100006654(v2, v1);
    }

    else
    {

      sub_100006654(v2, v1);
    }

    v13 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_100C4DF8C;
    v15 = v0[8];
    v16 = v0[6];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 2, 0, 0, v16, v0 + 4);
  }
}

uint64_t sub_100C4E32C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[4];

  v2 = v0[1];

  return v2();
}

uint64_t sub_100C4E3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a4;
  *(v8 + 160) = a6;
  *(v8 + 256) = a5;
  *(v8 + 144) = a1;
  v9 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  *(v8 + 184) = v9;
  v10 = *(v9 - 8);
  *(v8 + 192) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100C4E484, 0, 0);
}

uint64_t sub_100C4E484()
{
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[20];
  sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  AsyncThrowingStream.makeAsyncIterator()();
  swift_beginAccess();
  swift_beginAccess();
  v4 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100C4E584;
  v6 = v0[25];
  v7 = v0[23];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 14, 0, 0, v7, v0 + 16);
}

uint64_t sub_100C4E584()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_100C4EECC;
  }

  else
  {
    v3 = sub_100C4E698;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C4E698()
{
  v62 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  *(v0 + 224) = v2;
  *(v0 + 232) = v1;
  if (v1 >> 60 == 15)
  {
    goto LABEL_2;
  }

  v8 = *(v0 + 216);
  static Task<>.checkCancellation()();
  if (v8)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    sub_100006654(v2, v1);
    v9 = *(v0 + 200);

    v7 = *(v0 + 8);
    goto LABEL_5;
  }

  if (qword_101694DD0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016B9330);
  sub_10002E98C(v2, v1);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v12, v13))
  {
    sub_100006654(v2, v1);

    goto LABEL_23;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v17 = v15;
  *(v0 + 136) = v15;
  *v14 = 134218242;
  v18 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v18 != 2)
    {
      v19 = 0;
      goto LABEL_22;
    }

    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_19:
    LODWORD(v19) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_46;
    }

    v19 = v19;
    goto LABEL_22;
  }

  if (v18)
  {
    goto LABEL_19;
  }

  v19 = BYTE6(v1);
LABEL_22:
  *(v14 + 4) = v19;
  sub_100006654(v2, v1);
  *(v14 + 12) = 2080;
  v23 = Data.hexString.getter();
  v25 = sub_1000136BC(v23, v24, (v0 + 136));

  *(v14 + 14) = v25;
  _os_log_impl(&_mh_execute_header, v12, v13, "S1 notify[%ld]: %s", v14, 0x16u);
  sub_100007BAC(v17);

LABEL_23:
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 256);
    v29 = swift_slowAlloc();
    *v29 = 33554688;
    *(v29 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v26, v27, "Target: %hu", v29, 6u);
  }

  v30 = *(v0 + 160);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 160);
    v34 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = v60;
    *v34 = 136315138;
    v35 = *(v33 + 16);
    v36 = *(v33 + 24);
    sub_100017D5C(v35, v36);
    v37 = Data.description.getter();
    v39 = v38;
    sub_100016590(v35, v36);
    v40 = sub_1000136BC(v37, v39, &v61);

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "Buffer: %s", v34, 0xCu);
    sub_100007BAC(v60);
  }

  v41 = *(v0 + 160);
  swift_beginAccess();
  Data.append(_:)();
  v15 = swift_endAccess();
  v42 = *(v41 + 16);
  v43 = *(v41 + 24);
  v44 = v43 >> 62;
  if ((v43 >> 62) <= 1)
  {
    if (!v44)
    {
      v45 = BYTE6(v43);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v45 = 0;
  if (v44 == 2)
  {
    v47 = v42 + 16;
    v42 = *(v42 + 16);
    v46 = *(v47 + 8);
    v45 = v46 - v42;
    if (__OFSUB__(v46, v42))
    {
      __break(1u);
LABEL_34:
      v22 = __OFSUB__(HIDWORD(v42), v42);
      v48 = HIDWORD(v42) - v42;
      if (!v22)
      {
        v45 = v48;
        goto LABEL_36;
      }

      __break(1u);
LABEL_46:
      __break(1u);
      return dispatch thunk of CharacteristicProtocol.readUnderlying()(v15, v16);
    }
  }

LABEL_36:
  v49 = *(v0 + 256);
  v50 = Logger.logObject.getter();
  if (v45 < v49)
  {
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Continue to read S1", v52, 2u);
    }

    v53 = *(v0 + 168);

    ObjectType = swift_getObjectType();
    v55 = async function pointer to dispatch thunk of CharacteristicProtocol.readUnderlying()[1];
    v56 = swift_task_alloc();
    *(v0 + 240) = v56;
    *v56 = v0;
    v56[1] = sub_100C4ED04;
    v57 = *(v0 + 168);
    v16 = *(v0 + 176);
    v15 = ObjectType;

    return dispatch thunk of CharacteristicProtocol.readUnderlying()(v15, v16);
  }

  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v50, v58, "Finished reading S1", v59, 2u);

    sub_100006654(v2, v1);
  }

  else
  {
    sub_100006654(v2, v1);
  }

LABEL_2:
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *v4 = v5;
  v4[1] = v6;
  sub_100017D5C(v5, v6);

  v7 = *(v0 + 8);
LABEL_5:

  return v7();
}

uint64_t sub_100C4ED04()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100C4EF48;
  }

  else
  {
    v3 = sub_100C4EE18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C4EE18()
{
  sub_100006654(v0[28], v0[29]);
  v1 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_100C4E584;
  v3 = v0[25];
  v4 = v0[23];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 14, 0, 0, v4, v0 + 16);
}

uint64_t sub_100C4EECC()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[16];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C4EF48()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_100006654(v0[28], v0[29]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[31];
  v5 = v0[25];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C4EFDC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B9330);
  v1 = sub_1000076D4(v0, qword_1016B9330);
  if (qword_101694DD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BEA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C4F0A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BEA8);
  sub_1000076D4(v0, qword_10177BEA8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C4F128(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[2] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v2[5] = *(v6 + 64);
  v2[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[7] = v7;
  ObjectType = swift_getObjectType();
  v9 = async function pointer to dispatch thunk of CharacteristicProtocol.notify()[1];
  v10 = swift_task_alloc();
  v2[8] = v10;
  *v10 = v2;
  v10[1] = sub_100C4F29C;

  return dispatch thunk of CharacteristicProtocol.notify()(v7, ObjectType, a2);
}

uint64_t sub_100C4F29C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100C4F534;
  }

  else
  {
    v3 = sub_100C4F3B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C4F3B0()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  (*(v4 + 16))(v1, v2, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v4 + 32))(v9 + v8, v1, v6);
  sub_100A838D4(0, 0, v5, &unk_1013E2DA8, v9);

  (*(v4 + 8))(v2, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100C4F534()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_100C4F5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C4F67C, 0, 0);
}

uint64_t sub_100C4F67C()
{
  v1 = v0[8];
  v2 = v0[2];
  ObjectType = swift_getObjectType();
  v0[9] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100C4F754;
  v6 = v0[8];
  v8 = v0[2];
  v7 = v0[3];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C4F754(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v10 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_100C4FB9C;
  }

  else
  {
    v8 = sub_100C4F8C8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100C4F8C8()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = xmmword_101385D80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  sub_100017D5C(v3, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100C4FA10;
  v10 = v0[11];

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C4FA10()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100C4FC00;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100C4FB2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100C4FB2C()
{
  v1 = v0[11];
  v2 = v0[8];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C4FB9C()
{
  v1 = v0[12];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C4FC00()
{
  v1 = v0[13];
  v2 = v0[11];

  swift_unknownObjectRelease();
  v3 = v0[15];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C4FC78(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Endianness() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[21] = v9;
  v10 = *(v9 - 8);
  v2[22] = v10;
  v2[23] = *(v10 + 64);
  v2[24] = swift_task_alloc();
  v11 = swift_task_alloc();
  v2[25] = v11;
  ObjectType = swift_getObjectType();
  v2[26] = ObjectType;
  v13 = async function pointer to dispatch thunk of CharacteristicProtocol.notify()[1];
  v14 = swift_task_alloc();
  v2[27] = v14;
  *v14 = v2;
  v14[1] = sub_100C4FE88;

  return dispatch thunk of CharacteristicProtocol.notify()(v11, ObjectType, a2);
}

uint64_t sub_100C4FE88()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_100C50D14;
  }

  else
  {
    v3 = sub_100C4FF9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C4FF9C()
{
  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];
  v4 = swift_allocObject();
  v0[29] = v4;
  *(v4 + 16) = xmmword_10138C660;
  AsyncThrowingStream.makeAsyncIterator()();
  swift_beginAccess();
  v5 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_100C500A0;
  v7 = v0[20];
  v8 = v0[18];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 8, 0, 0, v8, v0 + 12);
}

uint64_t sub_100C500A0()
{
  v2 = *(*v1 + 240);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100C50DB0;
  }

  else
  {
    v3 = sub_100C501B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C501B0()
{
  v82 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 232);
    v4 = *(v0 + 200);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_100C2A500();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    (*(v6 + 8))(v4, v5);

    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 160);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);

    v13 = *(v0 + 8);

    return v13();
  }

  if (qword_101694DD0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_1016B9330);
  sub_100017D5C(v1, v2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = v2 >> 62;
  if (!os_log_type_enabled(v16, v17))
  {
    sub_100006654(v1, v2);

    goto LABEL_20;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v22 = v20;
  *(v0 + 104) = v20;
  *v19 = 134218242;
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      v23 = 0;
      goto LABEL_19;
    }

    v25 = *(v1 + 16);
    v24 = *(v1 + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (!v26)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_16:
    LODWORD(v23) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
LABEL_56:
      __break(1u);
      return dispatch thunk of CharacteristicProtocol.readUnderlying()(v20, v21);
    }

    v23 = v23;
    goto LABEL_19;
  }

  if (v18)
  {
    goto LABEL_16;
  }

  v23 = BYTE6(v2);
LABEL_19:
  *(v19 + 4) = v23;
  sub_100006654(v1, v2);
  *(v19 + 12) = 2080;
  v27 = Data.hexString.getter();
  v29 = sub_1000136BC(v27, v28, (v0 + 104));

  *(v19 + 14) = v29;
  _os_log_impl(&_mh_execute_header, v16, v17, "s1 notify[%ld]: %s", v19, 0x16u);
  sub_100007BAC(v22);

  v18 = v2 >> 62;
LABEL_20:
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 33554688;
    *(v32 + 4) = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Target: %hu", v32, 6u);
  }

  v33 = *(v0 + 232);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v80 = v2;
    v36 = *(v0 + 232);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v81 = v38;
    *v37 = 136315138;
    v39 = v18;
    v40 = *(v36 + 16);
    v18 = *(v36 + 24);
    sub_100017D5C(v40, v18);
    v79 = v1;
    v41 = Data.description.getter();
    v43 = v42;
    v44 = v18;
    LODWORD(v18) = v39;
    sub_100016590(v40, v44);
    v45 = sub_1000136BC(v41, v43, &v81);
    v2 = v80;

    *(v37 + 4) = v45;
    v1 = v79;
    _os_log_impl(&_mh_execute_header, v34, v35, "Buffer: %s", v37, 0xCu);
    sub_100007BAC(v38);
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_37;
    }

    v47 = *(v1 + 16);
    v46 = *(v1 + 24);
    v26 = __OFSUB__(v46, v47);
    v48 = v46 - v47;
    if (!v26)
    {
      if (v48 > 2)
      {
        goto LABEL_31;
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_55;
  }

  if (!v18)
  {
    if (BYTE6(v2) <= 2uLL)
    {
      goto LABEL_37;
    }

LABEL_31:
    v49 = *(v0 + 136);
    sub_100017D5C(v1, v2);
    v50 = v1;
    v51 = v2;
    sub_10002EA98(2, v1, v2, (v0 + 80));
    v52 = *(v0 + 80);
    v53 = *(v0 + 88);
    static Endianness.current.getter();
    sub_1002053B0();
    FixedWidthInteger.init(data:ofEndianness:)();
    v54 = *(v0 + 264);
    *(v0 + 268) = v54;
    LOBYTE(v52) = *(v0 + 266);
    v55 = Logger.logObject.getter();
    if (v52)
    {
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Unable to convert the first 2 bytes to UInt16", v57, 2u);
      }

      sub_100006654(v50, v51);

      goto LABEL_38;
    }

    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 33554688;
      *(v63 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v55, v62, "S1 target length: %hu", v63, 6u);
    }

    if (v18 == 2)
    {
      v65 = v50;
      v66 = *(v50 + 24);
      v67 = v50;
    }

    else
    {
      v64 = v18 == 1;
      v65 = v50;
      if (!v64)
      {
        while (BYTE6(v51) < 2uLL)
        {
LABEL_49:
          __break(1u);
        }

        goto LABEL_51;
      }

      v66 = v50 >> 32;
      v67 = v50;
    }

    sub_100017D5C(v67, v51);
    if (v66 < 2)
    {
      goto LABEL_49;
    }

LABEL_51:
    v68 = *(v0 + 232);
    v69 = v51;
    v71 = *(v0 + 152);
    v70 = *(v0 + 160);
    v72 = *(v0 + 144);
    v73 = Data._Representation.subscript.getter();
    v75 = v74;
    sub_100006654(v65, v69);
    swift_beginAccess();
    Data.append(_:)();
    swift_endAccess();
    sub_100016590(v73, v75);
    sub_100006654(v65, v69);
    (*(v71 + 8))(v70, v72);
    v76 = async function pointer to dispatch thunk of CharacteristicProtocol.readUnderlying()[1];
    v77 = swift_task_alloc();
    *(v0 + 248) = v77;
    *v77 = v0;
    v77[1] = sub_100C509EC;
    v78 = *(v0 + 112);
    v21 = *(v0 + 120);
    v20 = *(v0 + 208);

    return dispatch thunk of CharacteristicProtocol.readUnderlying()(v20, v21);
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (HIDWORD(v1) - v1 > 2)
  {
    goto LABEL_31;
  }

LABEL_37:
  sub_100006654(v1, v2);
LABEL_38:
  v58 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v59 = swift_task_alloc();
  *(v0 + 240) = v59;
  *v59 = v0;
  v59[1] = sub_100C500A0;
  v60 = *(v0 + 160);
  v61 = *(v0 + 144);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 64, 0, 0, v61, v0 + 96);
}

uint64_t sub_100C509EC()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_100C50E90;
  }

  else
  {
    v3 = sub_100C50B00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C50B00()
{
  v17 = *(v0 + 268);
  v1 = *(v0 + 232);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 128);
  v16 = v7;
  v8 = type metadata accessor for TaskPriority();
  v18 = *(v0 + 112);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v5 + 16))(v3, v2, v6);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = (v4 + v9 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = (v10 + 9) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v5 + 32))(v12 + v9, v3, v6);
  *(v12 + v10) = v17;
  *(v12 + v11) = v1;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;

  swift_unknownObjectRetain();
  v13 = sub_100A838E4(0, 0, v16, &unk_1013E2D88, v12);
  (*(v5 + 8))(v2, v6);

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_100C50D14()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C50DB0()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v4 + 8))(v2, v3);

  v5 = v0[12];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C50E90()
{
  v1 = v0[29];
  (*(v0[22] + 8))(v0[25], v0[21]);

  v2 = v0[32];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C50F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if (qword_101694DD0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_1016B9330);
  sub_100017D5C(a1, a2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  sub_100016590(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010136FD30, &v31);
    *(v9 + 12) = 2080;
    v10 = Data.hexString.getter();
    v12 = sub_1000136BC(v10, v11, &v31);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  sub_100017D5C(a1, a2);
  static Endianness.current.getter();
  sub_100101824();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v31 & 0x100000000) != 0)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Couldn't pack 4 bytes into UInt32", v15, 2u);
    }

    sub_100C2A500();
    swift_allocError();
    *v16 = 10;
    swift_willThrow();
  }

  else
  {
    v17 = (v31 >> 20) & 0xF;
    v18 = WORD1(v31) & 0xF;
    v19 = v31 >> 4;
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10138B360;
    LOWORD(v31) = v19;
    *(v20 + 32) = dispatch thunk of CustomStringConvertible.description.getter();
    *(v20 + 40) = v21;
    LOBYTE(v31) = v18;
    *(v20 + 48) = dispatch thunk of CustomStringConvertible.description.getter();
    *(v20 + 56) = v22;
    LOBYTE(v31) = v17;
    *(v20 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
    *(v20 + 72) = v23;
    v31 = v20;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_10012B138();
    a2 = BidirectionalCollection<>.joined(separator:)();
    v25 = v24;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1000136BC(a2, v25, &v31);
      _os_log_impl(&_mh_execute_header, v26, v27, "Result version: %s", v28, 0xCu);
      sub_100007BAC(v29);
    }
  }

  return a2;
}

uint64_t sub_100C513F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C51590, 0, 0);
}

uint64_t sub_100C51590()
{
  v1 = v0[15];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100C51668;
  v6 = v0[15];
  v8 = v0[5];
  v7 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C51668(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 112);
  v7 = *(*v2 + 104);
  v10 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_100C57868;
  }

  else
  {
    v8 = sub_100C517DC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100C517DC()
{
  v1 = v0[16];
  v2 = v0[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100C518D8;
  v7 = v0[18];
  v8 = v0[9];

  return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C518D8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_100C5786C;
  }

  else
  {
    v3 = sub_100C519EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C519EC()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_100C51ACC;
  v7 = v0[12];
  v8 = v0[10];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 2, 0, 0, v8, v0 + 4);
}

uint64_t sub_100C51ACC()
{
  v2 = *(*v1 + 176);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100C57864;
  }

  else
  {
    v3 = sub_100C57860;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C51BDC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C51D78, 0, 0);
}

uint64_t sub_100C51D78()
{
  v1 = v0[15];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100C51E50;
  v6 = v0[15];
  v8 = v0[5];
  v7 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C51E50(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 112);
  v7 = *(*v2 + 104);
  v10 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_100C52494;
  }

  else
  {
    v8 = sub_100C51FC4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100C51FC4()
{
  v1 = v0[16];
  v2 = v0[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100C520C0;
  v7 = v0[18];
  v8 = v0[9];

  return dispatch thunk of CharacteristicProtocol.read()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C520C0()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_100C52518;
  }

  else
  {
    v3 = sub_100C521D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C521D4()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_100C522B4;
  v7 = v0[12];
  v8 = v0[10];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 2, 0, 0, v8, v0 + 4);
}

uint64_t sub_100C522B4()
{
  v2 = *(*v1 + 176);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100C525A4;
  }

  else
  {
    v3 = sub_100C523C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C523C4()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v5);
  v7 = v0[3];
  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[2];
  }

  if (v7 >> 60 == 15)
  {
    v9 = 0xF000000000000000;
  }

  else
  {
    v9 = v0[3];
  }

  v10 = v0[1];

  return v10(v8, v9);
}

uint64_t sub_100C52494()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C52518()
{
  v1 = v0[18];
  swift_unknownObjectRelease();
  v2 = v0[21];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C525A4()
{
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v5 = v0[4];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C52650(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C527EC, 0, 0);
}

uint64_t sub_100C527EC()
{
  v1 = v0[15];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100C51668;
  v6 = v0[15];
  v8 = v0[5];
  v7 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C528C4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C52A60, 0, 0);
}

uint64_t sub_100C52A60()
{
  v1 = v0[15];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100C51668;
  v6 = v0[15];
  v8 = v0[5];
  v7 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C52B38(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C52CD4, 0, 0);
}

uint64_t sub_100C52CD4()
{
  v1 = v0[15];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100C51668;
  v6 = v0[15];
  v8 = v0[5];
  v7 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

void sub_100C52DAC()
{
  v0 = type metadata accessor for Calendar();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v28 - v11;
  Date.init()();
  static Calendar.current.getter();
  Calendar.startOfDay(for:)();
  (*(v1 + 8))(v4, v0);
  Date.timeIntervalSinceReferenceDate.getter();
  v14 = v13;
  Date.timeIntervalSinceReferenceDate.getter();
  if (qword_101694DD0 != -1)
  {
    v27 = v15;
    swift_once();
    v15 = v27;
  }

  v16 = v14 - v15;
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_1016B9330);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v18, v19, "timeSinceMidnight: %f", v20, 0xCu);
  }

  v21 = v16 * 1000.0;
  if (COERCE__INT64(fabs(v16 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  if (v21 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v22))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "Reftime: %u", v25, 8u);
  }

  v28[3] = v22;
  sub_100101824();
  FixedWidthInteger.data.getter();
  v26 = *(v6 + 8);
  v26(v10, v5);
  v26(v12, v5);
}

uint64_t sub_100C53150(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C532EC, 0, 0);
}

uint64_t sub_100C532EC()
{
  v1 = v0[15];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100C533C4;
  v6 = v0[15];
  v8 = v0[5];
  v7 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C533C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  (*(v3[14] + 8))(v3[15], v3[13]);
  if (v1)
  {
    v7 = sub_100C52494;
  }

  else
  {
    v7 = sub_100C53534;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C53534()
{
  v1 = v0[16];
  v2 = v0[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = async function pointer to dispatch thunk of CharacteristicProtocol.notify()[1];
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100C53630;
  v7 = v0[18];
  v8 = v0[12];

  return dispatch thunk of CharacteristicProtocol.notify()(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C53630()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_100C52518;
  }

  else
  {
    v3 = sub_100C53744;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C53744()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  AsyncThrowingStream.makeAsyncIterator()();
  v4 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_100C537FC;
  v6 = v0[9];
  v7 = v0[7];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 2, 0, 0, v7, v0 + 4);
}

uint64_t sub_100C537FC()
{
  v2 = *(*v1 + 176);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_100C53CB8;
  }

  else
  {
    v3 = sub_100C5390C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C5390C()
{
  v41 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    v2 = v0[18];
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
    sub_100C2A500();
    swift_allocError();
    *v6 = 12;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v3, v5);
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[9];

    v10 = v0[1];

    return v10();
  }

  v12 = v0[2];
  if (qword_101694DD0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016B9330);
  sub_100017D5C(v12, v1);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    result = swift_slowAlloc();
    v17 = result;
    v40 = result;
    *v16 = 134218242;
    v18 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v18 != 2)
      {
        v19 = 0;
        goto LABEL_19;
      }

      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      v25 = __OFSUB__(v23, v24);
      v19 = v23 - v24;
      if (!v25)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v19 = BYTE6(v1);
LABEL_19:
      v26 = v0[8];
      v38 = v0[7];
      v39 = v0[9];
      *(v16 + 4) = v19;
      sub_100006654(v12, v1);
      *(v16 + 12) = 2080;
      v27 = Data.hexString.getter();
      v29 = sub_1000136BC(v27, v28, &v40);

      *(v16 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v14, v15, "c3t4s4[%ld] notify: %s", v16, 0x16u);
      sub_100007BAC(v17);

      (*(v26 + 8))(v39, v38);
      goto LABEL_20;
    }

    LODWORD(v19) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
      return result;
    }

    v19 = v19;
    goto LABEL_19;
  }

  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[7];
  sub_100006654(v12, v1);

  (*(v21 + 8))(v20, v22);
LABEL_20:
  v30 = v0[18];
  v31 = v0[15];
  v33 = v0[11];
  v32 = v0[12];
  v35 = v0[9];
  v34 = v0[10];
  sub_100017D5C(v12, v1);
  v36 = sub_1008CDF88(v12, v1);
  swift_unknownObjectRelease();
  sub_100006654(v12, v1);
  (*(v33 + 8))(v32, v34);

  v37 = v0[1];

  return v37(v36);
}

uint64_t sub_100C53CB8()
{
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  swift_unknownObjectRelease();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = v0[4];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100C53D88(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C53F24, 0, 0);
}

uint64_t sub_100C53F24()
{
  v1 = v0[15];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100C51668;
  v6 = v0[15];
  v8 = v0[5];
  v7 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C53FFC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C54198, 0, 0);
}

uint64_t sub_100C54198()
{
  v1 = v0[15];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_100C51668;
  v6 = v0[15];
  v8 = v0[5];
  v7 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C54270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C54340, 0, 0);
}

uint64_t sub_100C54340()
{
  v1 = v0[5];
  if (v1 >> 60 == 15)
  {
    sub_100C2A500();
    swift_allocError();
    *v2 = 8;
    swift_willThrow();
    v3 = v0[8];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8];
    v7 = v0[4];
    v8 = v0[2];
    ObjectType = swift_getObjectType();
    v0[9] = ObjectType;
    sub_100017D5C(v7, v1);
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v10 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_100C544B8;
    v12 = v0[8];
    v14 = v0[2];
    v13 = v0[3];

    return dispatch thunk of ServiceProtocol.subscript.getter(v12, ObjectType, v13);
  }
}

uint64_t sub_100C544B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v10 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_100C54918;
  }

  else
  {
    v8 = sub_100C5462C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100C5462C()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = xmmword_101385D80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  sub_100017D5C(v3, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100C54774;
  v10 = v0[11];

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C54774()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100C54984;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100C54890;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100C54890()
{
  v1 = v0[11];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  swift_unknownObjectRelease();
  sub_100006654(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C54918()
{
  sub_100006654(v0[4], v0[5]);
  v1 = v0[12];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C54984()
{
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[4];
  v3 = v0[5];

  swift_unknownObjectRelease();
  sub_100006654(v4, v3);
  v5 = v0[15];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C54A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100C54AE4, 0, 0);
}

uint64_t sub_100C54AE4()
{
  v1 = v0[17];
  v2 = v0[12];
  ObjectType = swift_getObjectType();
  v0[18] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_100C54BBC;
  v6 = v0[17];
  v8 = v0[12];
  v7 = v0[13];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C54BBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  v4[20] = a1;
  v4[21] = v1;

  (*(v3[16] + 8))(v3[17], v3[15]);
  if (v1)
  {
    v7 = sub_100C550D4;
  }

  else
  {
    v7 = sub_100C54D2C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C54D2C()
{
  sub_100C574A8(*(v0 + 112), v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 104);
    sub_100031694((v0 + 56), v0 + 16);
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v3 = swift_allocObject();
    *(v0 + 176) = v3;
    *(v3 + 16) = xmmword_101385D80;
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v5);
    *(v3 + 32) = (*(*(*(v4 + 8) + 8) + 40))(v5);
    *(v3 + 40) = v6;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_100C54F40;
    v11 = *(v0 + 160);

    return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v12 = *(v0 + 160);
    sub_100C57518(v0 + 56);
    sub_100C2A500();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
    v14 = *(v0 + 136);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100C54F40()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_100C55138;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_100C5505C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100C5505C()
{
  v1 = v0[20];
  v2 = v0[17];
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C550D4()
{
  v1 = v0[21];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C55138()
{
  v1 = v0[22];
  v2 = v0[20];
  swift_unknownObjectRelease();

  sub_100007BAC(v0 + 2);
  v3 = v0[24];
  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C551B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C55288, 0, 0);
}

uint64_t sub_100C55288()
{
  v1 = v0[5];
  if (v1 >> 60 == 15)
  {
    sub_100C2A500();
    swift_allocError();
    *v2 = 5;
    swift_willThrow();
    v3 = v0[8];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8];
    v7 = v0[4];
    v8 = v0[2];
    ObjectType = swift_getObjectType();
    v0[9] = ObjectType;
    sub_100017D5C(v7, v1);
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v10 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_100C55400;
    v12 = v0[8];
    v14 = v0[2];
    v13 = v0[3];

    return dispatch thunk of ServiceProtocol.subscript.getter(v12, ObjectType, v13);
  }
}

uint64_t sub_100C55400(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v10 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_100C57870;
  }

  else
  {
    v8 = sub_100C55574;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100C55574()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = xmmword_101385D80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  sub_100017D5C(v3, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100C556BC;
  v10 = v0[11];

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C556BC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100C57854;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100C57858;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100C557D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for String.Encoding();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100C55904, 0, 0);
}

uint64_t sub_100C55904()
{
  if (!v0[5])
  {
    goto LABEL_3;
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[4];
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  v0[12] = v5;
  v0[13] = v6;
  (*(v2 + 8))(v1, v3);
  if (v7 >> 60 != 15)
  {
    v13 = v0[8];
    v14 = v0[2];
    ObjectType = swift_getObjectType();
    v0[14] = ObjectType;
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v16 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v17 = swift_task_alloc();
    v0[15] = v17;
    *v17 = v0;
    v17[1] = sub_100C55AC4;
    v18 = v0[8];
    v20 = v0[2];
    v19 = v0[3];

    return dispatch thunk of ServiceProtocol.subscript.getter(v18, ObjectType, v19);
  }

  else
  {
LABEL_3:
    sub_100C2A500();
    swift_allocError();
    *v8 = 7;
    swift_willThrow();
    v9 = v0[11];
    v10 = v0[8];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100C55AC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v10 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_100C55F30;
  }

  else
  {
    v8 = sub_100C55C38;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100C55C38()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v5 = swift_allocObject();
  v0[18] = v5;
  *(v5 + 16) = xmmword_101385D80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  sub_100017D5C(v3, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_100C55D80;
  v10 = v0[16];

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C55D80()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_100C55FA8;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_100C55E9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100C55E9C()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  swift_unknownObjectRelease();
  sub_100006654(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C55F30()
{
  sub_100006654(v0[12], v0[13]);
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C55FA8()
{
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];

  swift_unknownObjectRelease();
  sub_100006654(v4, v3);
  v5 = v0[20];
  v6 = v0[11];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C56044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C56114, 0, 0);
}

uint64_t sub_100C56114()
{
  v1 = v0[7];
  if (v1 >> 60 == 15)
  {
    sub_100C2A500();
    swift_allocError();
    *v2 = 9;
    swift_willThrow();
    v3 = v0[10];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[10];
    v7 = v0[6];
    v8 = v0[4];
    ObjectType = swift_getObjectType();
    v0[11] = ObjectType;
    sub_100017D5C(v7, v1);
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v10 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_100C5628C;
    v12 = v0[10];
    v14 = v0[4];
    v13 = v0[5];

    return dispatch thunk of ServiceProtocol.subscript.getter(v12, ObjectType, v13);
  }
}

uint64_t sub_100C5628C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  (*(v3[9] + 8))(v3[10], v3[8]);
  if (v1)
  {
    v7 = sub_100C56764;
  }

  else
  {
    v7 = sub_100C563FC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C563FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 56);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v7 = *(*(v3 + 48) + 16);
    v8 = *(*(v3 + 48) + 24);
    v9 = __OFSUB__(v8, v7);
    v6 = v8 - v7;
    if (!v9)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v5)
  {
    LOWORD(v6) = BYTE6(v4);
    goto LABEL_14;
  }

  v10 = *(v3 + 48);
  v11 = *(v3 + 52);
  v9 = __OFSUB__(v11, v10);
  LODWORD(v6) = v11 - v10;
  if (v9)
  {
LABEL_18:
    __break(1u);
    return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(a1, a2, a3);
  }

  v6 = v6;
LABEL_10:
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!(v6 >> 16))
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  LOWORD(v6) = 0;
LABEL_14:
  v12 = *(v3 + 88);
  v14 = *(v3 + 40);
  v13 = *(v3 + 48);
  *(v3 + 144) = v6;
  sub_1002053B0();
  *(v3 + 16) = FixedWidthInteger.data.getter();
  *(v3 + 24) = v15;
  Data.append(_:)();
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v18 = Data.chunked(into:)();
  *(v3 + 120) = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v22 = swift_task_alloc();
  *(v3 + 128) = v22;
  *v22 = v3;
  v22[1] = sub_100C565AC;
  v23 = *(v3 + 104);
  a1 = v18;
  a2 = AssociatedTypeWitness;
  a3 = AssociatedConformanceWitness;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(a1, a2, a3);
}

uint64_t sub_100C565AC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);

  if (v0)
  {
    v6 = sub_100C567D0;
  }

  else
  {
    v6 = sub_100C566E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100C566E0()
{
  v1 = v0[13];
  v2 = v0[10];
  sub_100006654(v0[6], v0[7]);
  swift_unknownObjectRelease();
  sub_100016590(v0[2], v0[3]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C56764()
{
  sub_100006654(v0[6], v0[7]);
  v1 = v0[14];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C567D0()
{
  v1 = v0[13];
  sub_100006654(v0[6], v0[7]);
  swift_unknownObjectRelease();
  sub_100016590(v0[2], v0[3]);
  v2 = v0[17];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C56850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C56920, 0, 0);
}

uint64_t sub_100C56920()
{
  v1 = v0[8];
  v2 = v0[2];
  ObjectType = swift_getObjectType();
  v0[9] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100C569F8;
  v6 = v0[8];
  v8 = v0[2];
  v7 = v0[3];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C569F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v10 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_100C5785C;
  }

  else
  {
    v8 = sub_100C56B6C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100C56B6C()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = xmmword_101385D80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  sub_100017D5C(v3, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100C56CB4;
  v10 = v0[11];

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C56CB4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100C57850;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_100C5784C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100C56DD0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100C56E9C, 0, 0);
}

uint64_t sub_100C56E9C()
{
  v1 = v0[6];
  v2 = v0[2];
  ObjectType = swift_getObjectType();
  v0[7] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v4 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100C56F74;
  v6 = v0[6];
  v8 = v0[2];
  v7 = v0[3];

  return dispatch thunk of ServiceProtocol.subscript.getter(v6, ObjectType, v7);
}

uint64_t sub_100C56F74(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v10 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_100C573CC;
  }

  else
  {
    v8 = sub_100C570E8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100C570E8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  *(v3 + 16) = xmmword_101385D80;
  *(v0 + 112) = 1;
  sub_1000198E8();
  *(v3 + 32) = FixedWidthInteger.data.getter();
  *(v3 + 40) = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_100C57240;
  v9 = *(v0 + 72);

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C57240()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_100C57430;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100C5735C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100C5735C()
{
  v1 = v0[9];
  v2 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C573CC()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C57430()
{
  v1 = v0[11];
  v2 = v0[9];

  swift_unknownObjectRelease();
  v3 = v0[13];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C574A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697378, &unk_101391940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C57518(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101697378, &unk_101391940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C57580(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v8 = (v7 + 9) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v9);
  v14 = *(v1 + v9 + 8);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014650;

  return sub_100C4E3AC(a1, v10, v11, v1 + v6, v15, v12, v13, v14);
}

uint64_t sub_100C576E8(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100C4DDF0(a1, v6, v7, v1 + v5);
}

unint64_t sub_100C577F8()
{
  result = qword_1016B9350;
  if (!qword_1016B9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9350);
  }

  return result;
}

void *sub_100C57874(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v23 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v23 + 64;
    v5 = -1 << *(v23 + 32);
    result = _HashTable.startBucket.getter();
    v6 = v23;
    v7 = result;
    v8 = 0;
    v9 = *(v23 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_24;
      }

      v12 = v4;
      v13 = *(v6 + 56) + 16 * v7;
      v14 = *v13;
      if (*(v13 + 8))
      {
        v25 = *v13;
        sub_100B223D0(v14, 1);
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        swift_willThrowTypedImpl();
      }

      v24 = v8;
      sub_100B223D0(v14, 0);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v6 = v23;
      v10 = 1 << *(v23 + 32);
      if (v7 >= v10)
      {
        goto LABEL_25;
      }

      v16 = *(v12 + 8 * v11);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (v9 != *(v23 + 36))
      {
        goto LABEL_27;
      }

      v4 = v12;
      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v10 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (v23 + 72 + 8 * v11);
        while (v19 < (v10 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1000BB408(v7, v9, 0);
            v6 = v23;
            v10 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_1000BB408(v7, v9, 0);
        v6 = v23;
      }

LABEL_4:
      v8 = v24 + 1;
      v7 = v10;
      if (v24 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
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
    __break(1u);
  }

  return result;
}

uint64_t sub_100C57B00(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C57C2C, v2, 0);
}

uint64_t sub_100C57C2C()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_100C57C50, v1, 0);
}

uint64_t sub_100C57C50()
{
  v1 = v0[16];
  v0[17] = type metadata accessor for CloudStorageDatabase();
  v0[18] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase);
  Database.startup()();
  v0[19] = v2;
  if (v2)
  {
    v3 = v0[15];
    v4 = v0[12];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[16];

    return _swift_task_switch(sub_100C57D68, v7, 0);
  }
}

uint64_t sub_100C57D68()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v0[20] = Database.readConnection.getter();

  return _swift_task_switch(sub_100C57DD8, 0, 0);
}

uint64_t sub_100C57DD8()
{
  if (!v0[20])
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694888 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[13], qword_10177B110);
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  v20 = v0[19];
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v8, qword_10177B140);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v6 + 8))(v4, v5);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v9 = sub_1000280DC(v0 + 2);
  (*(v1 + 16))(v9, v2, v3);
  sub_10000770C();
  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[13];
  if (v20)
  {
    (*(v10 + 8))(v0[15], v0[13]);

    sub_100007BAC(v0 + 2);
LABEL_9:
    v14 = v0[15];
    v15 = v0[12];

    v16 = v0[1];
    goto LABEL_11;
  }

  v17 = v0[12];
  v18 = v0[7];
  sub_100007BAC(v0 + 2);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();

  (*(v10 + 8))(v11, v12);

  v16 = v0[1];
LABEL_11:

  return v16();
}

uint64_t sub_100C580A0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100C581CC, v2, 0);
}

uint64_t sub_100C581CC()
{
  v1 = *(*(v0 + 88) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100C581F0, v1, 0);
}

uint64_t sub_100C581F0()
{
  v1 = v0[18];
  v0[19] = type metadata accessor for CloudStorageDatabase();
  v0[20] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase);
  Database.startup()();
  v0[21] = v2;
  if (v2)
  {
    v3 = v0[17];
    v4 = v0[14];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[18];

    return _swift_task_switch(sub_100C58308, v7, 0);
  }
}

uint64_t sub_100C58308()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v0[22] = Database.readConnection.getter();

  return _swift_task_switch(sub_100C58378, 0, 0);
}

uint64_t sub_100C58378()
{
  if (!v0[22])
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694888 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[15], qword_10177B110);
  if (qword_1016948B0 != -1)
  {
    swift_once();
  }

  v22 = v0[21];
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v21 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v8, qword_10177B188);
  v0[7] = v7;
  v0[8] = v6;
  sub_100017D5C(v7, v6);
  sub_10003118C(&qword_101699DC8, &type metadata accessor for Blob);
  == infix<A>(_:_:)();
  sub_100016590(v0[7], v0[8]);
  QueryType.filter(_:)();
  (*(v5 + 8))(v4, v21);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v9 = sub_1000280DC(v0 + 2);
  (*(v1 + 16))(v9, v2, v3);
  sub_10000770C();
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  if (v22)
  {
    (*(v11 + 8))(v0[17], v0[15]);

    sub_100007BAC(v0 + 2);
LABEL_9:
    v14 = v0[17];
    v15 = v0[14];

    v16 = v0[1];

    return v16();
  }

  v18 = v0[14];
  sub_100007BAC(v0 + 2);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  v19 = sub_100B35970();

  (*(v11 + 8))(v10, v12);

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_100C586BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for OnConflict();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = type metadata accessor for Insert();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();
  v11 = type metadata accessor for Row();
  v4[23] = v11;
  v12 = *(v11 - 8);
  v4[24] = v12;
  v13 = *(v12 + 64) + 15;
  v4[25] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[26] = v14;
  v15 = *(v14 - 8);
  v4[27] = v15;
  v16 = *(v15 + 64) + 15;
  v4[28] = swift_task_alloc();
  v17 = type metadata accessor for Table();
  v4[29] = v17;
  v18 = *(v17 - 8);
  v4[30] = v18;
  v19 = *(v18 + 64) + 15;
  v4[31] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v4[32] = v20;
  v21 = *(v20 - 8);
  v4[33] = v21;
  v22 = *(v21 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_100C58964, 0, 0);
}

uint64_t sub_100C58964()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[15];
  v5 = v0[16];
  v6 = *(v3 + 16);
  v0[36] = v6;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);

  return _swift_task_switch(sub_100C589EC, v5, 0);
}

uint64_t sub_100C589EC()
{
  v1 = *(*(v0 + 128) + 112);
  *(v0 + 304) = v1;
  return _swift_task_switch(sub_100C58A10, v1, 0);
}

uint64_t sub_100C58A10()
{
  v1 = v0[38];
  v0[39] = type metadata accessor for CloudStorageDatabase();
  v0[40] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase);
  Database.startup()();
  v0[41] = v2;
  if (v2)
  {
    v3 = sub_100C595C4;
    v4 = 0;
  }

  else
  {
    v4 = v0[38];
    v3 = sub_100C58AF4;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100C58AF4()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v0[42] = Database.writeConnection.getter();

  return _swift_task_switch(sub_100C58B64, 0, 0);
}

uint64_t sub_100C58B64()
{
  v97 = v0;
  if (!v0[42])
  {
    v18 = v0[35];
    v19 = v0[32];
    v20 = v0[33];
    sub_10020223C();
    swift_allocError();
    *v21 = 2;
    *(v21 + 4) = 1;
    swift_willThrow();
    (*(v20 + 8))(v18, v19);
    goto LABEL_34;
  }

  if (qword_101694890 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[29], qword_10177B128);
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[26];
  v9 = v0[15];
  v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v10, qword_10177B140);
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v6 + 8))(v7, v8);
  v0[5] = v4;
  v0[6] = &protocol witness table for Table;
  v11 = sub_1000280DC(v0 + 2);
  (*(v5 + 16))(v11, v3, v4);
  Connection.prepare(_:)();
  if (v1)
  {
    v12 = v0[35];
    v14 = v0[32];
    v13 = v0[33];
    v16 = v0[30];
    v15 = v0[31];
    v17 = v0[29];

    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
    sub_100007BAC(v0 + 2);
LABEL_34:
    v72 = v0[34];
    v71 = v0[35];
    v73 = v0[31];
    v74 = v0[28];
    v75 = v0[25];
    v76 = v0[22];
    v77 = v0[19];

    v87 = v0[1];
    goto LABEL_35;
  }

  sub_100007BAC(v0 + 2);
  v22 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  if (*(v22 + 16))
  {
    (*(v0[24] + 16))(v0[25], v22 + ((*(v0[24] + 80) + 32) & ~*(v0[24] + 80)), v0[23]);

    if (qword_101694900 != -1)
    {
      swift_once();
    }

    v23 = v0[25];
    v24 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
    sub_1000076D4(v24, qword_10177B278);
    Row.subscript.getter();
    v92 = v0[8];
    v93 = v0[7];
    if (qword_1016948F8 != -1)
    {
      swift_once();
    }

    v25 = v0[24];
    v26 = v0[25];
    v27 = v0[23];
    v28 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
    sub_1000076D4(v28, qword_10177B260);
    Row.subscript.getter();
    (*(v25 + 8))(v26, v27);
    v29 = v0[11];
    if (v29 == 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v29 == 1;
    }
  }

  else
  {

    v30 = 0;
    v92 = 0xF000000000000000;
    v93 = 0;
  }

  v31 = v0[14];
  v32 = (v31 >> 60) & 3;
  if (!v32)
  {
    sub_100006654(v93, v92);
    v33 = v0[13];
    v31 = v0[14];
    v92 = v31;
    v93 = v33;
LABEL_23:
    sub_100C61CD4(v33, v31);
    goto LABEL_24;
  }

  if (v32 != 1)
  {
    v33 = v0[13];
    goto LABEL_23;
  }

  v30 = *(v0 + 104);
LABEL_24:
  v89 = v30;
  if (qword_101694DE0 != -1)
  {
    swift_once();
  }

  v35 = v0[36];
  v34 = v0[37];
  v36 = v0[34];
  v37 = v0[32];
  v39 = v0[14];
  v38 = v0[15];
  v40 = v0[13];
  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177BEC0);
  v35(v36, v38, v37);
  sub_100C61CD4(v40, v39);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  sub_100C61CE4(v40, v39);
  v44 = os_log_type_enabled(v42, v43);
  v46 = v0[33];
  v45 = v0[34];
  v47 = v0[32];
  if (v44)
  {
    v49 = v0[13];
    v48 = v0[14];
    v50 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v50 = 141559043;
    *(v50 + 4) = 1752392040;
    *(v50 + 12) = 2081;
    v51 = sub_1011EB8F8(v49, v48);
    v53 = sub_1000136BC(v51, v52, v96);

    *(v50 + 14) = v53;
    *(v50 + 22) = 2160;
    *(v50 + 24) = 1752392040;
    *(v50 + 32) = 2081;
    sub_10003118C(&qword_101696930, &type metadata accessor for UUID);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v88 = *(v46 + 8);
    v88(v45, v47);
    v57 = sub_1000136BC(v54, v56, v96);

    *(v50 + 34) = v57;
    *(v50 + 42) = 2050;
    *(v50 + 44) = v89;
    _os_log_impl(&_mh_execute_header, v42, v43, "Saving %{private,mask.hash}s for %{private,mask.hash}s\nrawFindMyPairingState %{public}ld", v50, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v88 = *(v46 + 8);
    v88(v45, v47);
  }

  v58 = v0[35];
  v59 = v0[32];
  (*(v0[18] + 104))(v0[19], enum case for OnConflict.replace(_:), v0[17]);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  v60 = *(type metadata accessor for Setter() - 8);
  v61 = *(v60 + 72);
  v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  *(swift_allocObject() + 16) = xmmword_10138B360;
  <- infix<A>(_:_:)();
  if (qword_101694900 != -1)
  {
    swift_once();
  }

  v63 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v63, qword_10177B278);
  v0[9] = v93;
  v0[10] = v92;
  sub_10002E98C(v93, v92);
  <- infix<A>(_:_:)();
  sub_100006654(v0[9], v0[10]);
  if (qword_1016948F8 != -1)
  {
    swift_once();
  }

  v64 = v0[29];
  v65 = v0[22];
  v66 = v0[18];
  v67 = v0[19];
  v68 = v0[17];
  v69 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v69, qword_10177B260);
  v0[12] = v89;
  <- infix<A>(_:_:)();
  QueryType.insert(or:_:)();

  (*(v66 + 8))(v67, v68);
  Connection.run(_:)();
  v70 = v0[35];
  v79 = v0[33];
  v81 = v0[31];
  v80 = v0[32];
  v82 = v0[29];
  v83 = v0[30];
  v90 = v0[34];
  v91 = v0[28];
  v84 = v0[21];
  v85 = v0[22];
  v86 = v0[20];
  v94 = v0[25];
  v95 = v0[19];

  sub_100006654(v93, v92);
  (*(v84 + 8))(v85, v86);
  (*(v83 + 8))(v81, v82);
  v88(v70, v80);

  v87 = v0[1];
LABEL_35:

  return v87();
}

uint64_t sub_100C595C4()
{
  (*(v0[33] + 8))(v0[35], v0[32]);
  v1 = v0[41];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[19];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C5969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();
  v12 = type metadata accessor for Table();
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v14 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v15 = type metadata accessor for Delete();
  v4[18] = v15;
  v16 = *(v15 - 8);
  v4[19] = v16;
  v17 = *(v16 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_100C598C4, 0, 0);
}

uint64_t sub_100C598C4()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 176) = v1;
  return _swift_task_switch(sub_100C598E8, v1, 0);
}

uint64_t sub_100C598E8()
{
  v1 = *(v0 + 176);
  type metadata accessor for CloudStorageDatabase();
  sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase);
  *(v0 + 184) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100C5999C, 0, 0);
}

uint64_t sub_100C5999C()
{
  v64 = v0;
  if (v0[23])
  {
    if (qword_101694890 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[15], qword_10177B128);
    if (qword_101694898 != -1)
    {
      swift_once();
    }

    v1 = v0[21];
    v2 = v0[16];
    v3 = v0[17];
    v5 = v0[14];
    v4 = v0[15];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[4];
    v9 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v9, qword_10177B140);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    QueryType.filter(_:)();
    (*(v6 + 8))(v5, v7);
    QueryType.delete()();
    v10 = *(v2 + 8);
    v10(v3, v4);
    Connection.run(_:)();
    v20 = v0[6];
    if (v20 >> 60 == 15)
    {
      (*(v0[19] + 8))(v0[21], v0[18]);
    }

    else
    {
      sub_100017D5C(v0[5], v20);
      if (qword_101694DE0 != -1)
      {
        swift_once();
      }

      v22 = v0[5];
      v21 = v0[6];
      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177BEC0);
      sub_100017D5C(v22, v21);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      sub_100006654(v22, v21);
      v62 = v10;
      if (os_log_type_enabled(v24, v25))
      {
        v26 = v0[11];
        v28 = v0[5];
        v27 = v0[6];
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v63 = v30;
        *v29 = 141558275;
        *(v29 + 4) = 1752392040;
        *(v29 + 12) = 2081;
        sub_100017D5C(v28, v27);
        static String.Encoding.utf8.getter();
        v31 = String.init(data:encoding:)();
        v33 = v32;
        v34 = v0[5];
        v35 = v0[6];
        if (!v33)
        {
          v36 = v0[5];
          v37 = v0[6];
          v31 = Data.hexString.getter();
          v33 = v38;
          v34 = v36;
          v35 = v37;
        }

        sub_100006654(v34, v35);
        v39 = sub_1000136BC(v31, v33, &v63);

        *(v29 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v24, v25, "Deleting preferences for %{private,mask.hash}s", v29, 0x16u);
        sub_100007BAC(v30);
      }

      if (qword_101694900 != -1)
      {
        swift_once();
      }

      v40 = v0[20];
      v41 = v0[17];
      v42 = v0[15];
      v43 = v0[9];
      v44 = v0[10];
      v61 = v0[8];
      v46 = v0[5];
      v45 = v0[6];
      v47 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
      sub_1000076D4(v47, qword_10177B278);
      v0[2] = v46;
      v0[3] = v45;
      sub_100017D5C(v46, v45);
      sub_10003118C(&qword_101699DC8, &type metadata accessor for Blob);
      == infix<A>(_:_:)();
      sub_100006654(v0[2], v0[3]);
      QueryType.filter(_:)();
      (*(v43 + 8))(v44, v61);
      QueryType.delete()();
      v62(v41, v42);
      Connection.run(_:)();
      v49 = v0[20];
      v48 = v0[21];
      v50 = v0[18];
      v51 = v0[19];
      v53 = v0[5];
      v52 = v0[6];

      sub_100006654(v53, v52);
      v54 = *(v51 + 8);
      v54(v49, v50);
      v54(v48, v50);
    }

    v56 = v0[20];
    v55 = v0[21];
    v57 = v0[17];
    v58 = v0[14];
    v60 = v0[10];
    v59 = v0[11];

    v18 = v0[1];
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    swift_willThrow();
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[17];
    v15 = v0[14];
    v17 = v0[10];
    v16 = v0[11];

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_100C59FE4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C5A110, v2, 0);
}

uint64_t sub_100C5A110()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_100C5A134, v1, 0);
}

uint64_t sub_100C5A134()
{
  v1 = v0[16];
  v0[17] = type metadata accessor for CloudStorageDatabase();
  v0[18] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase);
  Database.startup()();
  v0[19] = v2;
  if (v2)
  {
    v3 = v0[15];
    v4 = v0[12];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[16];

    return _swift_task_switch(sub_100C5A24C, v7, 0);
  }
}

uint64_t sub_100C5A24C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v0[20] = Database.readConnection.getter();

  return _swift_task_switch(sub_100C5A2BC, 0, 0);
}

uint64_t sub_100C5A2BC()
{
  v1 = v0[20];
  if (!v1)
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694890 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[13], qword_10177B128);
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  v21 = v0[19];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[8];
  v9 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v9, qword_10177B140);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v7 + 8))(v5, v6);
  v0[5] = v4;
  v0[6] = &protocol witness table for Table;
  v10 = sub_1000280DC(v0 + 2);
  (*(v2 + 16))(v10, v3, v4);
  sub_100C61CF4((v0 + 2), v1);
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[13];
  if (v21)
  {
    (*(v11 + 8))(v0[15], v0[13]);

    sub_100007BAC(v0 + 2);
LABEL_9:
    v15 = v0[15];
    v16 = v0[12];

    v17 = v0[1];
    goto LABEL_11;
  }

  v18 = v0[12];
  v19 = v0[7];
  sub_100007BAC(v0 + 2);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();

  (*(v11 + 8))(v12, v13);

  v17 = v0[1];
LABEL_11:

  return v17();
}

uint64_t sub_100C5A584(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100C5A6B0, v2, 0);
}

uint64_t sub_100C5A6B0()
{
  v1 = *(*(v0 + 88) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100C5A6D4, v1, 0);
}

uint64_t sub_100C5A6D4()
{
  v1 = v0[18];
  v0[19] = type metadata accessor for CloudStorageDatabase();
  v0[20] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase);
  Database.startup()();
  v0[21] = v2;
  if (v2)
  {
    v3 = v0[17];
    v4 = v0[14];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[18];

    return _swift_task_switch(sub_100C5A7EC, v7, 0);
  }
}

uint64_t sub_100C5A7EC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v0[22] = Database.readConnection.getter();

  return _swift_task_switch(sub_100C5A85C, 0, 0);
}

uint64_t sub_100C5A85C()
{
  v1 = v0[22];
  if (!v1)
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694890 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[15], qword_10177B128);
  if (qword_101694900 != -1)
  {
    swift_once();
  }

  v23 = v0[21];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v22 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v9, qword_10177B278);
  v0[7] = v8;
  v0[8] = v7;
  sub_100017D5C(v8, v7);
  sub_10003118C(&qword_101699DC8, &type metadata accessor for Blob);
  == infix<A>(_:_:)();
  sub_100006654(v0[7], v0[8]);
  QueryType.filter(_:)();
  (*(v6 + 8))(v5, v22);
  v0[5] = v4;
  v0[6] = &protocol witness table for Table;
  v10 = sub_1000280DC(v0 + 2);
  (*(v2 + 16))(v10, v3, v4);
  sub_100C61CF4((v0 + 2), v1);
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  if (v23)
  {
    (*(v12 + 8))(v0[17], v0[15]);

    sub_100007BAC(v0 + 2);
LABEL_9:
    v15 = v0[17];
    v16 = v0[14];

    v17 = v0[1];

    return v17();
  }

  v19 = v0[14];
  sub_100007BAC(v0 + 2);
  v20 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  (*(v12 + 8))(v11, v13);

  v21 = v0[1];

  return v21(v20);
}

uint64_t sub_100C5AB8C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BEC0);
  v1 = sub_1000076D4(v0, qword_10177BEC0);
  if (qword_101694908 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B290);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C5AC54()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CloudStorageStore.State(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100C62CE0(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v6, v10, v2);
      v20 = 0;
      v21 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v20 = 0xD00000000000002ELL;
      v21 = 0x800000010136FDD0;
      sub_10003118C(&qword_101696930, &type metadata accessor for UUID);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13 = v20;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      return 0x6E776F6E6B6E752ELL;
    }
  }

  else
  {
    sub_100031694(v10, &v20);
    v18 = 0;
    v19 = 0xE000000000000000;
    v14._countAndFlagsBits = 0x65696669646F6D2ELL;
    v14._object = 0xEA00000000002864;
    String.append(_:)(v14);
    sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
    _print_unlocked<A, B>(_:_:)();
    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v13 = v18;
    sub_100007BAC(&v20);
  }

  return v13;
}

uint64_t sub_100C5AEEC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  sub_100C62C80(v0 + OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_state, type metadata accessor for CloudStorageStore.State);
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_stateContinuations);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100C5AF88()
{
  result = type metadata accessor for CloudStorageStore.State(319);
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

void sub_100C5B068()
{
  sub_100C5B0DC();
  if (v0 <= 0x3F)
  {
    sub_100C5B188();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100C5B0DC()
{
  if (!qword_1016B94E8)
  {
    v0 = sub_100C5B124();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B94E8);
    }
  }
}

unint64_t sub_100C5B124()
{
  result = qword_1016B94F0;
  if (!qword_1016B94F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016B94F0);
  }

  return result;
}

void sub_100C5B188()
{
  if (!qword_1016B94F8)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016B94F8);
    }
  }
}

uint64_t sub_100C5B1F4(uint64_t a1)
{
  v39 = a1;
  v38 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  v35 = *(v38 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v38);
  v3 = &v27 - v2;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    UUID.init()();
    v30 = v3;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v1;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    AsyncStream.Continuation.onTermination.setter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_10025EDD4(0, 0, v37, &unk_1013E30F0, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_100C5B5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_10025EDD4(0, 0, v11, &unk_1013E3108, v14);
}

uint64_t sub_100C5B7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100C5B7F8, a4, 0);
}

uint64_t sub_100C5B7F8()
{
  v1 = v0[2];
  sub_100C5B858(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100C5B858(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699898, &qword_101392018);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v29 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  if (qword_101694DE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BEC0);
  v28 = *(v7 + 16);
  v28(v12, a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v5;
    v17 = v16;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v17 = 136446210;
    sub_10003118C(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = a1;
    v20 = v19;
    (*(v7 + 8))(v12, v6);
    v21 = sub_1000136BC(v18, v20, &v30);
    a1 = v26;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Removing stateContinuation for %{public}s", v17, 0xCu);
    sub_100007BAC(v25);

    v5 = v27;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  v22 = v29;
  v28(v29, a1, v6);
  v23 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  swift_beginAccess();
  sub_1001E0F58(v5, v22);
  return swift_endAccess();
}

uint64_t sub_100C5BBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_1000BC4D4(&qword_1016B9548, &qword_1013E3098);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(*(type metadata accessor for CloudStorageStore.State(0) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100C5BD00, a4, 0);
}

uint64_t sub_100C5BD00()
{
  v1 = v0[12];
  v2 = v0[5];
  sub_100C5BE94(v0[6], v0[7]);
  v3 = OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_state;
  swift_beginAccess();
  sub_100C62CE0(v2 + v3, v1);

  return _swift_task_switch(sub_100C5BDA0, 0, 0);
}

uint64_t sub_100C5BDA0()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  sub_100C62CE0(v1, v0[11]);
  sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  sub_100C62C80(v1, type metadata accessor for CloudStorageStore.State);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C5BE94(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_1000BC4D4(&qword_101699898, &qword_101392018);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v32 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  if (qword_101694DE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BEC0);
  v31 = *(v8 + 16);
  v31(v13, a2, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v6;
    v18 = v17;
    v28 = swift_slowAlloc();
    v34 = v28;
    *v18 = 136446210;
    sub_10003118C(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a2;
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_1000136BC(v19, v21, &v34);
    a2 = v29;

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Storing stateContinuation for %{public}s", v18, 0xCu);
    sub_100007BAC(v28);

    v6 = v30;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v23 = v32;
  v31(v32, a2, v7);
  v24 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  v25 = *(v24 - 8);
  (*(v25 + 16))(v6, v33, v24);
  (*(v25 + 56))(v6, 0, 1, v24);
  swift_beginAccess();
  sub_1001E0F58(v6, v23);
  return swift_endAccess();
}

uint64_t sub_100C5C268(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1000BC4D4(&qword_1016B9548, &qword_1013E3098);
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = *(*(type metadata accessor for CloudStorageStore.State(0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100C5C3D4, v1, 0);
}

uint64_t sub_100C5C3D4()
{
  v55 = v0;
  v1 = v0[20];
  v2 = v0[11];
  v3 = v0[12];
  v4 = OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_state;
  swift_beginAccess();
  sub_100C62CE0(v3 + v4, v1);
  LOBYTE(v2) = sub_100C618A8(v1, v2);
  sub_100C62C80(v1, type metadata accessor for CloudStorageStore.State);
  if ((v2 & 1) == 0)
  {
    if (qword_101694DE0 != -1)
    {
LABEL_26:
      swift_once();
    }

    v5 = v0[19];
    v6 = v0[11];
    v7 = v0[12];
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177BEC0);
    sub_100C62CE0(v6, v5);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    v52 = v0;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[20];
      v50 = v0[19];
      v12 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v12 = 136315394;
      sub_100C62CE0(v3 + v4, v11);
      v13 = sub_100C5AC54();
      v15 = v14;
      sub_100C62C80(v11, type metadata accessor for CloudStorageStore.State);
      v16 = sub_1000136BC(v13, v15, &v54);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = sub_100C5AC54();
      v19 = v18;
      sub_100C62C80(v50, type metadata accessor for CloudStorageStore.State);
      v20 = sub_1000136BC(v17, v19, &v54);

      *(v12 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "State: %s -> %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v21 = v0[19];

      sub_100C62C80(v21, type metadata accessor for CloudStorageStore.State);
    }

    v22 = v0[11];
    v23 = v0[12];
    swift_beginAccess();
    sub_100C62D44(v22, v3 + v4);
    swift_endAccess();
    v24 = OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_stateContinuations;
    swift_beginAccess();
    v25 = *(v23 + v24);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v27, v28, "Publishing State change event to %ld subscribers", v29, 0xCu);
      }

      v25 = *(v23 + v24);
    }

    v30 = v25 + 64;
    v31 = -1;
    v32 = -1 << *(v25 + 32);
    if (-v32 < 64)
    {
      v31 = ~(-1 << -v32);
    }

    v33 = v31 & *(v25 + 64);
    v34 = (63 - v32) >> 6;
    v48 = (v0[14] + 8);
    v49 = v0[17];
    v51 = v25;

    v4 = 0;
    while (v33)
    {
      v35 = v4;
      v36 = v51;
LABEL_19:
      v37 = v52[20];
      v38 = v52[18];
      v40 = v52[15];
      v39 = v52[16];
      v53 = v52[13];
      v3 = v52[11];
      v41 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v0 = v49;
      (*(v49 + 16))(v38, *(v36 + 56) + *(v49 + 72) * (v41 | (v35 << 6)), v39);
      sub_100C62CE0(v3, v37);
      AsyncStream.Continuation.yield(_:)();
      (*v48)(v40, v53);
      (*(v49 + 8))(v38, v39);
    }

    v36 = v51;
    while (1)
    {
      v35 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v35 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v35);
      ++v4;
      if (v33)
      {
        v4 = v35;
        goto LABEL_19;
      }
    }

    v0 = v52;
  }

  v43 = v0[19];
  v42 = v0[20];
  v44 = v0[18];
  v45 = v0[15];

  v46 = v0[1];

  return v46();
}