uint64_t sub_10044A458(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_10044580C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10044A520(uint64_t a1)
{
  v4 = *(type metadata accessor for Friend() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_100447978(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10044A650()
{
  v1 = type metadata accessor for Friend();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10044A728(uint64_t a1)
{
  v4 = *(type metadata accessor for Friend() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_100449C70(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10044A858()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_10043C9C0(v2, v3);
}

uint64_t sub_10044A8F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10043F138(a1, v4);
}

uint64_t sub_10044A990(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100440C74(a1, v4);
}

uint64_t sub_10044AA30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100441A50(a1, v5);
}

uint64_t sub_10044AADC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100003690;

  return sub_100441FE4(a1, a2, v6, v7);
}

uint64_t sub_10044ABA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100441700(a1, v4);
}

uint64_t sub_10044AC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044ACE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044AD48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044ADF8()
{
  *(v1 + 16) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_10044AE8C;

  return daemon.getter();
}

uint64_t sub_10044AE8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000096C8(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000096C8(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10044B068;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10044B068(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {
    v5 = v4[2];

    return _swift_task_switch(sub_10044B92C, v5, 0);
  }

  else
  {
    v6 = v4[4];

    v7 = swift_task_alloc();
    v4[8] = v7;
    *v7 = v4;
    v7[1] = sub_10044B1DC;
    v8 = v4[2];

    return sub_100405674();
  }
}

uint64_t sub_10044B1DC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = v1;

  v7 = *(v4 + 16);
  if (v1)
  {
    v8 = sub_10044BB28;
  }

  else
  {
    *(v4 + 104) = a1 & 1;
    v8 = sub_10044B31C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10044B31C()
{
  v12 = v0;
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 48);

    return _swift_task_switch(sub_10044B4EC, v1, 0);
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 48);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v11);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s not eligible to generate tokens.", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = *(v0 + 8);

    return v9(0);
  }
}

uint64_t sub_10044B4EC()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.follower(_:), v1);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_10044B650;
  v7 = v0[6];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_10044B650(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_10044B784, v4, 0);
}

uint64_t sub_10044B784()
{
  v13 = v0;
  v1 = *(v0[12] + 16);

  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0C30);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[6];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v12);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s no followers.", v8, 0xCu);
      sub_100004984(v9);
    }
  }

  v10 = v0[1];

  return v10(v1 != 0);
}

uint64_t sub_10044B92C()
{
  v13 = v0;
  v1 = v0[7];
  v2 = v0[4];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}@", v6, 0x16u);
    sub_100139370(v7);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_10044BB28()
{
  v13 = v0;
  v1 = v0[9];
  v2 = v0[6];

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}@", v6, 0x16u);
    sub_100139370(v7);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_10044BD24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_10044BDD0(a1);
}

uint64_t sub_10044BDD0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for XPCActivity.Criteria.Options();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Priority();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10044BEEC, v1, 0);
}

uint64_t sub_10044BEEC()
{
  v10 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EA770, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10044C09C;
  v7 = v0[4];

  return sub_10044ADF8();
}

uint64_t sub_10044C09C(char a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_10044C1B4, v3, 0);
}

uint64_t sub_10044C1B4()
{
  v21 = v0;
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 24);
    (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for XPCActivity.Priority.utility(_:), *(v0 + 64));
    sub_10044C858();
    sub_10044C858();
    sub_10004B564(&qword_1005B0658, &qword_1004D1FD8);
    v5 = *(v3 + 72);
    v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1004C2310;
    static XPCActivity.Criteria.Options.requiresClassC.getter();
    static XPCActivity.Criteria.Options.requiresNetwork.getter();
    *(v0 + 16) = v7;
    sub_1000096C8(&qword_1005B0660, &type metadata accessor for XPCActivity.Criteria.Options);
    sub_10004B564(&qword_1005B0668, &qword_1004D1FE0);
    sub_1002450C0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
    v8 = type metadata accessor for XPCActivity.Criteria();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  }

  else
  {
    v9 = *(v0 + 88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EA770, &v20);
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s not eligible.", v12, 0xCu);
      sub_100004984(v13);
    }

    v14 = *(v0 + 24);
    v15 = type metadata accessor for XPCActivity.Criteria();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 56);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10044C4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for XPCActivity.State();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10044C584, a3, 0);
}

uint64_t sub_10044C584()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for XPCActivity.State.run(_:))
  {
    v5 = v0[4];
    v6 = v0[2];
    sub_100440F28(86400.0);
    type metadata accessor for XPCActivity();
    sub_1000096C8(&qword_1005B0330, &type metadata accessor for XPCActivity);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = sub_10044C780;
LABEL_5:

    return _swift_task_switch(v10, v7, v9);
  }

  if (v4 == enum case for XPCActivity.State.defer(_:))
  {
    v11 = v0[2];
    type metadata accessor for XPCActivity();
    sub_1000096C8(&qword_1005B0330, &type metadata accessor for XPCActivity);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v12;
    v10 = sub_10044C7EC;
    goto LABEL_5;
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10044C780()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100438D08, v1, 0);
}

uint64_t sub_10044C7EC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_10044C96C, v1, 0);
}

uint64_t sub_10044C858()
{
  sub_1004BA244();
  if (v1)
  {
    return 43200;
  }

  v2 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "Using XPCActivity interval from defaults: %ld seconds", v6, 0xCu);
  }

  return v2;
}

uint64_t sub_10044C970@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  __chkstk_darwin(v11);
  v47 = &v40 - v15;
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  if (v19)
  {
    v40 = a2;
    v20 = 0;
    v21 = __clz(__rbit64(v19));
    v22 = (v19 - 1) & v19;
    v23 = (v17 + 63) >> 6;
LABEL_9:
    v26 = v14[9];
    v27 = *(a1 + 56) + v26 * v21;
    v28 = v14[2];
    v41 = v14;
    v42 = v28;
    v43 = v14 + 2;
    v44 = v26;
    v28(v13, v27, v4);
    v30 = v41 + 4;
    v29 = v41[4];
    v29(v47, v13, v4);
    v46 = a1;

    if (v22)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v32 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v32 >= v23)
      {

        v38 = v40;
        v29(v40, v47, v4);
        return (v41[7])(v38, 0, 1, v4);
      }

      v22 = *(v16 + 8 * v32);
      ++v20;
      if (v22)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v34 = v45;
          v42(v45, *(v46 + 56) + (v33 | (v32 << 6)) * v44, v4);
          v29(v10, v34, v4);
          sub_10044F72C(&qword_1005B0BF0, &type metadata accessor for Date);
          v35 = v47;
          v36 = dispatch thunk of static Comparable.< infix(_:_:)();
          v37 = *(v30 - 3);
          if (v36)
          {
            v37(v35, v4);
            result = (v29)(v35, v10, v4);
            v20 = v32;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = (v37)(v10, v4);
            v20 = v32;
            if (!v22)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v32 = v20;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 0;
    v23 = (v17 + 63) >> 6;
    while (v23 - 1 != v19)
    {
      v20 = v19 + 1;
      v25 = *(a1 + 72 + 8 * v19);
      v24 -= 64;
      ++v19;
      if (v25)
      {
        v40 = a2;
        v22 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) - v24;
        goto LABEL_9;
      }
    }

    v39 = v14[7];

    return v39(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10044CD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_10044F72C(&qword_1005B0BF0, &type metadata accessor for Date);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10044D004()
{
  v1[87] = v0;
  v1[93] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v1[94] = swift_task_alloc();

  return _swift_task_switch(sub_10044D0C8, v0, 0);
}

uint64_t sub_10044D0C8()
{
  v16 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[95] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6E20, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  if (sub_1003F399C())
  {
    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v0[96] = v7;
    *v7 = v0;
    v7[1] = sub_10044D384;

    return daemon.getter();
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6E20, &v15);
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s isFindingCapable == false.", v10, 0xCu);
      sub_100004984(v11);
    }

    v12 = v0[94];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10044D384(uint64_t a1)
{
  v3 = *(*v1 + 768);
  v7 = *v1;
  *(*v1 + 776) = a1;

  type metadata accessor for Daemon();
  sub_10044F72C(&qword_1005AB4E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044D4DC, v5, v4);
}

uint64_t sub_10044D4DC()
{
  v1 = v0[97];
  v2 = v0[87];
  v0[98] = Daemon.xpcAlarmEventHandler.getter();

  return _swift_task_switch(sub_10044D554, v2, 0);
}

uint64_t sub_10044D554()
{
  v1 = v0[98];
  v2 = v0[95];
  v3 = Logger.logObject.getter();
  if (v1)
  {
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Registering listener for XPC Alarms", v5, 2u);
    }

    v6 = v0[94];
    v7 = v0[93];
    v8 = v0[87];

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = sub_10044F72C(&qword_1005B3700, type metadata accessor for NITokenService);
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v10;
    v11[4] = v1;
    v11[5] = v8;
    v11[6] = v7;
    swift_retain_n();

    sub_1001D7F30(0, 0, v6, &unk_1004D8D08, v11);

    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 2, v12, sub_10044D7F8, v0 + 82);
  }

  else
  {
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v3, v13, "Daemon not registered XPC Alarm event handler", v14, 2u);
    }

    v15 = v0[94];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10044D830()
{
  v1 = v0[98];

  v2 = v0[94];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10044D898()
{
  v1[3] = v0;
  v2 = type metadata accessor for XPCAlarm.Criteria.Options();
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for XPCAlarm.Criteria() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for XPCAlarm();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = type metadata accessor for DiscoveryToken(0);
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10044DAD4, v0, 0);
}

uint64_t sub_10044DAD4()
{
  v10 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  static XPCAlarm.unregister(identifier:)();
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_10044DCA4;
  v7 = v0[3];

  return sub_10044ADF8();
}

uint64_t sub_10044DCA4(char a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_10044DDBC, v3, 0);
}

uint64_t sub_10044DDBC()
{
  v21 = v0;
  if (*(v0 + 224) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_10044DFE4;
    v2 = *(v0 + 24);

    return sub_10043F744();
  }

  else
  {
    v4 = *(v0 + 168);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v20);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s not eligible.", v7, 0xCu);
      sub_100004984(v8);
    }

    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = *(v0 + 128);
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 72);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_10044DFE4(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10044E0FC, v3, 0);
}

uint64_t sub_10044E0FC()
{
  v90 = v0;
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[15];
    v5 = v0[10];
    v4 = v0[11];
    v89 = _swiftEmptyArrayStorage;
    sub_100239804(0, v2, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v8 = *(v4 + 72);
    do
    {
      v9 = v0[18];
      v10 = v0[12];
      sub_10044F66C(v7, v10);
      v11 = v10 + *(v5 + 20);
      v12 = v11 + *(type metadata accessor for DiscoveryToken.Bucket(0) + 24);
      DateInterval.end.getter();
      sub_10044F6D0(v10);
      v89 = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_100239804(v13 > 1, v14 + 1, 1);
        v6 = v89;
      }

      v15 = v0[18];
      v16 = v0[14];
      v6[2] = v14 + 1;
      v17 = *(v3 + 32);
      v17(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v15, v16);
      v7 += v8;
      --v2;
    }

    while (v2);
    v18 = v0[24];
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[13];

    sub_10044CD54(v6, v21);

    v22 = (*(v20 + 48))(v21, 1, v19);
    v23 = v0[21];
    if (v22 == 1)
    {
      v24 = v0[3];
      sub_1000CF9E4(v0[13]);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[3];
      if (v27)
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = sub_10044C858();

        _os_log_impl(&_mh_execute_header, v25, v26, "Default end date to: now + %lld seconds", v29, 0xCu);
      }

      else
      {
        v71 = v0[3];
      }

      v72 = v0[20];
      v74 = v0[15];
      v73 = v0[16];
      v75 = v0[14];
      static Date.trustedNow.getter(v73);
      sub_10044C858();
      Date.addingTimeInterval(_:)();
      v67 = v74 + 8;
      v66 = *(v74 + 8);
      v66(v73, v75);
      v52 = *(v74 + 16);
    }

    else
    {
      v48 = v0[19];
      v49 = v0[17];
      v50 = v0[14];
      v51 = v0[15];
      v17(v48, v0[13], v50);
      v52 = *(v51 + 16);
      v52(v49, v48, v50);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v0[17];
      v57 = v0[14];
      v58 = v0[15];
      if (v55)
      {
        v88 = v54;
        v59 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v59 = 136446466;
        *(v59 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v89);
        *(v59 + 12) = 2082;
        sub_10044F72C(&qword_1005A9800, &type metadata accessor for Date);
        log = v53;
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v57;
        v62 = v52;
        v63 = v60;
        v65 = v64;
        v68 = *(v58 + 8);
        v67 = v58 + 8;
        v66 = v68;
        v68(v56, v61);
        v69 = v63;
        v52 = v62;
        v70 = sub_10000D01C(v69, v65, &v89);

        *(v59 + 14) = v70;
        _os_log_impl(&_mh_execute_header, log, v88, "%{public}s Nearest token end date %{public}s", v59, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v76 = *(v58 + 8);
        v67 = v58 + 8;
        v66 = v76;
        v76(v56, v57);
      }

      v78 = v0[19];
      v77 = v0[20];
      v79 = v0[14];
      Date.addingTimeInterval(_:)();
      v66(v78, v79);
    }

    v0[25] = v67;
    v0[26] = v66;
    v81 = v0[5];
    v80 = v0[6];
    v82 = v0[4];
    v52(v0[16], v0[20], v0[14]);
    v0[2] = _swiftEmptyArrayStorage;
    sub_10044F72C(&qword_1005B0BD8, &type metadata accessor for XPCAlarm.Criteria.Options);
    sub_10004B564(&qword_1005B0BE0, &qword_1004D28B8);
    sub_1002D395C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCAlarm.Criteria.init(date:options:)();
    v83 = async function pointer to XPCAlarm.init(identifier:criteria:)[1];
    v84 = swift_task_alloc();
    v0[27] = v84;
    *v84 = v0;
    v84[1] = sub_10044E868;
    v85 = v0[9];
    v86 = v0[6];

    return XPCAlarm.init(identifier:criteria:)(v85, 0xD000000000000036, 0x80000001004DE550, v86);
  }

  else
  {
    v30 = v0[21];
    v31 = v0[24];

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v89 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v89);
      _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s no friend token to rotate.", v34, 0xCu);
      sub_100004984(v35);
    }

    v37 = v0[19];
    v36 = v0[20];
    v39 = v0[17];
    v38 = v0[18];
    v40 = v0[16];
    v42 = v0[12];
    v41 = v0[13];
    v43 = v0[9];
    v45 = v0[5];
    v44 = v0[6];

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_10044E868()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10044E9D4, v5, 0);
}

uint64_t sub_10044E9D4()
{
  v1 = *(v0 + 200);
  (*(v0 + 208))(*(v0 + 160), *(v0 + 112));
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 72);
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10044EAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  v6 = sub_10004B564(&qword_1005AB4E8, &qword_1004C5458);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v5[7] = v9;
  v10 = sub_10004B564(&unk_1005AB4F0, &unk_1004C5460);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = *(&async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:) + 1);
  v16 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:));
  v14 = swift_task_alloc();
  v5[11] = v14;
  *v14 = v5;
  v14[1] = sub_10044EC6C;

  return v16(v9, 0xD000000000000036, 0x80000001004DE550);
}

uint64_t sub_10044EC6C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10044ED7C, v2, 0);
}

uint64_t sub_10044ED7C()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_10044F72C(&qword_1005B3700, type metadata accessor for NITokenService);
  v0[12] = v5;
  v6 = v0[4];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_10044EE98;
  v9 = v0[10];
  v10 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v6, v5, v10);
}

uint64_t sub_10044EE98()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10044EFA8, v2, 0);
}

uint64_t sub_10044EFA8()
{
  v15 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0C30);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136446210;
      v8 = sub_10000D01C(v2, v1, &v14);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "XPC Alarm key rotation triggered: %{public}s", v6, 0xCu);
      sub_100004984(v7);
    }

    else
    {
    }

    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_10044F1EC;
    v13 = v0[4];

    return sub_10044F384();
  }

  else
  {
    v9 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10044F1EC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *v0;

  v4 = v1[12];
  v5 = v1[4];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v1[13] = v7;
  *v7 = v3;
  v7[1] = sub_10044EE98;
  v8 = v1[10];
  v9 = v1[8];

  return AsyncStream.Iterator.next(isolation:)(v1 + 2, v5, v4, v9);
}

uint64_t sub_10044F384()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_10044F3CC, v0, 0);
}

uint64_t sub_10044F3CC()
{
  v12 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004EA7D0, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v7 = v0[2];
  v6 = v0[3];
  sub_100438FC0();
  v8 = sub_100209E2C(_swiftEmptyArrayStorage);
  v0[4] = v8;
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1002F6704;

  return sub_100402934(0xD000000000000039, 0x80000001004EA790, 0, v8);
}

uint64_t sub_10044F5BC()
{
  v1 = *(&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + 1);
  v4 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100003788;

  return v4(&off_10058BEB0);
}

uint64_t sub_10044F66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044F6D0(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10044F72C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10044F774(uint64_t a1)
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

  return sub_10044EAC8(a1, v4, v5, v6, v7);
}

uint64_t sub_10044F83C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_10044F5BC();
}

uint64_t sub_10044F8D8(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1001FC900(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1001FC900((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x65776F6C6C6F662ELL;
  *(v5 + 5) = 0xE900000000000072;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1001FC900((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x69776F6C6C6F662ELL;
    *(v8 + 5) = 0xEA0000000000676ELL;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1001FC900((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x466572757475662ELL;
    *(v11 + 5) = 0xEF7265776F6C6C6FLL;
  }

  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001FC900(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_1001FC900((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x466572757475662ELL;
    *(v14 + 5) = 0xEF7265776F6C6C6FLL;
  }

  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10013E894();
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 93;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return 91;
}

uint64_t sub_10044FB90@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalUserNotificationCategory();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10044FBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t type metadata accessor for FenceConfirmationNotification()
{
  result = qword_1005B3BE0;
  if (!qword_1005B3BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044FCEC()
{
  type metadata accessor for LocalUserNotificationCategory();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_1000F8F5C();
      if (v2 <= 0x3F)
      {
        sub_10044FDB8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10044FDB8()
{
  if (!qword_1005B3BF0)
  {
    sub_10004B610(&qword_1005A9268, &unk_1004D38E0);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B3BF0);
    }
  }
}

uint64_t sub_10044FE2C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_100450000@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_100018254(v13, v11, type metadata accessor for SecureLocationsCachedSharedKey);
      v15 = a1(v11);
      if (v3)
      {
        return sub_100006E68(v11, type metadata accessor for SecureLocationsCachedSharedKey);
      }

      if (v15)
      {
        break;
      }

      sub_100006E68(v11, type metadata accessor for SecureLocationsCachedSharedKey);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_100455738(v11, v19, type metadata accessor for SecureLocationsCachedSharedKey);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_1004501F8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v33 = a4;
  v34 = a2;
  v36 = a1;
  v37 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v32 = *(v37 - 8);
  v7 = *(v32 + 64);
  v8 = __chkstk_darwin(v37);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v35 = &v31 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v38 = a3;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v39 = v5;
      v19 = v10;
      v20 = v18;
LABEL_9:
      v21 = __clz(__rbit64(v15)) | (v20 << 6);
      v22 = v38;
      v23 = *(v38 + 48);
      v24 = type metadata accessor for Friend();
      v25 = v35;
      (*(*(v24 - 8) + 16))(v35, v23 + *(*(v24 - 8) + 72) * v21, v24);
      v26 = *(v22 + 56);
      v27 = type metadata accessor for FriendshipAction();
      (*(*(v27 - 8) + 16))(v25 + *(v37 + 48), v26 + *(*(v27 - 8) + 72) * v21, v27);
      v10 = v19;
      sub_100455660(v25, v19);
      v28 = v39;
      v29 = v36(v19);
      v5 = v28;
      if (v28)
      {
        sub_100002CE0(v19, &qword_1005AFFE0, &qword_1004D6060);
      }

      if (v29)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_100002CE0(v19, &qword_1005AFFE0, &qword_1004D6060);
      v18 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v30 = v33;
    sub_100455660(v10, v33);
    return (*(v32 + 56))(v30, 0, 1, v37);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        return (*(v32 + 56))(v33, 1, 1, v37);
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v39 = v5;
        v19 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004504F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[45] = a6;
  v7[46] = a7;
  v7[43] = a4;
  v7[44] = a5;
  v7[41] = a2;
  v7[42] = a3;
  v7[40] = a1;
  v8 = type metadata accessor for Fence.ID();
  v7[47] = v8;
  v9 = *(v8 - 8);
  v7[48] = v9;
  v10 = *(v9 + 64) + 15;
  v7[49] = swift_task_alloc();
  v11 = type metadata accessor for Fence.TriggerPosition();
  v7[50] = v11;
  v12 = *(v11 - 8);
  v7[51] = v12;
  v13 = *(v12 + 64) + 15;
  v7[52] = swift_task_alloc();
  v14 = type metadata accessor for Date();
  v7[53] = v14;
  v15 = *(v14 - 8);
  v7[54] = v15;
  v16 = *(v15 + 64) + 15;
  v7[55] = swift_task_alloc();
  v17 = type metadata accessor for Fence.MonitorRegion();
  v7[56] = v17;
  v18 = *(v17 - 8);
  v7[57] = v18;
  v19 = *(v18 + 64) + 15;
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v20 = type metadata accessor for Handle();
  v7[60] = v20;
  v21 = *(v20 - 8);
  v7[61] = v21;
  v22 = *(v21 + 64) + 15;
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v23 = type metadata accessor for Friend();
  v7[64] = v23;
  v24 = *(v23 - 8);
  v7[65] = v24;
  v25 = *(v24 + 64) + 15;
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v26 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v27 = type metadata accessor for PersonHandle();
  v7[70] = v27;
  v28 = *(v27 - 8);
  v7[71] = v28;
  v29 = *(v28 + 64) + 15;
  v7[72] = swift_task_alloc();

  return _swift_task_switch(sub_100450878, 0, 0);
}

uint64_t sub_100450878()
{
  v1 = v0[40];
  v2 = type metadata accessor for FenceNotification();
  v0[73] = v2;
  *(v1 + *(v2 + 20)) = 2;
  v3 = (v1 + *(v2 + 32));
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[74] = v5;
  *v5 = v0;
  v5[1] = sub_100450960;

  return daemon.getter();
}

uint64_t sub_100450960(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 592);
  v12 = *v1;
  *(v3 + 600) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 608) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009710(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009710(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100450B68;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100450B68(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 608);
  v6 = *v2;
  v4[77] = a1;
  v4[78] = v1;

  v7 = v3[75];
  if (v1)
  {
    v8 = v4[46];

    v9 = sub_100451F78;
  }

  else
  {

    v9 = sub_100450CEC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100450CEC()
{
  v1 = v0[42];
  v2 = Fence.others.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[71];
    sub_10002B3C0(0, v3, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v22 = *(v4 + 56);
    v23 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[72];
      v9 = v0[70];
      v23(v8, v6, v9);
      v10 = PersonHandle.id.getter();
      v12 = v11;
      (*v7)(v8, v9);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10002B3C0((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v6 += v22;
      --v3;
    }

    while (v3);

    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (_swiftEmptyArrayStorage[2])
    {
LABEL_7:
      v17 = _swiftEmptyArrayStorage[4];
      v16 = _swiftEmptyArrayStorage[5];

      goto LABEL_10;
    }
  }

  v17 = 0;
  v18 = 0xE000000000000000;
LABEL_10:
  v0[80] = v18;
  v0[79] = v17;

  v19 = swift_task_alloc();
  v0[81] = v19;
  *v19 = v0;
  v19[1] = sub_100450F14;
  v20 = v0[77];

  return sub_100008CC0();
}

uint64_t sub_100450F14(uint64_t a1)
{
  v2 = *(*v1 + 648);
  v4 = *v1;
  *(*v1 + 656) = a1;

  return _swift_task_switch(sub_100451040, 0, 0);
}

uint64_t sub_100451040()
{
  v1 = v0[82];
  v183 = *(v1 + 16);
  if (v183)
  {
    v2 = 0;
    v3 = v0[65];
    v186 = (v0[61] + 8);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
      }

      v4 = v0[80];
      v5 = v0[79];
      v6 = v0[63];
      v7 = v0[60];
      (*(v3 + 16))(v0[67], v0[82] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2, v0[64]);
      Friend.handle.getter();
      v8 = Handle.identifier.getter();
      v10 = v9;
      (*v186)(v6, v7);
      if (v8 == v5 && v10 == v4)
      {
        v17 = v0[82];

        goto LABEL_14;
      }

      v12 = v0[80];
      v13 = v0[79];
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        break;
      }

      ++v2;
      (*(v3 + 8))(v0[67], v0[64]);
      if (v183 == v2)
      {
        v15 = v0[82];
        goto LABEL_11;
      }
    }

    v18 = v0[82];
LABEL_14:

    (*(v0[65] + 32))(v0[69], v0[67], v0[64]);
    v16 = 0;
  }

  else
  {
LABEL_11:

    v16 = 1;
  }

  v19 = v0[69];
  v20 = v0[68];
  v21 = v0[65];
  v22 = v0[64];
  (*(v21 + 56))(v19, v16, 1, v22);
  sub_100455594(v19, v20);
  v23 = (*(v21 + 48))(v20, 1, v22);
  v24 = v0[69];
  v190 = v0;
  if (v23 == 1)
  {
    sub_100002CE0(v24, &qword_1005A9188, &unk_1004D80D0);
    v180 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v26 = v0[66];
    v27 = v0[65];
    v28 = v0[64];
    v29 = v0[62];
    v30 = v0[61];
    v31 = v0[60];
    (*(v27 + 32))(v26, v0[68], v28);
    Friend.handle.getter();
    v32 = Handle.serverIdentifier.getter();
    v34 = v33;
    (*(v30 + 8))(v29, v31);
    (*(v27 + 8))(v26, v28);
    sub_100002CE0(v24, &qword_1005A9188, &unk_1004D80D0);
    if (v34)
    {
      v35 = v32;
    }

    else
    {
      v35 = 0;
    }

    v180 = v35;
    v25 = 0xE000000000000000;
    if (v34)
    {
      v25 = v34;
    }
  }

  v187 = v25;
  v37 = v0[58];
  v36 = v0[59];
  v39 = v0[56];
  v38 = v0[57];
  v41 = v0[54];
  v40 = v0[55];
  v42 = v0[53];
  v43 = v190[42];
  Fence.region.getter();
  Fence.MonitorRegion.center.getter();
  v45 = v44;
  v47 = v46;
  v48 = *(v38 + 8);
  v48(v36, v39);
  Fence.region.getter();
  Fence.MonitorRegion.radius.getter();
  v50 = v49;
  v48(v37, v39);
  static Date.now.getter();
  v51 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v53 = [v51 initWithCoordinate:isa altitude:v45 horizontalAccuracy:v47 verticalAccuracy:0.0 timestamp:{v50, 0.0}];

  (*(v41 + 8))(v40, v42);
  v54 = objc_opt_self();
  v190[38] = 0;
  v55 = [v54 archivedDataWithRootObject:v53 requiringSecureCoding:1 error:v190 + 38];
  v56 = v190[38];
  if (v55)
  {
    v57 = v190[52];
    v59 = v190[50];
    v58 = v190[51];
    v60 = v190[44];
    v182 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v184 = v61;

    v62 = *(v58 + 16);
    v62(v57, v60, v59);
    v63 = (*(v58 + 88))(v57, v59);
    if (v63 == enum case for Fence.TriggerPosition.inside(_:) || v63 == enum case for Fence.TriggerPosition.outside(_:))
    {
      v64 = v190;
      v78 = v190[52];
      (*(v190[51] + 96))(v78, v190[50]);
      v79 = *v78;
      v190[39] = 0;
      v80 = v79;
      v81 = [v54 archivedDataWithRootObject:v80 requiringSecureCoding:1 error:v190 + 39];
      v82 = v190[39];
      if (v81)
      {
        v179 = v53;
        v172 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v176 = v80;
        v165 = v83;

        goto LABEL_30;
      }

      v127 = v82;
      v128 = v190[80];
      v129 = v53;
      v130 = v190[77];
      v131 = v190[51];
      v132 = v190[46];
      v133 = v190[44];
      v171 = v190[50];
      v175 = v190[43];
      v73 = v190;
      v134 = v190[42];
      v178 = v190[41];

      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_1000049D0(v182, v184);
      (*(v131 + 8))(v133, v171);
      v135 = type metadata accessor for Fence.TriggerID();
      (*(*(v135 - 8) + 8))(v175, v135);
      v136 = type metadata accessor for Fence();
      (*(*(v136 - 8) + 8))(v134, v136);
      v137 = type metadata accessor for LocalUserNotificationCategory();
      (*(*(v137 - 8) + 8))(v178, v137);
    }

    else
    {
      v179 = v53;
      if (v63 == enum case for Fence.TriggerPosition.undetermined(_:))
      {
        v64 = v190;
        (*(v190[51] + 8))(v190[52], v190[50]);
        v172 = 0;
        v176 = 0;
        v165 = 0xF000000000000000;
LABEL_30:
        v161 = v64[79];
        v163 = v64[80];
        v84 = v64[73];
        v85 = v64[48];
        v86 = v64[49];
        v87 = v64[47];
        v157 = v64[45];
        v159 = v64[46];
        v88 = v64[42];
        v155 = v64[43];
        v90 = v64[40];
        v89 = v64[41];
        Fence.id.getter();
        v91 = Fence.ID.uuidString.getter();
        v92 = v64;
        v94 = v93;
        (*(v85 + 8))(v86, v87);
        v95 = type metadata accessor for LocalUserNotificationCategory();
        v167 = *(v95 - 8);
        v169 = v95;
        (*(v167 + 16))(v90, v89);
        v96 = (v90 + v84[7]);
        *v96 = v91;
        v96[1] = v94;
        v97 = v84[6];

        Fence.TriggerID.uuid.getter();
        v98 = (v90 + v84[9]);
        *v98 = v157;
        v98[1] = v159;
        sub_10004B564(&qword_1005B1120, &qword_1004D3D60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004C0BB0;
        *(inited + 32) = 0x6E6F697461636F6CLL;
        *(inited + 40) = 0xEF64497472656C41;
        *(inited + 48) = v91;
        *(inited + 56) = v94;
        *(inited + 72) = &type metadata for String;
        strcpy((inited + 80), "friendHandle");
        *(inited + 93) = 0;
        *(inited + 94) = -5120;
        *(inited + 96) = v161;
        *(inited + 104) = v163;
        *(inited + 120) = &type metadata for String;
        strcpy((inited + 128), "friendServerId");
        *(inited + 143) = -18;
        *(inited + 144) = v180;
        *(inited + 152) = v187;
        *(inited + 168) = &type metadata for String;
        strcpy((inited + 176), "fenceLocation");
        *(inited + 216) = &type metadata for Data;
        *(inited + 190) = -4864;
        *(inited + 192) = v182;
        *(inited + 200) = v184;
        sub_100005F6C(v182, v184);
        v100 = sub_100207CD4(inited);
        swift_setDeallocating();
        sub_10004B564(&qword_1005A9E58, &qword_1004C33C0);
        swift_arrayDestroy();
        v101 = v165;
        if (v165 >> 60 == 15)
        {
          v102 = v172;
        }

        else
        {
          v92[33] = &type metadata for Data;
          v102 = v172;
          v92[30] = v172;
          v92[31] = v165;
          sub_10004B064(v92 + 15, v92 + 17);
          sub_100005F6C(v172, v165);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1004528F8(v92 + 17, 0xD000000000000014, 0x80000001004EA7F0, isUniquelyReferenced_nonNull_native);
        }

        v104 = v92[77];
        v151 = v92[73];
        v152 = v92[72];
        v153 = v92[69];
        v154 = v92[68];
        v156 = v92[67];
        v158 = v92[66];
        v160 = v92[63];
        v162 = v92[62];
        v164 = v92[59];
        v166 = v92[58];
        v173 = v92[55];
        v105 = v92[51];
        v181 = v92[52];
        v106 = v92[50];
        v188 = v92[49];
        v107 = v92[44];
        v108 = v190[43];
        v109 = v190[42];
        v149 = v190[41];
        v150 = v190[40];
        v110 = sub_10028EE90(v100);

        sub_10001A794(v102, v101);
        sub_1000049D0(v182, v184);

        (*(v105 + 8))(v107, v106);
        v111 = type metadata accessor for Fence.TriggerID();
        (*(*(v111 - 8) + 8))(v108, v111);
        v112 = type metadata accessor for Fence();
        (*(*(v112 - 8) + 8))(v109, v112);
        (*(v167 + 8))(v149, v169);
        *(v150 + *(v151 + 40)) = v110;

        v113 = v190[1];
        goto LABEL_37;
      }

      v73 = v190;
      v114 = v190[80];
      v115 = v190[77];
      v116 = v190[51];
      v117 = v190[50];
      v118 = v190[46];
      v119 = v190[44];
      v168 = v190[43];
      v170 = v190[42];
      v174 = v190[41];
      v177 = v190[52];

      v120 = type metadata accessor for Session.FenceError();
      sub_100009710(&qword_1005B0BB8, &type metadata accessor for Session.FenceError);
      swift_allocError();
      v122 = v121;
      v62(v121, v119, v117);
      (*(*(v120 - 8) + 104))(v122, enum case for Session.FenceError.unrecognizedTriggerPosition(_:), v120);
      swift_willThrow();

      sub_1000049D0(v182, v184);

      v123 = *(v116 + 8);
      v123(v119, v117);
      v124 = type metadata accessor for Fence.TriggerID();
      (*(*(v124 - 8) + 8))(v168, v124);
      v125 = type metadata accessor for Fence();
      (*(*(v125 - 8) + 8))(v170, v125);
      v126 = type metadata accessor for LocalUserNotificationCategory();
      (*(*(v126 - 8) + 8))(v174, v126);
      v123(v177, v117);
    }
  }

  else
  {
    v65 = v56;
    v66 = v190[80];
    v67 = v190[77];
    v68 = v190[50];
    v69 = v190[51];
    v70 = v190[46];
    v72 = v190[43];
    v71 = v190[44];
    v73 = v190;
    v74 = v190[42];
    v185 = v190[41];

    _convertNSErrorToError(_:)();

    swift_willThrow();

    (*(v69 + 8))(v71, v68);
    v75 = type metadata accessor for Fence.TriggerID();
    (*(*(v75 - 8) + 8))(v72, v75);
    v76 = type metadata accessor for Fence();
    (*(*(v76 - 8) + 8))(v74, v76);
    v77 = type metadata accessor for LocalUserNotificationCategory();
    (*(*(v77 - 8) + 8))(v185, v77);
  }

  v138 = v73[72];
  v139 = v73[69];
  v140 = v73[68];
  v141 = v73[67];
  v142 = v73[66];
  v144 = v73[62];
  v143 = v73[63];
  v146 = v73[58];
  v145 = v73[59];
  v147 = v73[55];
  v189 = v73[52];
  v191 = v73[49];

  v113 = v73[1];
LABEL_37:

  return v113();
}

uint64_t sub_100451F78()
{
  v1 = v0[43];
  v3 = v0[41];
  v2 = v0[42];
  (*(v0[51] + 8))(v0[44], v0[50]);
  v4 = type metadata accessor for Fence.TriggerID();
  (*(*(v4 - 8) + 8))(v1, v4);
  v5 = type metadata accessor for Fence();
  (*(*(v5 - 8) + 8))(v2, v5);
  v6 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v6 - 8) + 8))(v3, v6);
  v7 = v0[72];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  v13 = v0[62];
  v12 = v0[63];
  v15 = v0[58];
  v14 = v0[59];
  v16 = v0[55];
  v19 = v0[78];
  v20 = v0[52];
  v21 = v0[49];

  v17 = v0[1];

  return v17();
}

uint64_t type metadata accessor for FenceNotification()
{
  result = qword_1005B3C90;
  if (!qword_1005B3C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004521C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
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
      sub_100202528();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022BE4C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000110D8(a2, a3);
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
    v23 = v22[7] + 48 * v11;

    return sub_100053580(a1, v23);
  }

  else
  {
    sub_1002337D4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_100452308(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
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
      sub_1002026D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022C11C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000110D8(a2, a3);
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
    v23 = v22[7] + 48 * v11;

    return sub_100455810(a1, v23);
  }

  else
  {
    sub_100233830(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_100452450(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
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
      sub_100202888();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022C3EC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000110D8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  sub_100241518(v11, a2, a3, a1, v22);
}

uint64_t sub_1004525D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000110D8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_100202A1C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10022C6A4(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1000110D8(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_10023388C(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_100452778(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000110D8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100202BF8();
      goto LABEL_7;
    }

    sub_10022C9B4(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1000110D8(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Handle();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100233908(v12, a2, a3, a1, v18);
}

_OWORD *sub_1004528F8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
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
      sub_100203024();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022D0C4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000110D8(a2, a3);
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
    sub_100004984(v23);

    return sub_10004B064(a1, v23);
  }

  else
  {
    sub_1002339B8(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_100452A48(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000110D8(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_10020337C();
      result = v19;
      goto LABEL_8;
    }

    sub_10022D678(v16, a3 & 1);
    v20 = *v5;
    result = sub_1000110D8(a1, a2);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
  }

  else
  {
    sub_100233A24(result, a1, a2, v22, a4);
  }

  return result;
}

uint64_t sub_100452BC4(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(unint64_t, char *, uint64_t, uint64_t))
{
  v38 = a6;
  v39 = a7;
  v36 = a4;
  v37 = a5;
  v8 = v7;
  v12 = type metadata accessor for Handle();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_1001FD93C(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      v36();
      goto LABEL_7;
    }

    v37();
    v33 = *v8;
    v34 = sub_1001FD93C(a2);
    if ((v23 & 1) == (v35 & 1))
    {
      v19 = v34;
      v25 = *v8;
      if (v23)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v16, a2, v12);
      return v39(v19, v16, a1, v25);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v25 = *v8;
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = *(v25 + 56);
  v27 = v38(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 40);
  v30 = v27;
  v31 = v26 + *(v28 + 72) * v19;

  return v29(v31, a1, v30);
}

unint64_t sub_100452DF4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000110D8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_100203520();
      result = v19;
      goto LABEL_8;
    }

    sub_10022DDE8(v16, a4 & 1);
    v20 = *v5;
    result = sub_1000110D8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
  }

  else
  {
    sub_100233A98(result, a2, a3, a1 & 1, v22);
  }

  return result;
}

unint64_t sub_100452F28(__int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000110D8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_100203AB0();
      result = v19;
      goto LABEL_8;
    }

    sub_10022E428(v16, a4 & 1);
    v20 = *v5;
    result = sub_1000110D8(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 2 * result) = a1;
  }

  else
  {
    sub_100233AE0(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_100453058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1000110D8(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_100203C18();
      v15 = v23;
      goto LABEL_8;
    }

    sub_10022E6E0(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_1000110D8(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v29 = v27[1];
    v28 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
  }

  else
  {
    sub_100233B28(v15, a4, a5, a1, a2, a3, v26);
  }
}

void sub_1004531CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000110D8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_100203DB0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10022E9B8(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1000110D8(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * v13;
    v26 = *v25;
    *v25 = a1;
    v27 = *(v25 + 8);
    *(v25 + 8) = a2;

    sub_100139360(v26, v27);
  }

  else
  {
    sub_100233B7C(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_100453364(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1001FDA54(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100203F50();
      goto LABEL_7;
    }

    sub_10022EC9C(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_1001FDA54(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(sub_10004B564(&qword_1005AAC60, &qword_1004C46E8) - 8) + 72) * v12;

    return sub_1004557A0(a1, v20);
  }

LABEL_13:
  sub_100233BD0(v12, a2, a3, a1, v18);

  return sub_100005F6C(a2, a3);
}

uint64_t sub_1004534D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000110D8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SecureLocationsSubscription();
      return sub_1004556D0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SecureLocationsSubscription);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1002041B8();
    goto LABEL_7;
  }

  sub_10022F01C(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1000110D8(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100233C8C(v12, a2, a3, a1, v18);
}

uint64_t sub_100453644(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Destination();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1001FDA80(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100204410();
      goto LABEL_7;
    }

    sub_10022F398(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1001FDA80(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100233CB8(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_100453810(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000110D8(a2, a3);
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
      sub_1002045A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10022FA14(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000110D8(a2, a3);
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
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_100241518(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_100453958(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Friend();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1001FDC28(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100204710();
      goto LABEL_7;
    }

    sub_10022FCBC(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1001FDC28(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100233D18(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for FriendshipAction();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_100453B5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000110D8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for FenceRecord();
      return sub_1004556D0(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for FenceRecord);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100204774();
    goto LABEL_7;
  }

  sub_100230540(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1000110D8(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100233D44(v12, a2, a3, a1, v18);
}

void *sub_100453CC8(const void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1001FD868(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1002049CC();
      goto LABEL_7;
    }

    sub_10023057C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1001FD868(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100233E1C(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 584 * v15;

  return sub_100455604(a1, v22);
}

uint64_t sub_100453ED8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1000110D8(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_1000110D8(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_100454044(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1001FD868(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100204DE0();
      goto LABEL_7;
    }

    sub_100231058(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1001FD868(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100233EE4(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_100454254(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1001FD868(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100204E04();
      goto LABEL_7;
    }

    sub_10023107C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1001FD868(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100233EF8(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 40 * v15);
  sub_100004984(v22);

  return sub_100010BD4(a1, v22);
}

uint64_t sub_100454430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v32 = a1;
  v33 = a2;
  Priority = type metadata accessor for LocatePriority();
  v11 = *(Priority - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(Priority);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_1001FDF60(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_10020508C();
      goto LABEL_9;
    }

    sub_100231460(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_1001FDF60(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v33;
  v27 = *v6;
  if (v21)
  {
    v28 = (v27[7] + 24 * v17);
    v29 = *v28;
    v30 = v28[1];
    *v28 = v32;
    v28[1] = v26;
    v28[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v14, a4, Priority);
    return sub_100233FBC(v17, v14, v32, v26, a3, v27);
  }
}

uint64_t sub_100454624(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ClientID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1001FDB54(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1002055D4();
      goto LABEL_7;
    }

    sub_100231C50(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1001FDB54(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100234090(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_100454828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v33 = a1;
  v34 = a2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_1001FD868(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      sub_10020596C();
      goto LABEL_9;
    }

    sub_1002320F8(v20, a5 & 1);
    v23 = *v6;
    v24 = sub_1001FD868(a4);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v34;
  v27 = *v6;
  if (v21)
  {
    v28 = (v27[7] + 24 * v17);
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    *v28 = v33;
    v28[1] = v26;
    v28[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    return sub_1002341BC(v17, v14, v33, v26, a3, v27);
  }
}

uint64_t sub_100454A28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Handle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1001FD93C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100205330();
      goto LABEL_7;
    }

    sub_100231874(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1001FD93C(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100234290(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_100454C34(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, char *, uint64_t, uint64_t))
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v7 = v6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = sub_1001FD868(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v33();
      goto LABEL_9;
    }

    v34();
    v24 = *v7;
    v25 = sub_1001FD868(a2);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = a1;
  v28 = *v7;
  if (v22)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v18);
    *(v29 + 8 * v18) = v27;
  }

  else
  {
    (*(v12 + 16))(v15, a2, v11);
    return v35(v18, v15, v27, v28);
  }
}

uint64_t sub_100454E24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1001FD868(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1002063A8();
      goto LABEL_7;
    }

    sub_10023304C(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1001FD868(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100234420(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_100455034(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1001FD868(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1002063CC();
      goto LABEL_7;
    }

    sub_100233514(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1001FD868(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100234434(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_100455244(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1001FD868(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1002063F0();
      goto LABEL_7;
    }

    sub_100233538(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1001FD868(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_100234448(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

_OWORD *sub_100455454(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1001FE034(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100206760();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10023355C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1001FE034(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_100011D18();
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_100004984(v20);

    return sub_10004B064(a1, v20);
  }

  else
  {
    sub_100234564(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_100455594(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100455660(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004556D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100455738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004557A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LocationSharingReminderNotification()
{
  result = qword_1005B3D38;
  if (!qword_1005B3D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100455908()
{
  type metadata accessor for LocalUserNotificationCategory();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_10044FDB8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1004559B4(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 80) = a1;
  v3 = type metadata accessor for Destination.DestinationType();
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  type metadata accessor for DaemonActor();
  *(v2 + 64) = static DaemonActor.shared.getter();
  sub_10034109C();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100455AE0, v7, v6);
}

uint64_t sub_100455AE0()
{
  v1 = *(v0 + 64);

  v2 = qword_1005B5D40;
  if (qword_1005B5D40)
  {
    v3 = qword_1005B5D40;
  }

  else
  {
    v4 = [objc_allocWithZone(CNContactStore) init];
    v5 = qword_1005B5D40;
    qword_1005B5D40 = v4;
    v3 = v4;

    v2 = 0;
  }

  *(v0 + 72) = v3;
  v6 = v2;

  return _swift_task_switch(sub_100455BCC, 0, 0);
}

uint64_t sub_100455BCC()
{
  v83 = v0;
  v1 = v0;
  v3 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  Destination.type.getter();
  v6 = (*(v3 + 88))(v2, v5);
  if (v6 == enum case for Destination.DestinationType.email(_:))
  {
    v7 = *(v0 + 4);
    Destination.destination.getter();
    v8._countAndFlagsBits = 0x3A6F746C69616DLL;
    v8._object = 0xE700000000000000;
    v9 = String.deletingPrefix(_:)(v8);
    countAndFlagsBits = v9._countAndFlagsBits;

    v11 = objc_opt_self();
    object = v9._object;
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 predicateForContactsMatchingEmailAddress:v12];
  }

  else
  {
    if (v6 != enum case for Destination.DestinationType.phoneNumber(_:))
    {
      if (qword_1005A8590 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_10000A6F0(v59, qword_1005E0CC8);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "Unexpected destination type!", v62, 2u);
      }

      v64 = *(v0 + 6);
      v63 = *(v0 + 7);
      v65 = *(v0 + 5);

      (*(v64 + 8))(v63, v65);
      countAndFlagsBits = 0;
      i = 0xE000000000000000;
      goto LABEL_38;
    }

    v14 = *(v0 + 4);
    Destination.destination.getter();
    v15._countAndFlagsBits = 980182388;
    v15._object = 0xE400000000000000;
    v16 = String.deletingPrefix(_:)(v15);
    countAndFlagsBits = v16._countAndFlagsBits;

    v17 = objc_opt_self();
    v18 = objc_allocWithZone(CNPhoneNumber);
    object = v16._object;
    v19 = String._bridgeToObjectiveC()();
    v12 = [v18 initWithStringValue:v19];

    v13 = [v17 predicateForContactsMatchingPhoneNumber:v12];
  }

  v20 = *(v0 + 9);
  v21 = v13;

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 descriptorForRequiredKeysForStyle:0];
  sub_10004B564(&qword_1005AF250, &qword_1004D0478);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004D02F0;
  *(v25 + 32) = v24;
  swift_unknownObjectRetain();
  sub_10004B564(&unk_1005B3D80, &qword_1004D62F8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v1 + 2) = 0;
  v27 = [v20 unifiedContactsMatchingPredicate:v23 keysToFetch:isa error:v1 + 16];

  v28 = *(v1 + 2);
  if (v27)
  {
    v77 = v23;
    sub_1003410F4();
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v28;

    v81 = v29;
    if (v29 >> 62)
    {
      goto LABEL_36;
    }

    v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = object; v31; i = object)
    {
      object = i;
      v80 = v1;
      v75 = countAndFlagsBits;
      countAndFlagsBits = 0;
      v33 = v81 & 0xC000000000000001;
      while (1)
      {
        if (v33)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (countAndFlagsBits >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v34 = *(v81 + 8 * countAndFlagsBits + 32);
        }

        v35 = v34;
        v36 = countAndFlagsBits + 1;
        if (__OFADD__(countAndFlagsBits, 1))
        {
          break;
        }

        if (v80[80] == 1)
        {
          v37 = [v34 givenName];
          v38 = v31;
          v39 = v33;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1 = v22;
          v42 = v41;

          v43 = HIBYTE(v42) & 0xF;
          v44 = v40 & 0xFFFFFFFFFFFFLL;
          v33 = v39;
          v31 = v38;
          v45 = (v42 & 0x2000000000000000) == 0;
          v22 = v1;
          if (v45)
          {
            v43 = v44;
          }

          if (v43)
          {
            v1 = v80;
            v69 = *(v80 + 9);

            v70 = [v35 givenName];
            countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
            i = v71;

            swift_unknownObjectRelease();
            goto LABEL_38;
          }
        }

        v46 = [v22 stringFromContact:v35 style:0];
        if (v46)
        {
          v66 = v46;
          v1 = v80;
          v67 = *(v80 + 9);

          countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          i = v68;

          swift_unknownObjectRelease();
          goto LABEL_38;
        }

        ++countAndFlagsBits;
        if (v36 == v31)
        {
          v1 = v80;

          swift_unknownObjectRelease();
          i = object;
          countAndFlagsBits = v75;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v47 = v28;
    v48 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A8590 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000A6F0(v49, qword_1005E0CC8);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v1 + 9);
    if (v52)
    {
      v78 = v23;
      v54 = swift_slowAlloc();
      v76 = countAndFlagsBits;
      v55 = swift_slowAlloc();
      v82 = v55;
      *v54 = 136315138;
      *(v1 + 3) = v48;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v56 = String.init<A>(describing:)();
      v58 = sub_10000D01C(v56, v57, &v82);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Error matching contacts: %s", v54, 0xCu);
      sub_100004984(v55);
      countAndFlagsBits = v76;

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    i = object;
  }

LABEL_38:
  v72 = *(v1 + 7);

  v73 = *(v1 + 1);

  return v73(countAndFlagsBits, i);
}

uint64_t sub_1004563C8()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for HandleType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  v12 = type metadata accessor for RedStripeNotification();
  v13 = (v0 + *(v12 + 28));
  v15 = *v13;
  v14 = v13[1];
  *(inited + 32) = v15;
  *(inited + 40) = v14;
  v16 = *(v12 + 32);

  Friend.type.getter();
  v17 = (*(v7 + 88))(v10, v6);
  if (v17 == enum case for HandleType.follower(_:) || v17 == enum case for HandleType.following(_:) || (v17 != enum case for HandleType.futureFollower(_:) ? (v20 = v17 == enum case for HandleType.futureFollowing(_:)) : (v20 = 1), !v20 ? (v21 = v17 == enum case for HandleType.pendingOffer(_:)) : (v21 = 1), v21))
  {
    (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.redStripe(_:), v1);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v2 + 8))(v5, v1);
    sub_10025854C(inited);
    swift_setDeallocating();
    sub_10007C2B8(inited + 32);
    v18 = String.init(format:arguments:)();
  }

  else
  {

    if (qword_1005A8590 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005E0CC8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unexpected friend type!", v25, 2u);
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  return v18;
}

uint64_t sub_100456778()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for HandleType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  v12 = type metadata accessor for RedStripeNotification();
  v13 = (v0 + *(v12 + 28));
  v15 = *v13;
  v14 = v13[1];
  *(inited + 32) = v15;
  *(inited + 40) = v14;
  v16 = *(v12 + 32);

  Friend.type.getter();
  v17 = (*(v7 + 88))(v10, v6);
  if (v17 == enum case for HandleType.follower(_:) || v17 == enum case for HandleType.following(_:) || (v17 != enum case for HandleType.futureFollower(_:) ? (v20 = v17 == enum case for HandleType.futureFollowing(_:)) : (v20 = 1), !v20 ? (v21 = v17 == enum case for HandleType.pendingOffer(_:)) : (v21 = 1), v21))
  {
    (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.redStripe(_:), v1);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v2 + 8))(v5, v1);
    sub_10025854C(inited);
    swift_setDeallocating();
    sub_10007C2B8(inited + 32);
    v18 = String.init(format:arguments:)();
  }

  else
  {

    if (qword_1005A8590 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005E0CC8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unexpected friend type!", v25, 2u);
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  return v18;
}

uint64_t type metadata accessor for RedStripeNotification()
{
  result = qword_1005B3DE8;
  if (!qword_1005B3DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100456B9C()
{
  result = type metadata accessor for LocalUserNotificationCategory();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Friend();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100456C60(void *a1, int a2)
{
  v35 = a2;
  v3 = sub_10004B564(&qword_1005B3E90, &qword_1004D8F88);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  __chkstk_darwin(v3);
  v32 = &v26 - v5;
  v6 = sub_10004B564(&qword_1005B3E98, &qword_1004D8F90);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v29 = &v26 - v8;
  v9 = sub_10004B564(&qword_1005B3EA0, &qword_1004D8F98);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = sub_10004B564(&qword_1005B3EA8, &qword_1004D8FA0);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = sub_10004B564(&qword_1005B3EB0, &qword_1004D8FA8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100457BC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_100457C6C();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_100457C18();
      v12 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_100457CC0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_100457D14();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_10045709C()
{
  v1 = 0x656C706F6570;
  v2 = 0x736D657469;
  if (*v0 != 2)
  {
    v2 = 0x797465666173;
  }

  if (*v0)
  {
    v1 = 0x73656369766564;
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

uint64_t sub_10045710C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10045742C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100457134(uint64_t a1)
{
  v2 = sub_100457BC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100457170(uint64_t a1)
{
  v2 = sub_100457BC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004571AC(uint64_t a1)
{
  v2 = sub_100457CC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004571E8(uint64_t a1)
{
  v2 = sub_100457CC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100457224(uint64_t a1)
{
  v2 = sub_100457C6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100457260(uint64_t a1)
{
  v2 = sub_100457C6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10045729C(uint64_t a1)
{
  v2 = sub_100457D14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004572D8(uint64_t a1)
{
  v2 = sub_100457D14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100457314(uint64_t a1)
{
  v2 = sub_100457C18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100457350(uint64_t a1)
{
  v2 = sub_100457C18();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10045738C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100457584(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1004573D8()
{
  result = qword_1005B3E30;
  if (!qword_1005B3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E30);
  }

  return result;
}

uint64_t sub_10045742C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C706F6570 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x797465666173 && a2 == 0xE600000000000000)
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

void *sub_100457584(uint64_t *a1)
{
  v46 = sub_10004B564(&qword_1005B3E38, &qword_1004D8F58);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  __chkstk_darwin(v46);
  v49 = &v38 - v3;
  v47 = sub_10004B564(&qword_1005B3E40, &qword_1004D8F60);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v47);
  v48 = &v38 - v5;
  v6 = sub_10004B564(&qword_1005B3E48, &qword_1004D8F68);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = sub_10004B564(&qword_1005B3E50, &qword_1004D8F70);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_10004B564(&qword_1005B3E58, &qword_1004D8F78);
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  sub_100011AEC(a1, v20);
  sub_100457BC4();
  v21 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_10046AF6C();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_100457CC0();
        v36 = v40;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_100457D14();
        v29 = v40;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          sub_100004984(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_100457C6C();
      v35 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_100457C18();
      v37 = v40;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = type metadata accessor for DecodingError();
  swift_allocError();
  v15 = v31;
  v32 = *(sub_10004B564(&qword_1005B3E68, &qword_1004D8F80) + 48);
  *v15 = &type metadata for UserNotificationDestination;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v30 - 8) + 104))(v15, enum case for DecodingError.typeMismatch(_:), v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_100004984(v51);
  return v15;
}

unint64_t sub_100457BC4()
{
  result = qword_1005B3E60;
  if (!qword_1005B3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E60);
  }

  return result;
}

unint64_t sub_100457C18()
{
  result = qword_1005B3E70;
  if (!qword_1005B3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E70);
  }

  return result;
}

unint64_t sub_100457C6C()
{
  result = qword_1005B3E78;
  if (!qword_1005B3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E78);
  }

  return result;
}

unint64_t sub_100457CC0()
{
  result = qword_1005B3E80;
  if (!qword_1005B3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E80);
  }

  return result;
}

unint64_t sub_100457D14()
{
  result = qword_1005B3E88;
  if (!qword_1005B3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3E88);
  }

  return result;
}

unint64_t sub_100457DBC()
{
  result = qword_1005B3EB8;
  if (!qword_1005B3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EB8);
  }

  return result;
}

unint64_t sub_100457E14()
{
  result = qword_1005B3EC0;
  if (!qword_1005B3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EC0);
  }

  return result;
}

unint64_t sub_100457E6C()
{
  result = qword_1005B3EC8;
  if (!qword_1005B3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EC8);
  }

  return result;
}

unint64_t sub_100457EC4()
{
  result = qword_1005B3ED0;
  if (!qword_1005B3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3ED0);
  }

  return result;
}

unint64_t sub_100457F1C()
{
  result = qword_1005B3ED8;
  if (!qword_1005B3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3ED8);
  }

  return result;
}

unint64_t sub_100457F74()
{
  result = qword_1005B3EE0;
  if (!qword_1005B3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EE0);
  }

  return result;
}

unint64_t sub_100457FCC()
{
  result = qword_1005B3EE8;
  if (!qword_1005B3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EE8);
  }

  return result;
}

unint64_t sub_100458024()
{
  result = qword_1005B3EF0;
  if (!qword_1005B3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EF0);
  }

  return result;
}

unint64_t sub_10045807C()
{
  result = qword_1005B3EF8;
  if (!qword_1005B3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3EF8);
  }

  return result;
}

unint64_t sub_1004580D4()
{
  result = qword_1005B3F00;
  if (!qword_1005B3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3F00);
  }

  return result;
}

unint64_t sub_10045812C()
{
  result = qword_1005B3F08;
  if (!qword_1005B3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3F08);
  }

  return result;
}

uint64_t sub_100458184()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0CC8);
  sub_10000A6F0(v0, qword_1005E0CC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100458204()
{
  type metadata accessor for UserNotificationPublisher();
  result = swift_initStaticObject();
  qword_1005E0CE0 = result;
  return result;
}

uint64_t sub_100458230(id *a1, void *a2)
{
  v4 = type metadata accessor for LocalUserNotificationCategory();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a1;
  v12 = [v38 request];
  v13 = [v12 identifier];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = a2[3];
  v18 = a2[4];
  sub_100011AEC(a2, v17);
  (*(v18 + 16))(v17, v18);
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v8 + 8))(v11, v7);
  if (v14 == v19 && v16 == v21)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = 0;
    if ((v23 & 1) == 0)
    {
      return v24 & 1;
    }
  }

  v25 = [v38 request];
  v26 = [v25 content];

  v27 = [v26 categoryIdentifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = a2[3];
  v32 = a2[4];
  sub_100011AEC(a2, v31);
  v33 = v39;
  (*(v32 + 8))(v31, v32);
  v34 = LocalUserNotificationCategory.rawValue.getter();
  v36 = v35;
  (*(v40 + 8))(v33, v41);
  if (v28 == v34 && v30 == v36)
  {
    v24 = 1;
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v24 & 1;
}

uint64_t sub_1004585BC()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100458618(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for UserNotificationService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1004586C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for UserNotificationService();
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100458784(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for UserNotificationService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10045882C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for UserNotificationService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1004588D4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for UserNotificationService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_10045897C()
{
  v1 = *v0;
  type metadata accessor for UserNotificationService();
  sub_100458A38(&qword_1005AD530);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100458A38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserNotificationService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100458ABC(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v9 = v5;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  sub_10004B564(a2, a3);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 24) = a1;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v18 = *(v9 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v9 + 144);
  *(v9 + 144) = 0x8000000000000000;
  a4(v17, a5, isUniquelyReferenced_nonNull_native);
  *(v9 + 144) = v31;
  swift_endAccess();
  if (qword_1005A8110 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000A6F0(v20, qword_1005B15F0);
  (*(v13 + 16))(v16, a5, v12);
  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v23 = 136446466;
    sub_10045E3E4(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v13 + 8))(v16, v12);
    v27 = sub_10000D01C(v24, v26, v32);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    swift_getObjectType();
    v28 = _typeName(_:qualified:)();
    v30 = sub_10000D01C(v28, v29, v32);

    *(v23 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Added client: %{public}s, of type: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_100458E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_100458ED0, a3, 0);
}

uint64_t sub_100458ED0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_100430004(v1, &unk_1004D9688, v5);
  sub_100002CE0(v1, &qword_1005A9690, &qword_1004C2A00);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100458FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for UUID();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1004590D4;

  return daemon.getter();
}

uint64_t sub_1004590D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v9 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  *v6 = v12;
  v6[1] = sub_1004592C4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004592C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1004594F0;
    v8 = 0;
  }

  else
  {
    v9 = v4[7];

    v4[10] = a1;
    v4[11] = sub_10045E3E4(&qword_1005B4178, v10, type metadata accessor for SecureLocationService);
    v7 = sub_100459438;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100459438()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  sub_100458ABC(v0[11], &qword_1005B41F0, &qword_1004D9690, sub_100454BF4, v2);
  (*(v3 + 8))(v2, v5);

  return _swift_task_switch(sub_10005921C, 0, 0);
}

uint64_t sub_1004594F0()
{
  v1 = v0[7];

  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005B4088);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to subscribe to IDS service: %@", v8, 0xCu);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004596A8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for SystemVersionNumber();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100459774, v2, 0);
}

uint64_t sub_100459774()
{
  v33 = v0;
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005B4088);
  v8 = *(v4 + 16);
  v8(v2, v6, v3);
  v8(v1, v5, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[6];
  v12 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  if (v11)
  {
    v31 = v10;
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v16 = 136315394;
    sub_10045E3E4(&qword_1005B02E0, 255, &type metadata accessor for SystemVersionNumber);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_10000D01C(v17, v19, &v32);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_10000D01C(v22, v24, &v32);

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v9, v31, "STUB: migrate from %s to %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v28 = v0[6];
  v27 = v0[7];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100459A60()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100459AC4(uint64_t a1, uint64_t a2)
{
  result = sub_10045E3E4(&qword_1005B4178, a2, type metadata accessor for SecureLocationService);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100459B20()
{
  result = qword_1005B4180;
  if (!qword_1005B4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B4180);
  }

  return result;
}

uint64_t sub_100459B74(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SecureLocationService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100459C1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1004596A8(a1, a2);
}

uint64_t sub_100459CC0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SecureLocationService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100459D68(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for SecureLocationService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_100459E30(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_10045E3E4(&qword_1005B41D0, a2, type metadata accessor for SecureLocationService);
  v4 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_100459F38;
  v6 = *(v2 + 16);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100459F38()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 16);

    return _swift_task_switch(sub_10004B074, v6, 0);
  }
}

uint64_t sub_10045A06C()
{
  v1 = *v0;
  type metadata accessor for SecureLocationService();
  sub_10045E3E4(&qword_1005AD528, v2, type metadata accessor for SecureLocationService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10045A0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v4[8] = *(v7 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10045A1E4, v3, 0);
}

uint64_t sub_10045A1E4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v20 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  v9 = type metadata accessor for Account();
  (*(*(v9 - 8) + 16))(v2, v8, v9);
  v10 = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 16))(v2 + v11, v7, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Destination();
  (*(*(v14 - 8) + 16))(v2 + v13, v6, v14);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_10046B228(v2, v1, type metadata accessor for SecureLocationsRelayedMessage);
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_10046B040(v1, v17 + v16, type metadata accessor for SecureLocationsRelayedMessage);
  sub_1001D7F30(0, 0, v4, &unk_1004D96E8, v17);

  sub_10046AFA0(v2, type metadata accessor for SecureLocationsRelayedMessage);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10045A458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v6[16] = v8;
  v9 = *(v8 - 8);
  v6[17] = v9;
  v6[18] = *(v9 + 64);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v10 = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
  v6[21] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v12 = type metadata accessor for RemoveSecureLocationsKeyEnvelope(0);
  v6[23] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  updated = type metadata accessor for SecureLocationsKeyUpdateAckEnvelope(0);
  v6[25] = updated;
  v15 = *(*(updated - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v6[27] = v16;
  v17 = *(v16 - 8);
  v6[28] = v17;
  v18 = *(v17 + 64) + 15;
  v6[29] = swift_task_alloc();
  v19 = type metadata accessor for DispatchQoS();
  v6[30] = v19;
  v20 = *(v19 - 8);
  v6[31] = v20;
  v21 = *(v20 + 64) + 15;
  v6[32] = swift_task_alloc();
  v22 = type metadata accessor for HashedAdvertisement();
  v6[33] = v22;
  v23 = *(v22 - 8);
  v6[34] = v23;
  v6[35] = *(v23 + 64);
  v6[36] = swift_task_alloc();
  v24 = type metadata accessor for PrivateKey();
  v6[37] = v24;
  v25 = *(v24 - 8);
  v6[38] = v25;
  v6[39] = *(v25 + 64);
  v6[40] = swift_task_alloc();
  v26 = type metadata accessor for UUID();
  v6[41] = v26;
  v27 = *(v26 - 8);
  v6[42] = v27;
  v6[43] = *(v27 + 64);
  v6[44] = swift_task_alloc();
  v28 = type metadata accessor for MessageContext();
  v6[45] = v28;
  v29 = *(v28 - 8);
  v6[46] = v29;
  v6[47] = *(v29 + 64);
  v6[48] = swift_task_alloc();
  v30 = type metadata accessor for SecureLocationsKeyUpdateEnvelope(0);
  v6[49] = v30;
  v31 = *(*(v30 - 8) + 64) + 15;
  v6[50] = swift_task_alloc();
  v32 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v6[51] = v32;
  v33 = *(v32 - 8);
  v6[52] = v33;
  v34 = *(v33 + 64) + 15;
  v6[53] = swift_task_alloc();
  v35 = sub_10004B564(&qword_1005AAC70, &qword_1004D96D0);
  v6[54] = v35;
  v36 = *(v35 - 8);
  v6[55] = v36;
  v37 = *(v36 + 64) + 15;
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_10045A974, v5, 0);
}

uint64_t sub_10045A974()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 88);
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10001DF0C(&qword_1005B4200, &qword_1005AB918, &unk_1004C5800);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v7;
  v9 = *(v0 + 472);
  v10 = *(v0 + 432);
  v11 = type metadata accessor for PropertyListDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10001DF0C(&qword_1005B4208, &qword_1005AAC70, &qword_1004D96D0);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v27 = *(v0 + 472);
  v26 = *(v0 + 480);
  v28 = *(v0 + 432);
  v29 = *(v0 + 440);
  v50 = *(v0 + 408);
  v30 = *(v0 + 88);

  sub_1000049D0(v6, v8);

  (*(v29 + 32))(v26, v27, v28);
  Message.type.getter();
  v31 = *(v0 + 660);
  v32 = Message.version.getter();
  if (v31)
  {
    if (v31 == 1)
    {
      if (v32 == 1)
      {
        v33 = async function pointer to daemon.getter[1];
        v34 = swift_task_alloc();
        *(v0 + 544) = v34;
        *v34 = v0;
        v35 = sub_10045BDFC;
LABEL_13:
        v34[1] = v35;

        return daemon.getter();
      }
    }

    else if (v32 == 1)
    {
      v37 = async function pointer to daemon.getter[1];
      v34 = swift_task_alloc();
      *(v0 + 600) = v34;
      *v34 = v0;
      v35 = sub_10045C6F8;
      goto LABEL_13;
    }
  }

  else if (v32 == 1)
  {
    v36 = async function pointer to daemon.getter[1];
    v34 = swift_task_alloc();
    *(v0 + 488) = v34;
    *v34 = v0;
    v35 = sub_10045B14C;
    goto LABEL_13;
  }

  v38 = *(v0 + 480);
  v39 = *(v0 + 432);
  v40 = *(v0 + 440);
  sub_10046B7A8(*(v0 + 88));
  (*(v40 + 8))(v38, v39);
  v15 = *(v0 + 472);
  v14 = *(v0 + 480);
  v17 = *(v0 + 456);
  v16 = *(v0 + 464);
  v18 = *(v0 + 448);
  v19 = *(v0 + 424);
  v20 = *(v0 + 400);
  v21 = *(v0 + 384);
  v22 = *(v0 + 352);
  v23 = *(v0 + 320);
  v41 = *(v0 + 288);
  v42 = *(v0 + 256);
  v43 = *(v0 + 232);
  v44 = *(v0 + 208);
  v45 = *(v0 + 192);
  v46 = *(v0 + 176);
  v47 = *(v0 + 160);
  v48 = *(v0 + 152);
  v49 = *(v0 + 120);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10045B14C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 488);
  v12 = *v1;
  *(v3 + 496) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 504) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10045E3E4(&qword_1005A9308, 255, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_10045B330;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10045B330(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  v4[64] = a1;
  v4[65] = v1;

  if (v1)
  {
    v7 = v4[14];

    return _swift_task_switch(sub_10045CFEC, v7, 0);
  }

  else
  {
    v8 = v4[62];

    v9 = swift_task_alloc();
    v4[66] = v9;
    *v9 = v6;
    v9[1] = sub_10045B4BC;

    return sub_10001CC28();
  }
}

uint64_t sub_10045B4BC(uint64_t a1)
{
  v2 = *(*v1 + 528);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 536) = a1;

  return _swift_task_switch(sub_10045B5D4, v3, 0);
}

uint64_t sub_10045B5D4()
{
  v105 = v0;
  v1 = v0[65];
  v2 = v0[60];
  v3 = v0[54];
  v5 = v0[49];
  v4 = v0[50];
  sub_10045E3E4(&qword_1005AAC80, 255, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
  sub_10045E3E4(&qword_1005AAC88, 255, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
  Message.extract<A>()();
  if (v1)
  {
    v6 = v0[67];
    v7 = v0[64];

    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v8 = v0[60];
    v9 = v0[58];
    v10 = v0[54];
    v11 = v0[55];
    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005B4088);
    (*(v11 + 16))(v9, v8, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[60];
    v17 = v0[58];
    v18 = v0[54];
    v19 = v0[55];
    if (v15)
    {
      v20 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v104 = v96;
      *v20 = 136315138;
      sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v16;
      v23 = v22;
      v24 = *(v19 + 8);
      v24(v17, v18);
      v25 = sub_10000D01C(v21, v23, &v104);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to decode SecureLocationsKeyUpdateEnvelope from %s", v20, 0xCu);
      sub_100004984(v96);

      v24(v99, v18);
    }

    else
    {

      v49 = *(v19 + 8);
      v49(v17, v18);
      v49(v16, v18);
    }
  }

  else
  {
    v102 = v0[67];
    v86 = v0[64];
    v88 = v0[55];
    v90 = v0[54];
    v92 = v0[60];
    v26 = v0[49];
    v82 = v0[50];
    v27 = v0[48];
    v28 = v0[45];
    v29 = v0[46];
    v30 = v0[44];
    v66 = v27;
    v67 = v30;
    v70 = v0[43];
    v71 = v0[47];
    v32 = v0[41];
    v31 = v0[42];
    v64 = v28;
    v65 = v32;
    v33 = v0[40];
    v72 = v0[39];
    v35 = v0[37];
    v34 = v0[38];
    v68 = v35;
    v69 = v33;
    v100 = v0[36];
    v73 = v0[35];
    v94 = v0[34];
    v97 = v0[33];
    v77 = v0[32];
    v84 = v0[31];
    v36 = (v82 + v26[5]);
    v76 = *(v82 + v26[6]);
    v74 = v36[1];
    v75 = *v36;
    v37 = v26[7];
    v62 = v26[8];
    v83 = v0[30];
    v78 = v0[29];
    v79 = v0[27];
    v38 = v0[13];
    v80 = *(v102 + 88);
    v81 = v0[28];
    (*(v29 + 16))();
    (*(v31 + 16))(v30, v82, v32);
    v63 = v34;
    (*(v34 + 16))(v33, v82 + v37, v35);
    (*(v94 + 16))(v100, v82 + v62, v97);
    v39 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v40 = (v71 + *(v31 + 80) + v39) & ~*(v31 + 80);
    v41 = (v70 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
    v43 = (*(v34 + 80) + v42 + 8) & ~*(v34 + 80);
    v44 = (v72 + *(v94 + 80) + v43) & ~*(v94 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v102;
    (*(v29 + 32))(v45 + v39, v66, v64);
    (*(v31 + 32))(v45 + v40, v67, v65);
    v46 = (v45 + v41);
    *v46 = v75;
    v46[1] = v74;
    *(v45 + v42) = v76;
    (*(v63 + 32))(v45 + v43, v69, v68);
    (*(v94 + 32))(v45 + v44, v100, v97);
    v0[6] = sub_10046BD8C;
    v0[7] = v45;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100020828;
    v0[5] = &unk_10059C900;
    v47 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_10045E3E4(&unk_1005ABAC0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);

    (*(v81 + 8))(v78, v79);
    (*(v84 + 8))(v77, v83);
    (*(v88 + 8))(v92, v90);

    v48 = v0[7];

    sub_10046AFA0(v82, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
  }

  v51 = v0[59];
  v50 = v0[60];
  v53 = v0[57];
  v52 = v0[58];
  v54 = v0[56];
  v55 = v0[53];
  v56 = v0[50];
  v57 = v0[48];
  v58 = v0[44];
  v59 = v0[40];
  v85 = v0[36];
  v87 = v0[32];
  v89 = v0[29];
  v91 = v0[26];
  v93 = v0[24];
  v95 = v0[22];
  v98 = v0[20];
  v101 = v0[19];
  v103 = v0[15];

  v60 = v0[1];

  return v60();
}

uint64_t sub_10045BDFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 544);
  v12 = *v1;
  *(v3 + 552) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 560) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10045E3E4(&qword_1005A9308, 255, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_10045BFE0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10045BFE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  v4[71] = a1;
  v4[72] = v1;

  if (v1)
  {
    v7 = v4[14];

    return _swift_task_switch(sub_10045D354, v7, 0);
  }

  else
  {
    v8 = v4[69];

    v9 = swift_task_alloc();
    v4[73] = v9;
    *v9 = v6;
    v9[1] = sub_10045C16C;

    return sub_10001CC28();
  }
}

uint64_t sub_10045C16C(uint64_t a1)
{
  v2 = *(*v1 + 584);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 592) = a1;

  return _swift_task_switch(sub_10045C284, v3, 0);
}

uint64_t sub_10045C284()
{
  v56 = v0;
  v1 = v0[72];
  v2 = v0[60];
  v3 = v0[54];
  v5 = v0[25];
  v4 = v0[26];
  sub_10045E3E4(&qword_1005B4228, 255, type metadata accessor for SecureLocationsKeyUpdateAckEnvelope);
  sub_10045E3E4(&qword_1005B4230, 255, type metadata accessor for SecureLocationsKeyUpdateAckEnvelope);
  Message.extract<A>()();
  v6 = v0[74];
  v7 = v0[71];
  if (v1)
  {
    v8 = v0[74];

    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v9 = v0[60];
    v10 = v0[57];
    v11 = v0[54];
    v12 = v0[55];
    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005B4088);
    (*(v12 + 16))(v10, v9, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[60];
    v18 = v0[57];
    v19 = v0[54];
    v20 = v0[55];
    if (v16)
    {
      v21 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v21 = 136315138;
      sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v17;
      v24 = v23;
      v25 = *(v20 + 8);
      v25(v18, v19);
      v26 = sub_10000D01C(v22, v24, &v55);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to decode SecureLocationsKeyUpdateAckEnvelope from %s", v21, 0xCu);
      sub_100004984(v50);

      v25(v52, v19);
    }

    else
    {

      v31 = *(v20 + 8);
      v31(v18, v19);
      v31(v17, v19);
    }
  }

  else
  {
    v27 = v0[60];
    v28 = v0[54];
    v29 = v0[55];
    v30 = v0[26];
    sub_10047195C(v0[13], v30, *(v30 + *(v0[25] + 20)));

    sub_10046AFA0(v30, type metadata accessor for SecureLocationsKeyUpdateAckEnvelope);
    (*(v29 + 8))(v27, v28);
  }

  v33 = v0[59];
  v32 = v0[60];
  v35 = v0[57];
  v34 = v0[58];
  v36 = v0[56];
  v37 = v0[53];
  v38 = v0[50];
  v39 = v0[48];
  v40 = v0[44];
  v41 = v0[40];
  v44 = v0[36];
  v45 = v0[32];
  v46 = v0[29];
  v47 = v0[26];
  v48 = v0[24];
  v49 = v0[22];
  v51 = v0[20];
  v53 = v0[19];
  v54 = v0[15];

  v42 = v0[1];

  return v42();
}

uint64_t sub_10045C6F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 600);
  v12 = *v1;
  *(v3 + 608) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 616) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10045E3E4(&qword_1005A9308, 255, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_10045C8DC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10045C8DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 616);
  v6 = *v2;
  v4[78] = a1;
  v4[79] = v1;

  if (v1)
  {
    v7 = v4[14];

    return _swift_task_switch(sub_10045D6BC, v7, 0);
  }

  else
  {
    v8 = v4[76];

    v9 = swift_task_alloc();
    v4[80] = v9;
    *v9 = v6;
    v9[1] = sub_10045CA68;

    return sub_10001CC28();
  }
}

uint64_t sub_10045CA68(uint64_t a1)
{
  v2 = *(*v1 + 640);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 648) = a1;

  return _swift_task_switch(sub_10045CB80, v3, 0);
}

uint64_t sub_10045CB80()
{
  v56 = v0;
  v1 = v0[79];
  v2 = v0[60];
  v3 = v0[54];
  v5 = v0[23];
  v4 = v0[24];
  sub_10045E3E4(&qword_1005B4218, 255, type metadata accessor for RemoveSecureLocationsKeyEnvelope);
  sub_10045E3E4(&qword_1005B4220, 255, type metadata accessor for RemoveSecureLocationsKeyEnvelope);
  Message.extract<A>()();
  v6 = v0[81];
  v7 = v0[78];
  if (v1)
  {
    v8 = v0[81];

    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v9 = v0[60];
    v11 = v0[55];
    v10 = v0[56];
    v12 = v0[54];
    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005B4088);
    (*(v11 + 16))(v10, v9, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[60];
    v19 = v0[55];
    v18 = v0[56];
    v20 = v0[54];
    if (v16)
    {
      v21 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v21 = 136315138;
      sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v17;
      v24 = v23;
      v25 = *(v19 + 8);
      v25(v18, v20);
      v26 = sub_10000D01C(v22, v24, &v55);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to decode SecureLocationsKeyUpdateAckEnvelope from %s", v21, 0xCu);
      sub_100004984(v50);

      v25(v52, v20);
    }

    else
    {

      v31 = *(v19 + 8);
      v31(v18, v20);
      v31(v17, v20);
    }
  }

  else
  {
    v27 = v0[60];
    v28 = v0[54];
    v29 = v0[55];
    v30 = v0[24];
    sub_100471DE0(v0[13], v30);

    sub_10046AFA0(v30, type metadata accessor for RemoveSecureLocationsKeyEnvelope);
    (*(v29 + 8))(v27, v28);
  }

  v33 = v0[59];
  v32 = v0[60];
  v35 = v0[57];
  v34 = v0[58];
  v36 = v0[56];
  v37 = v0[53];
  v38 = v0[50];
  v39 = v0[48];
  v40 = v0[44];
  v41 = v0[40];
  v44 = v0[36];
  v45 = v0[32];
  v46 = v0[29];
  v47 = v0[26];
  v48 = v0[24];
  v49 = v0[22];
  v51 = v0[20];
  v53 = v0[19];
  v54 = v0[15];

  v42 = v0[1];

  return v42();
}

uint64_t sub_10045CFEC()
{
  v45 = v0;
  v1 = v0[62];

  v2 = v0[65];
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v3 = v0[60];
  v4 = v0[58];
  v6 = v0[54];
  v5 = v0[55];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005B4088);
  (*(v5 + 16))(v4, v3, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[60];
  v12 = v0[58];
  v14 = v0[54];
  v13 = v0[55];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v15 = 136315138;
    sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_10000D01C(v16, v18, &v44);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to decode SecureLocationsKeyUpdateEnvelope from %s", v15, 0xCu);
    sub_100004984(v40);

    v19(v11, v14);
  }

  else
  {

    v21 = *(v13 + 8);
    v21(v12, v14);
    v21(v11, v14);
  }

  v23 = v0[59];
  v22 = v0[60];
  v25 = v0[57];
  v24 = v0[58];
  v26 = v0[56];
  v27 = v0[53];
  v28 = v0[50];
  v29 = v0[48];
  v30 = v0[44];
  v31 = v0[40];
  v34 = v0[36];
  v35 = v0[32];
  v36 = v0[29];
  v37 = v0[26];
  v38 = v0[24];
  v39 = v0[22];
  v41 = v0[20];
  v42 = v0[19];
  v43 = v0[15];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10045D354()
{
  v45 = v0;
  v1 = v0[69];

  v2 = v0[72];
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v3 = v0[60];
  v4 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005B4088);
  (*(v5 + 16))(v4, v3, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[60];
  v12 = v0[57];
  v14 = v0[54];
  v13 = v0[55];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v15 = 136315138;
    sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_10000D01C(v16, v18, &v44);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to decode SecureLocationsKeyUpdateAckEnvelope from %s", v15, 0xCu);
    sub_100004984(v40);

    v19(v11, v14);
  }

  else
  {

    v21 = *(v13 + 8);
    v21(v12, v14);
    v21(v11, v14);
  }

  v23 = v0[59];
  v22 = v0[60];
  v25 = v0[57];
  v24 = v0[58];
  v26 = v0[56];
  v27 = v0[53];
  v28 = v0[50];
  v29 = v0[48];
  v30 = v0[44];
  v31 = v0[40];
  v34 = v0[36];
  v35 = v0[32];
  v36 = v0[29];
  v37 = v0[26];
  v38 = v0[24];
  v39 = v0[22];
  v41 = v0[20];
  v42 = v0[19];
  v43 = v0[15];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10045D6BC()
{
  v45 = v0;
  v1 = v0[76];

  v2 = v0[79];
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v3 = v0[60];
  v4 = v0[55];
  v5 = v0[56];
  v6 = v0[54];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005B4088);
  (*(v4 + 16))(v5, v3, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[60];
  v13 = v0[55];
  v12 = v0[56];
  v14 = v0[54];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v15 = 136315138;
    sub_10001DF0C(&qword_1005B4210, &qword_1005AAC70, &qword_1004D96D0);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_10000D01C(v16, v18, &v44);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to decode SecureLocationsKeyUpdateAckEnvelope from %s", v15, 0xCu);
    sub_100004984(v40);

    v19(v11, v14);
  }

  else
  {

    v21 = *(v13 + 8);
    v21(v12, v14);
    v21(v11, v14);
  }

  v23 = v0[59];
  v22 = v0[60];
  v25 = v0[57];
  v24 = v0[58];
  v26 = v0[56];
  v27 = v0[53];
  v28 = v0[50];
  v29 = v0[48];
  v30 = v0[44];
  v31 = v0[40];
  v34 = v0[36];
  v35 = v0[32];
  v36 = v0[29];
  v37 = v0[26];
  v38 = v0[24];
  v39 = v0[22];
  v41 = v0[20];
  v42 = v0[19];
  v43 = v0[15];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10045DA24(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v2[6] = *(v5 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10045DB30, v1, 0);
}

uint64_t sub_10045DB30()
{
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005B4088);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Relaying account changes to BA", v4, 2u);
  }

  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  *v6 = v11;
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_10046B228(v6, v5, type metadata accessor for SecureLocationsRelayedMessage);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_10046B040(v5, v14 + v13, type metadata accessor for SecureLocationsRelayedMessage);

  sub_1001D7F30(0, 0, v9, &unk_1004D96C0, v14);

  sub_10046AFA0(v6, type metadata accessor for SecureLocationsRelayedMessage);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10045DD88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v2[7] = *(v5 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10045DE94, v1, 0);
}

uint64_t sub_10045DE94()
{
  v1 = v0[3];
  v2 = *(v1 + 128);
  *(v1 + 128) = v0[2];

  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005B4088);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Relaying device changes to BA", v6, 2u);
  }

  v7 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[2];

  *v8 = v13;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_10046B228(v8, v7, type metadata accessor for SecureLocationsRelayedMessage);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_10046B040(v7, v16 + v15, type metadata accessor for SecureLocationsRelayedMessage);

  sub_1001D7F30(0, 0, v11, &unk_1004D96B0, v16);

  sub_10046AFA0(v8, type metadata accessor for SecureLocationsRelayedMessage);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10045E104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_10045A0D4(a1, a2, a3);
}

uint64_t sub_10045E1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return sub_10045A458(a1, a2, a3, a4, a5);
}

uint64_t sub_10045E274(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_10045DA24(a1);
}

uint64_t sub_10045E308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_10045DD88(a1);
}

uint64_t sub_10045E3E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10045E474(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SessionMessagingInvite();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Destination();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for BeaconSharingSessionContext();
  v2[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10045E5F0, v1, 0);
}

uint64_t sub_10045E5F0()
{
  v49 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[2];
  sub_10045E3E4(&qword_1005AB8E8, 255, type metadata accessor for BeaconSharingSessionContext);
  SessionMessagingInvite.context<A>()();
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[7];
  v8 = v0[8];
  sub_10046B040(v0[14], v4, type metadata accessor for BeaconSharingSessionContext);
  sub_10046B228(v4, v5, type metadata accessor for BeaconSharingSessionContext);
  (*(v8 + 32))(v6, v5, v7);
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[7];
  v12 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[4];
  v16 = v0[2];
  v17 = type metadata accessor for Logger();
  v0[16] = sub_10000A6F0(v17, qword_1005E0DE0);
  (*(v12 + 16))(v9, v10, v11);
  (*(v14 + 16))(v13, v16, v15);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[10];
  if (v20)
  {
    log = v18;
    v47 = v19;
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[7];
    v43 = v0[6];
    v45 = v0[5];
    v46 = v0[4];
    v25 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v25 = 141558787;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    sub_10045E3E4(&qword_1005A9260, 255, &type metadata accessor for Destination);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v23 + 8);
    v29(v21, v24);
    v30 = sub_10000D01C(v26, v28, v48);

    *(v25 + 14) = v30;
    *(v25 + 22) = 2160;
    *(v25 + 24) = 1752392040;
    *(v25 + 32) = 2081;
    SessionMessagingInvite.accountScopedFromID.getter();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v29(v22, v24);
    (*(v45 + 8))(v43, v46);
    v34 = sub_10000D01C(v31, v33, v48);

    *(v25 + 34) = v34;
    _os_log_impl(&_mh_execute_header, log, v47, "Incoming .meDevice invitation for %{private,mask.hash}s from %{private,mask.hash}s", v25, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v35 = v0[7];
    v36 = v0[8];
    v38 = v0[5];
    v37 = v0[6];
    v39 = v0[4];

    (*(v38 + 8))(v37, v39);
    v29 = *(v36 + 8);
    v29(v21, v35);
  }

  v0[17] = v29;
  v40 = async function pointer to daemon.getter[1];
  v41 = swift_task_alloc();
  v0[18] = v41;
  *v41 = v0;
  v41[1] = sub_10045EC0C;

  return daemon.getter();
}

uint64_t sub_10045EC0C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v12 = *v1;
  *(v3 + 152) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocationService();
  v9 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10045E3E4(&qword_1005A9308, 255, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_10045EDF0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10045EDF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = v4[3];

    return _swift_task_switch(sub_10045F36C, v7, 0);
  }

  else
  {
    v8 = v4[19];

    v4[22] = a1;
    v9 = swift_task_alloc();
    v4[23] = v9;
    *v9 = v6;
    v9[1] = sub_10045EF7C;

    return sub_10001CC28();
  }
}

uint64_t sub_10045EF7C(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10045F094, v3, 0);
}

uint64_t sub_10045F094()
{
  v0[25] = *(v0[24] + 32);

  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_10045F14C;
  v2 = v0[11];
  v3 = v0[2];

  return sub_100126914(v3, v2);
}

uint64_t sub_10045F14C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_10045F278, v3, 0);
}

uint64_t sub_10045F278()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 120);
  v3 = *(v0 + 64) + 8;
  (*(v0 + 136))(*(v0 + 88), *(v0 + 56));
  sub_10046AFA0(v2, type metadata accessor for BeaconSharingSessionContext);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10045F36C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 168);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get location service: %@", v8, 0xCu);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 64) + 8;
  (*(v0 + 136))(*(v0 + 88), *(v0 + 56));
  sub_10046AFA0(v11, type metadata accessor for BeaconSharingSessionContext);
  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = *(v0 + 104);
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 72);
  v19 = *(v0 + 48);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10045F568()
{
  v1 = v0[8];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for SecureLocationsRelayedMessage(0);
  sub_10045E3E4(&qword_1005B41F8, 255, type metadata accessor for SecureLocationsRelayedMessage);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;
  v8 = [objc_allocWithZone(SPSecureLocationsManager) init];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[6] = sub_10045F870;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000A8DE8;
  v0[5] = &unk_10059C860;
  v10 = _Block_copy(v0 + 2);
  [v8 processIDSServiceMessage:isa completion:v10];
  _Block_release(v10);

  sub_1000049D0(v5, v7);

  v11 = v0[1];

  return v11();
}

void sub_10045F870(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005B4088);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Relayed IDS message to SPD", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005B4088);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to relay IDS message to SPD: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);

LABEL_10:

    return;
  }
}

uint64_t sub_10045FAC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SecureLocationsRelayActionResponse(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for SecureLocationsRelayAction(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10045FB88, v2, 0);
}

uint64_t sub_10045FB88()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[9] = PropertyListDecoder.init()();
  sub_10045E3E4(&qword_1005B41D8, 255, type metadata accessor for SecureLocationsRelayAction);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_10045FE40;
  v9 = v0[8];
  v10 = v0[6];
  v11 = v0[4];

  return sub_100460490(v10, v9);
}

uint64_t sub_10045FE40()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_100460280;
  }

  else
  {
    v6 = sub_10045FF6C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10045FF6C()
{
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10045E3E4(&qword_1005B41E0, 255, type metadata accessor for SecureLocationsRelayActionResponse);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v9 = v8;
  v10 = v1;
  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[6];

  if (v10)
  {
    sub_10046AFA0(v13, type metadata accessor for SecureLocationsRelayActionResponse);
    sub_10046AFA0(v11, type metadata accessor for SecureLocationsRelayAction);
    if (qword_1005A85A8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005B4088);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "processIDSServiceMessage failed with %{public}@", v17, 0xCu);
      sub_100002CE0(v18, &qword_1005A9670, &unk_1004C2480);
    }

    v20 = v0[8];
    v21 = v0[6];

    swift_willThrow();

    v22 = v0[1];

    return v22();
  }

  else
  {
    sub_10046AFA0(v13, type metadata accessor for SecureLocationsRelayActionResponse);
    sub_10046AFA0(v11, type metadata accessor for SecureLocationsRelayAction);

    v24 = v0[1];

    return v24(v7, v9);
  }
}

uint64_t sub_100460280()
{
  v2 = v0[8];
  v1 = v0[9];

  sub_10046AFA0(v2, type metadata accessor for SecureLocationsRelayAction);
  v3 = v0[11];
  if (qword_1005A85A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005B4088);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "processIDSServiceMessage failed with %{public}@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  v10 = v0[8];
  v11 = v0[6];

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100460490(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(sub_10004B564(&qword_1005A9280, &qword_1004C27F8) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v7 = *(v6 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
  v3[18] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v10 = type metadata accessor for Destination();
  v3[20] = v10;
  v11 = *(v10 - 8);
  v3[21] = v11;
  v12 = *(v11 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  HasCapability = type metadata accessor for SecureLocationsRelayAction.HasCapability(0);
  v3[27] = HasCapability;
  v14 = *(*(HasCapability - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v15 = type metadata accessor for SecureLocationsRelayAction(0);
  v3[29] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1004606F4, v2, 0);
}

uint64_t sub_1004606F4()
{
  v1 = *(v0 + 232);
  sub_10046B228(*(v0 + 80), *(v0 + 240), type metadata accessor for SecureLocationsRelayAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10046B040(*(v0 + 240), *(v0 + 152), type metadata accessor for SecureLocationsRelayAction.SendMessage);
        v7 = async function pointer to daemon.getter[1];
        v4 = swift_task_alloc();
        *(v0 + 424) = v4;
        *v4 = v0;
        v5 = sub_100462134;
      }

      else
      {
        (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 240), *(v0 + 160));
        v10 = async function pointer to daemon.getter[1];
        v4 = swift_task_alloc();
        *(v0 + 504) = v4;
        *v4 = v0;
        v5 = sub_100463320;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      (*(*(v0 + 168) + 32))(*(v0 + 192), *(v0 + 240), *(v0 + 160));
      v9 = async function pointer to daemon.getter[1];
      v4 = swift_task_alloc();
      *(v0 + 376) = v4;
      *v4 = v0;
      v5 = sub_1004619E4;
    }

    else
    {
      sub_10046B040(*(v0 + 240), *(v0 + 224), type metadata accessor for SecureLocationsRelayAction.HasCapability);
      v3 = async function pointer to daemon.getter[1];
      v4 = swift_task_alloc();
      *(v0 + 248) = v4;
      *v4 = v0;
      v5 = sub_100460B08;
    }

LABEL_14:
    v4[1] = v5;

    return daemon.getter();
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      **(v0 + 72) = *(*(v0 + 88) + 128);
      type metadata accessor for SecureLocationsRelayActionResponse(0);
      swift_storeEnumTagMultiPayload();

      goto LABEL_18;
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 240), *(v0 + 160));
    v6 = async function pointer to daemon.getter[1];
    v4 = swift_task_alloc();
    *(v0 + 552) = v4;
    *v4 = v0;
    v5 = sub_100463AFC;
    goto LABEL_14;
  }

  v8 = *(v0 + 72);
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();
LABEL_18:
  v11 = *(v0 + 240);
  v12 = *(v0 + 224);
  v14 = *(v0 + 200);
  v13 = *(v0 + 208);
  v16 = *(v0 + 184);
  v15 = *(v0 + 192);
  v17 = *(v0 + 176);
  v18 = *(v0 + 152);
  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v23 = *(v0 + 120);
  v24 = *(v0 + 96);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100460B08(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  *(v3 + 256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 264) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v9 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  *v6 = v12;
  v6[1] = sub_100460D24;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100460D24(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 280) = v1;

  v7 = *(v3 + 256);
  v8 = *(v3 + 88);

  if (v1)
  {
    v9 = sub_1004643CC;
  }

  else
  {
    v9 = sub_100460EA0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100460EA0()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = sub_100209F8C(_swiftEmptyArrayStorage);
  v4 = *(v2 + *(v1 + 20));
  v0[36] = v4;
  v5 = *(v4 + 16);
  v0[37] = v5;

  v6 = v0[34];
  if (v5)
  {
    v7 = v0[21];
    v0[38] = v3;
    v0[39] = 0;
    if (!*(v4 + 16))
    {
      __break(1u);
    }

    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[20];
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v0[40] = *(v11 + 56);
    v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v0[41] = v12;
    v0[42] = v11 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v4 + v13, v10);
    v12(v9, v8, v10);

    return _swift_task_switch(sub_100461120, v6, 0);
  }

  else
  {
    v14 = v0[9];
    sub_10046AFA0(v0[28], type metadata accessor for SecureLocationsRelayAction.HasCapability);

    *v14 = v3;
    type metadata accessor for SecureLocationsRelayActionResponse(0);
    swift_storeEnumTagMultiPayload();
    v15 = v0[30];
    v16 = v0[28];
    v18 = v0[25];
    v17 = v0[26];
    v20 = v0[23];
    v19 = v0[24];
    v21 = v0[22];
    v22 = v0[19];
    v24 = v0[16];
    v23 = v0[17];
    v27 = v0[15];
    v28 = v0[12];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_100461120()
{
  v1 = *(v0[34] + 136);
  v2 = *(&async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:) + 1);
  v3 = async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:);
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_100461200;
  v5 = v0[28];
  v6 = v0[26];

  return ((&async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:) + v3))(v6, v5);
}

uint64_t sub_100461200(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v10 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v5 = *(v3 + 288);
    v6 = *(v3 + 272);

    v7 = sub_100461378;
    v8 = v6;
  }

  else
  {
    v8 = *(v3 + 88);
    v7 = sub_1004615B4;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100461378()
{
  v1 = v0[38];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[11];
  v6 = *(v4 + 8);
  v0[45] = v6;
  v0[46] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);

  return _swift_task_switch(sub_100461440, v5, 0);
}

uint64_t sub_100461440()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[34];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[20];

  v2(v5, v6);
  sub_10046AFA0(v4, type metadata accessor for SecureLocationsRelayAction.HasCapability);
  v7 = v0[30];
  v8 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[17];
  v19 = v0[44];
  v20 = v0[15];
  v21 = v0[12];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004615B4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 200);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 64) = v1;
  v4 = sub_1001FDA80(v2);
  v6 = *(v1 + 16);
  v7 = (v5 & 1) == 0;
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
    __break(1u);
LABEL_21:
    v57 = v4;
    sub_100205C18();
    v4 = v57;
    goto LABEL_8;
  }

  LOBYTE(v2) = v5;
  if (*(*(v0 + 304) + 24) >= v9)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  v10 = *(v0 + 200);
  sub_100232514(v9, isUniquelyReferenced_nonNull_native);
  v11 = *(v0 + 64);
  v4 = sub_1001FDA80(v10);
  if ((v2 & 1) != (v12 & 1))
  {
    v13 = *(v0 + 160);

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  v15 = *(v0 + 64);
  v16 = *(v0 + 624);
  if (v2)
  {
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);
    *(v15[7] + v4) = v16;
    v21 = *(v20 + 8);
    v21(v17, v19);
    v21(v18, v19);
  }

  else
  {
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v24 = *(v0 + 320);
    v25 = *(v0 + 200);
    v26 = *(v0 + 208);
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);
    v15[(v4 >> 6) + 8] |= 1 << v4;
    v29 = v4;
    v23(v15[6] + v24 * v4, v25, v27);
    *(v15[7] + v29) = v16;
    v30 = *(v28 + 8);
    v30(v25, v27);
    v30(v26, v27);
    v31 = v15[2];
    v8 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v8)
    {
      __break(1u);
      goto LABEL_23;
    }

    v15[2] = v32;
  }

  v33 = *(v0 + 312) + 1;
  if (v33 == *(v0 + 296))
  {
    v34 = *(v0 + 288);
    v35 = *(v0 + 272);
    v36 = *(v0 + 72);
    sub_10046AFA0(*(v0 + 224), type metadata accessor for SecureLocationsRelayAction.HasCapability);

    *v36 = v15;
    type metadata accessor for SecureLocationsRelayActionResponse(0);
    swift_storeEnumTagMultiPayload();
    v37 = *(v0 + 240);
    v38 = *(v0 + 224);
    v40 = *(v0 + 200);
    v39 = *(v0 + 208);
    v42 = *(v0 + 184);
    v41 = *(v0 + 192);
    v43 = *(v0 + 176);
    v44 = *(v0 + 152);
    v46 = *(v0 + 128);
    v45 = *(v0 + 136);
    v58 = *(v0 + 120);
    v59 = *(v0 + 96);

    v47 = *(v0 + 8);

    return v47();
  }

  *(v0 + 304) = v15;
  *(v0 + 312) = v33;
  v48 = *(v0 + 288);
  if (v33 >= *(v48 + 16))
  {
LABEL_23:
    __break(1u);
  }

  v49 = *(v0 + 272);
  v50 = *(v0 + 160);
  v51 = *(v0 + 168);
  v52 = *(v51 + 16);
  v51 += 16;
  v54 = *(v0 + 200);
  v53 = *(v0 + 208);
  v55 = *(v51 + 56);
  *(v0 + 320) = v55;
  v56 = v48 + ((*(v51 + 64) + 32) & ~*(v51 + 64)) + v55 * v33;
  *(v0 + 328) = v52;
  *(v0 + 336) = v51 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52(v53, v56, v50);
  v52(v54, v53, v50);

  return _swift_task_switch(sub_100461120, v49, 0);
}

uint64_t sub_1004619E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 376);
  v12 = *v1;
  *(v3 + 384) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 392) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v9 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  *v6 = v12;
  v6[1] = sub_100461C00;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100461C00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  v4[50] = v1;

  v7 = v4[48];
  if (v1)
  {
    v8 = v4[11];

    v9 = sub_10046451C;
    v10 = v8;
  }

  else
  {

    v4[51] = a1;
    v9 = sub_100461D9C;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100461D9C()
{
  v1 = *(v0[51] + 136);
  v2 = *(&async function pointer to dispatch thunk of QueryController.isRegistered(destination:) + 1);
  v3 = async function pointer to dispatch thunk of QueryController.isRegistered(destination:);
  v4 = swift_task_alloc();
  v0[52] = v4;
  *v4 = v0;
  v4[1] = sub_100461E78;
  v5 = v0[24];

  return ((&async function pointer to dispatch thunk of QueryController.isRegistered(destination:) + v3))(v5);
}

uint64_t sub_100461E78(char a1)
{
  v2 = *(*v1 + 416);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 625) = a1;

  return _swift_task_switch(sub_100461FBC, v3, 0);
}

uint64_t sub_100461FBC()
{
  v1 = *(v0 + 625);
  v2 = *(v0 + 408);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 72);

  (*(v5 + 8))(v3, v4);
  *v6 = v1;
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 240);
  v8 = *(v0 + 224);
  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = *(v0 + 152);
  v16 = *(v0 + 128);
  v15 = *(v0 + 136);
  v19 = *(v0 + 120);
  v20 = *(v0 + 96);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100462134(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 424);
  v12 = *v1;
  *(v3 + 432) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 440) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v9 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  *v6 = v12;
  v6[1] = sub_100462350;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100462350(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(v4 + 448) = a1;
  *(v4 + 456) = v1;

  v7 = *(v3 + 432);
  v8 = *(v3 + 88);

  if (v1)
  {
    v9 = sub_100464668;
  }

  else
  {
    v9 = sub_1004624CC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1004624CC()
{
  v1 = *(v0 + 144);
  v2 = (*(v0 + 152) + *(v1 + 20));
  if (v2[1] >> 60 == 15)
  {
    v3 = *(v0 + 448);
    *(v0 + 620) = *(v1 + 24);
    v4 = sub_100462DD0;
LABEL_6:

    return _swift_task_switch(v4, v3, 0);
  }

  v5 = *v2;
  v6 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 48) = 0;
  v8 = [v6 JSONObjectWithData:isa options:0 error:v0 + 48];

  v9 = *(v0 + 48);
  if (v8)
  {
    v10 = v9;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10004B564(&qword_1005B2590, &qword_1004D72F0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 448);
      v11 = *(v0 + 144);
      *(v0 + 464) = *(v0 + 56);
      *(v0 + 616) = *(v11 + 24);
      v4 = sub_1004627CC;
      goto LABEL_6;
    }

    sub_1000F7A28();
    swift_allocError();
    *v13 = 12;
  }

  else
  {
    v12 = v9;
    _convertNSErrorToError(_:)();
  }

  swift_willThrow();
  v14 = *(v0 + 448);
  v15 = *(v0 + 152);

  sub_10046AFA0(v15, type metadata accessor for SecureLocationsRelayAction.SendMessage);
  v16 = *(v0 + 240);
  v17 = *(v0 + 224);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = *(v0 + 176);
  v23 = *(v0 + 152);
  v24 = *(v0 + 128);
  v25 = *(v0 + 136);
  v28 = *(v0 + 120);
  v29 = *(v0 + 96);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1004627CC()
{
  v1 = v0;
  v2 = *(v0 + 616);
  v3 = *(v0 + 152);
  v4 = *(*(v0 + 448) + 128);
  v5 = async function pointer to InternetMessaging.send(message:metadata:messageOptions:)[1];
  v6 = swift_task_alloc();
  v1[59] = v6;
  *v6 = v1;
  v6[1] = sub_1004628BC;
  v7 = v1[58];
  v8 = v1[19];
  v9 = v1[16];

  return InternetMessaging.send(message:metadata:messageOptions:)(v9, v8, v7, v3 + v2);
}

uint64_t sub_1004628BC()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v9 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = v2[56];
    v5 = sub_100462BDC;
  }

  else
  {
    v6 = v2[58];
    v7 = v2[11];

    v5 = sub_100462A30;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100462A30()
{
  v1 = v0[56];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];
  v6 = v0[14];

  sub_10046AFA0(v2, type metadata accessor for SecureLocationsRelayAction.SendMessage);
  v7 = *(v6 + 32);
  v7(v3, v4, v5);
  v7(v0[9], v0[17], v0[13]);
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();
  v8 = v0[30];
  v9 = v0[28];
  v11 = v0[25];
  v10 = v0[26];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[22];
  v15 = v0[19];
  v17 = v0[16];
  v16 = v0[17];
  v20 = v0[15];
  v21 = v0[12];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100462BDC()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_100462C74, v2, 0);
}

uint64_t sub_100462C74()
{
  v1 = v0[56];
  v2 = v0[19];

  sub_10046AFA0(v2, type metadata accessor for SecureLocationsRelayAction.SendMessage);
  v3 = v0[30];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v15 = v0[60];
  v16 = v0[15];
  v17 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100462DD0()
{
  v1 = v0;
  v2 = *(v0 + 620);
  v3 = *(v0 + 152);
  v4 = *(*(v0 + 448) + 128);
  v5 = async function pointer to InternetMessaging.send(message:messageOptions:)[1];
  v6 = swift_task_alloc();
  v1[61] = v6;
  *v6 = v1;
  v6[1] = sub_100462EBC;
  v7 = v1[19];
  v8 = v1[15];

  return InternetMessaging.send(message:messageOptions:)(v8, v7, v3 + v2);
}

uint64_t sub_100462EBC()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_1004631C4;
  }

  else
  {
    v6 = sub_100463014;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100463014()
{
  v1 = v0[56];
  v2 = v0[19];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  sub_10046AFA0(v2, type metadata accessor for SecureLocationsRelayAction.SendMessage);
  v7 = *(v5 + 32);
  v7(v3, v4, v6);
  v7(v0[9], v0[17], v0[13]);
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();
  v8 = v0[30];
  v9 = v0[28];
  v11 = v0[25];
  v10 = v0[26];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[22];
  v15 = v0[19];
  v17 = v0[16];
  v16 = v0[17];
  v20 = v0[15];
  v21 = v0[12];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1004631C4()
{
  v1 = v0[56];
  v2 = v0[19];

  sub_10046AFA0(v2, type metadata accessor for SecureLocationsRelayAction.SendMessage);
  v3 = v0[30];
  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v15 = v0[62];
  v16 = v0[15];
  v17 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100463320(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 504);
  v12 = *v1;
  *(v3 + 512) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 520) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v9 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  *v6 = v12;
  v6[1] = sub_10046353C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10046353C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  v4[66] = a1;
  v4[67] = v1;

  v7 = v4[64];
  if (v1)
  {
    v8 = v4[11];

    v9 = sub_1004647B8;
    v10 = v8;
  }

  else
  {

    v9 = sub_1004636D8;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1004636D8()
{
  *(v0 + 544) = *(*(v0 + 528) + 128);
  sub_10004B564(&qword_1005AD570, &qword_1004C9BC8);
  sub_10001DF0C(&qword_1005B41E8, &qword_1005AD570, &qword_1004C9BC8);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004637DC, v2, v1);
}

uint64_t sub_1004637DC()
{
  v1 = v0[68];
  v3 = v0[11];
  v2 = v0[12];
  dispatch thunk of InternetMessaging.myAccountScopedDestination.getter();

  return _swift_task_switch(sub_10046387C, v3, 0);
}

uint64_t sub_10046387C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 96);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 184);
  if (v4 == 1)
  {
    sub_100002CE0(v3, &qword_1005A9280, &qword_1004C27F8);
    Destination.destination.getter();
  }

  else
  {
    v6 = Destination.destination.getter();
    v8 = v7;
    v9 = *(v2 + 8);
    v9(v3, v1);
    v10 = Destination.destination.getter();
    if (v8)
    {
      if (v6 == v10 && v8 == v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v18 = *(v0 + 528);
      v19 = *(v0 + 184);
      v20 = *(v0 + 160);

      v9(v19, v20);
      goto LABEL_12;
    }
  }

  v14 = *(v0 + 528);
  v15 = *(v0 + 184);
  v16 = *(v0 + 160);
  v17 = *(v0 + 168);

  (*(v17 + 8))(v15, v16);

  v13 = 0;
LABEL_12:
  **(v0 + 72) = v13 & 1;
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();
  v21 = *(v0 + 240);
  v22 = *(v0 + 224);
  v24 = *(v0 + 200);
  v23 = *(v0 + 208);
  v26 = *(v0 + 184);
  v25 = *(v0 + 192);
  v27 = *(v0 + 176);
  v28 = *(v0 + 152);
  v30 = *(v0 + 128);
  v29 = *(v0 + 136);
  v33 = *(v0 + 120);
  v34 = *(v0 + 96);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100463AFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 552);
  v12 = *v1;
  *(v3 + 560) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 568) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v9 = sub_10045E3E4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  *v6 = v12;
  v6[1] = sub_100463D18;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100463D18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 568);
  v6 = *v2;
  v4[72] = a1;
  v4[73] = v1;

  v7 = v4[70];
  if (v1)
  {
    v8 = v4[11];

    v9 = sub_100464904;
    v10 = v8;
  }

  else
  {

    v9 = sub_100463EB4;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100463EB4()
{
  v1 = *(v0[72] + 136);
  v2 = *(&async function pointer to dispatch thunk of QueryController.partitionByCapability(destination:) + 1);
  v3 = async function pointer to dispatch thunk of QueryController.partitionByCapability(destination:);
  v4 = swift_task_alloc();
  v0[74] = v4;
  *v4 = v0;
  v4[1] = sub_100463F90;
  v5 = v0[22];

  return ((&async function pointer to dispatch thunk of QueryController.partitionByCapability(destination:) + v3))(v5);
}

uint64_t sub_100463F90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 592);
  v6 = *v2;
  v4[75] = v1;

  v7 = v4[11];
  if (v1)
  {
    v8 = sub_100464270;
  }

  else
  {
    v4[76] = a1;
    v8 = sub_1004640F8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1004640F8()
{
  v1 = v0[76];
  v2 = v0[72];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[9];

  (*(v4 + 8))(v3, v5);
  *v6 = v1;
  type metadata accessor for SecureLocationsRelayActionResponse(0);
  swift_storeEnumTagMultiPayload();
  v7 = v0[30];
  v8 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v14 = v0[19];
  v16 = v0[16];
  v15 = v0[17];
  v19 = v0[15];
  v20 = v0[12];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100464270()
{
  v1 = v0[72];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  (*(v3 + 8))(v2, v4);
  v5 = v0[30];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  v12 = v0[19];
  v13 = v0[16];
  v14 = v0[17];
  v17 = v0[75];
  v18 = v0[15];
  v19 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1004643CC()
{
  sub_10046AFA0(v0[28], type metadata accessor for SecureLocationsRelayAction.HasCapability);
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v13 = v0[35];
  v14 = v0[15];
  v15 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10046451C()
{
  (*(v0[21] + 8))(v0[24], v0[20]);
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v13 = v0[50];
  v14 = v0[15];
  v15 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100464668()
{
  sub_10046AFA0(v0[19], type metadata accessor for SecureLocationsRelayAction.SendMessage);
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v13 = v0[57];
  v14 = v0[15];
  v15 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004647B8()
{
  (*(v0[21] + 8))(v0[23], v0[20]);
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v13 = v0[67];
  v14 = v0[15];
  v15 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100464904()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[30];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v13 = v0[73];
  v14 = v0[15];
  v15 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100464A50(void *a1)
{
  v3 = sub_10004B564(&qword_1005B4B18, &qword_1004D9E88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-v6];
  v8 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046DE7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[15] = 0;
  type metadata accessor for Account();
  sub_10045E3E4(&qword_1005B4AE8, 255, &type metadata accessor for Account);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
    v10 = *(v9 + 20);
    v13[14] = 1;
    type metadata accessor for UUID();
    sub_10045E3E4(&qword_1005AAB60, 255, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v9 + 24);
    v13[13] = 2;
    type metadata accessor for Destination();
    sub_10045E3E4(&qword_1005AAB78, 255, &type metadata accessor for Destination);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100464CD4(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B4AD8, &qword_1004D9E70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046D7B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for Account();
  sub_10045E3E4(&qword_1005B4AE8, 255, &type metadata accessor for Account);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
    v12 = v11[5];
    LOBYTE(v18) = 1;
    type metadata accessor for Destination();
    sub_10045E3E4(&qword_1005AAB78, 255, &type metadata accessor for Destination);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v11[6];
    LOBYTE(v18) = 2;
    sub_10004B564(&qword_1005AB918, &unk_1004C5800);
    sub_10001DF0C(&qword_1005B4200, &qword_1005AB918, &unk_1004C5800);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v11[7]);
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v20 = 3;
    sub_100005F6C(v18, v15);
    sub_10046D808();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v18, v19);
    v16 = v11[8];
    LOBYTE(v18) = 4;
    type metadata accessor for MessageContext();
    sub_10045E3E4(&qword_1005B4AF8, 255, &type metadata accessor for MessageContext);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100465030(void *a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B4B38, &qword_1004D9E98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046DF24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10004B564(&qword_1005B4B48, &qword_1004D9EA0);
  sub_10046DF78();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10046518C(void *a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B4B28, &qword_1004D9E90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046DED0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10004B564(&qword_1005B49B8, &qword_1004D9E00);
  sub_10046D060();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1004652E8(void *a1)
{
  v2 = sub_10004B564(&qword_1005B4A20, &qword_1004D9E18);
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  __chkstk_darwin(v2);
  v54 = &v43 - v4;
  v5 = sub_10004B564(&qword_1005B4A28, &qword_1004D9E20);
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v49 = &v43 - v7;
  v8 = sub_10004B564(&qword_1005B4A30, &qword_1004D9E28);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v48 = &v43 - v10;
  v46 = type metadata accessor for SecureLocationsRelayedMessage.MessageReceived(0);
  v11 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005B4A38, &qword_1004D9E30);
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  __chkstk_darwin(v13);
  v16 = &v43 - v15;
  v17 = type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SecureLocationsRelayedMessage(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_10004B564(&qword_1005B4A40, &qword_1004D9E38);
  v58 = *(v25 - 8);
  v59 = v25;
  v26 = *(v58 + 64);
  __chkstk_darwin(v25);
  v28 = &v43 - v27;
  v29 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046D46C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10046B228(v57, v24, type metadata accessor for SecureLocationsRelayedMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v34 = *v24;
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v60) = 2;
      sub_10046D568();
      v35 = v49;
      v36 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v60 = v34;
      sub_10046D5BC();
      v37 = v53;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v38 = v52;
    }

    else
    {
      LOBYTE(v60) = 3;
      sub_10046D4C0();
      v35 = v54;
      v36 = v59;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v60 = v34;
      sub_10046D514();
      v37 = v56;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v38 = v55;
    }

    (*(v38 + 8))(v35, v37);
    (*(v58 + 8))(v28, v36);
  }

  else if (EnumCaseMultiPayload)
  {
    v39 = v47;
    sub_10046B040(v24, v47, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived);
    LOBYTE(v60) = 1;
    sub_10046D610();
    v40 = v48;
    v41 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10045E3E4(&qword_1005B4A78, 255, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived);
    v42 = v51;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v50 + 8))(v40, v42);
    sub_10046AFA0(v39, type metadata accessor for SecureLocationsRelayedMessage.MessageReceived);
    return (*(v58 + 8))(v28, v41);
  }

  else
  {
    sub_10046B040(v24, v20, type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered);
    LOBYTE(v60) = 0;
    sub_10046D664();
    v31 = v59;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10045E3E4(&qword_1005B4A88, 255, type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered);
    v32 = v45;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v44 + 8))(v16, v32);
    sub_10046AFA0(v20, type metadata accessor for SecureLocationsRelayedMessage.MessageDelivered);
    return (*(v58 + 8))(v28, v31);
  }
}

uint64_t sub_100465A40()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x44496D6F7266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_100465A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10046D85C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100465AC4(uint64_t a1)
{
  v2 = sub_10046DE7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100465B00(uint64_t a1)
{
  v2 = sub_10046DE7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100465B54()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x6567617373656DLL;
  v4 = 0x617461646174656DLL;
  if (v1 != 3)
  {
    v4 = 0x747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616E6974736564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100465BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10046D978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100465C20(uint64_t a1)
{
  v2 = sub_10046D7B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100465C5C(uint64_t a1)
{
  v2 = sub_10046D7B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100465CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100465D50(uint64_t a1)
{
  v2 = sub_10046DF24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100465D8C(uint64_t a1)
{
  v2 = sub_10046DF24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100465DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100465E84(uint64_t a1)
{
  v2 = sub_10046DED0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100465EC0(uint64_t a1)
{
  v2 = sub_10046DED0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100465F24(uint64_t a1)
{
  v2 = sub_10046D568();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100465F60(uint64_t a1)
{
  v2 = sub_10046D568();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100465F9C()
{
  v1 = 0x526567617373656DLL;
  v2 = 0x73746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0x4373656369766564;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_100466040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10046DB2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100466068(uint64_t a1)
{
  v2 = sub_10046D46C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004660A4(uint64_t a1)
{
  v2 = sub_10046D46C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004660E0(uint64_t a1)
{
  v2 = sub_10046D4C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046611C(uint64_t a1)
{
  v2 = sub_10046D4C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100466158(uint64_t a1)
{
  v2 = sub_10046D664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100466194(uint64_t a1)
{
  v2 = sub_10046D664();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004661D0(uint64_t a1)
{
  v2 = sub_10046D610();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10046620C(uint64_t a1)
{
  v2 = sub_10046D610();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100466260(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10004B564(&qword_1005B4B10, &qword_1004D9E80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10046DE28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_100005F6C(a2, a3);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v13, v14);
  return (*(v7 + 8))(v10, v6);
}