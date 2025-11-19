uint64_t sub_10006F424(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return 3;
  }

  else
  {
    return qword_100106988[a2];
  }
}

unint64_t sub_10006F444(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v7;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    sub_1000798B8(a1, a2);
    v8 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(inited + 32, &qword_100153B98, &qword_100107EA0);
    return v8;
  }

  else
  {

    return sub_100061318(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10006F534(uint64_t a1)
{
  v2 = sub_10007A3B4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10006F570(uint64_t a1)
{
  v2 = sub_10007A3B4();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10006F5AC()
{
  v1 = *(v0 + 8);
  if (v1 > 2)
  {
    return 3;
  }

  else
  {
    return qword_100106988[v1];
  }
}

unint64_t sub_10006F5D0()
{
  v1 = v0[1];
  if (v1 >= 3)
  {
    v3 = *v0;
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = v3;
    *(inited + 56) = v1;
    sub_1000798B8(v3, v1);
    v6 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(inited + 32, &qword_100153B98, &qword_100107EA0);
    return v6;
  }

  else
  {

    return sub_100061318(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10006F6CC()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D290);
  sub_100025AE0(v0, qword_10015D290);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006F74C()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D290);
}

uint64_t sub_10006F7B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D290);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10006F868()
{
  v1 = *(v0 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_daemon);
  v2 = *(v0 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_daemon + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_10006F89C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName);
  v2 = *(v0 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName + 8);

  return v1;
}

id sub_10006F8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine] = a1;
  v14 = &v13[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_daemon];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = &v13[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName];
  *v15 = a4;
  *(v15 + 1) = a5;
  *&v13[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid] = a6;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, "init");
}

id sub_10006F990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine] = a1;
  v14 = &v6[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_daemon];
  *v14 = a2;
  *(v14 + 1) = a3;
  v15 = &v6[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName];
  *v15 = a4;
  *(v15 + 1) = a5;
  *&v6[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid] = a6;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_10006FA38(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_10006FB30;

  return v7(a1);
}

uint64_t sub_10006FB30()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007A9AC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10006FC84()
{
  v15 = v0;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_100025AE0(v2, qword_10015D290);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100021D24(*(v6 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName), *(v6 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName + 8), &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "Refreshing milestones: %{public}s", v7, 0xCu);
    sub_100024E14(v8);
  }

  v9 = *(**(*(v0 + 40) + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 160);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = sub_10006FECC;

  return v13();
}

uint64_t sub_10006FECC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100070000, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_100070000()
{
  v1 = v0[7];
  v2 = objc_opt_self();
  v3 = _convertErrorToNSError(_:)();
  v4 = [v2 cleanseErrorForXPC:v3];

  if (!v4)
  {
    v0[4] = v0[7];
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_100024248(&qword_100152630, &qword_100103210);
    _print_unlocked<A, B>(_:_:)();
    v5 = v0[2];
    v6 = v0[3];
    sub_1000798CC();
    swift_allocError();
    *v7 = v5;
    v7[1] = v6;
  }

  v8 = v0[7];
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000702AC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007A9B0;

  return sub_10006FC64();
}

uint64_t sub_100070374()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Verifying PAT consistency", v4, 2u);
  }

  v5 = *(v0 + 40);

  v6 = *(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_100070550;

  return v10();
}

uint64_t sub_100070550()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007A9A8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1000707F8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007A9B0;

  return sub_100070354();
}

uint64_t sub_1000708C0()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Public keybag refresh", v4, 2u);
  }

  v5 = *(v0 + 40);

  v6 = *(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_100070550;

  return v10();
}

uint64_t sub_100070C10(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007A9B0;

  return sub_1000708A0();
}

void sub_100070D44(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_100024248(&qword_1001535C8, &qword_100104BE8);
  v7 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100106420;
  v11 = (v10 + v9);
  v12 = *(v7 + 48);
  *v11 = 0x73736563637573;
  v11[1] = 0xE700000000000000;
  EventValue.init(BOOLeanLiteral:)();
  v13 = (v10 + v9 + v8);
  v14 = *(v7 + 48);
  *v13 = 0x746E65696C63;
  v13[1] = 0xE600000000000000;

  EventValue.init(stringLiteral:)();
  v15 = (v11 + 2 * v8);
  v16 = *(v7 + 48);
  *v15 = 7761509;
  v15[1] = 0xE300000000000000;
  v17 = a1[3];
  v18 = a1[4];
  sub_100026F6C(a1, v17);
  v19 = (*(v18 + 48))(v17, v18);
  v20 = [v19 currentEnvironment];

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    EventValue.init(integerLiteral:)();
    v21 = (v11 + 3 * v8);
    *v21 = 0x6E6F73616572;
    v21[1] = 0xE600000000000000;
    if (a4)
    {
      v22 = [a4 name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v23 = v21 + *(v7 + 48);
    EventValue.init(stringLiteral:)();
    v24 = sub_10004C674(v10);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v25 = a1[3];
    v26 = a1[4];
    sub_100026F6C(a1, v25);
    (*(v26 + 88))(v31, v25, v26);
    v27 = v32;
    v28 = v33;
    sub_100026F6C(v31, v32);
    (*(v28 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, a6, v24, v27, v28);

    sub_100024E14(v31);
  }
}

uint64_t sub_10007104C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10007106C, 0, 0);
}

uint64_t sub_10007106C()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_7;
  }

  [*(v0 + 16) timeout];
  if (v2.n128_f64[0] > 0.0)
  {
    goto LABEL_8;
  }

  v3 = [v1 qualityOfService];
  v4 = v3 + 1;
  if (v3 + 1 > 0x22)
  {
    goto LABEL_7;
  }

  if (((1 << v4) & 0x40401) != 0)
  {
    v2.n128_u64[0] = 0x404E000000000000;
    goto LABEL_8;
  }

  v2.n128_u64[0] = 5.0;
  if (((1 << v4) & 0x404000000) == 0)
  {
LABEL_7:
    [*(v0 + 24) uiBlockingNetworkTimeout];
  }

LABEL_8:
  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_100071150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_task_alloc();
  *(v6 + 48) = v12;
  *v12 = v6;
  v12[1] = sub_100071220;

  return sub_100071488(v6 + 32, v5, a1, a2, a5, a3, a4);
}

uint64_t sub_100071220()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_100071350;
  }

  else
  {
    v3 = sub_100071334;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100071350()
{
  v1 = v0[7];
  v2 = objc_opt_self();
  v3 = _convertErrorToNSError(_:)();
  v4 = [v2 cleanseErrorForXPC:v3];

  if (!v4)
  {
    v0[5] = v0[7];
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_100024248(&qword_100152630, &qword_100103210);
    _print_unlocked<A, B>(_:_:)();
    v5 = v0[2];
    v6 = v0[3];
    sub_1000798CC();
    swift_allocError();
    *v7 = v5;
    v7[1] = v6;
  }

  v8 = v0[7];
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100071488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[90] = a7;
  v7[89] = a6;
  v7[88] = a5;
  v7[87] = a4;
  v7[86] = a3;
  v7[85] = a2;
  v7[84] = a1;
  v8 = type metadata accessor for Date();
  v7[91] = v8;
  v9 = *(v8 - 8);
  v7[92] = v9;
  v10 = *(v9 + 64) + 15;
  v7[93] = swift_task_alloc();
  v11 = type metadata accessor for SuspendingClock();
  v7[94] = v11;
  v12 = *(v11 - 8);
  v7[95] = v12;
  v13 = *(v12 + 64) + 15;
  v7[96] = swift_task_alloc();
  v14 = *(*(sub_100024248(&unk_100152620, &unk_1001031E0) - 8) + 64) + 15;
  v7[97] = swift_task_alloc();
  v15 = type metadata accessor for SuspendingClock.Instant();
  v7[98] = v15;
  v16 = *(v15 - 8);
  v7[99] = v16;
  v17 = *(v16 + 64) + 15;
  v7[100] = swift_task_alloc();
  v7[101] = swift_task_alloc();

  return _swift_task_switch(sub_10007165C, 0, 0);
}

uint64_t sub_10007165C()
{
  if ([objc_opt_self() isAvailable])
  {
    v1 = v0[101];
    v2 = v0[85];
    static SuspendingClock.now.getter();
    v3 = *(v2 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine);
    v0[102] = v3;

    return _swift_task_switch(sub_1000717A0, v3, 0);
  }

  else
  {
    sub_10007997C();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[101];
    v6 = v0[100];
    v7 = v0[97];
    v8 = v0[96];
    v9 = v0[93];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000717A0()
{
  sub_1000331C0(*(v0 + 816) + 112, v0 + 368);

  return _swift_task_switch(sub_100071810, 0, 0);
}

void sub_100071810()
{
  v125 = v0;
  v1 = 0xEF50534E73666F6FLL;
  v2 = (*(v0 + 680) + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_clientName);
  v3 = *v2;
  *(v0 + 824) = *v2;
  v4 = v2[1];
  *(v0 + 832) = v4;
  v5 = v3 == 0xD00000000000001DLL && 0x800000010010C5A0 == v4;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v1 = 0xEF43435073666F6FLL;
    v6 = v3 == 0xD00000000000001ELL && 0x800000010010C5C0 == v4;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v1 = 0xEC00000073666F6FLL;
    }
  }

  *(v0 + 840) = v1;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 696);
  v8 = *(v0 + 688);
  v9 = *(v0 + 680);
  v10 = type metadata accessor for Logger();
  *(v0 + 848) = sub_100025AE0(v10, qword_10015D290);
  sub_100027004(v8, v7);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  sub_100026FB0(v8, v7);

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);
    v16 = swift_slowAlloc();
    v124[0] = swift_slowAlloc();
    *v16 = 136315394;
    v17 = Data.description.getter();
    v19 = sub_100021D24(v17, v18, v124);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_100021D24(v3, v4, v124);
    _os_log_impl(&_mh_execute_header, v12, v13, "Verifying proofs %s for %{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  *(v0 + 432) = &type metadata for SWTFeatureFlags;
  *(v0 + 440) = sub_1000461C4();
  *(v0 + 408) = 3;
  v20 = isFeatureEnabled(_:)();
  sub_100024E14((v0 + 408));
  if (v20)
  {
    sub_10007997C();
    v21 = swift_allocError();
    *v22 = 0;
    swift_willThrow();
    v23 = *(v0 + 848);
    v24 = *(v0 + 696);
    v25 = *(v0 + 688);
    v26 = *(v0 + 680);
    sub_10007A61C();
    v27 = sub_10005D380(v25, v24);
    v29 = v28;
    v30 = v26;
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v122 = v21;

    if (os_log_type_enabled(v31, v32))
    {
      v120 = *(v0 + 832);
      v33 = *(v0 + 824);
      v34 = *(v0 + 680);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v35 = 136315906;
      v37 = sub_100021D24(v27, v29, v124);

      *(v35 + 4) = v37;
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v38;
      *v36 = v38;
      *(v35 + 22) = 2082;
      *(v35 + 24) = sub_100021D24(v33, v120, v124);
      *(v35 + 32) = 1026;
      v39 = *&v34[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid];

      *(v35 + 34) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "Proof verification %s failed with %@: %{public}s[%{public}d]", v35, 0x26u);
      sub_10002533C(v36, &qword_100153450, &unk_100104140);

      swift_arrayDestroy();
    }

    else
    {
      v48 = *(v0 + 680);
    }

    v117 = *(v0 + 840);
    v118 = *(v0 + 824);
    v49 = *(v0 + 808);
    v50 = *(v0 + 800);
    v51 = *(v0 + 792);
    v116 = *(v0 + 784);
    v52 = *(v0 + 768);
    v53 = *(v0 + 760);
    v54 = *(v0 + 752);
    v119 = *(v0 + 832);
    v121 = *(v0 + 704);
    v56 = *(v0 + 392);
    v55 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v56);
    v57 = (*(v55 + 80))(v56, v55);
    SuspendingClock.init()();
    SuspendingClock.now.getter();
    (*(v53 + 8))(v52, v54);
    SuspendingClock.Instant.duration(to:)();
    v115 = *(v51 + 8);
    v115(v50, v116);
    v58 = Duration.components.getter();
    Duration.components.getter();
    v60 = [objc_allocWithZone(NSNumber) initWithDouble:v59 / 1.0e18 + v58];
    v61 = String._bridgeToObjectiveC()();
    [v57 logMetric:v60 withName:v61];

    v62 = *(v0 + 392);
    v63 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v62);
    v64 = (*(v63 + 80))(v62, v63);
    v65 = String._bridgeToObjectiveC()();

    v66 = _convertErrorToNSError(_:)();
    sub_100024248(&qword_100153DC8, &unk_100106BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100106430;
    *(v0 + 608) = 99;
    *(v0 + 616) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v118;
    *(inited + 80) = v119;
    *(v0 + 624) = 114;
    *(v0 + 632) = 0xE100000000000000;

    AnyHashable.init<A>(_:)();
    if (v121)
    {
      v68 = [*(v0 + 704) name];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = (inited + 144);
      *(inited + 168) = &type metadata for String;
      if (v71)
      {
        *v72 = v69;
        goto LABEL_32;
      }
    }

    else
    {
      v72 = (inited + 144);
      *(inited + 168) = &type metadata for String;
    }

    *v72 = 45;
    v71 = 0xE100000000000000;
LABEL_32:
    v73 = *(v0 + 832);
    v74 = *(v0 + 824);
    *(inited + 152) = v71;
    sub_10007A4E0(inited);
    swift_setDeallocating();
    sub_100024248(&qword_100153DD0, &unk_100106940);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v64 logResultForEvent:v65 hardFailure:1 result:v66 withAttributes:isa];

    sub_100024248(&qword_1001535C8, &qword_100104BE8);
    v76 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
    v77 = *(*(v76 - 8) + 72);
    v78 = (*(*(v76 - 8) + 80) + 32) & ~*(*(v76 - 8) + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_100106420;
    v80 = (v79 + v78);
    v81 = *(v76 + 48);
    *v80 = 0x73736563637573;
    v80[1] = 0xE700000000000000;
    swift_errorRetain();
    EventValue.init(BOOLeanLiteral:)();
    v82 = (v79 + v78 + v77);
    v83 = *(v76 + 48);
    *v82 = 0x746E65696C63;
    v82[1] = 0xE600000000000000;

    EventValue.init(stringLiteral:)();
    v84 = (v80 + 2 * v77);
    v85 = *(v76 + 48);
    *v84 = 7761509;
    v84[1] = 0xE300000000000000;
    v86 = *(v0 + 392);
    v87 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v86);
    v88 = (*(v87 + 48))(v86, v87);
    v89 = [v88 currentEnvironment];

    if ((v89 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      EventValue.init(integerLiteral:)();
      v90 = (v80 + 3 * v77);
      *v90 = 0x6E6F73616572;
      v90[1] = 0xE600000000000000;
      if (v121)
      {
        v91 = [*(v0 + 704) name];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v92 = *(v0 + 808);
      v93 = *(v0 + 784);
      v94 = v90 + *(v76 + 48);
      EventValue.init(stringLiteral:)();
      v95 = sub_10004C674(v79);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v96 = *(v0 + 392);
      v97 = *(v0 + 400);
      sub_100026F6C((v0 + 368), v96);
      (*(v97 + 88))(v96, v97);
      v98 = *(v0 + 472);
      v99 = *(v0 + 480);
      sub_100026F6C((v0 + 448), v98);
      (*(v99 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, v122, v95, v98, v99);

      sub_100024E14((v0 + 448));
      swift_willThrow();
      v115(v92, v93);
      sub_100024E14((v0 + 368));
      v100 = *(v0 + 808);
      v101 = *(v0 + 800);
      v102 = *(v0 + 776);
      v103 = *(v0 + 768);
      v104 = *(v0 + 744);

      v105 = *(v0 + 8);

      v105();
    }

    return;
  }

  v40 = *(v0 + 704);
  v41 = *(v0 + 392);
  v42 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v41);
  v43 = [(*(v42 + 32))(v41 v42)];
  swift_unknownObjectRelease();
  if (!v40)
  {
    goto LABEL_41;
  }

  v44 = *(v0 + 704);
  [v44 timeout];
  v46 = v45;
  if (v45 <= 0.0)
  {
    v47 = [v44 qualityOfService];
    if (v47 > 16)
    {
      if (v47 != 17)
      {
        v46 = 5.0;
        if (v47 == 33 || v47 == 25)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if (v47 == -1 || v47 == 9)
    {
LABEL_40:
      v46 = 60.0;
      goto LABEL_42;
    }

LABEL_41:
    [v43 uiBlockingNetworkTimeout];
    v46 = v106;
  }

LABEL_42:
  *(v0 + 856) = v46;
  v107 = *(v0 + 816);
  swift_unknownObjectRelease();
  v108 = static Duration.milliseconds(_:)();
  v110 = v109;
  v111 = *(*v107 + 128);
  v123 = (v111 + *v111);
  v112 = v111[1];
  v113 = swift_task_alloc();
  *(v0 + 864) = v113;
  *v113 = v0;
  v113[1] = sub_1000725CC;
  v114 = *(v0 + 816);

  v123(v108, v110);
}

uint64_t sub_1000725CC(char a1)
{
  v2 = *(*v1 + 864);
  v4 = *v1;
  *(*v1 + 976) = a1;

  return _swift_task_switch(sub_1000726CC, 0, 0);
}

uint64_t sub_1000726CC()
{
  v24 = v0;
  if ((*(v0 + 976) & 1) == 0)
  {
    v1 = *(v0 + 848);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "State machine timed out getting ready, attemping to verify proofs regardless", v4, 2u);
    }
  }

  v5 = *(v0 + 848);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Progressing after waiting for state machine", v8, 2u);
  }

  v9 = *(v0 + 696);
  v10 = *(v0 + 688);

  v11 = objc_allocWithZone(ATLogProofs);
  sub_100027004(v10, v9);
  *(v0 + 872) = sub_1000330B8();
  *(v0 + 880) = 0;
  sub_100026FB0(*(v0 + 688), *(v0 + 696));
  v12 = *(v0 + 392);
  v13 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v12);
  v14 = (*(v13 + 48))(v12, v13);
  ATLogProofs.configBag.setter(v14);
  v15 = *(v0 + 392);
  v16 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v15);
  v17 = (*(v16 + 64))(v15, v16);
  v23[3] = type metadata accessor for KTSWDB();
  v23[4] = sub_10007A668();
  v23[0] = v17;
  sub_10005DCE8(v23);
  v18 = *(v0 + 392);
  v19 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v18);
  v20 = (*(v19 + 56))(v18, v19);
  *(v0 + 888) = v20;
  v21 = *v20 + 160;
  *(v0 + 896) = *v21;
  *(v0 + 904) = v21 & 0xFFFFFFFFFFFFLL | 0x445F000000000000;

  return _swift_task_switch(sub_100073240, v20, 0);
}

uint64_t sub_100073240()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 888);
  *(v0 + 912) = (*(v0 + 896))();

  return _swift_task_switch(sub_1000732BC, 0, 0);
}

uint64_t sub_1000732BC()
{
  v29 = v0;
  v1 = *(v0 + 872);
  ATLogProofs.keyBag.setter(*(v0 + 912));
  v2 = *(v0 + 392);
  v3 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v2);
  v4 = (*(v3 + 80))(v2, v3);
  ATLogProofs.analytics.setter(v4);
  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v5);
  (*(v6 + 88))(v28, v5, v6);
  sub_10005EA88(v28);
  v7 = ATLogProofs.keyBag.getter();
  if (v7)
  {
    v8 = *(v0 + 880);
    v9 = *(v0 + 872);

    v10 = ATLogProofs.isNewEpoch()();
    if (v11)
    {

LABEL_10:
      v23 = swift_task_alloc();
      *(v0 + 944) = v23;
      *v23 = v0;
      v23[1] = sub_1000737C4;
      v24 = *(v0 + 872);
      v25 = *(v0 + 720);
      v26 = *(v0 + 712);

      return ATLogProofs.verify(digest:)(v26, v25);
    }

    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v12 = *(v0 + 872);
  v13 = ATLogProofs.keyBag.getter();
  if (v13)
  {
    v14 = v13;
    sub_10007F3F0();
  }

  v15 = *(v0 + 816);
  v16 = *(v0 + 776);
  v17 = *(v0 + 680);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v20 = v17;
  sub_100075D7C(0, 0, v16, &unk_100106958, v19);

  ATLogProofs.VerificationResult.result.getter(v21, v22);

  return _swift_task_switch(sub_100073518, v15, 0);
}

uint64_t sub_100073518()
{
  sub_1000331C0(*(v0 + 102) + 112, (v0 + 61));
  v1 = swift_task_alloc();
  *(v0 + 115) = v1;
  *v1 = v0;
  v1[1] = sub_1000735C8;
  v2 = v0[107];

  return sub_1000A86B8((v0 + 61), 1, v2);
}

uint64_t sub_1000735C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *v2;
  *(*v2 + 928) = v1;

  if (v1)
  {
    sub_100024E14((v4 + 488));
    v7 = sub_100074884;
  }

  else
  {
    *(v4 + 936) = a1;
    sub_100024E14((v4 + 488));
    v7 = sub_100073700;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100073700()
{
  v1 = v0[117];
  v2 = v0[109];
  v3 = v1;
  ATLogProofs.keyBag.setter(v1);

  v4 = swift_task_alloc();
  v0[118] = v4;
  *v4 = v0;
  v4[1] = sub_1000737C4;
  v5 = v0[109];
  v6 = v0[90];
  v7 = v0[89];

  return ATLogProofs.verify(digest:)(v7, v6);
}

uint64_t sub_1000737C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 944);
  v8 = *v3;
  v4[119] = a1;
  v4[120] = a2;
  v4[121] = v2;

  if (v2)
  {
    v6 = sub_100075194;
  }

  else
  {
    v6 = sub_1000738E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_1000738E0()
{
  v159 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 848);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  sub_100027004(v4, v3);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);
  if (v1 != 1)
  {
    v20 = static os_log_type_t.error.getter();
    sub_100026FB0(v9, v8);
    if (os_log_type_enabled(v7, v20))
    {
      v21 = *(v0 + 952);
      v155 = *(v0 + 832);
      v22 = *(v0 + 824);
      v23 = *(v0 + 696);
      v24 = *(v0 + 688);
      v25 = *(v0 + 680);
      v26 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *v26 = 136315906;
      v27 = Data.description.getter();
      v29 = sub_100021D24(v27, v28, &v158);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2050;
      *(v26 + 14) = v21;
      *(v26 + 22) = 2082;
      *(v26 + 24) = sub_100021D24(v22, v155, &v158);
      *(v26 + 32) = 1026;
      LODWORD(v22) = *&v25[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid];

      *(v26 + 34) = v22;
      _os_log_impl(&_mh_execute_header, v7, v20, "Proofs %s invalid with %{public}lu: %{public}s[%{public}d]", v26, 0x26u);
      swift_arrayDestroy();
    }

    else
    {
      v65 = *(v0 + 680);
    }

    v144 = *(v0 + 840);
    v146 = *(v0 + 824);
    v148 = *(v0 + 832);
    v66 = *(v0 + 808);
    v67 = *(v0 + 800);
    v68 = *(v0 + 792);
    v157 = *(v0 + 784);
    v69 = *(v0 + 768);
    v70 = *(v0 + 760);
    v71 = *(v0 + 752);
    v151 = *(v0 + 704);
    v73 = *(v0 + 392);
    v72 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v73);
    v74 = (*(v72 + 80))(v73, v72);
    SuspendingClock.init()();
    SuspendingClock.now.getter();
    (*(v70 + 8))(v69, v71);
    SuspendingClock.Instant.duration(to:)();
    v154 = *(v68 + 8);
    v154(v67, v157);
    v75 = Duration.components.getter();
    Duration.components.getter();
    v77 = [objc_allocWithZone(NSNumber) initWithDouble:v76 / 1.0e18 + v75];
    v78 = String._bridgeToObjectiveC()();
    [v74 logMetric:v77 withName:v78];

    v79 = *(v0 + 392);
    v80 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v79);
    v81 = (*(v80 + 80))(v79, v80);
    v82 = String._bridgeToObjectiveC()();

    sub_1000798CC();
    swift_allocError();
    v143 = 0;
    *v83 = xmmword_100106440;
    v84 = _convertErrorToNSError(_:)();

    sub_100024248(&qword_100153DC8, &unk_100106BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100106430;
    *(v0 + 640) = 99;
    *(v0 + 648) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v146;
    *(inited + 80) = v148;
    *(v0 + 656) = 114;
    *(v0 + 664) = 0xE100000000000000;

    AnyHashable.init<A>(_:)();
    if (v151)
    {
      v86 = [*(v0 + 704) name];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90 = (inited + 144);
      *(inited + 168) = &type metadata for String;
      if (v89)
      {
        *v90 = v87;
        goto LABEL_16;
      }
    }

    else
    {
      v90 = (inited + 144);
      *(inited + 168) = &type metadata for String;
    }

    *v90 = 45;
    v89 = 0xE100000000000000;
LABEL_16:
    v91 = *(v0 + 832);
    v92 = *(v0 + 824);
    *(inited + 152) = v89;
    sub_10007A4E0(inited);
    swift_setDeallocating();
    sub_100024248(&qword_100153DD0, &unk_100106940);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v81 logResultForEvent:v82 hardFailure:1 result:v84 withAttributes:isa];

    v152 = swift_allocError();
    *v94 = xmmword_100106440;
    sub_100024248(&qword_1001535C8, &qword_100104BE8);
    v95 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
    v96 = *(*(v95 - 8) + 72);
    v97 = (*(*(v95 - 8) + 80) + 32) & ~*(*(v95 - 8) + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_100106420;
    v99 = (v98 + v97);
    v100 = *(v95 + 48);
    *v99 = 0x73736563637573;
    v99[1] = 0xE700000000000000;
    EventValue.init(BOOLeanLiteral:)();
    v101 = (v98 + v97 + v96);
    v102 = *(v95 + 48);
    *v101 = 0x746E65696C63;
    v101[1] = 0xE600000000000000;

    EventValue.init(stringLiteral:)();
    v103 = (v99 + 2 * v96);
    v104 = *(v95 + 48);
    *v103 = 7761509;
    v103[1] = 0xE300000000000000;
    v105 = *(v0 + 392);
    v106 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v105);
    v107 = (*(v106 + 48))(v105, v106);
    v108 = [v107 currentEnvironment];

    if ((v108 & 0x8000000000000000) == 0)
    {
      v109 = *(v0 + 704);
      EventValue.init(integerLiteral:)();
      v110 = (v99 + 3 * v96);
      *v110 = 0x6E6F73616572;
      v110[1] = 0xE600000000000000;
      if (v109)
      {
        v111 = [*(v0 + 704) name];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v125 = *(v0 + 960);
      v126 = *(v0 + 952);
      v127 = *(v0 + 744);
      v128 = v110 + *(v95 + 48);
      EventValue.init(stringLiteral:)();
      v129 = sub_10004C674(v98);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v130 = *(v0 + 392);
      v131 = *(v0 + 400);
      sub_100026F6C((v0 + 368), v130);
      (*(v131 + 88))(v130, v131);
      v132 = *(v0 + 552);
      v133 = *(v0 + 560);
      sub_100026F6C((v0 + 528), v132);
      (*(v133 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, v152, v129, v132, v133);

      sub_100024E14((v0 + 528));
      ATLogProofs.VerificationResult.expiry.getter(v126, v125);
      v120 = objc_allocWithZone(SWTransparencyExpiringVerificationResult);
      v121.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v124 = *(v0 + 872);
      v122 = 1;
      v123 = v121.super.isa;
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v10 = static os_log_type_t.default.getter();
  sub_100026FB0(v9, v8);
  if (os_log_type_enabled(v7, v10))
  {
    v11 = *(v0 + 832);
    v12 = *(v0 + 824);
    v13 = *(v0 + 696);
    v14 = *(v0 + 688);
    v15 = *(v0 + 680);
    v16 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    *v16 = 136315650;
    v17 = Data.description.getter();
    v19 = sub_100021D24(v17, v18, &v158);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_100021D24(v12, v11, &v158);
    *(v16 + 22) = 1026;
    LODWORD(v11) = *&v15[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid];

    *(v16 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v7, v10, "Proofs %s valid: %{public}s[%{public}d]", v16, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v30 = *(v0 + 680);
  }

  v145 = *(v0 + 840);
  v147 = *(v0 + 832);
  v150 = *(v0 + 824);
  v31 = *(v0 + 808);
  v32 = *(v0 + 800);
  v33 = *(v0 + 792);
  v156 = *(v0 + 784);
  v34 = *(v0 + 768);
  v35 = *(v0 + 760);
  v36 = *(v0 + 752);
  v38 = *(v0 + 392);
  v37 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v38);
  v39 = (*(v37 + 80))(v38, v37);
  SuspendingClock.init()();
  SuspendingClock.now.getter();
  (*(v35 + 8))(v34, v36);
  SuspendingClock.Instant.duration(to:)();
  v154 = *(v33 + 8);
  v154(v32, v156);
  v40 = Duration.components.getter();
  Duration.components.getter();
  v42 = [objc_allocWithZone(NSNumber) initWithDouble:v41 / 1.0e18 + v40];
  v43 = String._bridgeToObjectiveC()();
  [v39 logMetric:v42 withName:v43];

  v44 = *(v0 + 392);
  v45 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v44);
  v46 = (*(v45 + 80))(v44, v45);
  v47 = String._bridgeToObjectiveC()();

  [v46 logResultForEvent:v47 hardFailure:0 result:0];

  sub_100024248(&qword_1001535C8, &qword_100104BE8);
  v48 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
  v49 = *(*(v48 - 8) + 72);
  v50 = (*(*(v48 - 8) + 80) + 32) & ~*(*(v48 - 8) + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100106420;
  v52 = (v51 + v50);
  v53 = *(v48 + 48);
  *v52 = 0x73736563637573;
  v52[1] = 0xE700000000000000;
  EventValue.init(BOOLeanLiteral:)();
  v54 = (v51 + v50 + v49);
  v55 = *(v48 + 48);
  *v54 = 0x746E65696C63;
  v54[1] = 0xE600000000000000;

  EventValue.init(stringLiteral:)();
  v56 = (v52 + 2 * v49);
  v57 = *(v48 + 48);
  *v56 = 7761509;
  v56[1] = 0xE300000000000000;
  v58 = *(v0 + 392);
  v59 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v58);
  v60 = (*(v59 + 48))(v58, v59);
  v61 = [v60 currentEnvironment];

  if ((v61 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v62 = *(v0 + 704);
  EventValue.init(integerLiteral:)();
  v63 = (v52 + 3 * v49);
  *v63 = 0x6E6F73616572;
  v63[1] = 0xE600000000000000;
  if (v62)
  {
    v64 = [*(v0 + 704) name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v112 = *(v0 + 960);
  v113 = *(v0 + 744);
  v114 = v63 + *(v48 + 48);
  EventValue.init(stringLiteral:)();
  v115 = sub_10004C674(v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v116 = *(v0 + 392);
  v117 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v116);
  (*(v117 + 88))(v116, v117);
  v118 = *(v0 + 592);
  v119 = *(v0 + 600);
  sub_100026F6C((v0 + 568), v118);
  (*(v119 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, 0, v115, v118, v119);

  sub_100024E14((v0 + 568));
  ATLogProofs.VerificationResult.expiry.getter(1, v112);
  v120 = objc_allocWithZone(SWTransparencyExpiringVerificationResult);
  v121.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v122 = 0;
  v123 = *(v0 + 872);
  v124 = v121.super.isa;
LABEL_21:
  v134 = *(v0 + 808);
  v135 = *(v0 + 800);
  v136 = *(v0 + 784);
  v149 = *(v0 + 776);
  v153 = *(v0 + 768);
  v137 = *(v0 + 744);
  v138 = *(v0 + 736);
  v139 = *(v0 + 728);
  v140 = *(v0 + 672);
  v141 = [v120 initWithResult:v122 expiry:{v121.super.isa, v143}];

  (*(v138 + 8))(v137, v139);
  v154(v134, v136);
  *v140 = v141;
  sub_100024E14((v0 + 368));

  v142 = *(v0 + 8);

  v142();
}

void sub_100074884()
{
  v86 = v0;

  v1 = *(v0 + 928);
  v2 = *(v0 + 848);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  sub_10007A61C();
  v6 = sub_10005D380(v4, v3);
  v8 = v7;
  v9 = v5;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v84 = v1;

  if (os_log_type_enabled(v10, v11))
  {
    v82 = *(v0 + 832);
    v12 = *(v0 + 824);
    v13 = *(v0 + 680);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v85[0] = swift_slowAlloc();
    *v14 = 136315906;
    v16 = sub_100021D24(v6, v8, v85);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    *(v14 + 22) = 2082;
    *(v14 + 24) = sub_100021D24(v12, v82, v85);
    *(v14 + 32) = 1026;
    v18 = *&v13[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid];

    *(v14 + 34) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Proof verification %s failed with %@: %{public}s[%{public}d]", v14, 0x26u);
    sub_10002533C(v15, &qword_100153450, &unk_100104140);

    swift_arrayDestroy();
  }

  else
  {
    v19 = *(v0 + 680);
  }

  v79 = *(v0 + 840);
  v80 = *(v0 + 824);
  v20 = *(v0 + 808);
  v21 = *(v0 + 800);
  v22 = *(v0 + 792);
  v78 = *(v0 + 784);
  v23 = *(v0 + 768);
  v24 = *(v0 + 760);
  v25 = *(v0 + 752);
  v81 = *(v0 + 832);
  v83 = *(v0 + 704);
  v27 = *(v0 + 392);
  v26 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v27);
  v28 = (*(v26 + 80))(v27, v26);
  SuspendingClock.init()();
  SuspendingClock.now.getter();
  (*(v24 + 8))(v23, v25);
  SuspendingClock.Instant.duration(to:)();
  v77 = *(v22 + 8);
  v77(v21, v78);
  v29 = Duration.components.getter();
  Duration.components.getter();
  v31 = [objc_allocWithZone(NSNumber) initWithDouble:v30 / 1.0e18 + v29];
  v32 = String._bridgeToObjectiveC()();
  [v28 logMetric:v31 withName:v32];

  v33 = *(v0 + 392);
  v34 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v33);
  v35 = (*(v34 + 80))(v33, v34);
  v36 = String._bridgeToObjectiveC()();

  v37 = _convertErrorToNSError(_:)();
  sub_100024248(&qword_100153DC8, &unk_100106BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100106430;
  *(v0 + 608) = 99;
  *(v0 + 616) = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v80;
  *(inited + 80) = v81;
  *(v0 + 624) = 114;
  *(v0 + 632) = 0xE100000000000000;

  AnyHashable.init<A>(_:)();
  if (v83)
  {
    v39 = [*(v0 + 704) name];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = (inited + 144);
    *(inited + 168) = &type metadata for String;
    if (v42)
    {
      *v43 = v40;
      goto LABEL_9;
    }
  }

  else
  {
    v43 = (inited + 144);
    *(inited + 168) = &type metadata for String;
  }

  *v43 = 45;
  v42 = 0xE100000000000000;
LABEL_9:
  v44 = *(v0 + 832);
  v45 = *(v0 + 824);
  *(inited + 152) = v42;
  sub_10007A4E0(inited);
  swift_setDeallocating();
  sub_100024248(&qword_100153DD0, &unk_100106940);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v35 logResultForEvent:v36 hardFailure:1 result:v37 withAttributes:isa];

  sub_100024248(&qword_1001535C8, &qword_100104BE8);
  v47 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
  v48 = *(*(v47 - 8) + 72);
  v49 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100106420;
  v51 = (v50 + v49);
  v52 = *(v47 + 48);
  *v51 = 0x73736563637573;
  v51[1] = 0xE700000000000000;
  swift_errorRetain();
  EventValue.init(BOOLeanLiteral:)();
  v53 = (v50 + v49 + v48);
  v54 = *(v47 + 48);
  *v53 = 0x746E65696C63;
  v53[1] = 0xE600000000000000;

  EventValue.init(stringLiteral:)();
  v55 = (v51 + 2 * v48);
  v56 = *(v47 + 48);
  *v55 = 7761509;
  v55[1] = 0xE300000000000000;
  v57 = *(v0 + 392);
  v58 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v57);
  v59 = (*(v58 + 48))(v57, v58);
  v60 = [v59 currentEnvironment];

  if ((v60 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    EventValue.init(integerLiteral:)();
    v61 = (v51 + 3 * v48);
    *v61 = 0x6E6F73616572;
    v61[1] = 0xE600000000000000;
    if (v83)
    {
      v62 = [*(v0 + 704) name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v63 = *(v0 + 808);
    v64 = *(v0 + 784);
    v65 = v61 + *(v47 + 48);
    EventValue.init(stringLiteral:)();
    v66 = sub_10004C674(v50);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v67 = *(v0 + 392);
    v68 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v67);
    (*(v68 + 88))(v67, v68);
    v69 = *(v0 + 472);
    v70 = *(v0 + 480);
    sub_100026F6C((v0 + 448), v69);
    (*(v70 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, v84, v66, v69, v70);

    sub_100024E14((v0 + 448));
    swift_willThrow();
    v77(v63, v64);
    sub_100024E14((v0 + 368));
    v71 = *(v0 + 808);
    v72 = *(v0 + 800);
    v73 = *(v0 + 776);
    v74 = *(v0 + 768);
    v75 = *(v0 + 744);

    v76 = *(v0 + 8);

    v76();
  }
}

void sub_100075194()
{
  v86 = v0;

  v1 = *(v0 + 968);
  v2 = *(v0 + 848);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  sub_10007A61C();
  v6 = sub_10005D380(v4, v3);
  v8 = v7;
  v9 = v5;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v84 = v1;

  if (os_log_type_enabled(v10, v11))
  {
    v82 = *(v0 + 832);
    v12 = *(v0 + 824);
    v13 = *(v0 + 680);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v85[0] = swift_slowAlloc();
    *v14 = 136315906;
    v16 = sub_100021D24(v6, v8, v85);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    *(v14 + 22) = 2082;
    *(v14 + 24) = sub_100021D24(v12, v82, v85);
    *(v14 + 32) = 1026;
    v18 = *&v13[OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_pid];

    *(v14 + 34) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Proof verification %s failed with %@: %{public}s[%{public}d]", v14, 0x26u);
    sub_10002533C(v15, &qword_100153450, &unk_100104140);

    swift_arrayDestroy();
  }

  else
  {
    v19 = *(v0 + 680);
  }

  v79 = *(v0 + 840);
  v80 = *(v0 + 824);
  v20 = *(v0 + 808);
  v21 = *(v0 + 800);
  v22 = *(v0 + 792);
  v78 = *(v0 + 784);
  v23 = *(v0 + 768);
  v24 = *(v0 + 760);
  v25 = *(v0 + 752);
  v81 = *(v0 + 832);
  v83 = *(v0 + 704);
  v27 = *(v0 + 392);
  v26 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v27);
  v28 = (*(v26 + 80))(v27, v26);
  SuspendingClock.init()();
  SuspendingClock.now.getter();
  (*(v24 + 8))(v23, v25);
  SuspendingClock.Instant.duration(to:)();
  v77 = *(v22 + 8);
  v77(v21, v78);
  v29 = Duration.components.getter();
  Duration.components.getter();
  v31 = [objc_allocWithZone(NSNumber) initWithDouble:v30 / 1.0e18 + v29];
  v32 = String._bridgeToObjectiveC()();
  [v28 logMetric:v31 withName:v32];

  v33 = *(v0 + 392);
  v34 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v33);
  v35 = (*(v34 + 80))(v33, v34);
  v36 = String._bridgeToObjectiveC()();

  v37 = _convertErrorToNSError(_:)();
  sub_100024248(&qword_100153DC8, &unk_100106BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100106430;
  *(v0 + 608) = 99;
  *(v0 + 616) = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v80;
  *(inited + 80) = v81;
  *(v0 + 624) = 114;
  *(v0 + 632) = 0xE100000000000000;

  AnyHashable.init<A>(_:)();
  if (v83)
  {
    v39 = [*(v0 + 704) name];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = (inited + 144);
    *(inited + 168) = &type metadata for String;
    if (v42)
    {
      *v43 = v40;
      goto LABEL_9;
    }
  }

  else
  {
    v43 = (inited + 144);
    *(inited + 168) = &type metadata for String;
  }

  *v43 = 45;
  v42 = 0xE100000000000000;
LABEL_9:
  v44 = *(v0 + 832);
  v45 = *(v0 + 824);
  *(inited + 152) = v42;
  sub_10007A4E0(inited);
  swift_setDeallocating();
  sub_100024248(&qword_100153DD0, &unk_100106940);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v35 logResultForEvent:v36 hardFailure:1 result:v37 withAttributes:isa];

  sub_100024248(&qword_1001535C8, &qword_100104BE8);
  v47 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
  v48 = *(*(v47 - 8) + 72);
  v49 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100106420;
  v51 = (v50 + v49);
  v52 = *(v47 + 48);
  *v51 = 0x73736563637573;
  v51[1] = 0xE700000000000000;
  swift_errorRetain();
  EventValue.init(BOOLeanLiteral:)();
  v53 = (v50 + v49 + v48);
  v54 = *(v47 + 48);
  *v53 = 0x746E65696C63;
  v53[1] = 0xE600000000000000;

  EventValue.init(stringLiteral:)();
  v55 = (v51 + 2 * v48);
  v56 = *(v47 + 48);
  *v55 = 7761509;
  v55[1] = 0xE300000000000000;
  v57 = *(v0 + 392);
  v58 = *(v0 + 400);
  sub_100026F6C((v0 + 368), v57);
  v59 = (*(v58 + 48))(v57, v58);
  v60 = [v59 currentEnvironment];

  if ((v60 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    EventValue.init(integerLiteral:)();
    v61 = (v51 + 3 * v48);
    *v61 = 0x6E6F73616572;
    v61[1] = 0xE600000000000000;
    if (v83)
    {
      v62 = [*(v0 + 704) name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v63 = *(v0 + 808);
    v64 = *(v0 + 784);
    v65 = v61 + *(v47 + 48);
    EventValue.init(stringLiteral:)();
    v66 = sub_10004C674(v50);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v67 = *(v0 + 392);
    v68 = *(v0 + 400);
    sub_100026F6C((v0 + 368), v67);
    (*(v68 + 88))(v67, v68);
    v69 = *(v0 + 472);
    v70 = *(v0 + 480);
    sub_100026F6C((v0 + 448), v69);
    (*(v70 + 8))(0x7270796676747753, 0xEC00000073666F6FLL, v84, v66, v69, v70);

    sub_100024E14((v0 + 448));
    swift_willThrow();
    v77(v63, v64);
    sub_100024E14((v0 + 368));
    v71 = *(v0 + 808);
    v72 = *(v0 + 800);
    v73 = *(v0 + 776);
    v74 = *(v0 + 768);
    v75 = *(v0 + 744);

    v76 = *(v0 + 8);

    v76();
  }
}

double sub_100075AA4()
{
  v0 = Duration.components.getter();
  Duration.components.getter();
  return v1 / 1.0e18 + v0;
}

uint64_t sub_100075AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100075B18, 0, 0);
}

uint64_t sub_100075B18()
{
  v1 = *(**(*(v0 + 24) + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 176);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100075C38;

  return v5();
}

uint64_t sub_100075C38()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {

    v3 = sub_10007A9C0;
  }

  else
  {
    v3 = sub_100075D54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100075D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100025834(a3, v27 - v11, &unk_100152620, &unk_1001031E0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002533C(v12, &unk_100152620, &unk_1001031E0);
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

      sub_100024248(&qword_100153DD8, &qword_100106970);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

      return v24;
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

  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100024248(&qword_100153DD8, &qword_100106970);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100076234(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v10 = a3;
  a5;
  v11 = a1;
  v12 = a2;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v5[5] = v13;
  v5[6] = v15;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v5[7] = v16;
  v5[8] = v18;
  v19 = swift_task_alloc();
  v5[9] = v19;
  *v19 = v5;
  v19[1] = sub_10007635C;

  return sub_100071150(v13, v15, v16, v18, a3);
}

uint64_t sub_10007635C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[6];
  v11 = v5[5];
  v12 = v5[4];
  sub_100026FB0(v5[7], v5[8]);
  sub_100026FB0(v11, v10);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (v12)[2](v12, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (v12)[2](v12, a1, 0);
    _Block_release(v12);
  }

  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_100076574()
{
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_10007660C;

  return sub_100076874(v1 + 16, v0);
}

uint64_t sub_10007660C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10007673C;
  }

  else
  {
    v3 = sub_100076720;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007673C()
{
  v1 = v0[8];
  v2 = objc_opt_self();
  v3 = _convertErrorToNSError(_:)();
  v4 = [v2 cleanseErrorForXPC:v3];

  if (!v4)
  {
    v0[6] = v0[8];
    v0[4] = 0;
    v0[5] = 0xE000000000000000;
    sub_100024248(&qword_100152630, &qword_100103210);
    _print_unlocked<A, B>(_:_:)();
    v5 = v0[4];
    v6 = v0[5];
    sub_1000798CC();
    swift_allocError();
    *v7 = v5;
    v7[1] = v6;
  }

  v8 = v0[8];
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100076874(uint64_t a1, uint64_t a2)
{
  v2[93] = a2;
  v2[87] = a1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64) + 15;
  v2[99] = swift_task_alloc();
  v4 = *(*(sub_100024248(&qword_100153448, &qword_100104650) - 8) + 64) + 15;
  v2[105] = swift_task_alloc();
  v5 = type metadata accessor for TransparencySWSysdiagnose();
  v2[106] = v5;
  v6 = *(v5 - 8);
  v2[107] = v6;
  v7 = *(v6 + 64) + 15;
  v2[108] = swift_task_alloc();
  v8 = type metadata accessor for TransparencySWSysdiagnose.StateMachine();
  v2[109] = v8;
  v9 = *(v8 - 8);
  v2[110] = v9;
  v10 = *(v9 + 64) + 15;
  v2[111] = swift_task_alloc();

  return _swift_task_switch(sub_100076A04, 0, 0);
}

uint64_t sub_100076A04()
{
  v1 = v0[111];
  v2 = v0[109];
  v3 = v0[93];
  v4 = swift_allocObject();
  v0[112] = v4;
  *(v4 + 16) = v3;
  v5 = v3;
  swift_asyncLet_begin();
  v6 = v0[111];

  return _swift_asyncLet_get_throwing(v0 + 2, v6, sub_100076ACC, v0 + 82);
}

uint64_t sub_100076ACC()
{
  *(v1 + 904) = v0;
  if (v0)
  {
    v2 = sub_100076D48;
  }

  else
  {
    v2 = sub_100076B00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100076B00()
{
  v1 = v0[113];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[105];
  v6 = v0[99];
  (*(v2 + 16))(v5, v0[111], v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  TransparencySWSysdiagnose.init(stateMachine:fallback:)();
  v8 = TransparencySWSysdiagnose.json()();
  v10 = v9;
  v0[114] = v1;
  v11 = v0[108];
  v12 = v0[107];
  v13 = v0[106];
  if (v1)
  {
    (*(v12 + 8))(v11, v13);
    v14 = sub_100076E28;
    v15 = v0[111];
    v16 = v0 + 2;
    v17 = v0 + 94;
  }

  else
  {
    v18 = v0[87];
    (*(v12 + 8))(v11, v13);
    *v18 = v8;
    v18[1] = v10;
    v14 = sub_100076C90;
    v15 = v0[111];
    v16 = v0 + 2;
    v17 = v0 + 100;
  }

  return _swift_asyncLet_finish(v16, v15, v14, v17);
}

uint64_t sub_100076CAC()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[108];
  v4 = v0[105];
  v5 = v0[99];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100076D84()
{
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[108];
  v5 = v0[105];
  v6 = v0[99];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100076E44()
{
  v1 = v0[114];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[108];
  v5 = v0[105];
  v6 = v0[99];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100076EE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100076F08, 0, 0);
}

uint64_t sub_100076F08()
{
  v1 = *(**(v0[3] + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 200);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100077030;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_100077030()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100077298(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100077340;

  return sub_100076574();
}

uint64_t sub_100077340(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = _convertErrorToNSError(_:)();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026FB0(a1, a2);
    v13 = isa;
    v12 = 0;
    v11 = isa;
  }

  v15 = *(v7 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_1000774D4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  *v6 = v3;
  v6[1] = sub_10007757C;

  return sub_100077690(v6, a1, a2, v2);
}

uint64_t sub_10007757C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_10007A9AC;
  }

  else
  {
    v3 = sub_10007A9B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100077690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = *(*(sub_100024248(&qword_100153DB8, &qword_100106920) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for SWTFollowUpType();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10007778C, 0, 0);
}

uint64_t sub_10007778C()
{
  v28 = v0;
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100025AE0(v2, qword_10015D290);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100021D24(v6, v5, &v27);
    _os_log_impl(&_mh_execute_header, v3, v4, "posting cfu %{public}s", v7, 0xCu);
    sub_100024E14(v8);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  v13 = v0[2];
  v12 = v0[3];

  SWTFollowUpType.init(rawValue:)();
  v14 = (*(v10 + 48))(v11, 1, v9);
  v15 = v0[8];
  if (v14 == 1)
  {
    sub_10002533C(v0[5], &qword_100153DB8, &qword_100106920);
    sub_1000798CC();
    swift_allocError();
    *v16 = xmmword_100104D20;
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[4];
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    v20 = *(v19 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine);
    v21 = sub_1000AD1E8();
    v0[9] = v21;
    v22 = *(*v20 + 144);
    v26 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[10] = v24;
    *v24 = v0;
    v24[1] = sub_100077AF4;
    v25 = v0[8];

    return v26(v25, v21);
  }
}

uint64_t sub_100077AF4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100077C0C, 0, 0);
}

uint64_t sub_100077C0C()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100077E1C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100077EF0;

  return sub_1000774D4(v5, v7);
}

uint64_t sub_100077EF0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100078090()
{
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_100078120;

  return sub_10007836C(v2, v0);
}

uint64_t sub_100078120()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100078234;
  }

  else
  {
    v3 = sub_1000494DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100078234()
{
  v1 = v0[6];
  v2 = objc_opt_self();
  v3 = _convertErrorToNSError(_:)();
  v4 = [v2 cleanseErrorForXPC:v3];

  if (!v4)
  {
    v0[4] = v0[6];
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    sub_100024248(&qword_100152630, &qword_100103210);
    _print_unlocked<A, B>(_:_:)();
    v5 = v0[2];
    v6 = v0[3];
    sub_1000798CC();
    swift_allocError();
    *v7 = v5;
    v7[1] = v6;
  }

  v8 = v0[6];
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10007838C()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "clearing all cfus", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_100078568;

  return v10();
}

uint64_t sub_100078568()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000787D4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007887C;

  return sub_100078090();
}

uint64_t sub_10007887C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100078A20()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "wait for ready", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(**(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_stateMachine) + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_100078568;

  return v10(0xA055690D9DB80000, 1);
}

uint64_t sub_100078D84(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007A9B0;

  return sub_100078A00();
}

uint64_t sub_100078E2C()
{
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_10007757C;

  return sub_100078EBC(v2, v0);
}

uint64_t sub_100078EDC()
{
  if (qword_10015AAA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100025AE0(v1, qword_10015D290);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "running daily", v4, 2u);
  }

  v5 = v0[2];

  if (*(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_daemon))
  {
    v6 = *(v5 + OBJC_IVAR____TtC15swtransparencyd31SWTransparencyXPCImplementation_daemon + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[3] = v10;
    *v10 = v0;
    v10[1] = sub_100038BE4;

    return v13(ObjectType, v6);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100079270(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10007A9B0;

  return sub_100078E2C();
}

unint64_t sub_100079400(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000038;
  }
}

Swift::Int TransparencyTLSError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

unint64_t sub_1000794DC()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000038;
  }

  *v0;
  return result;
}

uint64_t sub_100079518()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10007952C(uint64_t a1)
{
  v2 = sub_10007A360();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100079568(uint64_t a1)
{
  v2 = sub_10007A360();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1000795A4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000795E8(a1, v4);
}

unint64_t sub_1000795E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10007A890(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10007A8EC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000796B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000797A4;

  return v6(v2 + 32);
}

uint64_t sub_1000797A4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000798B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_1000798CC()
{
  result = qword_100153D08;
  if (!qword_100153D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153D08);
  }

  return result;
}

unint64_t sub_100079928()
{
  result = qword_100153D10;
  if (!qword_100153D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153D10);
  }

  return result;
}

unint64_t sub_10007997C()
{
  result = qword_100153D18;
  if (!qword_100153D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153D18);
  }

  return result;
}

uint64_t sub_1000799D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000799EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100079A48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_100079A98(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SWTXPCError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SWTXPCError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100079C4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_100079270(v2, v3);
}

uint64_t sub_100079CF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_100078D84(v2, v3);
}

uint64_t sub_100079DA4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001CF5C;

  return sub_1000787D4(v2, v3);
}

uint64_t sub_100079E50()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100079E98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000258C8;

  return sub_100077E1C(v2, v3, v4);
}

uint64_t sub_100079F4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_100077298(v2, v3);
}

uint64_t sub_100079FFC()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10007A054()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000258C8;

  return sub_100076234(v2, v3, v4, v5, v6);
}

uint64_t sub_10007A11C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_100070C10(v2, v3);
}

uint64_t sub_10007A1C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_1000707F8(v2, v3);
}

uint64_t sub_10007A274()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007A2B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return sub_1000702AC(v2, v3);
}

unint64_t sub_10007A360()
{
  result = qword_100153DA8;
  if (!qword_100153DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153DA8);
  }

  return result;
}

unint64_t sub_10007A3B4()
{
  result = qword_100153DB0;
  if (!qword_100153DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153DB0);
  }

  return result;
}

uint64_t sub_10007A408()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A440(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001CF5C;

  return sub_100076EE8(a1, v4);
}

unint64_t sub_10007A4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_100153DE0, &qword_100106980);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100025834(v4, v13, &qword_100153DD0, &unk_100106940);
      result = sub_1000795A4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100032F28(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10007A61C()
{
  result = qword_100153DC0;
  if (!qword_100153DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100153DC0);
  }

  return result;
}

unint64_t sub_10007A668()
{
  result = qword_100152F48;
  if (!qword_100152F48)
  {
    type metadata accessor for KTSWDB();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152F48);
  }

  return result;
}

uint64_t sub_10007A6C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007A700(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000258C8;

  return sub_100075AF8(a1, v5, v6, v4);
}

uint64_t sub_10007A7A0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007A7D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000258C8;

  return sub_1000796B0(a1, v5);
}

uint64_t SWTCFUInfo.posted.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SWTCFUInfo.expire.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_10007A9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100024248(&qword_100152D90, &qword_100105620);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v21 - v10;
  Date.timeIntervalSince1970.getter();
  v13 = v12;
  sub_100025834(a2, v11, &qword_100152D90, &qword_100105620);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v11, 1, v14);
  if (v16 == 1)
  {
    sub_10002533C(a2, &qword_100152D90, &qword_100105620);
    (*(v15 + 8))(a1, v14);
    result = sub_10002533C(v11, &qword_100152D90, &qword_100105620);
    v18 = 0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v18 = v19;
    sub_10002533C(a2, &qword_100152D90, &qword_100105620);
    v20 = *(v15 + 8);
    v20(a1, v14);
    result = (v20)(v11, v14);
  }

  *a4 = v13;
  *(a4 + 8) = 0;
  *(a4 + 16) = v18;
  *(a4 + 24) = v16 == 1;
  *(a4 + 32) = a3;
  return result;
}

double sub_10007ABD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10007E04C(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

unint64_t sub_10007AC14()
{
  v1 = v0;
  v2 = sub_10007A4E0(&_swiftEmptyArrayStorage);
  v22 = v2;
  if ((v0[1] & 1) == 0)
  {
    v3 = *v0;
    *(&v19 + 1) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    v20 = &type metadata for Double;
    *&v19 = v3;
    sub_100032F28(&v19, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10007D584(v18, v21, isUniquelyReferenced_nonNull_native);
    sub_10007A8EC(v21);
    v22 = v2;
  }

  if ((v1[3] & 1) == 0)
  {
    v5 = v1[2];
    *&v19 = 101;
    *(&v19 + 1) = 0xE100000000000000;
    AnyHashable.init<A>(_:)();
    v20 = &type metadata for Double;
    *&v19 = v5;
    sub_100032F28(&v19, v18);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007D584(v18, v21, v6);
    sub_10007A8EC(v21);
    v22 = v2;
  }

  *&v19 = 115;
  *(&v19 + 1) = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  v7 = v1[4];
  if (v7)
  {
    v8 = *(v7 + 16);
    v9 = &_swiftEmptyArrayStorage;
    if (v8)
    {
      *&v19 = &_swiftEmptyArrayStorage;
      sub_10007DDF0(0, v8, 0);
      v9 = v19;
      v10 = (v7 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        sub_100027004(v11, *v10);
        v13 = Data.base64EncodedString(options:)(0);
        sub_100026FB0(v11, v12);
        *&v19 = v9;
        v15 = v9[2];
        v14 = v9[3];
        if (v15 >= v14 >> 1)
        {
          sub_10007DDF0((v14 > 1), v15 + 1, 1);
          v9 = v19;
        }

        v10 += 2;
        v9[2] = v15 + 1;
        *&v9[2 * v15 + 4] = v13;
        --v8;
      }

      while (v8);
      v2 = v22;
    }

    v20 = sub_100024248(&qword_100153E08, qword_1001069A0);
    *&v19 = v9;
    sub_100032F28(&v19, v18);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007D584(v18, v21, v16);
    sub_10007A8EC(v21);
    return v2;
  }

  else
  {
    sub_10007CAD4(v21, &v19);
    sub_10002533C(&v19, &qword_100152D70, &qword_100103DB0);
    sub_10007A8EC(v21);
    return v22;
  }
}

uint64_t sub_10007AED4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd11SWTFollowUp_log;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10007AF4C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_10007AF84();
  return v3;
}

uint64_t sub_10007AF84()
{
  swift_defaultActor_initialize();
  if (FLFollowUpController)
  {
    v1 = objc_allocWithZone(FLFollowUpController);
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 initWithClientIdentifier:v2];
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 112) = v3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  (*(v5 + 32))(v0 + OBJC_IVAR____TtC15swtransparencyd11SWTFollowUp_log, v8, v4);
  return v0;
}

uint64_t sub_10007B120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024248(&qword_100153DE0, &qword_100106980);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100025058(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100032F28(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100032F28(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100032F28(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100032F28(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_10007B3EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v72 = a3;
  v66 = a2;
  v7 = type metadata accessor for Date();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  __chkstk_darwin(v7);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SWTFollowUpType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v71 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v63 - v15;
  v74 = v11;
  v70 = *(v11 + 16);
  v70(&v63 - v15, a1, v10);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  v19 = os_log_type_enabled(v17, v18);
  v73 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v65 = v4;
    v21 = v20;
    v63 = swift_slowAlloc();
    v76[0] = v63;
    *v21 = 136446210;
    v22 = SWTFollowUpType.rawValue.getter();
    v64 = v5;
    v24 = v23;
    v25 = *(v74 + 8);
    v25(v16, v10);
    v26 = sub_100021D24(v22, v24, v76);
    v27 = v64;

    *(v21 + 4) = v26;
    v28 = v18;
    v29 = v25;
    _os_log_impl(&_mh_execute_header, v17, v28, "postCFU: %{public}s", v21, 0xCu);
    sub_100024E14(v63);
    a1 = v73;

    v30 = v74;
    v31 = *(v27 + 112);
    if (!v31)
    {
      return;
    }
  }

  else
  {

    v30 = v74;
    v29 = *(v74 + 8);
    v29(v16, v10);
    v31 = *(v5 + 112);
    if (!v31)
    {
      return;
    }
  }

  v32 = v71;
  v70(v71, a1, v10);
  v33 = (*(v30 + 88))(v32, v10);
  if (v33 == enum case for SWTFollowUpType.rollback(_:))
  {
    v34 = v31;
    v74 = sub_10007E5EC(0xD000000000000012, 0x800000010010C710, 0xD000000000000021, 0x800000010010C730);
    v35 = "SWT_ROLLBACK_INFO";
    v36 = " to older version";
    v37 = 0xD000000000000038;
  }

  else
  {
    if (v33 != enum case for SWTFollowUpType.treeFork(_:))
    {
      v29(v32, v10);
      return;
    }

    v38 = v31;
    v74 = sub_10007E5EC(0xD000000000000012, 0x800000010010C640, 0x742064656B726F46, 0xEB00000000656572);
    v35 = "SWT_TREEFORK_INFO";
    v36 = "SWT_TREEFORK_TITLE";
    v37 = 0xD000000000000053;
  }

  v71 = sub_10007E5EC(0xD000000000000011, v36 | 0x8000000000000000, v37, v35 | 0x8000000000000000);
  sub_100024248(&unk_100153C20, qword_1001062C8);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100106300;
  v40 = v66[3];
  v41 = v66[4];
  sub_100026F6C(v66, v40);
  v42 = (*(v41 + 48))(v40, v41);
  v43 = [v42 swtCFUDetailsURL];

  if (v43)
  {
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  sub_10007E818(v44, v46);
  v48 = v47;

  *(v39 + 32) = v48;
  v75 = v39;
  v49 = v67;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v51 = v50;
  (*(v68 + 8))(v49, v69);
  if ((*(v72 + 8) & 1) == 0 && *v72 + 1209600.0 < v51)
  {
    sub_10007EB54();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v62 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v52 = [objc_allocWithZone(FLFollowUpItem) init];
  v76[0] = 0xD000000000000019;
  v76[1] = 0x800000010010C5E0;
  v53._countAndFlagsBits = SWTFollowUpType.rawValue.getter();
  String.append(_:)(v53);

  v54 = String._bridgeToObjectiveC()();

  [v52 setUniqueIdentifier:v54];

  [v52 setGroupIdentifier:FLGroupIdentifierAccount];
  v55 = String._bridgeToObjectiveC()();

  [v52 setTitle:v55];

  v56 = String._bridgeToObjectiveC()();

  [v52 setInformativeText:v56];

  sub_10007AC14();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v52 setUserInfo:isa];

  sub_100033178(0, &qword_100153E10, FLFollowUpAction_ptr);
  v58 = Array._bridgeToObjectiveC()().super.isa;

  [v52 setActions:v58];

  v59 = String._bridgeToObjectiveC()();
  [v52 setExtensionIdentifier:v59];

  v76[0] = 0;
  if ([v31 postFollowUpItem:v52 error:v76])
  {
    v60 = v76[0];
  }

  else
  {
    v61 = v76[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_10007BBF8(uint64_t a1)
{
  v2 = *(v1 + 112);
  if (v2)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v19 = &_swiftEmptyArrayStorage;
      v17 = v2;
      sub_10007DDF0(0, v4, 0);
      v5 = &_swiftEmptyArrayStorage;
      v6 = (a1 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v18[0] = 0xD000000000000019;
        v18[1] = 0x800000010010C5E0;

        v9._countAndFlagsBits = v7;
        v9._object = v8;
        String.append(_:)(v9);

        v19 = v5;
        v11 = v5[2];
        v10 = v5[3];
        if (v11 >= v10 >> 1)
        {
          sub_10007DDF0((v10 > 1), v11 + 1, 1);
          v5 = v19;
        }

        v5[2] = v11 + 1;
        v12 = &v5[2 * v11];
        v12[4] = 0xD000000000000019;
        v12[5] = 0x800000010010C5E0;
        v6 += 2;
        --v4;
      }

      while (v4);
      sub_10007BDE0(v5);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v18[0] = 0;
      v14 = [v17 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:v18];

      if (v14)
      {
        v15 = v18[0];
      }

      else
      {
        v16 = v18[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

void *sub_10007BDE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_10007DE10(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10007DE10((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_100032F28(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_10007BEE0()
{
  v1 = *(v0 + 112);
  if (!v1)
  {
    return sub_10007E4A8(&_swiftEmptyArrayStorage);
  }

  v53 = 0;
  v2 = v1;
  v3 = [v2 pendingFollowUpItems:&v53];
  v4 = v53;
  if (v3)
  {
    v5 = v3;
    sub_100033178(0, &qword_100153E18, FLFollowUpItem_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;

    v53 = &_swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v8; i = v2)
    {
      v9 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        v11 = v10;
        v2 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v12 = [v10 uniqueIdentifier];
        if (!v12)
        {
          __break(1u);
LABEL_58:
          __break(1u);
        }

        v13 = v12;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v14._object = 0x800000010010C5E0;
        v14._countAndFlagsBits = 0xD000000000000019;
        LOBYTE(v13) = String.hasPrefix(_:)(v14);

        if (v13)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v15 = v53[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v9;
        if (v2 == v8)
        {
          v17 = v53;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    v17 = &_swiftEmptyArrayStorage;
LABEL_23:

    if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
    {
      goto LABEL_53;
    }

    v18 = *(v17 + 16);
    if (v18)
    {
LABEL_26:
      v19 = 0;
      v51 = v17 & 0xC000000000000001;
      v16 = _swiftEmptyDictionarySingleton;
      v50 = v17;
      while (1)
      {
        if (v51)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v19 >= *(v17 + 16))
          {
            goto LABEL_50;
          }

          v23 = *(v17 + 8 * v19 + 32);
        }

        v24 = v23;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v18 = _CocoaArrayWrapper.endIndex.getter();
          if (!v18)
          {
            break;
          }

          goto LABEL_26;
        }

        v52 = v19 + 1;
        v25 = [v23 userInfo];
        if (v25)
        {
          v26 = v25;
          v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v27 = 0;
        }

        v28 = v18;
        sub_10007E04C(v27, &v54);
        v29 = [v24 uniqueIdentifier];
        if (!v29)
        {
          goto LABEL_58;
        }

        v30 = v29;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v16;
        v35 = sub_1000435B4(v17, v32);
        v36 = v16[2];
        v37 = (v34 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_51;
        }

        v39 = v34;
        if (v16[3] >= v38)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v34)
            {
              goto LABEL_27;
            }
          }

          else
          {
            sub_10007DC50();
            if (v39)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          sub_10007D0E8(v38, isUniquelyReferenced_nonNull_native);
          v40 = sub_1000435B4(v17, v32);
          if ((v39 & 1) != (v41 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v35 = v40;
          if (v39)
          {
LABEL_27:

            v16 = v53;
            v20 = v53[7] + 40 * v35;
            v21 = *(v20 + 32);
            v22 = v55;
            *v20 = v54;
            *(v20 + 16) = v22;
            *(v20 + 32) = v56;

            goto LABEL_28;
          }
        }

        v16 = v53;
        v53[(v35 >> 6) + 8] |= 1 << v35;
        v42 = (v16[6] + 16 * v35);
        *v42 = v17;
        v42[1] = v32;
        v43 = v16[7] + 40 * v35;
        *(v43 + 32) = v56;
        v44 = v55;
        *v43 = v54;
        *(v43 + 16) = v44;

        v45 = v16[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_52;
        }

        v16[2] = v47;
LABEL_28:
        ++v19;
        v18 = v28;
        v17 = v50;
        if (v52 == v28)
        {
          goto LABEL_55;
        }
      }
    }

    v16 = _swiftEmptyDictionarySingleton;
LABEL_55:
  }

  else
  {
    v16 = v53;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v16;
}

uint64_t sub_10007C3F8()
{
  v25 = type metadata accessor for SWTFollowUpType();
  v1 = *(v25 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v25);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = static SWTFollowUpType.allCases.getter();
  v6 = *(v5 + 16);
  if (v6)
  {
    v21[1] = v0;
    v26 = &_swiftEmptyArrayStorage;
    sub_10007DDF0(0, v6, 0);
    v7 = v26;
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v10 = *(v8 + 64);
    v21[0] = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v23 = *(v8 + 56);
    v24 = v9;
    v22 = (v8 - 8);
    do
    {
      v12 = v25;
      v13 = v8;
      v24(v4, v11, v25);
      v14 = SWTFollowUpType.rawValue.getter();
      v16 = v15;
      (*v22)(v4, v12);
      v26 = v7;
      v18 = v7[2];
      v17 = v7[3];
      if (v18 >= v17 >> 1)
      {
        sub_10007DDF0((v17 > 1), v18 + 1, 1);
        v7 = v26;
      }

      v7[2] = v18 + 1;
      v19 = &v7[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      v11 += v23;
      --v6;
      v8 = v13;
    }

    while (v6);
  }

  else
  {

    v7 = &_swiftEmptyArrayStorage;
  }

  sub_10007BBF8(v7);
}

uint64_t sub_10007C700()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd11SWTFollowUp_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10007C770()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd11SWTFollowUp_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10007C7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return _swift_task_switch(sub_10007C814, v5, 0);
}

uint64_t sub_10007C814()
{
  v1 = *(v0 + 40);
  sub_10007B3EC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007C894(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return _swift_task_switch(sub_10007C8B8, v4, 0);
}

uint64_t sub_10007C8B8()
{
  v1 = *(v0 + 32);
  sub_10007EEB0(*(v0 + 16), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007C91C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10007C93C, v3, 0);
}

uint64_t sub_10007C93C()
{
  v1 = v0[3];
  sub_10007BBF8(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10007C9B8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10007C9D8, v2, 0);
}

uint64_t sub_10007C9D8()
{
  v1 = *(v0 + 16);
  v2 = sub_10007BEE0();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10007CA54()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_10007CA74, v2, 0);
}

uint64_t sub_10007CA74()
{
  v1 = *(v0 + 16);
  sub_10007C3F8();
  v2 = *(v0 + 8);

  return v2();
}

double sub_10007CAD4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000795A4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10007D908();
      v11 = v13;
    }

    sub_10007A8EC(*(v11 + 48) + 40 * v8);
    sub_100032F28((*(v11 + 56) + 32 * v8), a2);
    sub_10007D3E0(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10007CB78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100024248(&qword_100153DE0, &qword_100106980);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100032F28((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_10007A890(v24, &v37);
        sub_100025058(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100032F28(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10007CE30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100024248(&qword_100153BE0, &unk_100106EA0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100032F28(v25, v37);
      }

      else
      {
        sub_100025058(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100032F28(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10007D0E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100024248(&qword_100153ED0, &qword_100106AC0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 40 * v22;
      v43 = *v26;
      v42 = *(v26 + 8);
      v41 = *(v26 + 16);
      v40 = *(v26 + 24);
      v27 = *(v26 + 32);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 40 * v16;
      *v18 = v43;
      *(v18 + 8) = v42;
      *(v18 + 16) = v41;
      *(v18 + 24) = v40;
      *(v18 + 32) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10007D3E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_10007A890(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10007A8EC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10007D584(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000795A4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10007D908();
      goto LABEL_7;
    }

    sub_10007CB78(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1000795A4(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10007A890(a2, v22);
      return sub_10007D820(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100024E14(v17);

  return sub_100032F28(a1, v17);
}

_OWORD *sub_10007D6D0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000435B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10007DAAC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10007CE30(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000435B4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100024E14(v23);

    return sub_100032F28(a1, v23);
  }

  else
  {
    sub_10007D89C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_10007D820(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100032F28(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_10007D89C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100032F28(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10007D908()
{
  v1 = v0;
  sub_100024248(&qword_100153DE0, &qword_100106980);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_10007A890(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100025058(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100032F28(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10007DAAC()
{
  v1 = v0;
  sub_100024248(&qword_100153BE0, &unk_100106EA0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100025058(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100032F28(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10007DC50()
{
  v1 = v0;
  sub_100024248(&qword_100153ED0, &qword_100106AC0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = (*(v4 + 48) + v18);
        *v28 = v20;
        v28[1] = v21;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v26;
        *(v29 + 32) = v27;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_10007DDF0(char *a1, int64_t a2, char a3)
{
  result = sub_10007DE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007DE10(char *a1, int64_t a2, char a3)
{
  result = sub_10007DF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007DE30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024248(&qword_100153EE0, &unk_100106AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007DF3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024248(&qword_100153ED8, &qword_100106AC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10007E04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v38 = 0u;
    v39 = 0u;
    sub_10002533C(&v38, &qword_100152D70, &qword_100103DB0);
    v38 = 0u;
    v39 = 0u;
    sub_10002533C(&v38, &qword_100152D70, &qword_100103DB0);
    v12 = 0;
    v7 = 0;
    v38 = 0u;
    v39 = 0u;
    v13 = 1;
    v8 = 1;
    goto LABEL_36;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v4 = sub_1000795A4(v37), (v5 & 1) == 0))
  {

    sub_10007A8EC(v37);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_10;
  }

  sub_100025058(*(a1 + 56) + 32 * v4, &v38);
  sub_10007A8EC(v37);

  if (!*(&v39 + 1))
  {
LABEL_10:
    sub_10002533C(&v38, &qword_100152D70, &qword_100103DB0);
    v7 = 0;
    v8 = 1;
    goto LABEL_11;
  }

  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v37[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 ^ 1;
LABEL_11:

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v9 = sub_1000795A4(v37), (v10 & 1) == 0))
  {

    sub_10007A8EC(v37);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_19;
  }

  sub_100025058(*(a1 + 56) + 32 * v9, &v38);
  sub_10007A8EC(v37);

  if (!*(&v39 + 1))
  {
LABEL_19:
    sub_10002533C(&v38, &qword_100152D70, &qword_100103DB0);
    v12 = 0;
    v13 = 1;
    goto LABEL_20;
  }

  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = v37[0];
  }

  else
  {
    v12 = 0;
  }

  v13 = v11 ^ 1;
LABEL_20:
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v14 = sub_1000795A4(v37), (v15 & 1) == 0))
  {

    sub_10007A8EC(v37);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_36;
  }

  sub_100025058(*(a1 + 56) + 32 * v14, &v38);
  sub_10007A8EC(v37);

  if (!*(&v39 + 1))
  {
LABEL_36:
    result = sub_10002533C(&v38, &qword_100152D70, &qword_100103DB0);
LABEL_37:
    v21 = 0;
LABEL_38:
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v21;
    return result;
  }

  sub_100024248(&qword_100153E08, qword_1001069A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_37;
  }

  v34 = v12;
  v35 = v8;
  v36 = v7;
  v17 = 0;
  v18 = v37[0];
  v19 = *(v37[0] + 16);
  v20 = v37[0] + 40;
  v21 = &_swiftEmptyArrayStorage;
  v33 = v37[0] + 40;
LABEL_25:
  v22 = (v20 + 16 * v17);
  while (1)
  {
    if (v19 == v17)
    {

      v7 = v36;
      v8 = v35;
      v12 = v34;
      goto LABEL_38;
    }

    if (v17 >= *(v18 + 16))
    {
      break;
    }

    ++v17;
    v23 = v22 + 2;
    v24 = *(v22 - 1);
    v25 = *v22;

    v26 = Data.init(base64Encoded:options:)();
    v28 = v27;

    v22 = v23;
    if (v28 >> 60 != 15)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10004B124(0, *(v21 + 2) + 1, 1, v21);
        v21 = result;
      }

      v30 = *(v21 + 2);
      v29 = *(v21 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        result = sub_10004B124((v29 > 1), v30 + 1, 1, v21);
        v31 = v30 + 1;
        v21 = result;
      }

      *(v21 + 2) = v31;
      v32 = &v21[16 * v30];
      *(v32 + 4) = v26;
      *(v32 + 5) = v28;
      v20 = v33;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10007E4A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_100153ED0, &qword_100106AC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 24);
      v9 = *(i - 2);
      v10 = *(i - 8);
      v11 = *i;

      result = sub_1000435B4(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 40 * result;
      *v15 = v7;
      *(v15 + 8) = v8;
      *(v15 + 16) = v9;
      *(v15 + 24) = v10;
      *(v15 + 32) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10007E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();

  URL.init(fileURLWithPath:)();

  v11 = objc_allocWithZone(NSBundle);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v15 = [v11 initWithURL:v13];

  (*(v7 + 8))(v10, v6);
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
    if (a4)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    swift_beginAccess();

    v18 = String._bridgeToObjectiveC()();

    v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return a1;
}

void sub_10007E818(unint64_t a1, unint64_t a2)
{
  v4 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  sub_10007E5EC(0xD000000000000010, 0x800000010010C810, 0x6F4D206E7261654CLL, 0xEA00000000006572);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v7, 1, 1, v8);
  v10 = String._bridgeToObjectiveC()();
  v12 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v9 + 8))(v7, v8);
  }

  v14 = [objc_opt_self() actionWithLabel:v10 url:v12];

  if (v14)
  {

    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = 0x6E6F69746361;
    v16 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE600000000000000;
    strcpy((inited + 48), "detailsAction");
    *(inited + 62) = -4864;
    v17 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(v16, &qword_100153B98, &qword_100107EA0);
    v18 = 0x800000010010C830;
    v19 = 0xD000000000000016;
    if (a2)
    {
      v19 = a1;
    }

    v26 = &type metadata for String;
    if (a2)
    {
      v18 = a2;
    }

    *&v25 = v19;
    *(&v25 + 1) = v18;
    sub_100032F28(&v25, v24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v17;
    sub_10007D6D0(v24, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    sub_10007B120(v23);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v14 setUserInfo:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007EB54()
{
  v0 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v3, 1, 1, v8);
  v10 = String._bridgeToObjectiveC()();

  v12 = 0;
  if ((*(v9 + 48))(v3, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v9 + 8))(v3, v8);
  }

  v14 = [objc_opt_self() actionWithLabel:v10 url:v12];

  if (v14)
  {
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = 0x6E6F69746361;
    v16 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0x7463417261656C63;
    *(inited + 56) = 0xEB000000006E6F69;
    v17 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(v16, &qword_100153B98, &qword_100107EA0);
    sub_10007B120(v17);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v14 setUserInfo:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007EEB0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024248(&qword_100152D90, &qword_100105620);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  (*(v5 + 56))(&v22 - v14, 1, 1, v4);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v17 = v16;
  sub_100025834(v15, v13, &qword_100152D90, &qword_100105620);
  v18 = (*(v5 + 48))(v13, 1, v4);
  if (v18 == 1)
  {
    (*(v5 + 8))(v8, v4);
    sub_10002533C(v15, &qword_100152D90, &qword_100105620);
    sub_10002533C(v13, &qword_100152D90, &qword_100105620);
    v19 = 0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v19 = v20;
    v21 = *(v5 + 8);
    v21(v8, v4);
    sub_10002533C(v15, &qword_100152D90, &qword_100105620);
    v21(v13, v4);
  }

  v23 = v17;
  v24 = 0;
  v25 = v19;
  v26 = v18 == 1;
  v27 = 0;
  sub_10007B3EC(a1, a2, &v23);
}

__n128 sub_10007F150(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10007F164(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10007F1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for SWTFollowUp()
{
  result = qword_10015AF30;
  if (!qword_10015AF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007F280()
{
  result = type metadata accessor for Logger();
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

uint64_t Application.description.getter(int a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x2F6E776F6E6B6E55;
      case 1:
        return 5456969;
      case 2:
        return 19267;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 21569;
    }

    if (a1 == 6)
    {
      return 4805697;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 == 3)
  {
    return 20557;
  }

  else
  {
    return 21574;
  }
}

void sub_10007F3F0()
{
  v1 = [v0 appSmtKeyStore];
  v2 = [v1 signatureVerifier];

  [v2 setNeedsRefresh:1];
  v3 = [v0 appSthKeyStore];
  v4 = [v3 signatureVerifier];

  [v4 setNeedsRefresh:1];
  v5 = [v0 tltKeyStore];
  v6 = [v5 signatureVerifier];

  [v6 setNeedsRefresh:1];
}

uint64_t sub_10007F53C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 4;
  }

  if (a3 == 1)
  {
    return 5;
  }

  return qword_100106EB0[a1];
}

unint64_t sub_10007F56C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {

    return sub_100061318(&_swiftEmptyArrayStorage);
  }

  else
  {
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = 107;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE100000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    sub_100087BF0(a1, a2, a3);
    v8 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(inited + 32, &qword_100153B98, &qword_100107EA0);
    return v8;
  }
}

uint64_t sub_10007F668(uint64_t a1)
{
  v2 = sub_10008819C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10007F6A4(uint64_t a1)
{
  v2 = sub_10008819C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10007F6E0()
{
  if (!*(v0 + 16))
  {
    return 4;
  }

  if (*(v0 + 16) == 1)
  {
    return 5;
  }

  return qword_100106EB0[*v0];
}

unint64_t sub_10007F714()
{
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {

    return sub_100061318(&_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = v0;
    v2 = *v0;
    v3 = *(v4 + 8);
    sub_100024248(&qword_100153B90, &unk_100105E80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001042A0;
    *(inited + 32) = 107;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE100000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v3;
    sub_100087BF0(v2, v3, v1);
    v6 = sub_100061318(inited);
    swift_setDeallocating();
    sub_10002533C(inited + 32, &qword_100153B98, &qword_100107EA0);
    return v6;
  }
}

void *sub_10007F818()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

uint64_t sub_10007F864()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D2B0);
  sub_100025AE0(v0, qword_10015D2B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10007F8E8()
{
  if (qword_10015AF40 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D2B0);
}

uint64_t sub_10007F94C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015AF40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D2B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10007F9F4(int a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v20 + 112) = 0;
  *(v20 + 128) = a2;
  *(v20 + 136) = a1;
  v21 = *(a5 + 16);
  *(v20 + 144) = *a5;
  *(v20 + 160) = v21;
  *(v20 + 176) = *(a5 + 32);
  v22 = OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory;
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 32))(v20 + v22, a3, v23);
  v24 = *(a6 + 16);
  *(v20 + 184) = *a6;
  *(v20 + 200) = v24;
  *(v20 + 216) = *(a6 + 32);
  sub_100037608(a4, v20 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database);
  v25 = v20 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup;
  v26 = *(a7 + 16);
  *v25 = *a7;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a7 + 32);
  *(v20 + 120) = a8;
  return v20;
}

uint64_t sub_10007FB18(int a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_defaultActor_initialize();
  *(v8 + 112) = 0;
  *(v8 + 128) = a2;
  *(v8 + 136) = a1;
  v17 = *(a5 + 16);
  *(v8 + 144) = *a5;
  *(v8 + 160) = v17;
  *(v8 + 176) = *(a5 + 32);
  v18 = OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 32))(v8 + v18, a3, v19);
  v20 = *(a6 + 16);
  *(v8 + 184) = *a6;
  *(v8 + 200) = v20;
  *(v8 + 216) = *(a6 + 32);
  sub_100037608(a4, v8 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database);
  v21 = v8 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup;
  v22 = *(a7 + 16);
  *v21 = *a7;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a7 + 32);
  *(v8 + 120) = a8;
  return v8;
}

uint64_t sub_10007FC28(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_10007FC68(a1);
  return v5;
}

uint64_t sub_10007FC68(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  v9 = a1[3];
  v10 = a1[4];
  sub_100026F6C(a1, v9);
  *(v1 + 136) = (*(v10 + 8))(v9, v10);
  v11 = a1[3];
  v12 = a1[4];
  sub_100026F6C(a1, v11);
  *(v1 + 128) = (*(v12 + 32))(v11, v12);
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  v13 = a1[3];
  v14 = a1[4];
  sub_100026F6C(a1, v13);
  (*(v14 + 16))(v13, v14);
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory, v8, v4);
  v15 = a1[3];
  v16 = a1[4];
  sub_100026F6C(a1, v15);
  v17 = (*(v16 + 64))(v15, v16);
  v18 = (v2 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database);
  v18[3] = type metadata accessor for KTSWDB();
  v18[4] = sub_100087C08(&qword_100152F48, type metadata accessor for KTSWDB);
  *v18 = v17;
  *(v2 + 216) = 0;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  v19 = a1[3];
  v20 = a1[4];
  sub_100026F6C(a1, v19);
  (*(v20 + 40))(v27, v19, v20);
  v21 = v2 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup;
  v22 = v27[1];
  *v21 = v27[0];
  *(v21 + 16) = v22;
  *(v21 + 32) = v28;
  v23 = a1[3];
  v24 = a1[4];
  sub_100026F6C(a1, v23);
  *(v2 + 120) = (*(v24 + 80))(v23, v24);
  sub_100024E14(a1);
  return v2;
}

uint64_t sub_10007FF28()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*v0 + 160))(v5);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 receiptTime];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceNow.getter();
    v12 = v11;
    (*(v3 + 8))(v7, v2);
    if (kKTPublicKeysResponseRefresh == 0x8000000000000000)
    {
      __break(1u);
    }

    else
    {
      if (v12 >= -kKTPublicKeysResponseRefresh)
      {

        return 0;
      }

      if (qword_10015AF40 == -1)
      {
LABEL_5:
        v13 = type metadata accessor for Logger();
        sub_100025AE0(v13, qword_10015D2B0);

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v14, v15))
        {
LABEL_25:

          (*(*v1 + 224))();
          return 1;
        }

        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24 = v17;
        *v16 = 136446210;
        v18 = v1[34];
        if (v18 <= 2)
        {
          switch(v18)
          {
            case 0:
              v19 = 0xEB00000000544C54;
              v20 = 0x2F6E776F6E6B6E55;
              goto LABEL_24;
            case 1:
              v19 = 0xE300000000000000;
              v20 = 5456969;
              goto LABEL_24;
            case 2:
              v19 = 0xE200000000000000;
              v20 = 19267;
LABEL_24:
              v22 = sub_100021D24(v20, v19, &v24);

              *(v16 + 4) = v22;
              _os_log_impl(&_mh_execute_header, v14, v15, "Public key response for %{public}s older than refresh period", v16, 0xCu);
              sub_100024E14(v17);

              goto LABEL_25;
          }
        }

        else
        {
          if (v18 <= 4)
          {
            v19 = 0xE200000000000000;
            if (v18 == 3)
            {
              v20 = 20557;
            }

            else
            {
              v20 = 21574;
            }

            goto LABEL_24;
          }

          if (v18 == 5)
          {
            v19 = 0xE200000000000000;
            v20 = 21569;
            goto LABEL_24;
          }

          if (v18 == 6)
          {
            v19 = 0xE300000000000000;
            v20 = 4805697;
            goto LABEL_24;
          }
        }

        v19 = 0xE700000000000000;
        v20 = 0x4E574F4E4B4E55;
        goto LABEL_24;
      }
    }

    swift_once();
    goto LABEL_5;
  }

  (*(*v0 + 224))();
  return 1;
}

id sub_1000802D0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 160))(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = objc_opt_self();
  v9 = [v7 receiptTime];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v6, v1);
  v11 = [v8 fuzzyDaysSinceDate:isa];

  return v11;
}

uint64_t sub_100080454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return _swift_task_switch(sub_100080474, a4, 0);
}

uint64_t sub_100080474()
{
  sub_100025834(*(v0 + 64) + 184, v0 + 16, &qword_100153F20, &qword_100106BD0);
  v1 = *(v0 + 40);
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_100026F6C((v0 + 16), v1);
    v3 = *(v2 + 8);
    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_100080624;

    return v8(v1, v2);
  }

  else
  {
    sub_10002533C(v0 + 16, &qword_100153F20, &qword_100106BD0);
    **(v0 + 56) = *(v0 + 72) == 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100080624()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100080734, v2, 0);
}

uint64_t sub_100080734()
{
  sub_100024E14((v0 + 16));
  **(v0 + 56) = *(v0 + 72) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000807C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = sub_100087C08(&qword_100153EE8, type metadata accessor for SWTPublicKeyBag);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  v10[4] = v2;
  swift_retain_n();
  sub_100075D7C(0, 0, v7, a2, v10);
}

uint64_t sub_100080908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return _swift_task_switch(sub_100080928, a4, 0);
}

uint64_t sub_100080928()
{
  sub_100025834(*(v0 + 64) + 184, v0 + 16, &qword_100153F20, &qword_100106BD0);
  v1 = *(v0 + 40);
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = *(v0 + 48);
    sub_100026F6C((v0 + 16), v1);
    v3 = *(v2 + 16);
    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_100080AD8;

    return v8(v1, v2);
  }

  else
  {
    sub_10002533C(v0 + 16, &qword_100153F20, &qword_100106BD0);
    **(v0 + 56) = *(v0 + 72) == 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100080AD8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1000882FC, v2, 0);
}

uint64_t sub_100080BE8()
{
  v1 = v0;
  v2 = (*(*v0 + 160))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 appSthKeyStore];
    v5 = [v4 signatureVerifier];

    LODWORD(v4) = [v5 needsRefresh];
    if (v4)
    {
      if (qword_10015AF40 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100025AE0(v6, qword_10015D2B0);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_67;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136446210;
      v11 = v1[34];
      if (v11 <= 2)
      {
        switch(v11)
        {
          case 0:
            v13 = 0x2F6E776F6E6B6E55;
            v12 = 0xEB00000000544C54;
            goto LABEL_59;
          case 1:
            v12 = 0xE300000000000000;
            v13 = 5456969;
            goto LABEL_59;
          case 2:
            v12 = 0xE200000000000000;
            v13 = 19267;
LABEL_59:
            v30 = sub_100021D24(v13, v12, &v33);

            *(v9 + 4) = v30;
            v31 = "App STH keys for %{public}s need refresh";
LABEL_66:
            _os_log_impl(&_mh_execute_header, v7, v8, v31, v9, 0xCu);
            sub_100024E14(v10);

LABEL_67:

            (*(*v1 + 224))();
            return 0;
        }
      }

      else
      {
        if (v11 <= 4)
        {
          v12 = 0xE200000000000000;
          if (v11 == 3)
          {
            v13 = 20557;
          }

          else
          {
            v13 = 21574;
          }

          goto LABEL_59;
        }

        if (v11 == 5)
        {
          v12 = 0xE200000000000000;
          v13 = 21569;
          goto LABEL_59;
        }

        if (v11 == 6)
        {
          v12 = 0xE300000000000000;
          v13 = 4805697;
          goto LABEL_59;
        }
      }

      v12 = 0xE700000000000000;
      v13 = 0x4E574F4E4B4E55;
      goto LABEL_59;
    }

    v22 = [v3 tltKeyStore];
    v23 = [v22 signatureVerifier];

    LODWORD(v22) = [v23 needsRefresh];
    if (!v22)
    {

      return 1;
    }

    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100025AE0(v24, qword_10015D2B0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_67;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136446210;
    v25 = v1[34];
    if (v25 <= 2)
    {
      switch(v25)
      {
        case 0:
          v27 = 0x2F6E776F6E6B6E55;
          v26 = 0xEB00000000544C54;
          goto LABEL_65;
        case 1:
          v26 = 0xE300000000000000;
          v27 = 5456969;
          goto LABEL_65;
        case 2:
          v26 = 0xE200000000000000;
          v27 = 19267;
LABEL_65:
          v32 = sub_100021D24(v27, v26, &v33);

          *(v9 + 4) = v32;
          v31 = "TLT STH keys for %{public}s need refresh";
          goto LABEL_66;
      }
    }

    else
    {
      if (v25 <= 4)
      {
        v26 = 0xE200000000000000;
        if (v25 == 3)
        {
          v27 = 20557;
        }

        else
        {
          v27 = 21574;
        }

        goto LABEL_65;
      }

      if (v25 == 5)
      {
        v26 = 0xE200000000000000;
        v27 = 21569;
        goto LABEL_65;
      }

      if (v25 == 6)
      {
        v26 = 0xE300000000000000;
        v27 = 4805697;
        goto LABEL_65;
      }
    }

    v26 = 0xE700000000000000;
    v27 = 0x4E574F4E4B4E55;
    goto LABEL_65;
  }

  if (qword_10015AF40 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100025AE0(v14, qword_10015D2B0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136446210;
    v19 = v1[34];
    if (v19 <= 2)
    {
      switch(v19)
      {
        case 0:
          v21 = 0x2F6E776F6E6B6E55;
          v20 = 0xEB00000000544C54;
          goto LABEL_49;
        case 1:
          v20 = 0xE300000000000000;
          v21 = 5456969;
          goto LABEL_49;
        case 2:
          v20 = 0xE200000000000000;
          v21 = 19267;
LABEL_49:
          v29 = sub_100021D24(v21, v20, &v33);

          *(v17 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v15, v16, "No key bag for %{public}s", v17, 0xCu);
          sub_100024E14(v18);

          goto LABEL_50;
      }
    }

    else
    {
      if (v19 <= 4)
      {
        v20 = 0xE200000000000000;
        if (v19 == 3)
        {
          v21 = 20557;
        }

        else
        {
          v21 = 21574;
        }

        goto LABEL_49;
      }

      if (v19 == 5)
      {
        v20 = 0xE200000000000000;
        v21 = 21569;
        goto LABEL_49;
      }

      if (v19 == 6)
      {
        v20 = 0xE300000000000000;
        v21 = 4805697;
        goto LABEL_49;
      }
    }

    v20 = 0xE700000000000000;
    v21 = 0x4E574F4E4B4E55;
    goto LABEL_49;
  }

LABEL_50:

  (*(*v1 + 224))();
  return 0;
}

void sub_1000812BC(char a1)
{
  v3 = (*(*v1 + 160))();
  if (v3)
  {
    v8 = v3;
    v4 = [v3 appSthKeyStore];
    v5 = [v4 signatureVerifier];

    [v5 setNeedsRefresh:(a1 & 1) == 0];
    v6 = [v8 tltKeyStore];
    v7 = [v6 signatureVerifier];

    [v7 setNeedsRefresh:(a1 & 1) == 0];
    if ((a1 & 1) == 0)
    {
      sub_100082A78();
    }
  }
}

void (*sub_100081570(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_100080BE8() & 1;
  return sub_1000815BC;
}

void sub_1000815E4()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  *(v0 + 112) = 0;
}

unint64_t sub_100081620()
{
  v1 = v0;
  v2 = [*(v0 + 128) atEnvironment];
  if (v2 <= 5)
  {
    if ((v2 - 1) < 5)
    {
      if (qword_10015AF40 != -1)
      {
        swift_once();
      }

      v3 = 0xD000000000000019;
      v4 = type metadata accessor for Logger();
      sub_100025AE0(v4, qword_10015D2B0);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_55;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v43 = v8;
      *v7 = 136315138;
      v9 = *(v1 + 136);
      if (v9 <= 2)
      {
        switch(v9)
        {
          case 0:
            v11 = 0x2F6E776F6E6B6E55;
            v10 = 0xEB00000000544C54;
            goto LABEL_54;
          case 1:
            v10 = 0xE300000000000000;
            v11 = 5456969;
            goto LABEL_54;
          case 2:
            v10 = 0xE200000000000000;
            v11 = 19267;
LABEL_54:
            v35 = sub_100021D24(v11, v10, &v43);

            *(v7 + 4) = v35;
            _os_log_impl(&_mh_execute_header, v5, v6, "Using QA1 Primary key bag for %s", v7, 0xCu);
            sub_100024E14(v8);

            goto LABEL_55;
        }
      }

      else
      {
        if (v9 <= 4)
        {
          v10 = 0xE200000000000000;
          if (v9 == 3)
          {
            v11 = 20557;
          }

          else
          {
            v11 = 21574;
          }

          goto LABEL_54;
        }

        if (v9 == 5)
        {
          v10 = 0xE200000000000000;
          v11 = 21569;
          goto LABEL_54;
        }

        if (v9 == 6)
        {
          v10 = 0xE300000000000000;
          v11 = 4805697;
          goto LABEL_54;
        }
      }

      v10 = 0xE700000000000000;
      v11 = 0x4E574F4E4B4E55;
      goto LABEL_54;
    }

LABEL_38:
    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100025AE0(v31, qword_10015D2B0);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_111;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 136446210;
    v32 = *(v1 + 136);
    if (v32 <= 2)
    {
      switch(v32)
      {
        case 0:
          v34 = 0x2F6E776F6E6B6E55;
          v33 = 0xEB00000000544C54;
          goto LABEL_109;
        case 1:
          v33 = 0xE300000000000000;
          v34 = 5456969;
          goto LABEL_109;
        case 2:
          v33 = 0xE200000000000000;
          v34 = 19267;
LABEL_109:
          v41 = sub_100021D24(v34, v33, &v43);

          *(v22 + 4) = v41;
          v37 = "Using prod key bag for %{public}s";
          goto LABEL_110;
      }
    }

    else
    {
      if (v32 <= 4)
      {
        v33 = 0xE200000000000000;
        if (v32 == 3)
        {
          v34 = 20557;
        }

        else
        {
          v34 = 21574;
        }

        goto LABEL_109;
      }

      if (v32 == 5)
      {
        v33 = 0xE200000000000000;
        v34 = 21569;
        goto LABEL_109;
      }

      if (v32 == 6)
      {
        v33 = 0xE300000000000000;
        v34 = 4805697;
        goto LABEL_109;
      }
    }

    v33 = 0xE700000000000000;
    v34 = 0x4E574F4E4B4E55;
    goto LABEL_109;
  }

  if (v2 == 6)
  {
    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100025AE0(v19, qword_10015D2B0);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_111;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43 = v23;
    *v22 = 136446210;
    v24 = *(v1 + 136);
    if (v24 <= 2)
    {
      switch(v24)
      {
        case 0:
          v26 = 0x2F6E776F6E6B6E55;
          v25 = 0xEB00000000544C54;
          goto LABEL_91;
        case 1:
          v25 = 0xE300000000000000;
          v26 = 5456969;
          goto LABEL_91;
        case 2:
          v25 = 0xE200000000000000;
          v26 = 19267;
LABEL_91:
          v36 = sub_100021D24(v26, v25, &v43);

          *(v22 + 4) = v36;
          v37 = "Using carry key bag for %{public}s";
LABEL_110:
          _os_log_impl(&_mh_execute_header, v20, v21, v37, v22, 0xCu);
          sub_100024E14(v23);

LABEL_111:

          return 0xD000000000000015;
      }
    }

    else
    {
      if (v24 <= 4)
      {
        v25 = 0xE200000000000000;
        if (v24 == 3)
        {
          v26 = 20557;
        }

        else
        {
          v26 = 21574;
        }

        goto LABEL_91;
      }

      if (v24 == 5)
      {
        v25 = 0xE200000000000000;
        v26 = 21569;
        goto LABEL_91;
      }

      if (v24 == 6)
      {
        v25 = 0xE300000000000000;
        v26 = 4805697;
        goto LABEL_91;
      }
    }

    v25 = 0xE700000000000000;
    v26 = 0x4E574F4E4B4E55;
    goto LABEL_91;
  }

  if (v2 != 9)
  {
    if (v2 != 8)
    {
      goto LABEL_38;
    }

    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v3 = 0xD000000000000019;
    v12 = type metadata accessor for Logger();
    sub_100025AE0(v12, qword_10015D2B0);

    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v5, v13))
    {
      goto LABEL_55;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43 = v15;
    *v14 = 136315138;
    v16 = *(v1 + 136);
    if (v16 <= 2)
    {
      switch(v16)
      {
        case 0:
          v18 = 0x2F6E776F6E6B6E55;
          v17 = 0xEB00000000544C54;
          goto LABEL_103;
        case 1:
          v17 = 0xE300000000000000;
          v18 = 5456969;
          goto LABEL_103;
        case 2:
          v17 = 0xE200000000000000;
          v18 = 19267;
LABEL_103:
          v38 = sub_100021D24(v18, v17, &v43);

          *(v14 + 4) = v38;
          v39 = "Using QA2 Primary key bag for %s";
LABEL_106:
          _os_log_impl(&_mh_execute_header, v5, v13, v39, v14, 0xCu);
          sub_100024E14(v15);

          goto LABEL_55;
      }
    }

    else
    {
      if (v16 <= 4)
      {
        v17 = 0xE200000000000000;
        if (v16 == 3)
        {
          v18 = 20557;
        }

        else
        {
          v18 = 21574;
        }

        goto LABEL_103;
      }

      if (v16 == 5)
      {
        v17 = 0xE200000000000000;
        v18 = 21569;
        goto LABEL_103;
      }

      if (v16 == 6)
      {
        v17 = 0xE300000000000000;
        v18 = 4805697;
        goto LABEL_103;
      }
    }

    v17 = 0xE700000000000000;
    v18 = 0x4E574F4E4B4E55;
    goto LABEL_103;
  }

  if (qword_10015AF40 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100025AE0(v27, qword_10015D2B0);

  v5 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43 = v15;
    *v14 = 136315138;
    v28 = *(v1 + 136);
    if (v28 <= 2)
    {
      switch(v28)
      {
        case 0:
          v30 = 0x2F6E776F6E6B6E55;
          v29 = 0xEB00000000544C54;
          goto LABEL_105;
        case 1:
          v29 = 0xE300000000000000;
          v30 = 5456969;
          goto LABEL_105;
        case 2:
          v29 = 0xE200000000000000;
          v30 = 19267;
LABEL_105:
          v3 = 0xD000000000000019;
          v40 = sub_100021D24(v30, v29, &v43);

          *(v14 + 4) = v40;
          v39 = "Using QA2 Internal key bag for %s";
          goto LABEL_106;
      }
    }

    else
    {
      if (v28 <= 4)
      {
        v29 = 0xE200000000000000;
        if (v28 == 3)
        {
          v30 = 20557;
        }

        else
        {
          v30 = 21574;
        }

        goto LABEL_105;
      }

      if (v28 == 5)
      {
        v29 = 0xE200000000000000;
        v30 = 21569;
        goto LABEL_105;
      }

      if (v28 == 6)
      {
        v29 = 0xE300000000000000;
        v30 = 4805697;
        goto LABEL_105;
      }
    }

    v29 = 0xE700000000000000;
    v30 = 0x4E574F4E4B4E55;
    goto LABEL_105;
  }

  v3 = 0xD000000000000019;
LABEL_55:

  return v3;
}

uint64_t sub_100081FEC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100082088, v1, 0);
}

uint64_t sub_100082088()
{
  v1 = *(**(v0 + 24) + 160);
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 trustedAppSigningKeys];

    sub_100087DE0();
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000823F4(v5);
  }

  v6 = *(v0 + 24);
  sub_10002A9AC([*(v6 + 128) atEnvironment]);
  *(v6 + 136);
  v7 = *(v0 + 24);
  v8 = v1();
  v9 = v8;
  if (v8)
  {
    [v8 patLogBeginningMs];
  }

  v10 = *(v0 + 24);
  v11 = v1();
  v12 = v11;
  if (v11)
  {
    [v11 tltLogBeginningMs];
  }

  v13 = *(v0 + 24);
  v14 = v1();
  if (v14)
  {
    v15 = *(v0 + 32);
    v16 = v14;
    v17 = [v14 receiptTime];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(v0 + 32);
  v20 = *(v0 + 16);
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v19, v18, 1, v21);
  TransparencySWSysdiagnose.PublicKeybag.init(env:app:patLogBeginMs:tltLogBeginMs:fetchTime:trustedAppSPKI:)();

  v22 = *(v0 + 8);

  return v22();
}

void *sub_1000823F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10007DDF0(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v23 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v12 = *v10;
    v11 = v10[1];
    sub_100027004(*v10, v11);
    v13 = Data.base64EncodedString(options:)(0);
    result = sub_100026FB0(v12, v11);
    v15 = *(&_swiftEmptyArrayStorage + 2);
    v14 = *(&_swiftEmptyArrayStorage + 3);
    if (v15 >= v14 >> 1)
    {
      result = sub_10007DDF0((v14 > 1), v15 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v15 + 1;
    *(&_swiftEmptyArrayStorage + v15 + 2) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v9);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 72 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_100024A68(v6, v24, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_100024A68(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v23)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_100082638()
{
  v1 = objc_opt_self();
  (*(*v0 + 264))();
  v2 = String._bridgeToObjectiveC()();

  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v12 = 0;
  v6 = [v1 readDictionaryFromFile:v2 inDirectory:v4 error:&v12];

  v7 = v12;
  if (v6)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    v10 = sub_1000827A8(v8);
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

unint64_t sub_1000827A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024248(&qword_1001540F8, &qword_100106E70);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        sub_10007A890(*(a1 + 48) + 40 * v15, v27);
        sub_100025058(*(a1 + 56) + 32 * v15, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_10007A890(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_10002533C(v24, &qword_100154100, qword_100106E78);

          goto LABEL_23;
        }

        sub_100025058(v25 + 8, v23);
        sub_10002533C(v24, &qword_100154100, qword_100106E78);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1000435B4(v21, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_100082A78()
{
  v2 = v0;
  v3 = (*(*v0 + 160))();
  if (!v3)
  {
    sub_100087F38();
    swift_allocError();
    *v8 = xmmword_100106AF0;
    *(v8 + 16) = 2;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory;
  v6 = sub_100082638();
  if (v1)
  {

LABEL_4:
    v7 = sub_100087E34(&_swiftEmptyArrayStorage);
    goto LABEL_7;
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

LABEL_7:
  v9 = v2[34];
  v42 = v5;
  if (v9 <= 2)
  {
    switch(v9)
    {
      case 0:
        v10 = 0xEB00000000544C54;
        v11 = 0x2F6E776F6E6B6E55;
        goto LABEL_23;
      case 1:
        v10 = 0xE300000000000000;
        v11 = 5456969;
        goto LABEL_23;
      case 2:
        v10 = 0xE200000000000000;
        v11 = 19267;
        goto LABEL_23;
    }

LABEL_19:
    v10 = 0xE700000000000000;
    v11 = 0x4E574F4E4B4E55;
    goto LABEL_23;
  }

  if (v9 > 4)
  {
    if (v9 == 5)
    {
      v10 = 0xE200000000000000;
      v11 = 21569;
      goto LABEL_23;
    }

    if (v9 == 6)
    {
      v10 = 0xE300000000000000;
      v11 = 4805697;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v10 = 0xE200000000000000;
  if (v9 == 3)
  {
    v11 = 20557;
  }

  else
  {
    v11 = 21574;
  }

LABEL_23:
  v12 = [v4 diskStoreDictionary];
  if (!v12)
  {
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100087904(v13, v11, v10, isUniquelyReferenced_nonNull_native);

  v15 = v7;
  v16 = sub_100087E34(&_swiftEmptyArrayStorage);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v16;
  sub_100087904(isa, v17, v19, v21);

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  (*(*v2 + 232))();
  v25 = Bool._bridgeToObjectiveC()().super.super.isa;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v16;
  sub_100087904(v25, v22, v24, v26);

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  v30.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (!v15)
  {
LABEL_30:
    __break(1u);
    __break(1u);
    return;
  }

  v31 = v30.super.isa;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v43 = v15;
  sub_100087904(v31, v27, v29, v32);

  v33 = objc_opt_self();
  sub_100082F54(v15);
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(*v2 + 264))(v35);
  v36 = String._bridgeToObjectiveC()();

  URL._bridgeToObjectiveC()(v42);
  v38 = v37;
  v43 = 0;
  v39 = [v33 writeDictionaryToFile:v34 fileName:v36 inDirectory:v37 error:&v43];

  if (v39)
  {
    v40 = v43;
  }

  else
  {
    v41 = v43;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100082F54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024248(&qword_100153DE0, &qword_100106980);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100032F28(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100032F28(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100032F28(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100083214(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024248(&qword_100153DE0, &qword_100106980);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_10007A890(*(a1 + 48) + 40 * v13, v33);
    v35 = *(*(a1 + 56) + 8 * v13);
    v21 = v33[0];
    v23 = v33[1];
    v25 = v34;
    *&v32[0] = v35;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_100032F28(&v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_100032F28(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~v7[v15 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = v7[v16];
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~v7[v15 >> 6])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v24;
    *(v11 + 32) = v26;
    result = sub_100032F28(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1000834C8(unint64_t a1)
{
  v29 = type metadata accessor for Date();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v29);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v9 = (v1 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database);
    v34 = a1 & 0xC000000000000001;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = (v3 + 8);
    *&v5 = 136315394;
    v25 = v5;
    v32 = a1;
    v31 = i;
    v30 = (v1 + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_database);
    while (1)
    {
      if (v34)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v27 + 16))
        {
          goto LABEL_12;
        }

        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_100061CE4(v38);
      sub_1000331C0(v9, &v35);
      v13 = v36;
      v14 = v37;
      v33 = sub_100026F6C(&v35, v36);
      v15 = v28;
      static Date.now.getter();
      v16 = [v11 data];
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_100061EBC();
      (*(v14 + 24))(v38, v15, v17, v19, v20, v13, v14);
      (*v26)(v15, v29);
      sub_100026FB0(v17, v19);
      sub_100024E14(&v35);
      v9 = v30;
      v21 = v30[3];
      v22 = v30[4];
      sub_100026F6C(v30, v21);
      (*(v22 + 48))(v38, 1, v21, v22);
      v23 = v31;
      v3 = v9[3];
      v24 = v9[4];
      v1 = sub_100026F6C(v9, v3);
      (*(v24 + 40))(v38, 1, v3, v24);

      sub_1000270C0(v38);
      a1 = v32;
      ++v8;
      if (v12 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_100083C08(unint64_t a1, SEL *a2, const char *a3)
{
  v7 = (*(*v3 + 160))();
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if ([v7 *a2] && objc_msgSend(v8, *a2) < a1)
  {
    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100025AE0(v9, qword_10015D2B0);
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349312;
      *(v13 + 4) = [v10 *a2];

      *(v13 + 12) = 2050;
      *(v13 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 0x16u);
    }

    else
    {

      v11 = v10;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_100083D9C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_100083DC0, v2, 0);
}

uint64_t sub_100083DC0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = sub_100083BE0(*(v0 + 56));
  *(v0 + 88) = v3 & 1;
  v4 = sub_100083BF4(v1);
  *(v0 + 89) = v4 & 1;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    v5 = 0;
LABEL_9:
    v12 = *(v0 + 8);
    v13 = (v5 | *(v0 + 88)) & 1;

    return v12(v13);
  }

  sub_100025834(*(v0 + 72) + OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_followup, v0 + 16, &qword_100153F28, &qword_100106BD8);
  v6 = *(v0 + 40);
  if (!v6)
  {
    sub_10002533C(v0 + 16, &qword_100153F28, &qword_100106BD8);
    v5 = *(v0 + 89);
    goto LABEL_9;
  }

  v7 = *(v0 + 48);
  sub_100026F6C((v0 + 16), *(v0 + 40));
  v8 = *(v7 + 40);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_100083FA8;

  return v14(v6, v7);
}

uint64_t sub_100083FA8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1000840B8, v2, 0);
}

uint64_t sub_1000840B8()
{
  sub_100024E14((v0 + 16));
  v1 = *(v0 + 8);
  v2 = (*(v0 + 89) | *(v0 + 88)) & 1;

  return v1(v2);
}

id sub_100084128()
{
  v1 = objc_opt_self();
  sub_10007A4E0(&_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(*v0 + 264))(v3);
  v4 = String._bridgeToObjectiveC()();

  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC15swtransparencyd15SWTPublicKeyBag_directory);
  v6 = v5;
  v9 = 0;
  LODWORD(v1) = [v1 writeDictionaryToFile:isa fileName:v4 inDirectory:v5 error:&v9];

  if (v1)
  {
    return v9;
  }

  v8 = v9;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_1000842A0()
{
  v2 = v0;
  v3 = sub_100082638();
  if (v1)
  {
    return;
  }

  v4 = v3;
  if (!v3)
  {
    sub_100087F38();
    swift_allocError();
    *v15 = xmmword_100106B00;
    *(v15 + 16) = 2;
    swift_willThrow();
    return;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v4[2])
  {

    goto LABEL_11;
  }

  v7 = sub_1000435B4(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_11:

    (*(*v2 + 336))(v16);
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    sub_100087F38();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0;
    swift_willThrow();
    return;
  }

  v10 = *(v4[7] + 8 * v7);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (([v10 respondsToSelector:"__swift_objectForKeyedSubscript:"] & 1) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_13;
  }

  *&v57 = v11;
  *(&v57 + 1) = v13;
  swift_unknownObjectRetain();

  v14 = [v10 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    v60 = v57;
    v61 = v59;
    if (*(&v59 + 1) == 1)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v60 = 0u;
    v61 = 0u;
  }

  v62 = v60;
  v63 = v61;
  if (!*(&v61 + 1))
  {
LABEL_34:

    v21 = &qword_100152D70;
    v22 = &qword_100103DB0;
    v23 = &v62;
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:

    goto LABEL_16;
  }

  if (v57 < kTransparencyProtocolVersion)
  {

    (*(*v2 + 336))(v29);
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    sub_100087F38();
    swift_allocError();
    *v33 = v30;
    *(v33 + 8) = v32;
    *(v33 + 16) = 1;
    goto LABEL_17;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (([v10 respondsToSelector:"__swift_objectForKeyedSubscript:"] & 1) == 0)
  {
LABEL_13:

    v60 = 0uLL;
    *&v61 = 0;
    *(&v61 + 1) = 1;
    goto LABEL_14;
  }

  *&v58 = v34;
  *(&v58 + 1) = v36;

  v37 = [v10 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (!v37)
  {

    v60 = 0u;
    v61 = 0u;
    goto LABEL_28;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  v60 = v58;
  v61 = v59;
  if (*(&v59 + 1) == 1)
  {
LABEL_14:

    v21 = &unk_100153F00;
    v22 = &unk_100106B70;
    v23 = &v60;
LABEL_15:
    v24 = sub_10002533C(v23, v21, v22);
LABEL_16:
    (*(*v2 + 336))(v24);
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    sub_100087F38();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    *(v28 + 16) = 0;
LABEL_17:
    swift_willThrow();
    swift_unknownObjectRelease();
    return;
  }

LABEL_28:
  v62 = v60;
  v63 = v61;
  if (!*(&v61 + 1))
  {
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v38 = *(v2 + 136);
  if (v38 <= 2)
  {
    switch(v38)
    {
      case 0:
        v40 = 0x2F6E776F6E6B6E55;
        v39 = 0xEB00000000544C54;
        goto LABEL_48;
      case 1:
        v39 = 0xE300000000000000;
        v40 = 5456969;
        goto LABEL_48;
      case 2:
        v39 = 0xE200000000000000;
        v40 = 19267;
        goto LABEL_48;
    }

LABEL_44:
    v39 = 0xE700000000000000;
    v40 = 0x4E574F4E4B4E55;
    goto LABEL_48;
  }

  if (v38 > 4)
  {
    if (v38 == 5)
    {
      v39 = 0xE200000000000000;
      v40 = 21569;
      goto LABEL_48;
    }

    if (v38 == 6)
    {
      v39 = 0xE300000000000000;
      v40 = 4805697;
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  v39 = 0xE200000000000000;
  if (v38 == 3)
  {
    v40 = 20557;
  }

  else
  {
    v40 = 21574;
  }

LABEL_48:
  if (!v4[2])
  {

    goto LABEL_53;
  }

  v41 = sub_1000435B4(v40, v39);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
LABEL_53:

    goto LABEL_54;
  }

  v44 = *(v4[7] + 8 * v41);
  swift_unknownObjectRetain();

  *&v62 = v44;
  sub_100024248(&qword_100153F08, &qword_100106B80);
  if (swift_dynamicCast())
  {
    sub_100083214(v60);

    v48 = [*(v2 + 128) transparencySettings];
    v49 = objc_allocWithZone(TransparencyPublicKeyBag);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v51 = String._bridgeToObjectiveC()();

    *&v62 = 0;
    v52 = [v49 initWithDiskKeyStore:isa application:v51 settings:v48 allowOldKeys:1 error:&v62];

    v53 = v62;
    if (v52)
    {
      swift_unknownObjectRelease();
      swift_beginAccess();
      v54 = *(v2 + 112);
      *(v2 + 112) = v52;
      v55 = v52;

      if ((v58 & 1) == 0)
      {
        (*(*v2 + 240))(0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v56 = v53;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    return;
  }

LABEL_54:
  if (v38 > 6)
  {
    v46 = 0xE700000000000000;
    v45 = 0x4E574F4E4B4E55;
  }

  else
  {
    v45 = *&aUnknownIds[8 * v38];
    v46 = *&aTlt[8 * v38];
  }

  sub_100087F38();
  swift_allocError();
  *v47 = v45;
  *(v47 + 8) = v46;
  *(v47 + 16) = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
}

uint64_t sub_100084C08(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100084C28, v1, 0);
}

uint64_t sub_100084C28()
{
  v16 = v0;
  v1 = v0[3];
  v2 = v1[34];
  v3 = (*(*v1 + 160))();
  v4 = v0[3];
  if (!v3)
  {
    (*(*v4 + 344))();
    v0[4] = 0;
    goto LABEL_26;
  }

  if ((*(*v4 + 232))() & 1) == 0 || ((*(*v0[3] + 200))())
  {
    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100025AE0(v5, qword_10015D2B0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_25;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    if (v2 <= 2)
    {
      switch(v2)
      {
        case 0:
          v11 = 0x2F6E776F6E6B6E55;
          v10 = 0xEB00000000544C54;
          goto LABEL_24;
        case 1:
          v10 = 0xE300000000000000;
          v11 = 5456969;
          goto LABEL_24;
        case 2:
          v10 = 0xE200000000000000;
          v11 = 19267;
LABEL_24:
          v12 = sub_100021D24(v11, v10, &v15);

          *(v8 + 4) = v12;
          _os_log_impl(&_mh_execute_header, v6, v7, "have key bag for %{public}s, but triggering refresh", v8, 0xCu);
          sub_100024E14(v9);

LABEL_25:

          goto LABEL_26;
      }
    }

    else
    {
      if (v2 <= 4)
      {
        v10 = 0xE200000000000000;
        if (v2 == 3)
        {
          v11 = 20557;
        }

        else
        {
          v11 = 21574;
        }

        goto LABEL_24;
      }

      if (v2 == 5)
      {
        v10 = 0xE200000000000000;
        v11 = 21569;
        goto LABEL_24;
      }

      if (v2 == 6)
      {
        v10 = 0xE300000000000000;
        v11 = 4805697;
        goto LABEL_24;
      }
    }

    v10 = 0xE700000000000000;
    v11 = 0x4E574F4E4B4E55;
    goto LABEL_24;
  }

LABEL_26:
  v13 = v0[1];

  return v13();
}

uint64_t sub_100085274()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100085404;
  }

  else
  {
    v6 = sub_1000853A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000853A0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100085404()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_100085490(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for URLRequest();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(sub_100024248(&qword_100152F00, &qword_1001042C0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100085630, v1, 0);
}

uint64_t sub_100085630()
{
  v79 = v0;
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  v77 = v1;
  sub_100026F6C(v1, v2);
  v4 = *(v3 + 8);
  v5 = v4(v2, v3);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 urlForKey:v6];

  if (v7)
  {
    v74 = v4;
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 56);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100033178(0, &qword_100153B80, NSMutableURLRequest_ptr);
    v73 = *(v10 + 16);
    v73(v9, v8, v11);
    v13 = *(v12 + 128);
    *(v0 + 136) = v13;
    [v13 networkTimeout];
    v15 = sub_1000B79C8(v9, v14);
    *(v0 + 144) = v15;
    v16 = String._bridgeToObjectiveC()();
    [v15 setHTTPMethod:v16];

    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    [v15 setValue:v17 forHTTPHeaderField:v18];

    v19 = objc_opt_self();
    v20 = [v19 deviceUserAgent];
    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    v21 = *(v0 + 56);
    v22 = String._bridgeToObjectiveC()();
    [v15 setValue:v20 forHTTPHeaderField:v22];

    v23 = *(v21 + 136);
    *(v0 + 224) = v23;
    *(v0 + 228) = v23;
    sub_100087F8C();
    BinaryInteger.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v15 setValue:v24 forHTTPHeaderField:off_1001523A0];

    v25 = ProtocolVersion_EnumDescriptor();
    v26 = [v25 textFormatNameForValue:kTransparencyProtocolVersion];

    [v15 setValue:v26 forHTTPHeaderField:off_1001523A8];
    v27 = [v19 transparencyVersionStr];
    if (!v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = String._bridgeToObjectiveC()();
    }

    [v15 setValue:v27 forHTTPHeaderField:off_1001523B8];

    v28 = [v19 automatedDeviceGroup];
    if (v28)
    {
      v29 = v28;
      [v15 setValue:v28 forHTTPHeaderField:off_1001523B0];
    }

    v30 = v74(v2, v3);
    v31 = [v30 currentEnvironment];

    if (sub_10002AAF4(v31))
    {
      [v15 _setPrivacyProxyFailClosed:1];
      if (qword_10015AF40 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100025AE0(v32, qword_10015D2B0);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Enforcing privacy proxy", v35, 2u);
      }
    }

    if (qword_10015AF40 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    *(v0 + 152) = sub_100025AE0(v36, qword_10015D2B0);
    v37 = v15;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v78 = v41;
      *v40 = 136315138;
      v42 = [v37 URL];
      if (v42)
      {
        v43 = *(v0 + 88);
        v44 = v42;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = 0;
      }

      else
      {
        v45 = 1;
      }

      v55 = *(v0 + 104);
      v54 = *(v0 + 112);
      v57 = *(v0 + 88);
      v56 = *(v0 + 96);
      (*(v54 + 56))(v57, v45, 1, v55);
      sub_1000443C0(v57, v56);
      if ((*(v54 + 48))(v56, 1, v55))
      {
        sub_10002533C(*(v0 + 96), &qword_100152F00, &qword_1001042C0);
        v58 = 0xE100000000000000;
        v59 = 45;
      }

      else
      {
        v75 = v41;
        v60 = *(v0 + 112);
        v61 = *(v0 + 120);
        v62 = *(v0 + 96);
        v63 = *(v0 + 104);
        v73(v61, v62, v63);
        sub_10002533C(v62, &qword_100152F00, &qword_1001042C0);
        v64 = URL.description.getter();
        v58 = v65;
        (*(v60 + 8))(v61, v63);
        v41 = v75;
        v59 = v64;
      }

      v66 = sub_100021D24(v59, v58, &v78);

      *(v40 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v38, v39, "configuring from network %s", v40, 0xCu);
      sub_100024E14(v41);
    }

    v67 = *(v0 + 80);
    v69 = v77[3];
    v68 = v77[4];
    sub_100026F6C(*(v0 + 48), v69);
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = (*(v68 + 16) + **(v68 + 16));
    v70 = *(*(v68 + 16) + 4);
    v71 = swift_task_alloc();
    *(v0 + 160) = v71;
    *v71 = v0;
    v71[1] = sub_100085F2C;
    v72 = *(v0 + 80);

    return v76(v72, v69, v68);
  }

  else
  {
    (*(**(v0 + 56) + 216))();
    sub_100087F38();
    swift_allocError();
    *v46 = xmmword_100106B10;
    *(v46 + 16) = 2;
    swift_willThrow();
    v48 = *(v0 + 120);
    v47 = *(v0 + 128);
    v50 = *(v0 + 88);
    v49 = *(v0 + 96);
    v51 = *(v0 + 80);

    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_100085F2C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 160);
  v7 = *v3;
  v5[21] = a1;
  v5[22] = a2;
  v5[23] = v2;

  v8 = v4[10];
  v9 = v4[9];
  v10 = v4[8];
  v11 = v4[7];
  (*(v9 + 8))(v8, v10);
  if (v2)
  {
    v12 = sub_1000869C8;
  }

  else
  {
    v12 = sub_1000860E0;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_1000860E0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = objc_allocWithZone(PublicKeysResponse);
  sub_100027004(v3, v1);
  v5 = sub_1000330B8();
  *(v0 + 192) = v5;
  *(v0 + 200) = v2;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  if (v2)
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    sub_100026FB0(*(v0 + 168), *(v0 + 176));
    (*(v11 + 8))(v9, v10);
    sub_100026FB0(v6, v7);

LABEL_3:
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    v17 = *(v0 + 8);

    return v17();
  }

  v19 = v5;
  v20 = *(v0 + 228);
  sub_100026FB0(*(v0 + 168), *(v0 + 176));
  v21 = [*(v0 + 136) transparencySettings];
  v22 = objc_allocWithZone(TransparencyPublicKeyBag);
  v23 = v19;
  v24 = String._bridgeToObjectiveC()();

  *(v0 + 40) = 0;
  v25 = [v22 initWithPublicKeysResponse:v23 application:v24 settings:v21 allowOldKeys:1 error:v0 + 40];
  *(v0 + 208) = v25;

  v26 = *(v0 + 40);
  if (!v25)
  {
    v35 = *(v0 + 168);
    v34 = *(v0 + 176);
    v36 = *(v0 + 144);
    v39 = *(v0 + 128);
    v38 = *(v0 + 104);
    v37 = *(v0 + 112);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100026FB0(v35, v34);
    (*(v37 + 8))(v39, v38);
    goto LABEL_3;
  }

  v27 = *(v0 + 56);
  swift_unknownObjectRelease();
  v28 = [v25 verifiedLogHeads];
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000834C8(v29);

  v30 = [v25 tltLogBeginningMs];
  v31 = [v25 patLogBeginningMs];
  v32 = swift_task_alloc();
  *(v0 + 216) = v32;
  *v32 = v0;
  v32[1] = sub_100086534;
  v33 = *(v0 + 56);

  return sub_100083D9C(v30, v31);
}

uint64_t sub_100086534()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100086670, v2, 0);
}

uint64_t sub_100086670()
{
  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[7];
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v1;
  v5 = v1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "storing public key to disk", v8, 2u);
  }

  v9 = v0[25];
  v10 = v0[7];

  sub_100082A78();
  if (v9)
  {
    v11 = v0[19];
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "failed to write new public key response to disk: %@", v14, 0xCu);
      sub_10002533C(v15, &qword_100153450, &unk_100104140);
    }

    v17 = v0[26];
    v18 = v0[24];
    v20 = v0[21];
    v19 = v0[22];
    v21 = v12;
    v22 = v0[18];
    v40 = v0[16];
    v24 = v0[13];
    v23 = v0[14];

    swift_willThrow();
    sub_100026FB0(v20, v19);

    (*(v23 + 8))(v40, v24);
    v26 = v0[15];
    v25 = v0[16];
    v28 = v0[11];
    v27 = v0[12];
    v29 = v0[10];

    v30 = v0[1];
  }

  else
  {
    v31 = v0[26];
    v32 = v0[24];
    v33 = v0[21];
    v34 = v0[22];
    v35 = v0[18];
    v36 = v0[15];
    v38 = v0[11];
    v37 = v0[12];
    v41 = v0[10];
    (*(v0[14] + 8))(v0[16], v0[13]);

    sub_100026FB0(v33, v34);

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_1000869C8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 184);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100086AD8()
{
  sub_100025834(*(v0 + 96) + 144, v0 + 56, &qword_100153F18, &qword_100106BB0);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_100037608((v0 + 56), v0 + 16);
    v2 = *(*v1 + 352);
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_100086CBC;
    v5 = *(v0 + 96);

    return v9(v0 + 16);
  }

  else
  {
    sub_10002533C(v0 + 56, &qword_100153F18, &qword_100106BB0);
    sub_100087F38();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100086CBC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_100086E4C;
  }

  else
  {
    v6 = sub_100086DE8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100086DE8()
{
  sub_100024E14((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100086E4C()
{
  sub_100024E14(v0 + 2);
  v1 = v0[14];
  v2 = v0[1];

  return v2();
}

uint64_t sub_100086ED0()
{
  sub_100025834(*(v0 + 216) + 144, v0 + 160, &qword_100153F18, &qword_100106BB0);
  if (*(v0 + 184))
  {
    v1 = *(v0 + 216);
    sub_100037608((v0 + 160), v0 + 120);
    v2 = *(*v1 + 360);
    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 224) = v4;
    *v4 = v0;
    v4[1] = sub_1000870B4;
    v5 = *(v0 + 216);

    return v9(v0 + 120);
  }

  else
  {
    sub_10002533C(v0 + 160, &qword_100153F18, &qword_100106BB0);
    sub_100087F38();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1000870B4()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_10008728C;
  }

  else
  {
    v6 = sub_1000871E0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000871E0()
{
  v1 = *(v0[27] + 120);
  v2 = String._bridgeToObjectiveC()();
  [v1 logResultForEvent:v2 hardFailure:1 result:0];

  sub_100024E14(v0 + 15);
  v3 = v0[1];

  return v3();
}