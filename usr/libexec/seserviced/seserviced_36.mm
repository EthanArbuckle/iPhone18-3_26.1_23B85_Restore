uint64_t sub_1002FD674(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D88 != -1)
  {
    swift_once();
  }

  (*(v11 + 16))(v14, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v10);
  sub_100069E2C(a1, a2);
  sub_100069E2C(a3, a4);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  sub_10006A178(a1, a2);
  sub_10006A178(a3, a4);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = v16;
    v18 = v17;
    v44 = swift_slowAlloc();
    v49 = v44;
    *v18 = 136643075;
    v45 = v10;
    v19 = sub_100288788(a1, a2);
    v46 = v5;
    v48 = v19;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    v40 = v14;
    sub_10007A2D0();
    v47 = a2;
    v41 = v15;
    v20 = BidirectionalCollection<>.joined(separator:)();
    v42 = v11;
    v21 = a1;
    v22 = a3;
    v23 = a4;
    v25 = v24;

    v26 = sub_1002FFA0C(v20, v25, &v49);
    a4 = v23;
    a3 = v22;
    a1 = v21;

    *(v18 + 4) = v26;
    *(v18 + 12) = 2080;
    v48 = sub_100288788(a3, a4);
    a2 = v47;
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    v30 = sub_1002FFA0C(v27, v29, &v49);

    *(v18 + 14) = v30;
    v5 = v46;
    v31 = v41;
    _os_log_impl(&_mh_execute_header, v41, v43, "Received stepupSK %{sensitive}s for endpoint %s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v42 + 8))(v40, v45);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v32 = (v5 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stepUpSK);
  v33 = *(v5 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stepUpSK);
  v34 = *(v5 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_stepUpSK + 8);
  *v32 = a1;
  v32[1] = a2;
  sub_10006A2D0(v33, v34);
  v35 = (v5 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_endpointId);
  v36 = *(v5 + OBJC_IVAR____TtC10seserviced16LyonStepUpHelper_endpointId);
  v37 = v35[1];
  sub_100069E2C(a1, a2);
  *v35 = a3;
  v35[1] = a4;
  sub_10006A2D0(v36, v37);
  return sub_100069E2C(a3, a4);
}

void sub_1002FDAD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 && (v36 = a3, swift_errorRetain(), sub_100068FC4(&unk_100503F80, &qword_100409CF0), sub_1000B9C54(), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v35;
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v12 + 16))(v15, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v11);
    v17 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = a6;
      v21 = v20;
      v32 = swift_slowAlloc();
      v36 = v32;
      *v21 = 136315138;
      v22 = [v17 localizedDescription];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v17;
      v24 = a5;
      v26 = v25;

      v27 = sub_1002FFA0C(v23, v26, &v36);
      a5 = v24;
      v17 = v33;

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to send stepup command with %s", v21, 0xCu);
      sub_1000752F4(v32);
    }

    (*(v12 + 8))(v15, v11);
    v28 = [v17 code];
    sub_1000755A4();
    swift_allocError();
    *v29 = 0;
    v29[1] = v28 == 21;
    a5();
  }

  else if (a2 >> 60 == 15)
  {
    sub_1000755A4();
    swift_allocError();
    *v30 = 0;
    a5();
  }

  else
  {
    sub_100069E2C(a1, a2);
    (a5)(a1, a2, 0);
    sub_10006A2D0(a1, a2);
  }
}

uint64_t sub_1002FDEFC()
{
  v0 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UUID();
  sub_1000B6A94(v4, qword_10051B770);
  v5 = sub_1000958E4(v4, qword_10051B770);
  UUID.init(uuidString:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002FE02C()
{
  v0 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UUID();
  sub_1000B6A94(v4, qword_10051B788);
  v5 = sub_1000958E4(v4, qword_10051B788);
  UUID.init(uuidString:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002FE15C()
{
  v0 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UUID();
  sub_1000B6A94(v4, qword_10051B7A0);
  v5 = sub_1000958E4(v4, qword_10051B7A0);
  UUID.init(uuidString:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

void CredentialInternalServer.listCredentialsInternal(reply:)(void (*a1)(void, uint64_t), uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-v6];
  v8 = [objc_opt_self() currentConnection];
  if (v8)
  {
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 valueForEntitlement:v10];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v20[15] == 1)
      {
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
        v13 = swift_allocObject();
        v13[2] = 0;
        v13[3] = 0;
        v13[4] = a1;
        v13[5] = a2;

        sub_1001F9BE8(0, 0, v7, &unk_100414FA0, v13);

        return;
      }
    }

    else
    {

      sub_100075768(v23, &qword_100502420, &qword_10040F310);
    }
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v23[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1002FFA0C(0xD00000000000001FLL, 0x800000010046E670, v23);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: Client not entitled", v16, 0xCu);
    sub_1000752F4(v17);
  }

  sub_10009591C();
  v18 = swift_allocError();
  *v19 = 15;
  a1(0, v18);
}

uint64_t sub_1002FE5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return _swift_task_switch(sub_1002FE5EC, 0, 0);
}

uint64_t sub_1002FE5EC()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 64) = qword_10051B858;

  return _swift_task_switch(sub_1002FE684, v1, 0);
}

uint64_t sub_1002FE684()
{
  v1 = v0[8];
  v0[9] = sub_100362B68(0, 0);
  v0[10] = 0;

  return _swift_task_switch(sub_1002FE718, 0, 0);
}

uint64_t sub_1002FE718()
{
  v0[5] = v0[9];
  v1 = swift_allocObject();
  v0[11] = v1;
  v1[2] = v0 + 5;
  v1[3] = 0xD000000000000019;
  v1[4] = 0x800000010046E720;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1002FE82C;

  return sub_1001FBFAC(0xD000000000000019, 0x800000010046E720, &unk_100414FE8, v1);
}

uint64_t sub_1002FE82C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {

    v6 = sub_1002FEA9C;
  }

  else
  {

    v6 = sub_1002FE978;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002FE978()
{
  v2 = v0[6];
  v1 = v0[7];
  swift_beginAccess();
  v2(v0[5], 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002FEA0C()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002FEA9C()
{
  v1 = v0[5];

  v2 = v0[13];
  v4 = v0[6];
  v3 = v0[7];
  swift_errorRetain();
  v4(0, v2);

  v5 = v0[1];

  return v5();
}

void CredentialInternalServer.deleteCredential(uuid:reply:)(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  v31 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  v12 = [objc_opt_self() currentConnection];
  if (v12)
  {
    v13 = v12;
    v30 = v6;
    v14 = a3;
    v15 = a2;
    v16 = String._bridgeToObjectiveC()();
    v17 = [v13 valueForEntitlement:v16];

    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v35[0] = v33;
    v35[1] = v34;
    a2 = v15;
    if (*(&v34 + 1))
    {
      v18 = v14;
      if ((swift_dynamicCast() & 1) != 0 && v32 == 1)
      {
        v19 = type metadata accessor for TaskPriority();
        (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
        v20 = v30;
        (*(v30 + 16))(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v5);
        v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        (*(v20 + 32))(v22 + v21, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
        v23 = (v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v23 = a2;
        v23[1] = v18;

        sub_1001F9BE8(0, 0, v11, &unk_100414FB0, v22);

        return;
      }
    }

    else
    {

      sub_100075768(v35, &qword_100502420, &qword_10040F310);
    }
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v35[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x800000010046E6C0, v35);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: Client not entitled", v26, 0xCu);
    sub_1000752F4(v27);
  }

  sub_10009591C();
  swift_allocError();
  *v28 = 15;
  a2();
}

uint64_t sub_1002FEFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1002FEFF0, 0, 0);
}

uint64_t sub_1002FEFF0()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 40) = qword_10051B858;

  return _swift_task_switch(sub_1002FF088, v1, 0);
}

uint64_t sub_1002FF088()
{
  v1 = *(v0 + 40);
  v2 = sub_10035E904();
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  NSManagedObjectContext.performAndWait<A>(_:)();

  return _swift_task_switch(sub_1002FF174, 0, 0);
}

uint64_t sub_1002FF174()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002FF1DC()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

void CredentialInternalServer.deleteApplication(identifier:reply:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23[-v10];
  v12 = [objc_opt_self() currentConnection];
  if (v12)
  {
    v13 = v12;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 valueForEntitlement:v14];

    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v23[15] == 1)
      {
        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
        v17 = swift_allocObject();
        v17[2] = 0;
        v17[3] = 0;
        v17[4] = a1;
        v17[5] = a2;
        v17[6] = a3;
        v17[7] = a4;

        sub_1001F9BE8(0, 0, v11, &unk_100414FC0, v17);

        return;
      }
    }

    else
    {

      sub_100075768(v26, &qword_100502420, &qword_10040F310);
    }
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v26[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046E6E0, v26);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: Client not entitled", v20, 0xCu);
    sub_1000752F4(v21);
  }

  sub_10009591C();
  swift_allocError();
  *v22 = 15;
  a3();
}

uint64_t sub_1002FF6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1002FF6F8, 0, 0);
}

uint64_t sub_1002FF6F8()
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B858;
  *(v0 + 48) = qword_10051B858;

  return _swift_task_switch(sub_1002FF790, v1, 0);
}

uint64_t sub_1002FF790()
{
  v1 = v0[6];
  v2 = sub_10035E904();
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v5;
  v6[5] = v4;
  NSManagedObjectContext.performAndWait<A>(_:)();

  return _swift_task_switch(sub_1002FF884, 0, 0);
}

uint64_t sub_1002FF884()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002FF8EC()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002FFA0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1002FFAD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000754F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000752F4(v11);
  return v7;
}

unint64_t sub_1002FFAD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1002FFBE4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1002FFBE4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1002FFC30(a1, a2);
  sub_1002FFD60(&off_1004C3480);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1002FFC30(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1001AC648(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001AC648(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1002FFD60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1002FFE4C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1002FFE4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1002FFF44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_1002FE5CC(a1, v4, v5, v7, v6);
}

uint64_t sub_100300004(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10012E598;

  return sub_1002FEFCC(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100300134(uint64_t a1)
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
  v10[1] = sub_10012E598;

  return sub_1002FF6D4(a1, v4, v5, v6, v7, v9, v8);
}

void sub_100300208(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21[-v5];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = objc_opt_self();
  _Block_copy(a2);
  v9 = [v8 currentConnection];
  if (v9)
  {
    v10 = v9;
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 valueForEntitlement:v11];

    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v24[0] = v22;
    v24[1] = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v21[15])
      {
        v13 = type metadata accessor for TaskPriority();
        (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
        v14 = swift_allocObject();
        v14[2] = 0;
        v14[3] = 0;
        v14[4] = sub_10021BE6C;
        v14[5] = v7;

        sub_1001F9BE8(0, 0, v6, &unk_100414FD8, v14);

        return;
      }
    }

    else
    {

      sub_100075768(v24, &qword_100502420, &qword_10040F310);
    }
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v24[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1002FFA0C(0xD00000000000001FLL, 0x800000010046E670, v24);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: Client not entitled", v17, 0xCu);
    sub_1000752F4(v18);
  }

  sub_10009591C();
  swift_allocError();
  *v19 = 15;
  v20 = _convertErrorToNSError(_:)();
  (a2)[2](a2, 0, v20);
}

void sub_1003005A8(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = type metadata accessor for UUID();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v7 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  v12 = objc_opt_self();
  _Block_copy(a3);
  v13 = [v12 currentConnection];
  if (v13)
  {
    v14 = v13;
    v29 = a1;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 valueForEntitlement:v15];

    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34[0] = v32;
    v34[1] = v33;
    if (*(&v33 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v31)
      {
        v17 = type metadata accessor for TaskPriority();
        (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
        v18 = v30;
        (*(v30 + 16))(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v5);
        v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = 0;
        *(v20 + 24) = 0;
        (*(v18 + 32))(v20 + v19, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
        v21 = (v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v21 = sub_10012E5A0;
        v21[1] = v11;

        sub_1001F9BE8(0, 0, v10, &unk_100414FD0, v20);

        return;
      }
    }

    else
    {

      sub_100075768(v34, &qword_100502420, &qword_10040F310);
    }
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v34[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x800000010046E6C0, v34);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s: Client not entitled", v24, 0xCu);
    sub_1000752F4(v25);
  }

  sub_10009591C();
  swift_allocError();
  *v26 = 15;
  v27 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v27);
}

void sub_100300A24(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25[-v9];
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = objc_opt_self();
  _Block_copy(a4);
  v13 = [v12 currentConnection];
  if (v13)
  {
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 valueForEntitlement:v15];

    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28[0] = v26;
    v28[1] = v27;
    if (*(&v27 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v25[15])
      {
        v17 = type metadata accessor for TaskPriority();
        (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = a1;
        v18[5] = a2;
        v18[6] = sub_10012DE64;
        v18[7] = v11;

        sub_1001F9BE8(0, 0, v10, &unk_100414FC8, v18);

        return;
      }
    }

    else
    {

      sub_100075768(v28, &qword_100502420, &qword_10040F310);
    }
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v28[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1002FFA0C(0xD000000000000024, 0x800000010046E6E0, v28);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s: Client not entitled", v21, 0xCu);
    sub_1000752F4(v22);
  }

  sub_10009591C();
  swift_allocError();
  *v23 = 15;
  v24 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v24);
}

uint64_t sub_100300DDC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100300E18()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100300E64()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100300F40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000C288C;

  return sub_1002FE5CC(a1, v4, v5, v7, v6);
}

uint64_t sub_100301020()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100301058(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000C288C;

  return sub_100204558(a1, a2, v6, v7, v8);
}

uint64_t sub_100301130(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003011F0, v1, 0);
}

uint64_t sub_1003011F0()
{
  v24 = v0;
  v1 = v0[1].i64[1];
  v2 = sub_10035E904();
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = v0[1].i64[0];
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[2].i64[1];
    v8 = v0[3].i64[0];
    v10 = v0[2].i64[0];
    v11 = v0[1].i64[0];
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v12 = 136315138;
    CredentialInternal.identifier.getter();
    sub_100305C50(&qword_100504C70, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1002FFA0C(v13, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Storing presentment attempt for credential %s", v12, 0xCu);
    sub_1000752F4(v22);
  }

  v17 = swift_task_alloc();
  v18 = v0[1];
  *(v17 + 16) = v2;
  *(v17 + 24) = vextq_s8(v18, v18, 8uLL);
  NSManagedObjectContext.performAndWait<A>(_:)();

  v20 = v0[3].i64[0];

  v21 = v0->i64[1];

  return v21();
}

uint64_t sub_10030148C()
{
  v1[6] = v0;
  v2 = *(type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount(0) - 8);
  v1[7] = v2;
  v3 = *(v2 + 64) + 15;
  v1[8] = swift_task_alloc();
  v4 = *(*(sub_100068FC4(&qword_10050A758, &qword_100414FF8) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v8 = type metadata accessor for SECPresentmentReport(0);
  v1[17] = v8;
  v9 = *(v8 - 8);
  v1[18] = v9;
  v10 = *(v9 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_10030168C, v0, 0);
}

uint64_t sub_10030168C()
{
  v187 = v0;
  v1 = v0[6];
  v2 = sub_100304F5C();
  v0[5] = v2;
  if (qword_1005019D8 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B2C8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v183 = v0;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      v185 = v7;
      *v6 = 136315138;
      v9 = v2[2];
      if (v9)
      {
        v169 = v7;
        v171 = v5;
        v174 = v6;
        v178 = v4;
        v10 = v0[18];
        v186[0] = _swiftEmptyArrayStorage;

        sub_10019F3C0(0, v9, 0);
        v11 = v186[0];
        v160 = v2;
        v12 = v2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v13 = *(v10 + 72);
        do
        {
          v14 = v0[22];
          sub_100305B00(v12, v14, type metadata accessor for SECPresentmentReport);
          v15 = UUID.uuidString.getter();
          v17 = v16;
          sub_100305B68(v14, type metadata accessor for SECPresentmentReport);
          v186[0] = v11;
          v19 = *(v11 + 16);
          v18 = *(v11 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_10019F3C0((v18 > 1), v19 + 1, 1);
            v11 = v186[0];
          }

          *(v11 + 16) = v19 + 1;
          v20 = v11 + 16 * v19;
          *(v20 + 32) = v15;
          *(v20 + 40) = v17;
          v12 += v13;
          --v9;
          v0 = v183;
        }

        while (v9);
        v2 = v160;

        v6 = v174;
        v4 = v178;
        v5 = v171;
        v8 = v169;
      }

      v21 = Array.description.getter();
      v23 = v22;

      v24 = sub_1002FFA0C(v21, v23, &v185);

      *(v6 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v4, v5, "stored reports %s", v6, 0xCu);
      sub_1000752F4(v8);
    }

    v25 = v0[6];
    v26 = sub_10030547C();
    v27 = 0;
    v28 = v26 + 8;
    v29 = -1 << *(v26 + 32);
    v143 = v0[18];
    v145 = v0[17];
    v30 = -v29 < 64 ? ~(-1 << -v29) : -1;
    v31 = v30 & v26[8];
    v32 = v0[12];
    v170 = v0[7];
    v33 = (63 - v29) >> 6;
    v168 = (v32 + 16);
    v158 = (v32 + 8);
    v164 = v32;
    v165 = (v32 + 32);
    v141 = v33;
    v142 = v26 + 8;
    v144 = v26;
LABEL_16:
    if (v31)
    {
      break;
    }

    while (1)
    {
      v35 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v35 >= v33)
      {
        v129 = v0[6];

        v62 = sub_10035E904();
        v130 = v0[6];
        v131 = swift_task_alloc();
        *(v131 + 16) = v62;
        *(v131 + 24) = v130;
        NSManagedObjectContext.performAndWait<A>(_:)();
        goto LABEL_65;
      }

      v31 = v28[v35];
      ++v27;
      if (v31)
      {
        v161 = v2;
        goto LABEL_22;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  v161 = v2;
  v35 = v27;
LABEL_22:
  v37 = v0[15];
  v36 = v0[16];
  v38 = v0[11];
  v155 = v35;
  v39 = (v35 << 9) | (8 * __clz(__rbit64(v31)));
  v40 = *(v26[6] + v39);
  v41 = *(v26[7] + v39);

  UUID.init()();
  v167 = *v168;
  (*v168)(v37, v36, v38);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v0[15];
  v46 = v0[11];
  if (v44)
  {
    v179 = v41;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v186[0] = v48;
    *v47 = 136315394;
    v49 = UUID.uuidString.getter();
    v51 = v50;
    v157 = *v158;
    (*v158)(v45, v46);
    v52 = sub_1002FFA0C(v49, v51, v186);
    v0 = v183;

    *(v47 + 4) = v52;
    *(v47 + 12) = 2048;
    *(v47 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v42, v43, "Generating report with uuid %s for timestamp %f", v47, 0x16u);
    sub_1000752F4(v48);

    v41 = v179;
  }

  else
  {

    v157 = *v158;
    (*v158)(v45, v46);
  }

  v156 = (v31 - 1) & v31;
  v53 = v0[21];
  v54 = v0[14];
  v55 = v0[11];
  v167(v54, v0[16], v55);
  v167(v53, v54, v55);
  *(v53 + *(v145 + 20)) = v40;
  v56 = *(v145 + 24);
  *(v53 + v56) = _swiftEmptyArrayStorage;
  v57 = sub_10026A9F8(v41);

  v58 = v57;
  v59 = 0;
  v60 = v57[2];
  v159 = _swiftEmptyArrayStorage;
  v2 = v165;
  while (1)
  {
    do
    {
      if (v60 == v59)
      {
        v102 = v0[20];
        v103 = v0[21];
        v104 = v0[14];
        v105 = v0[11];

        v157(v104, v105);
        sub_100305B00(v103, v102, type metadata accessor for SECPresentmentReport);
        swift_beginAccess();
        v106 = v161;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_10012FF38(0, v161[2] + 1, 1, v161);
        }

        v108 = v106[2];
        v107 = v106[3];
        if (v108 >= v107 >> 1)
        {
          v106 = sub_10012FF38(v107 > 1, v108 + 1, 1, v106);
        }

        v109 = v0[20];
        v110 = v0[6];
        v106[2] = v108 + 1;
        sub_100305BC8(v109, v106 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v108, type metadata accessor for SECPresentmentReport);
        v0[5] = v106;
        swift_endAccess();
        v111 = sub_10035E904();
        v112 = v0[21];
        v113 = swift_task_alloc();
        *(v113 + 16) = v111;
        *(v113 + 24) = v112;
        NSManagedObjectContext.performAndWait<A>(_:)();
        v162 = v106;
        v114 = v0[21];
        v115 = v0[19];

        sub_100305B00(v114, v115, type metadata accessor for SECPresentmentReport);
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.debug.getter();
        v118 = os_log_type_enabled(v116, v117);
        v119 = v0[21];
        v120 = v0[19];
        v121 = v0[16];
        v122 = v0[11];
        if (v118)
        {
          v123 = swift_slowAlloc();
          v181 = v119;
          v124 = swift_slowAlloc();
          v186[0] = v124;
          *v123 = 136315138;
          sub_100268D04();
          v176 = v122;
          v125 = Dictionary.description.getter();
          v127 = v126;

          sub_100305B68(v120, type metadata accessor for SECPresentmentReport);
          v128 = sub_1002FFA0C(v125, v127, v186);
          v0 = v183;

          *(v123 + 4) = v128;
          _os_log_impl(&_mh_execute_header, v116, v117, "stored this report %s", v123, 0xCu);
          sub_1000752F4(v124);

          v157(v121, v176);
          v34 = v181;
        }

        else
        {

          sub_100305B68(v120, type metadata accessor for SECPresentmentReport);
          v157(v121, v122);
          v34 = v119;
        }

        sub_100305B68(v34, type metadata accessor for SECPresentmentReport);
        v27 = v155;
        v31 = v156;
        v2 = v162;
        v26 = v144;
        v33 = v141;
        v28 = v142;
        goto LABEL_16;
      }

      if (v59 >= v60)
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v61 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_69;
      }

      v62 = v58[v59++ + 4];
    }

    while (!v62[2]);
    v151 = v60;
    v152 = v58;
    v153 = v56;
    v154 = v53;
    v150 = v61;
    v63 = type metadata accessor for PresentmentInfo();
    v64 = *(v63 - 1);
    v63 -= 2;
    v65 = v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v66 = &v65[v63[10]];
    v67 = *(v66 + 1);
    v149 = *v66;
    v146 = *&v65[v63[9]];
    v147 = *&v65[v63[8]];
    swift_bridgeObjectRetain_n();
    v148 = v67;

    v68 = sub_100269FD8(v62);

    v69 = 0;
    v71 = v68 + 8;
    v70 = v68[8];
    v166 = v68;
    v72 = -1 << *(v68 + 32);
    v73 = -v72 < 64 ? ~(-1 << -v72) : -1;
    v74 = v73 & v70;
    v75 = (63 - v72) >> 6;
    v76 = _swiftEmptyArrayStorage;
    v172 = v75;
    v175 = v68 + 8;
    if ((v73 & v70) == 0)
    {
      break;
    }

    while (1)
    {
      v180 = v76;
      v77 = v69;
LABEL_43:
      v80 = v0[13];
      v81 = v0[11];
      v82 = v183[9];
      v83 = __clz(__rbit64(v74));
      v74 &= v74 - 1;
      v84 = v83 | (v77 << 6);
      v167(v80, v166[6] + *(v164 + 72) * v84, v81);
      v85 = *(v166[7] + 8 * v84);
      v86 = sub_100068FC4(&qword_10050A760, &qword_100415000);
      v87 = *(v86 + 48);
      v2 = v165;
      (*(v164 + 32))(v82, v80, v81);
      *(v82 + v87) = v85;
      v0 = v183;
      (*(*(v86 - 8) + 56))(v82, 0, 1, v86);

      v76 = v180;
LABEL_44:
      v88 = v0[10];
      sub_100305A58(v0[9], v88);
      v89 = sub_100068FC4(&qword_10050A760, &qword_100415000);
      if ((*(*(v89 - 8) + 48))(v88, 1, v89) == 1)
      {
        break;
      }

      v90 = v0[13];
      v91 = v0[11];
      v92 = v0[8];
      v93 = *(v0[10] + *(v89 + 48));
      (*v2)(v90);
      sub_1002661E4(v90, v93, v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_10012FC98(0, v76[2] + 1, 1, v76);
      }

      v95 = v76[2];
      v94 = v76[3];
      v62 = (v95 + 1);
      if (v95 >= v94 >> 1)
      {
        v76 = sub_10012FC98(v94 > 1, v95 + 1, 1, v76);
      }

      v96 = v0[8];
      v76[2] = v62;
      sub_100305BC8(v96, v76 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v95, type metadata accessor for SECPresentmentReport.SECPresentmentAggregate.PresentmentCount);
      v75 = v172;
      v71 = v175;
      if (!v74)
      {
        goto LABEL_35;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v159 = sub_10012FCC0(0, *(v159 + 2) + 1, 1, v159);
    }

    v56 = v153;
    v53 = v154;
    v100 = *(v159 + 2);
    v99 = *(v159 + 3);
    if (v100 >= v99 >> 1)
    {
      v159 = sub_10012FCC0((v99 > 1), v100 + 1, 1, v159);
    }

    *(v159 + 2) = v100 + 1;
    v101 = &v159[40 * v100];
    *(v101 + 4) = v146;
    *(v101 + 5) = v149;
    *(v101 + 6) = v148;
    *(v101 + 7) = v147;
    *(v101 + 8) = v76;

    *(v154 + v153) = v159;
    v60 = v151;
    v58 = v152;
    v59 = v150;
  }

LABEL_35:
  if (v75 <= v69 + 1)
  {
    v78 = v69 + 1;
  }

  else
  {
    v78 = v75;
  }

  v79 = v78 - 1;
  while (1)
  {
    v77 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v77 >= v75)
    {
      v97 = v0[9];
      v98 = sub_100068FC4(&qword_10050A760, &qword_100415000);
      (*(*(v98 - 8) + 56))(v97, 1, 1, v98);
      v74 = 0;
      v69 = v79;
      goto LABEL_44;
    }

    v74 = v71[v77];
    ++v69;
    if (v74)
    {
      v180 = v76;
      v69 = v77;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_65:
  v163 = v2;
  v133 = v0[21];
  v132 = v0[22];
  v135 = v0[19];
  v134 = v0[20];
  v137 = v0[15];
  v136 = v0[16];
  v138 = v0[14];
  v173 = v0[13];
  v177 = v0[10];
  v182 = v0[9];
  v184 = v0[8];

  v139 = v0[1];

  return v139(v163);
}

uint64_t sub_10030265C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PresentmentInfo();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 productConfigUUID];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [a1 appName];
  if (!v16)
  {
    (*(v5 + 8))(v8, v4);
LABEL_13:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000958E4(v27, qword_10051B2C8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Store Presentment Event is corrupted", v30, 2u);
    }

    v26 = 1;
    return (*(v10 + 56))(a2, v26, 1, v9);
  }

  v32 = a2;
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  (*(v5 + 16))(v13, v8, v4);
  result = [a1 countryCode];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  *&v13[v9[6]] = result;
  v22 = &v13[v9[8]];
  *v22 = v18;
  v22[1] = v20;
  result = [a1 adamId];
  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *&v13[v9[7]] = result;
  [a1 presentingTimestamp];
  *&v13[v9[9]] = v23;
  v24 = [a1 presentmentType];

  result = (*(v5 + 8))(v8, v4);
  if ((v24 & 0x80000000) == 0)
  {
    if (v24 == 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (!v24)
    {
      v25 = 0;
    }

    v13[v9[5]] = v25;
    a2 = v32;
    sub_100305BC8(v13, v32, type metadata accessor for PresentmentInfo);
    v26 = 0;
    return (*(v10 + 56))(a2, v26, 1, v9);
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1003029EC(void *a1, uint64_t a2)
{
  type metadata accessor for PresentmentEventEntity();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a1];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v4 setProductConfigUUID:isa];

  v6 = type metadata accessor for PresentmentInfo();
  if ((*(a2 + *(v6 + 28)) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v4 setAdamId:?];
  if ((*(a2 + v7[6]) & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  [v4 setCountryCode:?];
  v8 = (a2 + v7[8]);
  v9 = *v8;
  v10 = v8[1];
  v11 = String._bridgeToObjectiveC()();
  [v4 setAppName:v11];

  [v4 setPresentmentType:*(a2 + v7[5])];
  [v4 setPresentingTimestamp:*(a2 + v7[9])];
  v22 = 0;
  if ([a1 save:&v22])
  {
    v12 = v22;
    goto LABEL_9;
  }

  v13 = v22;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1005019D8 != -1)
  {
    goto LABEL_12;
  }

LABEL_6:
  v14 = type metadata accessor for Logger();
  sub_1000958E4(v14, qword_10051B2C8);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_1002FFA0C(0xD000000000000018, 0x800000010046E7E0, &v22);
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = sub_1002FFA0C(v18, v19, &v22);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: CoreData error %s encountered while saving view context", v17, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();

LABEL_9:
}

void sub_100302D3C(void *a1, uint64_t a2, void *a3)
{
  v104 = a3;
  v88 = type metadata accessor for Date();
  v96 = *(v88 - 8);
  v6 = *(v96 + 64);
  __chkstk_darwin(v88);
  v87 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for UUID();
  v90 = *(v105 - 8);
  v8 = *(v90 + 64);
  __chkstk_darwin(v105);
  v92 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v10 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v12 = &v84 - v11;
  v13 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v84 - v19;
  __chkstk_darwin(v18);
  v22 = &v84 - v21;
  v24 = *(a2 + 128);
  v23 = *(a2 + 136);
  v25 = objc_allocWithZone(NSFetchRequest);
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 initWithEntityName:v26];

  type metadata accessor for SecureElementCredentialEntity();
  v28 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    goto LABEL_3;
  }

  v110 = v22;
  v95 = v20;
  v94 = v17;
  v85 = a1;
  v102 = v28;

  v37 = v102;
  if (v102 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
    v37 = v102;
  }

  else
  {
    v38 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v105;
  v40 = v95;
  v86 = 0;
  if (!v38)
  {
LABEL_27:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_1000958E4(v66, qword_10051B2C8);
    v67 = v104;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v90;
    v72 = v92;
    if (v70)
    {
      v73 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = v110;
      *v73 = 136315394;
      *(v73 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x800000010046E800, &v111);
      *(v73 + 12) = 2080;
      CredentialInternal.identifier.getter();
      sub_100305C50(&qword_100504C70, &type metadata accessor for UUID);
      v74 = v105;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      (*(v71 + 8))(v72, v74);
      v78 = sub_1002FFA0C(v75, v77, &v111);

      *(v73 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v68, v69, "%s credential %s not found", v73, 0x16u);
      swift_arrayDestroy();
    }

    return;
  }

  v41 = 0;
  v100 = v37 & 0xFFFFFFFFFFFFFF8;
  v101 = v37 & 0xC000000000000001;
  v109 = (v90 + 56);
  v89 = (v90 + 32);
  v93 = (v90 + 8);
  v97 = v38;
  v98 = v12;
  v99 = (v90 + 48);
  while (1)
  {
    if (v101)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *(v100 + 16))
      {
        goto LABEL_37;
      }

      v44 = *(v37 + 8 * v41 + 32);
    }

    v45 = v44;
    v46 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v106 = v41;
    v47 = v39;
    v48 = v110;
    CredentialInternal.identifier.getter();
    v49 = *v109;
    v50 = 1;
    (*v109)(v48, 0, 1, v47);
    v108 = v45;
    v51 = [v45 uuid];
    if (v51)
    {
      v52 = v51;
      v53 = v40;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = 0;
    }

    else
    {
      v53 = v40;
    }

    v39 = v105;
    v49(v53, v50, 1, v105);
    v54 = *(v103 + 48);
    v55 = v110;
    v56 = v98;
    sub_1000756F8(v110, v98);
    sub_1000756F8(v53, v56 + v54);
    v57 = *v99;
    v58 = (*v99)(v56, 1, v39);
    v107 = v46;
    if (v58 == 1)
    {
      break;
    }

    v59 = v94;
    sub_1000756F8(v56, v94);
    if (v57(v56 + v54, 1, v39) == 1)
    {
      v60 = v95;
      sub_100075768(v95, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v110, &unk_10050BE80, &unk_10040B360);
      v61 = v59;
      v40 = v60;
      (*v93)(v61, v39);
      goto LABEL_12;
    }

    v62 = v92;
    (*v89)(v92, v56 + v54, v39);
    sub_100305C50(&qword_100502C18, &type metadata accessor for UUID);
    v91 = dispatch thunk of static Equatable.== infix(_:_:)();
    v63 = *v93;
    (*v93)(v62, v39);
    v64 = v95;
    sub_100075768(v95, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v110, &unk_10050BE80, &unk_10040B360);
    v65 = v59;
    v40 = v64;
    v63(v65, v39);
    sub_100075768(v56, &unk_10050BE80, &unk_10040B360);
    v43 = v96;
    if (v91)
    {
      goto LABEL_33;
    }

LABEL_13:

    v41 = v106 + 1;
    v37 = v102;
    if (v107 == v97)
    {
      goto LABEL_27;
    }
  }

  sub_100075768(v53, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v55, &unk_10050BE80, &unk_10040B360);
  v42 = v57(v56 + v54, 1, v39);
  v43 = v96;
  if (v42 != 1)
  {
LABEL_12:
    sub_100075768(v56, &qword_1005031D0, &unk_100413B20);
    goto LABEL_13;
  }

  sub_100075768(v56, &unk_10050BE80, &unk_10040B360);
LABEL_33:

  v79 = v87;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v43 + 8))(v79, v88);
  v81 = v108;
  [v108 setLastUsedDate:isa];

  v111 = 0;
  if ([v85 save:&v111])
  {
    v82 = v111;

    return;
  }

  v83 = v111;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_3:
  if (qword_1005019D8 != -1)
  {
LABEL_38:
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000958E4(v29, qword_10051B2C8);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v32 = 136315394;
    *(v32 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x800000010046E800, &v111);
    *(v32 + 12) = 2080;
    swift_getErrorValue();
    v33 = Error.localizedDescription.getter();
    v35 = sub_1002FFA0C(v33, v34, &v111);

    *(v32 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s: CoreData error %s encountered while storing presentment attempt", v32, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v36 = 0;
  swift_willThrow();
}

uint64_t sub_1003038A4(void *a1, uint64_t a2)
{
  v4 = *(a2 + 176);
  v5 = *(a2 + 184);
  v6 = objc_allocWithZone(NSFetchRequest);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithEntityName:v7];

  type metadata accessor for PresentmentEventEntity();
  v9 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    goto LABEL_15;
  }

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_5:
      if (v10 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v10; ++i)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = *(v9 + 8 * i + 32);
        }

        v13 = v12;
        [a1 deleteObject:v12];
      }
    }
  }

  v25 = 0;
  if ([a1 save:&v25])
  {
    v14 = v25;
  }

  v15 = v25;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_15:
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_10051B2C8);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_1002FFA0C(0xD00000000000001ALL, 0x800000010046E760, &v25);
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = sub_1002FFA0C(v20, v21, &v25);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: CoreData error %s encountered while deleting entity", v19, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v23 = 0;
  swift_willThrow();

  if (!v2)
  {
  }

  return result;
}

void *sub_100303C30()
{
  v3 = sub_100068FC4(&qword_10050A770, &qword_100415008);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for PresentmentInfo();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10035E904();
  if (v1)
  {
    if (qword_1005019D8 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

  v13 = v12;
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  v16 = objc_allocWithZone(NSFetchRequest);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithEntityName:v17];

  type metadata accessor for PresentmentEventEntity();
  v28 = NSManagedObjectContext.fetch<A>(_:)();

  if (v28 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v37 = 0;
    if (v29)
    {
      goto LABEL_10;
    }

LABEL_28:
    v2 = _swiftEmptyArrayStorage;
LABEL_29:

    return v2;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v37 = 0;
  if (!v29)
  {
    goto LABEL_28;
  }

LABEL_10:
  v30 = v8;
  v31 = 0;
  v41 = v28 & 0xFFFFFFFFFFFFFF8;
  v42 = v28 & 0xC000000000000001;
  v39 = v30;
  v32 = (v30 + 48);
  v2 = _swiftEmptyArrayStorage;
  v40 = v7;
  v38 = v29;
  while (v42)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_10030265C(v33, v6);
    if ((*v32)(v6, 1, v7) == 1)
    {
      sub_100075768(v6, &qword_10050A770, &qword_100415008);
    }

    else
    {
      sub_100305BC8(v6, v11, type metadata accessor for PresentmentInfo);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_10012FF60(0, v2[2] + 1, 1, v2);
      }

      v36 = v2[2];
      v35 = v2[3];
      if (v36 >= v35 >> 1)
      {
        v2 = sub_10012FF60(v35 > 1, v36 + 1, 1, v2);
      }

      v2[2] = v36 + 1;
      sub_100305BC8(v11, v2 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v36, type metadata accessor for PresentmentInfo);
      v7 = v40;
      v29 = v38;
    }

    ++v31;
    if (v34 == v29)
    {
      goto LABEL_29;
    }
  }

  if (v31 >= *(v41 + 16))
  {
    goto LABEL_25;
  }

  v33 = *(v28 + 8 * v31 + 32);
  v34 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_4:
  v19 = type metadata accessor for Logger();
  sub_1000958E4(v19, qword_10051B2C8);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_1002FFA0C(0xD00000000000001ALL, 0x800000010046E7A0, &v43);
    *(v22 + 12) = 2080;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = sub_1002FFA0C(v23, v24, &v43);

    *(v22 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: CoreData error %s encountered while fetching entity", v22, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v26 = 0;
  swift_willThrow();

  return v2;
}

id sub_100304150(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for SECPresentmentReport(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PresentmentReportEntity();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a1];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v9 setReportUUID:isa];

  v11 = type metadata accessor for JSONEncoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100305C50(&qword_10050A768, type metadata accessor for SECPresentmentReport);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_10051B2C8);
    sub_100305B00(a2, v8, type metadata accessor for SECPresentmentReport);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_1002FFA0C(0xD00000000000001ALL, 0x800000010046E780, &v42);
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v20 = Error.localizedDescription.getter();
      v22 = sub_1002FFA0C(v20, v21, &v42);

      *(v19 + 14) = v22;
      *(v19 + 22) = 2080;
      v23 = UUID.uuidString.getter();
      v25 = v24;
      sub_100305B68(v8, type metadata accessor for SECPresentmentReport);
      v26 = sub_1002FFA0C(v23, v25, &v42);

      *(v19 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: JSON Encoding error %s while encoding presentment report %s", v19, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100305B68(v8, type metadata accessor for SECPresentmentReport);
    }

    sub_10009591C();
    swift_allocError();
    *v31 = 14;
    swift_willThrow();
  }

  else
  {
    v27 = v14;
    v28 = v15;

    v29 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v27, v28);
    [v9 setRawPayload:v29];

    v42 = 0;
    if ([a1 save:&v42])
    {
      return v42;
    }

    else
    {
      v32 = v42;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000958E4(v33, qword_10051B2C8);
      swift_errorRetain();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v36 = 136315394;
        *(v36 + 4) = sub_1002FFA0C(0xD00000000000001ALL, 0x800000010046E780, &v42);
        *(v36 + 12) = 2080;
        swift_getErrorValue();
        v37 = Error.localizedDescription.getter();
        v39 = sub_1002FFA0C(v37, v38, &v42);

        *(v36 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v34, v35, "%s: CoreData error %s encountered while saving view context", v36, 0x16u);
        swift_arrayDestroy();
      }

      sub_10009591C();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
    }
  }
}

void sub_100304750(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 192);
  v7 = *(a2 + 200);
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithEntityName:v9];

  type metadata accessor for PresentmentReportEntity();
  v11 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v3)
  {
    v20 = v11;

    __chkstk_darwin(v21);
    v25[2] = a3;
    v10 = sub_10011F6D0(sub_1003058F4, v25, v20);

    if (!v10)
    {
      sub_10009591C();
      swift_allocError();
      *v23 = 6;
      swift_willThrow();
      goto LABEL_3;
    }

    [a1 deleteObject:v10];
    v26 = 0;
    if ([a1 save:&v26])
    {
      v22 = v26;

      return;
    }

    v24 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_3:
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000958E4(v12, qword_10051B2C8);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_1002FFA0C(0xD00000000000001BLL, 0x800000010046E740, &v26);
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1002FFA0C(v16, v17, &v26);

    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: CoreData error %s encountered while saving view context", v15, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();
}

uint64_t sub_100304ACC(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v31 - v17;
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  v21 = [*a1 reportUUID];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v5 + 56);
    v23(v20, 0, 1, v4);
  }

  else
  {
    v23 = *(v5 + 56);
    v23(v20, 1, 1, v4);
  }

  (*(v5 + 16))(v18, a2, v4);
  v23(v18, 0, 1, v4);
  v24 = *(v8 + 48);
  sub_1000756F8(v20, v11);
  sub_1000756F8(v18, &v11[v24]);
  v25 = *(v5 + 48);
  if (v25(v11, 1, v4) != 1)
  {
    v27 = v32;
    sub_1000756F8(v11, v32);
    if (v25(&v11[v24], 1, v4) != 1)
    {
      v28 = v31;
      (*(v5 + 32))(v31, &v11[v24], v4);
      sub_100305C50(&qword_100502C18, &type metadata accessor for UUID);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v28, v4);
      sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
      v29(v32, v4);
      sub_100075768(v11, &unk_10050BE80, &unk_10040B360);
      return v26 & 1;
    }

    sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
    (*(v5 + 8))(v27, v4);
    goto LABEL_9;
  }

  sub_100075768(v18, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v20, &unk_10050BE80, &unk_10040B360);
  if (v25(&v11[v24], 1, v4) != 1)
  {
LABEL_9:
    sub_100075768(v11, &qword_1005031D0, &unk_100413B20);
    v26 = 0;
    return v26 & 1;
  }

  sub_100075768(v11, &unk_10050BE80, &unk_10040B360);
  v26 = 1;
  return v26 & 1;
}

void *sub_100304F5C()
{
  v3 = sub_100068FC4(&qword_100508888, &qword_100410F78);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for SECPresentmentReport(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10035E904();
  if (v1)
  {
    if (qword_1005019D8 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

  v13 = v12;
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = objc_allocWithZone(NSFetchRequest);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithEntityName:v17];

  type metadata accessor for PresentmentReportEntity();
  v28 = NSManagedObjectContext.fetch<A>(_:)();

  if (v28 >> 62)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v37 = 0;
    if (v29)
    {
      goto LABEL_10;
    }

LABEL_28:
    v2 = _swiftEmptyArrayStorage;
LABEL_29:

    return v2;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v37 = 0;
  if (!v29)
  {
    goto LABEL_28;
  }

LABEL_10:
  v30 = v8;
  v31 = 0;
  v41 = v28 & 0xFFFFFFFFFFFFFF8;
  v42 = v28 & 0xC000000000000001;
  v39 = v30;
  v32 = (v30 + 48);
  v2 = _swiftEmptyArrayStorage;
  v40 = v7;
  v38 = v29;
  while (v42)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_1002681C4(v33, v6);
    if ((*v32)(v6, 1, v7) == 1)
    {
      sub_100075768(v6, &qword_100508888, &qword_100410F78);
    }

    else
    {
      sub_100305BC8(v6, v11, type metadata accessor for SECPresentmentReport);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_10012FF38(0, v2[2] + 1, 1, v2);
      }

      v36 = v2[2];
      v35 = v2[3];
      if (v36 >= v35 >> 1)
      {
        v2 = sub_10012FF38(v35 > 1, v36 + 1, 1, v2);
      }

      v2[2] = v36 + 1;
      sub_100305BC8(v11, v2 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v36, type metadata accessor for SECPresentmentReport);
      v7 = v40;
      v29 = v38;
    }

    ++v31;
    if (v34 == v29)
    {
      goto LABEL_29;
    }
  }

  if (v31 >= *(v41 + 16))
  {
    goto LABEL_25;
  }

  v33 = *(v28 + 8 * v31 + 32);
  v34 = v31 + 1;
  if (!__OFADD__(v31, 1))
  {
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_4:
  v19 = type metadata accessor for Logger();
  sub_1000958E4(v19, qword_10051B2C8);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_1002FFA0C(0xD000000000000012, 0x800000010046E7C0, &v43);
    *(v22 + 12) = 2080;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = sub_1002FFA0C(v23, v24, &v43);

    *(v22 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s: CoreData error %s encountered while fetching entity", v22, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009591C();
  swift_allocError();
  *v26 = 0;
  swift_willThrow();

  return v2;
}

void *sub_10030547C()
{
  v1 = type metadata accessor for PresentmentInfo();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100303C30();
  if (!v0)
  {
    v7 = result;
    v16 = 0;
    v8 = result[2];
    v9 = _swiftEmptyArrayStorage;
    if (v8)
    {
      v17 = _swiftEmptyArrayStorage;
      sub_10019F988(0, v8, 0);
      v9 = v17;
      v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v11 = *(v2 + 72);
      do
      {
        sub_100305B00(v10, v5, type metadata accessor for PresentmentInfo);
        v12 = *&v5[*(v1 + 36)];
        sub_100305B68(v5, type metadata accessor for PresentmentInfo);
        v17 = v9;
        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_10019F988((v13 > 1), v14 + 1, 1);
          v9 = v17;
        }

        v9[2] = v14 + 1;
        v9[v14 + 4] = v12;
        v10 += v11;
        --v8;
      }

      while (v8);
    }

    v15 = sub_1000E2250(v9);

    v17 = _swiftEmptyDictionarySingleton;

    sub_100305914(v15, &v17, v7);

    swift_bridgeObjectRelease_n();
    return v17;
  }

  return result;
}

unint64_t sub_100305680(double *a1, void *a2, uint64_t a3)
{
  v26 = a2;
  v27 = type metadata accessor for PresentmentInfo();
  v5 = *(*(v27 - 8) + 64);
  v6 = __chkstk_darwin(v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v25 - v10;
  v12 = *a1;
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = *(v9 + 72);
    v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = a3 + v28;
    v16 = _swiftEmptyArrayStorage;
    v17 = v27;
    do
    {
      sub_100305B00(v15, v11, type metadata accessor for PresentmentInfo);
      if (*&v11[*(v17 + 36)] == v12)
      {
        sub_100305BC8(v11, v8, type metadata accessor for PresentmentInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F8F4(0, v16[2] + 1, 1);
          v17 = v27;
          v16 = v29;
        }

        v20 = v16[2];
        v19 = v16[3];
        if (v20 >= v19 >> 1)
        {
          sub_10019F8F4(v19 > 1, v20 + 1, 1);
          v17 = v27;
          v16 = v29;
        }

        v16[2] = v20 + 1;
        sub_100305BC8(v8, v16 + v28 + v20 * v14, type metadata accessor for PresentmentInfo);
      }

      else
      {
        sub_100305B68(v11, type metadata accessor for PresentmentInfo);
      }

      v15 += v14;
      --v13;
    }

    while (v13);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v21 = v26;
  v22 = *v26;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  result = sub_100317120(v16, v23, v12);
  *v21 = v29;
  return result;
}

unint64_t sub_100305914(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
      result = sub_100305680(&v15, a2, a3);
      if (v3)
      {
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for PresentmentInfo()
{
  result = qword_10050A7D0;
  if (!qword_10050A7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100305A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_10050A758, &qword_100414FF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100305B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100305B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100305BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100305C50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100305CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100305D80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100305E3C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100305EE8()
{
  result = qword_10050A818;
  if (!qword_10050A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050A818);
  }

  return result;
}

uint64_t sub_100305F3C()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_10050A820);
  sub_1000958E4(v0, qword_10050A820);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_100305FF0()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_10050A838);
  sub_1000958E4(v0, qword_10050A838);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1003060A4()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_10050A850);
  sub_1000958E4(v0, qword_10050A850);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100306124(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v79 = a4;
  v83 = a1;
  v5 = type metadata accessor for OSEligibilityAnswer();
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  v7 = __chkstk_darwin(v5);
  v75 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v74 = v67 - v9;
  v10 = type metadata accessor for OSEligibilityDomain();
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = *(v81 + 64);
  v12 = __chkstk_darwin(v10);
  v69 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v70 = v67 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v67 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v67 - v20;
  v22 = __chkstk_darwin(v19);
  v68 = v67 - v23;
  __chkstk_darwin(v22);
  v25 = v67 - v24;
  v26 = type metadata accessor for OSEligibilityResult();
  v72 = *(v26 - 8);
  v73 = v26;
  v27 = *(v72 + 64);
  v28 = __chkstk_darwin(v26);
  v80 = v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v71 = v67 - v30;
  v31 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v32 = *(v31 - 8);
  v33 = v32[8];
  __chkstk_darwin(v31);
  v35 = v67 - v34;
  if (qword_100501D38 != -1)
  {
    swift_once();
  }

  v36 = sub_1000958E4(v31, qword_10050A820);
  v37 = v32[2];
  v37(v35, v36, v31);
  UserDefaultBacked.wrappedValue.getter();
  v38 = v32[1];
  v38(v35, v31);
  if (v84)
  {
    if (qword_100501D48 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000958E4(v39, qword_10050A850);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_32;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v84 = v43;
    *v42 = 136315138;
    if (v83 > 3u)
    {
      if (v83 > 5u)
      {
        if (v83 != 6)
        {
          v44 = 0xEF656D6954747372;
          v45 = 0x6946454348657375;
          goto LABEL_31;
        }

        v45 = 0xD000000000000010;
        v63 = "setDefaultHCEApp";
      }

      else
      {
        v45 = 0xD000000000000010;
        if (v83 == 4)
        {
          v63 = "setDefaultSECApp";
        }

        else
        {
          v63 = "useDefaultHCEApp";
        }
      }
    }

    else
    {
      if (v83 <= 1u)
      {
        if (v83)
        {
          v44 = 0x8000000100467BE0;
          v45 = 0xD000000000000013;
        }

        else
        {
          v44 = 0xEE0068636E75614CLL;
          v45 = 0x7070417473726966;
        }

        goto LABEL_31;
      }

      if (v83 == 2)
      {
        v44 = 0x800000010046E8A0;
        v45 = 0xD000000000000016;
LABEL_31:
        v65 = sub_1002FFA0C(v45, v44, &v84);

        *(v42 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v40, v41, "Bypassing eligibility check for domain %s due to UD", v42, 0xCu);
        sub_1000752F4(v43);

LABEL_32:

        v61 = 1;
        return v61 & 1;
      }

      v45 = 0xD000000000000010;
      v63 = "useDefaultSECApp";
    }

    v44 = (v63 - 32) | 0x8000000000000000;
    goto LABEL_31;
  }

  if (a2[4])
  {
    goto LABEL_15;
  }

  v46 = *a2;
  v67[1] = a2[1];
  v67[2] = v46;
  v47 = a2[2];
  v48 = a2[3];
  v67[0] = v47;
  if (qword_100501D40 != -1)
  {
    swift_once();
  }

  v49 = sub_1000958E4(v31, qword_10050A838);
  v37(v35, v49, v31);
  UserDefaultBacked.wrappedValue.getter();
  v38(v35, v31);
  if (v84)
  {
LABEL_15:
    v51 = v81;
    v50 = v82;
    if (v79)
    {
      (*(v81 + 104))(v18, **(&off_1004D0338 + v83), v82);
      (*(v51 + 32))(v21, v18, v50);
      v52 = v80;
      static OSEligibilityResult.result(for:bundleID:persona:)();
      v25 = v21;
    }

    else
    {
      v53 = v69;
      (*(v81 + 104))(v69, **(&off_1004D0338 + v83), v82);
      v25 = v70;
      (*(v51 + 32))(v70, v53, v50);
      v52 = v80;
      static OSEligibilityResult.result(for:)();
    }
  }

  else
  {
    v51 = v81;
    v50 = v82;
    v64 = v68;
    (*(v81 + 104))(v68, **(&off_1004D0338 + v83), v82);
    (*(v51 + 32))(v25, v64, v50);
    v52 = v80;
    static OSEligibilityResult.result(for:auditToken:)();
  }

  (*(v51 + 8))(v25, v50);
  v55 = v71;
  v54 = v72;
  v56 = v73;
  (*(v72 + 32))(v71, v52, v73);
  v57 = v74;
  OSEligibilityResult.answer.getter();
  v59 = v75;
  v58 = v76;
  v60 = v77;
  (*(v76 + 104))(v75, enum case for OSEligibilityAnswer.eligible(_:), v77);
  v61 = static OSEligibilityAnswer.== infix(_:_:)();
  v62 = *(v58 + 8);
  v62(v59, v60);
  v62(v57, v60);
  (*(v54 + 8))(v55, v56);
  return v61 & 1;
}

uint64_t sub_100306B34()
{
  type metadata accessor for SECPresentmentIntentManager();
  v0 = swift_allocObject();
  sub_1003089F4();
  sub_100068FC4(&qword_10050AA00, &unk_1004151A8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_10050A868 = result;
  return result;
}

void sub_100306B98(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  v6 = __chkstk_darwin(v4);
  v64 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v58 - v9;
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2[9];
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v63 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v2[2])
  {
    if (qword_1005019D8 == -1)
    {
LABEL_4:
      v19 = type metadata accessor for Logger();
      sub_1000958E4(v19, qword_10051B2C8);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        aBlock[0] = v23;
        *v22 = 136315138;
        if ((a1 & 0x100000000) != 0)
        {
          v24 = 0xEA00000000006465;
          v25 = 0x6369767265736573;
        }

        else
        {
          v67 = a1;
          sub_1003096B0();
          v25 = BinaryInteger.description.getter();
          v24 = v53;
        }

        v54 = sub_1002FFA0C(v25, v24, aBlock);

        *(v22 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v20, v21, "Presentment Assertion is being held by another process, adding acquirer %s", v22, 0xCu);
        sub_1000752F4(v23);
      }

LABEL_25:
      sub_10009591C();
      swift_allocError();
      *v55 = 25;
      swift_willThrow();
      return;
    }

LABEL_28:
    swift_once();
    goto LABEL_4;
  }

  if ((a1 & 0x100000000) == 0)
  {
    swift_beginAccess();
    if (*(v2[8] + 16))
    {
      sub_10008CBA8(a1);
      if (v26)
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_1000958E4(v27, qword_10051B2C8);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 67109120;
          *(v30 + 4) = a1;
          _os_log_impl(&_mh_execute_header, v28, v29, "Presentment assertion unavailable during cooldown for %d", v30, 8u);
        }

        goto LABEL_25;
      }
    }
  }

  UUID.init()();
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000958E4(v31, qword_10051B2C8);
  v32 = v66;
  v60 = *(v66 + 16);
  v61 = v66 + 16;
  v60(v10, v12, v4);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v59 = v4;
    v36 = v35;
    v37 = swift_slowAlloc();
    v58 = a1;
    v38 = v37;
    aBlock[0] = v37;
    *v36 = 136315138;
    v39 = UUID.uuidString.getter();
    v40 = v32;
    v42 = v41;
    v62 = *(v40 + 8);
    v62(v10, v59);
    v43 = sub_1002FFA0C(v39, v42, aBlock);

    *(v36 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v33, v34, "Starting assertion with identifier %s", v36, 0xCu);
    sub_1000752F4(v38);
    a1 = v58;

    v4 = v59;
  }

  else
  {

    v62 = *(v32 + 8);
    v62(v10, v4);
  }

  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *(v44 + 20) = BYTE4(a1) & 1;
  *(v44 + 24) = v2;
  v45 = objc_allocWithZone(SESTimer);
  v70 = sub_10030968C;
  v71 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  v69 = &unk_1004D0520;
  v46 = _Block_copy(aBlock);

  v47 = sub_1003AE50C(v45, v63, v46);
  _Block_release(v46);

  v48 = v64;
  v60(v64, v12, v4);
  v69 = type metadata accessor for SECPresentmentIntentManager();
  v70 = &off_1004D0378;
  aBlock[0] = v2;
  v49 = objc_allocWithZone(type metadata accessor for SECPresentmentIntentAssertion());

  v50 = v47;
  v72 = BYTE4(a1) & 1;
  v51 = v65;
  v52 = sub_100308C60(v48, a1 | ((BYTE4(a1) & 1) << 32), v50, aBlock);
  if (v51)
  {
    v62(v12, v4);
  }

  else
  {
    v56 = v52;
    sub_1003AE64C(*&v52[OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_timer], 14.5, 0.5);

    v62(v12, v4);
    v57 = v2[2];
    v2[2] = v56;
    v56;
  }
}

uint64_t sub_100307368(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100000000) == 0)
  {
    v14 = result;
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B2C8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v29 = v7;
      v30 = a1;
      a1 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *a1 = 136315138;
      v19 = *(a2 + 16);
      if (v19)
      {
        (*(v9 + 16))(v13, v19 + OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_identifier, v14);
        v20 = UUID.uuidString.getter();
        v22 = v21;
        (*(v9 + 8))(v13, v14);
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 7104846;
      }

      v23 = sub_1002FFA0C(v20, v22, v32);

      *(a1 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Presentment intent %s has expired", a1, 0xCu);
      sub_1000752F4(v18);

      v7 = v29;
      LODWORD(a1) = v30;
    }

    else
    {
    }

    swift_beginAccess();
    sub_100309774(a2 + 24, v32);
    if (v32[3])
    {
      sub_1000BC094(v32, v31);
      sub_100075768(v32, &qword_1005048A8, &qword_1004151C0);
      v24 = *sub_1000752B0(v31, v31[3]);
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = v24;
      *(v26 + 40) = a1;
      v27 = v24;
      sub_1001F9BE8(0, 0, v7, &unk_1004151C8, v26);

      sub_1000752F4(v31);
    }

    else
    {
      sub_100075768(v32, &qword_1005048A8, &qword_1004151C0);
    }

    return sub_1003080E8(a1, 0, 0);
  }

  return result;
}

uint64_t sub_100307734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 20) = BYTE4(a1) & 1;
  *(v17 + 24) = v4;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  aBlock[4] = sub_100309664;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004D04D0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100309544(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_100307A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0x100000000) == 0)
  {
    return sub_1003080E8(a1, a3, a4);
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_10051B2C8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Internal assertion being relinquished by client !?!?!?!", v8, 2u);
  }

  return sub_100307B18(0, 0);
}

uint64_t sub_100307B18(uint64_t a1, uint64_t a2)
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
  v18[1] = *(v3 + 72);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_100309618;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004D0480;
  v16 = _Block_copy(aBlock);

  sub_100113B54(a1);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100309544(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void sub_100307DEC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_10051B2C8);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v26[1] = a3;
    v27 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    v16 = *(a1 + 16);
    if (v16)
    {
      (*(v7 + 16))(v10, v16 + OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_identifier, v6);
      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v19 = 0xE400000000000000;
      v17 = 1701736270;
    }

    v25 = sub_1002FFA0C(v17, v19, &v28);

    *(v14 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v12, v13, "Invalidating assertion with identifier %s", v14, 0xCu);
    sub_1000752F4(v15);

    a2 = v27;
    v20 = *(a1 + 16);
    if (!v20)
    {
      goto LABEL_10;
    }

LABEL_7:
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 sharedHardwareManager];

    sub_1003AE754(*&v22[OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_timer]);
    v24 = *(a1 + 16);
    goto LABEL_11;
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    goto LABEL_7;
  }

LABEL_10:
  v24 = 0;
LABEL_11:
  *(a1 + 16) = 0;

  if (a2)
  {
    a2(0);
  }
}

uint64_t sub_1003080E8(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  aBlock[4] = sub_10030951C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004D03E0;
  v18 = _Block_copy(aBlock);

  sub_100113B54(a2);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100309544(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_1003083C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(*(a1 + 64) + 16))
  {
    sub_10008CBA8(a2);
    if (v8)
    {
      return sub_100307B18(a3, a4);
    }
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_1000958E4(v10, qword_10051B2C8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v12, v13, "Client %d relinquish without context, starting context for the next 15.0s", v14, 8u);
  }

  v15 = *(a1 + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a1;
  v17 = objc_allocWithZone(SESTimer);
  aBlock[4] = sub_1003095C4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004D0430;
  v18 = _Block_copy(aBlock);

  v19 = sub_1003AE50C(v17, v15, v18);
  _Block_release(v18);

  v20 = type metadata accessor for SECPresentmentIntentCooldownContext();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  (*(*(v10 - 8) + 16))(v23 + OBJC_IVAR____TtC10seserviced35SECPresentmentIntentCooldownContext_logger, v11, v10);
  *(v23 + OBJC_IVAR____TtC10seserviced35SECPresentmentIntentCooldownContext_contextTimeout) = 0x402E000000000000;
  *(v23 + 16) = a2;
  *(v23 + 24) = v19;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = *(v23 + 16);

    _os_log_impl(&_mh_execute_header, v24, v25, "Starting Context Timer for client %d", v26, 8u);
  }

  else
  {
  }

  sub_1003AE64C(*(v23 + 24), 14.5, 0.5);
  swift_beginAccess();

  v27 = *(a1 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(a1 + 64);
  *(a1 + 64) = 0x8000000000000000;
  sub_100317274(v23, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 64) = v29;
  swift_endAccess();
  sub_100307B18(a3, a4);
}

uint64_t sub_10030876C(int a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Context timer for client %d timed out", v7, 8u);
  }

  result = swift_beginAccess();
  v9 = *(a2 + 64);
  if (*(v9 + 16))
  {
    result = sub_10008CBA8(a1);
    if (v10)
    {
      v11 = *(*(v9 + 56) + 8 * result);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109120;
        *(v14 + 4) = *(v11 + 16);
        _os_log_impl(&_mh_execute_header, v12, v13, "Invalidating context for client %d", v14, 8u);
      }

      sub_1003AE754(*(v11 + 24));
      swift_beginAccess();
      sub_1001459BC(a1);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100308970()
{
  sub_100075768(v0 + 24, &qword_1005048A8, &qword_1004151C0);
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1003089F4()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = &_swiftEmptyDictionarySingleton;
  v9 = sub_10006928C();
  v11[0] = "";
  v11[1] = v9;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100309544(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v0 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

char *sub_100308C60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v9 = &v5[OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_delegate];
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  v10 = OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_identifier;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v5[v10], a1, v11);
  v13 = &v5[OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_clientPid];
  *v13 = a2;
  v13[4] = BYTE4(a2) & 1;
  v14 = [objc_opt_self() sharedHardwareManager];
  v33[0] = 0;
  v15 = [v14 requestAssertion:4 error:v33];

  v16 = v33[0];
  if (v15)
  {
    *&v5[OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_nfAssertion] = v15;
    *&v5[OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_timer] = a3;
    swift_beginAccess();
    v17 = v16;
    v18 = a3;
    sub_100309704(a4, v9);
    swift_endAccess();
    v32.receiver = v5;
    v32.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v32, "init");

    sub_100075768(a4, &qword_10050AA08, &qword_1004151B8);
    (*(v12 + 8))(a1, v11);
  }

  else
  {
    v29 = v11;
    v19 = v33[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000958E4(v20, qword_10051B2C8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to Acquire NF Assertion", v23, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v24 = 9;
    swift_willThrow();

    sub_100075768(a4, &qword_10050AA08, &qword_1004151B8);
    v25 = *(v12 + 8);
    v25(a1, v29);
    sub_100075768(v9, &qword_10050AA08, &qword_1004151B8);
    v25(&v5[v10], v29);
    v26 = *((swift_isaMask & *v5) + 0x30);
    v27 = *((swift_isaMask & *v5) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return v5;
}

uint64_t sub_1003090BC(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedHardwareManager];

  sub_1003AE754(*(v2 + OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_timer));
  v6 = (v2 + OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_delegate);
  result = swift_beginAccess();
  v8 = v6[3];
  if (v8)
  {
    v9 = sub_1000752B0(v6, v8);
    v10 = *(v2 + OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_clientPid);
    v11 = *(v2 + OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_clientPid + 4);
    v12 = *v9;
    return sub_100307734(v10 | (v11 << 32), a1, a2);
  }

  return result;
}

uint64_t type metadata accessor for SECPresentmentIntentAssertion()
{
  result = qword_10050A9F0;
  if (!qword_10050A9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100309368()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10030941C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100309454(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC10seserviced29SECPresentmentIntentAssertion_delegate);
  swift_beginAccess();
  v4 = v3[3];
  if (v4)
  {
    v5 = *(*sub_1000752B0(v3, v4) + 16) == 0;
  }

  else
  {
    v5 = 1;
  }

  return (*(a2 + 16))(a2, v5);
}

uint64_t sub_1003094D4()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10030952C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100309544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030958C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003095D0()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100309624()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1003096B0()
{
  result = qword_10050AA10;
  if (!qword_10050AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10050AA10);
  }

  return result;
}

uint64_t sub_100309704(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_10050AA08, &qword_1004151B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100309774(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_1005048A8, &qword_1004151C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003097E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 44, 7);
}

uint64_t sub_100309824(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000C288C;

  return sub_100143904(a1, v4, v5, v6, v7);
}

id sub_10030990C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v26 = &type metadata for String;
    *&v25 = a3;
    *(&v25 + 1) = a4;
    sub_100075D50(&v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v24, v10, v12, isUniquelyReferenced_nonNull_native);
  }

  if (a5)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    swift_errorRetain();
    v17 = _convertErrorToNSError(_:)();
    v26 = sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    *&v25 = v17;
    sub_100075D50(&v25, v24);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_100315178(v24, v14, v16, v18);
  }

  if (a2)
  {
    a1 = 0;
  }

  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = [v19 initWithDomain:v20 code:a1 userInfo:isa];

  return v22;
}

uint64_t sub_100309B08(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100068FC4(&unk_10050AA38, &qword_1004151D8);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v54 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    v47 = v11;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v26 = (v19 - 1) & v19;
LABEL_17:
      v29 = v25 | (v15 << 6);
      v53 = v26;
      v30 = *(v7 + 72);
      v31 = *(v11 + 48) + v30 * v29;
      if (v48)
      {
        (*v49)(v54, v31, v6);
      }

      else
      {
        (*v45)(v54, v31, v6);
      }

      v32 = (*(v11 + 56) + 24 * v29);
      v33 = v32[2];
      v51 = v32[1];
      v52 = v33;
      v50 = *v32;
      v34 = *(v14 + 40);
      sub_100317CAC(&unk_100507480, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v14 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v30 * v22, v54, v6);
      v23 = (*(v14 + 56) + 24 * v22);
      v24 = v51;
      *v23 = v50;
      v23[1] = v24;
      v19 = v53;
      v23[2] = v52;
      ++*(v14 + 16);
      v7 = v46;
      v11 = v47;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v11 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100309F28(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100068FC4(&qword_10050AA50, &qword_1004151E8);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_100317CAC(&unk_100507480, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10030A2E8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100068FC4(&qword_10050AA58, &qword_1004151F0);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 2 * v27);
      v31 = *(v14 + 40);
      sub_100317CAC(&unk_100507480, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 2 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10030A6A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_10050AA30, &qword_1004151D0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_10030A928(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&unk_100504000, &unk_10040B350);
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
        sub_100075D50(v25, v37);
      }

      else
      {
        sub_1000754F0(v25, v37);
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
      result = sub_100075D50(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_10030ABE0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_100068FC4(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(v8 + 56) + 40 * v23;
      if (a2)
      {
        a5(v25, v37);
      }

      else
      {
        sub_1000BC094(v25, v37);
      }

      v26 = *(v11 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      result = (a5)(v37, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v6 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v8 + 32);
    v6 = v35;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_10030AEA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_10050AAE8, &qword_100415240);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = (*(v5 + 56) + 40 * v21);
      v34 = *(*(v5 + 48) + 16 * v21);
      v23 = *(*(v5 + 48) + 16 * v21 + 8);
      if (a2)
      {
        sub_1000BC104(v22, v35);
      }

      else
      {
        sub_1000BC094(v22, v35);
        sub_100069E2C(v34, v23);
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v17 = v34;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v17 = v34;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      result = sub_1000BC104(v35, *(v8 + 56) + 40 * v16);
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10030B160(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_10050AAE0, &qword_100409D10);
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 16 * v22);
      v24 = *(v5 + 56) + 24 * v22;
      v25 = *v24;
      v36 = *(v24 + 8);
      v37 = v23;
      if ((a2 & 1) == 0)
      {
        sub_100069E2C(v23, *(&v23 + 1));
        sub_100069E2C(v25, v36);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v17 = v37;
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v17 = v37;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v25;
      *(v18 + 8) = v36;
      ++*(v8 + 16);
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

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10030B430(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_10050AAD8, &qword_100415238);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 32 * v21;
      v24 = *(v23 + 8);
      v39 = *v23;
      v38 = *(v23 + 16);
      v25 = *(v23 + 24);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v39;
      *(v17 + 8) = v24;
      *(v17 + 16) = v38;
      *(v17 + 24) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10030B6F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_100502C50, &qword_100409D18);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v21);
      v33 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_100069E2C(v33, *(*(v5 + 48) + 16 * v21 + 8));
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v17 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10030B994(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_10050AA48, &qword_1004151E0);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v52 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v7 + 16);
    v45 = v10;
    v46 = v7;
    v49 = (v7 + 32);
    v20 = result + 64;
    v21 = v48;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v46 + 72) * v28;
      v50 = *(v46 + 72);
      v51 = v25;
      if (v47)
      {
        (*v49)(v21, v29, v52);
        v30 = (*(v10 + 56) + 16 * v28);
        v32 = *v30;
        v31 = v30[1];
      }

      else
      {
        (*v44)(v21, v29, v52);
        v33 = (*(v10 + 56) + 16 * v28);
        v32 = *v33;
        v31 = v33[1];
        sub_100069E2C(*v33, v31);
      }

      v34 = *(v13 + 40);
      sub_100317CAC(&unk_100507480, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v21 = v48;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v13 + 48) + v50 * v22, v21, v52);
      v23 = (*(v13 + 56) + 16 * v22);
      *v23 = v32;
      v23[1] = v31;
      ++*(v13 + 16);
      v10 = v45;
      v18 = v51;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_10030BD7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_1005092B0, qword_100413D00);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 2 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10030BFE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_10050AAD0, &qword_100415230);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10030C288(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_10050AB98, &qword_100415270);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v21);
      v34 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_100069E2C(v34, *(*(v5 + 48) + 16 * v21 + 8));
        v23 = v22;
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v17 = v34;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v17 = v34;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10030C52C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&unk_10050AB60, &qword_100415248);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10030C7FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_100504758, &qword_10040BB08);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10030CA64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&unk_10050AAB0, &qword_100415218);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
        swift_unknownObjectRetain();
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10030CCEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&unk_10050AC10, &qword_100415290);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_100092ECC(v28, &v42);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10030CFBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_10050AB78, &qword_100415250);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10030D264(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for Date();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_100502D00, &qword_100409DD8);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_10030D60C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100068FC4(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v7 + 56) + 8 * v23);
      v35 = *(*(v7 + 48) + 16 * v23);
      if ((a2 & 1) == 0)
      {
        sub_100069E2C(v35, *(*(v7 + 48) + 16 * v23 + 8));
      }

      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v19 = v35;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v19 = v35;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v19;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10030D8B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100068FC4(&unk_10050ABD0, &unk_100413B50);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100317CAC(&unk_100507480, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10030DC8C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CredentialType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100068FC4(&qword_100508EA0, &qword_100413B48);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_100317CAC(&unk_10050ABE0, &type metadata accessor for CredentialType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10030E074(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100068FC4(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v7 + 56) + 8 * v23);
      v35 = *(*(v7 + 48) + 16 * v23);
      if ((a2 & 1) == 0)
      {
        sub_100069E2C(v35, *(*(v7 + 48) + 16 * v23 + 8));
      }

      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v19 = v35;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v19 = v35;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v19;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10030E318(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_10050AAC0, &qword_100415220);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10030E588(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_100502C40, &unk_100409D00);
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
        sub_100075D50((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100092ECC(v24, &v37);
        sub_1000754F0(*(v5 + 56) + 32 * v23, v36);
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
      result = sub_100075D50(v36, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_10030E840(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100068FC4(&qword_10050AB88, &qword_100415260);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100317CAC(&unk_100507480, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10030EC30(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100068FC4(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = a2;
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v10;
  return result;
}

uint64_t sub_10030EEE4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100068FC4(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10030F184(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_100502C78, &qword_100409D58);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 2 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10030F3EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&unk_10050AAF0, &qword_100409D50);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 2 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_100069E2C(v32, *(&v32 + 1));
      }

      v22 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10030F668(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100068FC4(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10030F904(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100068FC4(&qword_10050ABA8, &qword_100415278);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_100317CAC(&unk_10050ABB0, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10030FCC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_10050AB90, &qword_100415268);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10030FF40(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100068FC4(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 4 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 4 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1003101AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100068FC4(&qword_100502C80, &qword_100409D60);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_100075D50(v22, v34);
      }

      else
      {
        sub_1000754F0(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_100317CAC(&qword_10050AB70, type metadata accessor for CFString);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_100075D50(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}