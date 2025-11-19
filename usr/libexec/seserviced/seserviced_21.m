unint64_t sub_1001B00B8()
{
  result = qword_100505510;
  if (!qword_100505510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505510);
  }

  return result;
}

unint64_t sub_1001B0110()
{
  result = qword_100505518;
  if (!qword_100505518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505518);
  }

  return result;
}

unint64_t sub_1001B0168()
{
  result = qword_100505520;
  if (!qword_100505520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505520);
  }

  return result;
}

uint64_t sub_1001B0228()
{
  qword_10051B388 = type metadata accessor for BlessedUserControllerDefault();
  unk_10051B390 = &off_1004CA408;
  sub_1000B9634(qword_10051B370);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t type metadata accessor for BlessedUserControllerDefault()
{
  result = qword_100505580;
  if (!qword_100505580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B0300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001B0380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1001B03F0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001B045C()
{
  if (!*(v0[2] + 16) && !*v0)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000958E4(v1, qword_10051B2C8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Deinitializing session-presence related singletons", v4, 2u);
    }

    if (qword_100501D50 != -1)
    {
      swift_once();
    }

    v5 = swift_beginAccess();
    v6 = off_10050A868;
    __chkstk_darwin(v5);
    os_unfair_lock_lock(v6 + 6);
    sub_1001B2140(v6 + 2);
    os_unfair_lock_unlock(v6 + 6);
    swift_endAccess();
  }
}

double sub_1001B05F8()
{
  type metadata accessor for SECQueueManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  qword_10051B398 = v0;
  return result;
}

void sub_1001B0644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_10012F404(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_10012F404((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = &v6[2 * v8];
  v9[4] = a2;
  v9[5] = a3;
  *(a1 + 16) = v6;
  v10 = qword_1005019D8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_10051B2C8);
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    ObjectType = swift_getObjectType();
    v17 = (*(a3 + 8))(v23, ObjectType, a3);
    v18 = sub_10013F33C(v17);
    v20 = v19;
    sub_10012E3A0(v23);
    v21 = sub_1002FFA0C(v18, v20, &v22);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Queued SECSession with client info %s", v14, 0xCu);
    sub_1000752F4(v15);
  }
}

void sub_1001B0864(uint64_t a1, void *a2)
{
  v2 = a2;
  sub_1001A2648(0, 0, v2, &off_1004CE768);

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Queued Admin Session", v6, 2u);
  }
}

void sub_1001B0970()
{
  v1 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  os_unfair_lock_lock((v0 + 16));
  sub_1001B0E90((v0 + 24), &v8);
  os_unfair_lock_unlock((v0 + 16));
  if (v8)
  {
    v7 = v8;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = v7;
    sub_1001F9BE8(0, 0, v4, &unk_10040D620, v6);
  }
}

uint64_t sub_1001B0AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  return _swift_task_switch(sub_1001B0AC4, 0, 0);
}

uint64_t sub_1001B0AC4()
{
  v28 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v7 = 136315394;
    swift_getObjectType();
    v8 = _typeName(_:qualified:)();
    v10 = sub_1002FFA0C(v8, v9, &v27);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v12 = (*(v6 + 8))(ObjectType, v6);
    v13 = sub_10013F33C(v12);
    v15 = v14;
    sub_10012E3A0((v0 + 2));
    v16 = sub_1002FFA0C(v13, v15, &v27);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting next session %s for client %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = v0[19];
  v26 = v0[20];
  v18 = swift_getObjectType();
  v19 = *(v26 + 24);
  v25 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[21] = v21;
  *v21 = v0;
  v21[1] = sub_1001B0D9C;
  v23 = v0[19];
  v22 = v0[20];

  return v25(v18, v22);
}

uint64_t sub_1001B0D9C()
{
  v1 = *(*v0 + 168);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1001B0E90(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v4 = a1[1];
    v5 = qword_1005019D8;
    v6 = *a1;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2C8);
    swift_unknownObjectRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315138;
      ObjectType = swift_getObjectType();
      v13 = (*(v4 + 8))(v26, ObjectType, v4);
      v14 = sub_10013F33C(v13);
      v16 = v15;
      sub_10012E3A0(v26);
      v17 = sub_1002FFA0C(v14, v16, &v27);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Current session with clientInfo %s is active", v10, 0xCu);
      sub_1000752F4(v11);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_16:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v18 = a1[2];
  if (!v18[2])
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000958E4(v22, qword_10051B2C8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Pending Session Queue is empty; no session to start", v25, 2u);
    }

    goto LABEL_16;
  }

  v19 = v18[4];
  v20 = v18[5];
  swift_unknownObjectRetain();
  sub_1001A1AB4(0, 1);
  *a1 = v19;
  a1[1] = v20;
  v21 = a1[3];
  swift_unknownObjectRetain();
  if (!v21)
  {
    a1[3] = os_transaction_create();
  }

  *a2 = v19;
  a2[1] = v20;
}

void sub_1001B1178(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v8 = *a1;
  v118 = a3;
  if (v8)
  {
    v85 = a5;
    v9 = a1[1];
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);
    swift_unknownObjectRetain();
    v90 = v11;
    v91 = ObjectType;
    v89 = v9;
    v11(v97, ObjectType, v9);
    v117[0] = v97[0];
    v12 = v97[0];

    sub_10012E3A0(v97);
    v13 = swift_getObjectType();
    (*(v6 + 8))(v98, v13, v6);
    v116 = v98[0];
    v14 = v98[0];

    sub_10012E3A0(v98);
    if (v12 == v14)
    {
      sub_1000B6B54(&v116);
      sub_1000B6B54(v117);
LABEL_5:
      if (qword_1005019D8 != -1)
      {
LABEL_54:
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000958E4(v16, qword_10051B2C8);
      swift_unknownObjectRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v108[0] = v20;
        *v19 = 136315138;
        v21 = (v90)(v107, v91, v89);
        v22 = sub_10013F33C(v21);
        v24 = v23;
        sub_10012E3A0(v107);
        v25 = sub_1002FFA0C(v22, v24, v108);

        *(v19 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v17, v18, "Removing current session with client info %s", v19, 0xCu);
        sub_1000752F4(v20);
      }

      v26 = a1;
      type metadata accessor for SECUserSession();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        *(*(v27 + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics) + 32) = a4;
        swift_unknownObjectRetain();

        sub_10028C5B8();
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      *a1 = 0;
      a1[1] = 0;
      sub_1001B045C();
      (v90)(v108, v91, v89);
      v106 = v115;
      v104 = v113;
      v105 = v114;
      v100 = v109;
      v101 = v110;
      v102 = v111;
      v103 = v112;
      if (v115 >= 2u)
      {
        sub_10012E3A0(v108);
      }

      else
      {
        v96 = v114;
        v94[0] = v100;
        v94[1] = v101;
        v94[2] = v102;
        v94[3] = v103;
        v94[4] = v104;
        v95 = v114;
        sub_10012E3F4(&v100, &atoken);
        atoken = v96;
        v28 = audit_token_to_pid(&atoken);
        sub_10012E450(v94);
        sub_10012E3A0(v108);
        swift_beginAccess();
        sub_1001B2068(v85 + 56, &atoken);
        if (*&atoken.val[6])
        {
          sub_1000BC094(&atoken, v92);
          sub_1001B20D8(&atoken);
          v29 = *sub_1000752B0(v92, v93);
          sub_1001421F8(v28);
          sub_1000752F4(v92);
        }

        else
        {
          sub_1001B20D8(&atoken);
        }
      }

      v71 = (*(v89 + 16))(v91, v89);
      if (v71)
      {
        v72 = v71;
        if (a6)
        {
          v73 = _convertErrorToNSError(_:)();
        }

        else
        {
          v73 = 0;
        }

        [v72 sessionEndedWithError:v73];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_50;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000B6B54(&v116);
    sub_1000B6B54(v117);
    if (v15)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
    v6 = v118;
  }

  v30 = a1[2];
  a4 = a1 + 16;
  v90 = v30;
  v91 = v6 + 8;
  v31 = (v30 + 40);
  v32 = -*(v30 + 16);
  v33 = -1;
  while (1)
  {
    if (v32 + v33 == -1)
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_1000958E4(v54, qword_10051B2C8);
      swift_unknownObjectRetain();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      v26 = a1;
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v107[0] = v58;
        *v57 = 136315138;
        v59 = swift_getObjectType();
        v60 = (*(v118 + 8))(v108, v59);
        v61 = sub_10013F33C(v60);
        v63 = v62;
        sub_10012E3A0(v108);
        v64 = sub_1002FFA0C(v61, v63, v107);

        *(v57 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v55, v56, "Session with client info %s is not active nor pending", v57, 0xCu);
        sub_1000752F4(v58);
      }

      goto LABEL_50;
    }

    if (++v33 >= *(v90 + 16))
    {
      __break(1u);
      goto LABEL_54;
    }

    v36 = *(v31 - 1);
    v35 = *v31;
    v37 = swift_getObjectType();
    v38 = *(v35 + 8);
    swift_unknownObjectRetain();
    v38(&atoken, v37, v35);
    v94[0] = *atoken.val;
    v39 = *atoken.val;

    sub_10012E3A0(&atoken);
    v40 = swift_getObjectType();
    v89 = *(v118 + 8);
    (v89)(&v100);
    *v92 = v100;
    v41 = v100;

    sub_10012E3A0(&v100);
    if (v39 == v41)
    {
      break;
    }

    v31 += 2;
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000B6B54(v92);
    sub_1000B6B54(v94);
    swift_unknownObjectRelease();
    if (v34)
    {
      goto LABEL_22;
    }
  }

  sub_1000B6B54(v92);
  sub_1000B6B54(v94);
  swift_unknownObjectRelease();
LABEL_22:
  (v89)(v107, v40, v118);
  v42 = sub_1001B1F38(v90, v107);
  if (v43)
  {
    sub_10012E3A0(v107);
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000958E4(v44, qword_10051B2C8);
    swift_unknownObjectRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v96.val = v48;
      *v47 = 136315138;
      v49 = (v89)(v108, v40, v118);
      v50 = sub_10013F33C(v49);
      v52 = v51;
      sub_10012E3A0(v108);
      v53 = sub_1002FFA0C(v50, v52, &v96);

      *(v47 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "Unable to retrieve queued session with client info %s", v47, 0xCu);
      sub_1000752F4(v48);
    }

    return;
  }

  sub_100196798(v42);
  v66 = v65;
  sub_10012E3A0(v107);
  v67 = swift_getObjectType();
  v68 = (*(v66 + 16))(v67, v66);
  v26 = a1;
  if (v68)
  {
    v69 = v68;
    if (a6)
    {
      v70 = _convertErrorToNSError(_:)();
    }

    else
    {
      v70 = 0;
    }

    [v69 sessionEndedWithError:v70];

    swift_unknownObjectRelease();
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  sub_1000958E4(v74, qword_10051B2C8);
  swift_unknownObjectRetain();
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v96.val = v78;
    *v77 = 136315138;
    v79 = (v89)(v108, v40, v118);
    v80 = sub_10013F33C(v79);
    v82 = v81;
    sub_10012E3A0(v108);
    v83 = sub_1002FFA0C(v80, v82, &v96);

    *(v77 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "Removing pending session with client info %s", v77, 0xCu);
    sub_1000752F4(v78);
  }

  swift_unknownObjectRelease();

LABEL_50:
  if (!*(v26[2] + 16))
  {
    v84 = v26[3];
    swift_unknownObjectRelease();
    v26[3] = 0;
  }
}

uint64_t sub_1001B1CAC()
{
  sub_1001B228C(v0 + 24);
  sub_1001B20D8(v0 + 56);

  return swift_deallocClassInstance();
}

char *sub_1001B1D10()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100068FC4(qword_1005056C0, &unk_10040D500);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1001B1D40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001B1D7C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001B1D94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001B1DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001B1E58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001B1EA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B1EF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;

  *a1 = v3;
}

uint64_t sub_1001B1F38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 8);
    swift_unknownObjectRetain();
    v9(v14, ObjectType, v7);
    v15 = v14[0];
    v10 = v14[0];

    sub_10012E3A0(v14);
    if (v10 == *a2 && *(&v10 + 1) == a2[1])
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000B6B54(&v15);
    swift_unknownObjectRelease();
    if (v12)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  sub_1000B6B54(&v15);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1001B2068(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504848, &qword_10040BD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B20D8(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504848, &qword_10040BD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B2140(uint64_t *a1)
{
  v3 = **(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

uint64_t sub_1001B218C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001B21CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000C288C;

  return sub_1001B0AA4(a1, v4, v5, v7, v6);
}

unint64_t sub_1001B22BC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B25A8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001B2344()
{
  v1 = v0[5];

  sub_100075768(v0 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v0 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken, &qword_100502438, &qword_100409990);
  v2 = *(v0 + OBJC_IVAR____TtC10seserviced9SERequest_peer);

  v3 = *(v0 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SERequest()
{
  result = qword_100505770;
  if (!qword_100505770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B2458()
{
  sub_10019EEF4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1001B2550()
{
  result = qword_100505840;
  if (!qword_100505840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505840);
  }

  return result;
}

unint64_t sub_1001B25A8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1001B29C4()
{
  *(v0 + 20) = 0;
  *(v0 + 16) = 0;
  v1 = *(v0 + 24);
  *(v0 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001B29E0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1001B2A18()
{
  v1 = v0;
  memset(v49, 0, sizeof(v49));
  v50 = 1;
  v2 = sub_100306124(6, v49, 0, 0);
  v3 = sub_100306124(5, v49, 0, 0);
  v4 = sub_100306124(4, v49, 0, 0);
  v5 = sub_100306124(3, v49, 0, 0);
  if (v2)
  {
    if (v3)
    {
      if (v4)
      {
        v6 = 0;
      }

      else
      {
        v6 = 4;
      }

      if (v5)
      {
        goto LABEL_21;
      }

LABEL_20:
      v6 |= 8uLL;
      goto LABEL_21;
    }

    v7 = 6;
    v8 = 2;
  }

  else
  {
    if (v3)
    {
      if (v4)
      {
        v6 = 1;
      }

      else
      {
        v6 = 5;
      }

      if ((v5 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v7 = 7;
    v8 = 3;
  }

  if (v4)
  {
    v6 = v8;
  }

  else
  {
    v6 = v7;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  v9 = *(v1 + 24);
  *(v9 + 20) = (v6 & 1) == 0;
  *(v9 + 21) = (v6 & 4) == 0;
  if (qword_100501978 != -1)
  {
    swift_once();
  }

  if ((sub_100130A24() & 1) == 0)
  {
    sub_100326DF8(&v43);
    v16 = v44;
    if (v44)
    {
      v17 = v43;
      if (v45 == 2 || v45 == 1)
      {
        v18 = *(v1 + 16);
        TCCContext.DefaultAppCapableTCCService.tccService.getter();
        TCCContext.checkTCCAccess(to:for:)();
        v19 = TCCContext.TCCAccess.rawValue.getter();
        if (v19 == TCCContext.TCCAccess.rawValue.getter())
        {
          v41 = v46;

          sub_1000B6AF8(&v41, &v48);
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.info.getter();

          sub_1000B6B54(&v41);
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            *&v48 = v23;
            *v22 = 136315138;
            sub_1000B6B54(&v41);
            v24 = sub_1002FFA0C(v17, v16, &v48);

            *(v22 + 4) = v24;
            _os_log_impl(&_mh_execute_header, v20, v21, "External default app %s found on restore", v22, 0xCu);
            sub_1000752F4(v23);
          }

          else
          {

            sub_1000B6B54(&v41);
          }

          sub_1001B3830();
          goto LABEL_47;
        }
      }

      else
      {
        v47[0] = v43;
        v47[1] = v44;
        sub_1000B6B54(v47);
      }

      v48 = v46;
      sub_1000B6B54(&v48);
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v25, v26, "Reconciling with ineligibility %ld", v27, 0xCu);
    }

    v28 = sub_1001B2FEC(0, v6);
    v30 = v29;
    v31 = sub_1001B2FEC(2uLL, v6);
    v32 = *(v1 + 24);
    v32[16] = HIBYTE(v28) & 1;
    v32[17] = HIBYTE(v31) & 1;
    v32[18] = v28 & 1;
    v32[19] = v31 & 1;
    v42 = &_swiftEmptySetSingleton;
    sub_1002A3660(v33);
    sub_1002A3660(v30);
    v34 = *(v1 + 24);
    v35 = *(&_swiftEmptySetSingleton + 2);
    if (v35)
    {
      v36 = sub_1000C024C(v42[2], 0);
      v37 = sub_100358484(&v41, (v36 + 4), v35, &_swiftEmptySetSingleton);

      sub_100093854();
      if (v37 == v35)
      {
LABEL_44:
        v38 = *(v34 + 24);
        *(v34 + 24) = v36;

LABEL_47:
        v39 = *(v1 + 24);

        sub_100328B10(v40);
      }

      __break(1u);
    }

    v36 = _swiftEmptyArrayStorage;
    goto LABEL_44;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1002FFA0C(0x6C69636E6F636572, 0xEB00000000292865, &v43);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: Pending migration -- should not show default contactless pane", v12, 0xCu);
    sub_1000752F4(v13);
  }

  *(*(v1 + 24) + 18) = 0;

  sub_100328B10(v14);
}

uint64_t sub_1001B2FEC(unint64_t a1, uint64_t a2)
{
  v5 = sub_1001B3FD0(*(v2 + 16), a1);
  v6 = TCCContext.TCCService.rawValue.getter();
  v7 = TCCContext.TCCService.rawValue.getter();
  v8 = 4;
  if (v6 == v7)
  {
    v8 = 1;
  }

  if ((v8 & a2) == 0)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v69[0] = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x8000000100465BB0, v69);
      *(v16 + 12) = 2080;
      v17 = TCCContext.TCCService.tccString.getter();
      v19 = sub_1002FFA0C(v17, v18, v69);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s Set Default is eligible for service %s, doing regular reconciliation for this service", v16, 0x16u);
      swift_arrayDestroy();
    }

    sub_1001B47F4(a1, v20);
    v21 = v5;
    return v21 & 1 | ((v5 > 0xFFu) << 8);
  }

  v60 = v5;
  v9 = TCCContext.TCCService.rawValue.getter();
  v10 = TCCContext.TCCService.rawValue.getter();
  v11 = 8;
  if (v9 == v10)
  {
    v11 = 2;
  }

  v12 = v11 & a2;
  v62 = &_swiftEmptySetSingleton;
  v13 = objc_allocWithZone(LSApplicationRecord);
  v22 = sub_10013FCB4(0xD000000000000012, 0x8000000100465B40, 0);
  v23 = [v22 localizedName];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v69[0] = 0xD000000000000012;
  v69[1] = 0x8000000100465B40;
  v69[2] = 3;
  v69[3] = v24;
  v69[4] = v26;
  sub_1000D7A08(&v63, v69);

  if (v12)
  {
    goto LABEL_26;
  }

  sub_100326DF8(&v63);
  v27 = v64;
  if (!v64)
  {
    goto LABEL_26;
  }

  v28 = v63;
  v29 = v65;
  v67 = v66;
  if (v63 == 0xD000000000000012 && v64 == 0x8000000100465B40)
  {
    if (v65 != 1)
    {
      if (v65 != 2)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

LABEL_21:
    v58 = v28;
    goto LABEL_23;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v29 == 3)
  {
    goto LABEL_25;
  }

  if (v29 != 2)
  {
    if (v29 != 1)
    {
LABEL_25:

      v68 = v66;
      sub_1000B6B54(&v68);
LABEL_26:
      v33 = v62[2];
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      v36 = os_log_type_enabled(v34, v35);
      if (v33)
      {
        v5 = v60;
        if (v36)
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "One of the out of region eligibility conditions not satisfied and but exist candidates, show default app pane", v37, 2u);
        }

        v21 = 1;
      }

      else
      {
        v5 = v60;
        if (v36)
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "One of the out of region eligibility conditions not satisfied and no candidates, should not show default app pane", v38, 2u);
        }

        v21 = 0;
      }

      return v21 & 1 | ((v5 > 0xFFu) << 8);
    }

    goto LABEL_21;
  }

LABEL_22:
  v58 = v28;
LABEL_23:
  TCCContext.DefaultAppCapableTCCService.tccService.getter();
  v30 = TCCContext.TCCService.rawValue.getter();
  if (v30 != TCCContext.TCCService.rawValue.getter())
  {
    goto LABEL_25;
  }

  v57 = v29;
  v31 = objc_allocWithZone(LSApplicationRecord);
  v32 = sub_10013FCB4(0xD000000000000012, 0x8000000100465B40, 0);
  v40 = v32;
  v41 = [v32 localizedName];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v43;

  TCCContext.DefaultAppCapableTCCService.tccService.getter();
  v44 = TCCContext.checkTCCAccess(to:for:)();
  v68 = v66;

  sub_1000B6AF8(&v68, v61);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();

  sub_1000B6B54(&v68);
  if (os_log_type_enabled(v45, v46))
  {
    v59 = v44;
    v47 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v47 = 136316162;
    *(v47 + 4) = sub_1002FFA0C(0xD00000000000001DLL, 0x8000000100465BB0, v61);
    *(v47 + 12) = 2048;
    *(v47 + 14) = a2;
    *(v47 + 22) = 2080;

    v48 = sub_1002FFA0C(v58, v27, v61);

    *(v47 + 24) = v48;
    *(v47 + 32) = 2080;
    v49 = TCCContext.TCCAccess.description.getter();
    v51 = sub_1002FFA0C(v49, v50, v61);

    *(v47 + 34) = v51;
    *(v47 + 42) = 2080;
    TCCContext.DefaultAppCapableTCCService.tccService.getter();
    v52 = TCCContext.TCCService.tccString.getter();
    v54 = sub_1002FFA0C(v52, v53, v61);

    *(v47 + 44) = v54;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s Ineligibility %ld Default app %s TCC access %s to service %s", v47, 0x34u);
    swift_arrayDestroy();

    v44 = v59;
  }

  v5 = v60;
  if (v44 < 2)
  {

    sub_100068FC4(&qword_100503208, "|e\a");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x8000000100465B40;
    *(inited + 48) = 3;
    *(inited + 56) = v42;
    *(inited + 64) = v56;
    *(inited + 72) = v58;
    *(inited + 80) = v27;
    *(inited + 88) = v57;
    *(inited + 96) = v67;
    sub_1000E2130(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v21 = 1;
    return v21 & 1 | ((v5 > 0xFFu) << 8);
  }

  if (v44 - 2 <= 1)
  {

    sub_1000B6B54(&v68);

    v21 = 0;
    return v21 & 1 | ((v5 > 0xFFu) << 8);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

int8x8_t sub_1001B3830()
{
  v1 = v0;
  sub_100326DF8(&v61);
  v2 = v62;
  if (v62)
  {
    v3 = v61;
    v4 = v63;
    switch(v63)
    {
      case 3:
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *&v66 = v18;
          *v17 = 136315138;
          *(v17 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465B90, &v66);
          v19 = "%s: Default app is passbook -- should show no panes";
LABEL_17:
          _os_log_impl(&_mh_execute_header, v15, v16, v19, v17, 0xCu);
          sub_1000752F4(v18);
        }

        break;
      case 2:
        v5 = 1;
LABEL_12:
        v59 = v5;
        sub_100068FC4(&qword_100503208, "|e\a");
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1004098F0;
        *(v13 + 32) = v3;
        *(v13 + 40) = v2;
        *(v13 + 48) = v4;
        *(v13 + 56) = v64;
        v14 = objc_allocWithZone(LSApplicationRecord);
        v27 = sub_10013FCB4(0xD000000000000012, 0x8000000100465B40, 0);
        v28 = [v27 localizedName];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = *(v13 + 16);
        if (v32)
        {
          v33 = (v13 + 48);
          v34 = *(v13 + 16);
          while (1)
          {
            v35 = *v33;
            v36 = *(v33 - 2) == 0xD000000000000012 && 0x8000000100465B40 == *(v33 - 1);
            if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v35 == 3)
            {
              break;
            }

            v33 += 5;
            if (!--v34)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
LABEL_31:
          v37 = *(v13 + 24);
          if (v32 >= v37 >> 1)
          {
            v13 = sub_10012F2E4((v37 > 1), v32 + 1, 1, v13);
          }

          *(v13 + 16) = v32 + 1;
          v38 = (v13 + 40 * v32);
          v38[4] = 0xD000000000000012;
          v38[5] = 0x8000000100465B40;
          v38[6] = 3;
          v38[7] = v29;
          v38[8] = v31;
        }

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *&v66 = swift_slowAlloc();
          *v41 = 136315394;
          *(v41 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465B90, &v66);
          *(v41 + 12) = 2080;
          v42 = *(v13 + 16);
          if (v42)
          {
            v57 = v40;
            v58 = v39;
            v65[0] = _swiftEmptyArrayStorage;
            sub_10019F3C0(0, v42, 0);
            v43 = v65[0];
            v44 = (v13 + 40);
            do
            {
              v45 = *(v44 - 1);
              v46 = *v44;
              v65[0] = v43;
              v47 = *(v43 + 16);
              v48 = *(v43 + 24);

              if (v47 >= v48 >> 1)
              {
                sub_10019F3C0((v48 > 1), v47 + 1, 1);
                v43 = v65[0];
              }

              *(v43 + 16) = v47 + 1;
              v49 = v43 + 16 * v47;
              *(v49 + 32) = v45;
              *(v49 + 40) = v46;
              v44 += 5;
              --v42;
            }

            while (v42);
            v39 = v58;
            v40 = v57;
          }

          v50 = Array.description.getter();
          v52 = v51;

          v53 = sub_1002FFA0C(v50, v52, &v66);

          *(v41 + 14) = v53;

          _os_log_impl(&_mh_execute_header, v39, v40, "%s: Overwriting %s to default app candidate list due to default app found upon restore", v41, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v54 = *(v1 + 24);
        v55 = *(v54 + 24);
        *(v54 + 24) = v13;

        v26 = v59;
        goto LABEL_45;
      case 1:
        v5 = &_mh_execute_header;
        goto LABEL_12;
      default:
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *&v66 = v18;
          *v17 = 136315138;
          *(v17 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465B90, &v66);
          v19 = "%s: Missing domain when reconciling panes -- showing no panes";
          goto LABEL_17;
        }

        break;
    }

    v65[0] = v3;
    v65[1] = v2;
    sub_1000B6B54(v65);
    v66 = v64;
    sub_1000B6B54(&v66);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v60 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465B90, &v60);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: Overwriting empty list to default app candidate list due to no default app found upon restore", v22, 0xCu);
      sub_1000752F4(v23);
    }

    v24 = *(v1 + 24);
    v25 = *(v24 + 24);
    *(v24 + 24) = _swiftEmptyArrayStorage;

    v26 = 0;
LABEL_45:
    v56 = vand_s8(vuzp1_s16(v26, v26), 0x1000100010001);
    result = vuzp1_s8(v56, v56);
    *(*(v1 + 24) + 16) = result.i32[0];
    return result;
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v66 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465B90, &v66);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: Unexpected no default app found on restore, nuke UD", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v10 = *(v1 + 24);
  *(v10 + 20) = 0;
  *(v10 + 16) = 0;
  v11 = *(v10 + 24);
  *(v10 + 24) = _swiftEmptyArrayStorage;

  return result;
}

uint64_t sub_1001B3FD0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (a2 >= 2)
  {
    if (a2 != 2)
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v58[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_1002FFA0C(0xD000000000000027, 0x8000000100465B60, v58);
        _os_log_impl(&_mh_execute_header, v41, v42, "%s Unsupported TCC service", v44, 0xCu);
        sub_1000752F4(v45);
      }

      v39 = 0;
      v40 = 0;
      return v40 | v39 & 1u;
    }

    v48 = 2;
    v6 = TCCContext.getTCCKnownBundleIds(for:filter:)();
    v47 = sub_1001B4720;
  }

  else
  {
    v48 = a2;
    v3 = TCCContext.getTCCKnownBundleIds(for:filter:)();
    v5 = TCCContext.getTCCKnownBundleIds(for:filter:)();
    v6 = sub_10016373C(v5, v3);
    v47 = sub_1001B4754;
  }

  v7 = 0;
  v51 = v6 + 56;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 56);
  v49 = 0;
  v50 = (v8 + 63) >> 6;
  v52 = v2;
  v54 = v6;
LABEL_9:
  v11 = v7;
  while (v10)
  {
    v7 = v11;
LABEL_17:
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v13 = (*(v6 + 48) + ((v7 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v16 = objc_allocWithZone(LSApplicationRecord);

    v17 = String._bridgeToObjectiveC()();
    *&v58[0] = 0;
    v3 = [v16 initWithBundleIdentifier:v17 allowPlaceholder:0 error:v58];

    if (v3)
    {
      v25 = *&v58[0];
      v26 = TCCContext.checkTCCAccess(to:for:)();
      if (v48 >= 2)
      {
        v27 = 0;
        v28 = 1;
      }

      else
      {
        v27 = TCCContext.checkTCCAccess(to:for:)();
        v28 = 0;
      }

      if ((v49 & 0x100000000) != 0)
      {
        if ((v49 & 1) == 0)
        {
          HIDWORD(v49) = 1;
          goto LABEL_30;
        }

LABEL_51:
      }

      else
      {
        v29 = v47(v26, v27, v28);
        v30 = v29;
        if (v49)
        {

          v49 = 1;
          if ((v30 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          HIDWORD(v49) = v29;
LABEL_30:
          TCCContext.TCCService.defaultAppTCCService.getter();
          if (v31)
          {

            LOBYTE(v49) = 0;
            goto LABEL_9;
          }

          v53 = v26;
          v32 = v6;
          v33 = v4;
          TCCContext.DefaultAppCapableTCCService.defaultAppEntitlement.getter();
          v34 = [v3 entitlements];
          v35 = String._bridgeToObjectiveC()();

          sub_100156F48();
          v36 = [v34 objectForKey:v35 ofClass:swift_getObjCClassFromMetadata()];

          if (v36)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v56 = 0u;
            v57 = 0u;
          }

          v58[0] = v56;
          v58[1] = v57;
          v4 = v33;
          v6 = v32;
          if (!*(&v57 + 1))
          {

            sub_1001B5024(v58);
            LOBYTE(v49) = 0;
            goto LABEL_9;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {

            LOBYTE(v49) = 0;
            goto LABEL_9;
          }

          v37 = [v55 BOOLValue];

          if ((v37 & 1) == 0)
          {

            LOBYTE(v49) = 0;
            v4 = v33;
            goto LABEL_9;
          }

          v38 = (sub_1001B508C)(v53);

          LOBYTE(v49) = (BYTE4(v49) ^ 1) & v38;
          v4 = v33;
          if ((HIDWORD(v49) & v38 & 1) == 0)
          {
            goto LABEL_9;
          }
        }
      }

      v40 = 256;
      v39 = 1;
      return v40 | v39 & 1u;
    }

    v18 = *&v58[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v19))
    {
      v20 = swift_slowAlloc();
      *&v58[0] = swift_slowAlloc();
      *v20 = 136315394;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1002FFA0C(v21, v22, v58);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = sub_1002FFA0C(v15, v14, v58);

      *(v20 + 14) = v24;
      v4 = v52;
      _os_log_impl(&_mh_execute_header, v3, v19, "computeShouldShowPanes: Error %s when initializing LSApplicationRecord for %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v11 = v7;
    v6 = v54;
  }

  while (1)
  {
    v7 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v7 >= v50)
    {
      break;
    }

    v10 = *(v51 + 8 * v7);
    ++v11;
    if (v10)
    {
      goto LABEL_17;
    }
  }

  v39 = v49;
  if ((v49 & 0x100000000) != 0)
  {
    v40 = 256;
  }

  else
  {
    v40 = 0;
  }

  return v40 | v39 & 1u;
}

BOOL sub_1001B4754(uint64_t a1, uint64_t a2, char a3)
{
  v4 = TCCContext.TCCAccess.rawValue.getter();
  if (v4 != TCCContext.TCCAccess.rawValue.getter() || (a3 & 1) != 0)
  {
    return 1;
  }

  v6 = TCCContext.TCCAccess.rawValue.getter();
  return v6 != TCCContext.TCCAccess.rawValue.getter();
}

void *sub_1001B47F4(uint64_t a1, __n128 a2)
{
  v2 = &_swiftEmptySetSingleton;
  if ((a1 | 2) == 2)
  {
    v3 = *(v55 + 16);
    v2 = TCCContext.getTCCKnownBundleIds(for:filter:)();
  }

  v4 = 0;
  v5 = v2 + 56;
  v6 = 1 << v2[32];
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 7);
  v9 = (v6 + 63) >> 6;
  a2.n128_u64[0] = 136315394;
  v50 = a2;
  v52 = v2;
  v53 = v9;
  v54 = v2 + 56;
  while (v8)
  {
    v10 = v4;
LABEL_14:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(v2 + 6) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    v15 = objc_allocWithZone(LSApplicationRecord);

    v16 = String._bridgeToObjectiveC()();
    *&v60 = 0;
    v17 = [v15 initWithBundleIdentifier:v16 allowPlaceholder:0 error:&v60];

    if (v17)
    {
      v18 = *(v55 + 16);
      v19 = v60;
      v20 = v13;
      TCCContext.checkTCCAccess(to:for:)();
      v21 = TCCContext.TCCAccess.rawValue.getter();
      if (v21 != TCCContext.TCCAccess.rawValue.getter() && (v22 = TCCContext.TCCAccess.rawValue.getter(), v22 != TCCContext.TCCAccess.rawValue.getter()) || (TCCContext.TCCService.defaultAppTCCService.getter(), (v23 & 1) != 0))
      {

LABEL_7:
        v4 = v10;
        goto LABEL_8;
      }

      TCCContext.DefaultAppCapableTCCService.defaultAppEntitlement.getter();
      v24 = v17;
      v25 = [v24 entitlements];
      v26 = String._bridgeToObjectiveC()();

      sub_100156F48();
      v27 = [v25 objectForKey:v26 ofClass:swift_getObjCClassFromMetadata()];

      if (v27)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
      }

      v60 = v58;
      v61 = v59;
      v2 = v52;
      if (!*(&v59 + 1))
      {

        sub_1001B5024(&v60);
        goto LABEL_7;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_7;
      }

      v36 = [v56 BOOLValue];

      if (v36)
      {
        v37 = TCCContext.TCCService.rawValue.getter();
        if (v37 == TCCContext.TCCService.rawValue.getter())
        {
          v38 = 1;
        }

        else
        {
          v38 = 2;
        }

        v39 = [v24 localizedName];

        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v57[0] = v20;
        v57[1] = v14;
        v57[2] = v38;
        v57[3] = v40;
        v57[4] = v42;
        sub_1000D7A08(&v60, v57);
      }

      else
      {
      }
    }

    else
    {
      v51 = v13;
      v28 = v60;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *&v60 = swift_slowAlloc();
        *v31 = v50.n128_u32[0];
        swift_getErrorValue();
        v32 = Error.localizedDescription.getter();
        v34 = sub_1002FFA0C(v32, v33, &v60);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2080;
        v35 = sub_1002FFA0C(v51, v14, &v60);

        *(v31 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "defaultAppCandidates: Error %s when initializing LSApplicationRecord for %s", v31, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    v4 = v10;
    v2 = v52;
LABEL_8:
    v9 = v53;
    v5 = v54;
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *&v5[8 * v10];
    ++v4;
    if (v8)
    {
      goto LABEL_14;
    }
  }

  v43 = objc_allocWithZone(LSApplicationRecord);
  v44 = sub_10013FCB4(0xD000000000000012, 0x8000000100465B40, 0);
  v45 = [v44 localizedName];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  *&v60 = 0xD000000000000012;
  *(&v60 + 1) = 0x8000000100465B40;
  *&v61 = 3;
  *(&v61 + 1) = v46;
  v62 = v48;
  sub_1000D7A08(&v58, &v60);

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001B4E54()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC10seserviced25SECSettingsPaneReconciler_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SECSettingsPaneReconciler()
{
  result = qword_100505878;
  if (!qword_100505878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B4F54()
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

uint64_t sub_1001B5024(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100502420, &qword_10040F310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B5090()
{
  v1[31] = v0;
  v2 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[36] = v5;
  v6 = *(v5 - 8);
  v1[37] = v6;
  v7 = *(v6 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v8 = sub_100068FC4(&qword_100505C98, &unk_10040D970);
  v1[40] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[41] = swift_task_alloc();
  v10 = *(*(sub_100068FC4(&qword_1005031F0, &unk_10040C4C0) - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v11 = type metadata accessor for ProvisioningDevice();
  v1[46] = v11;
  v12 = *(v11 - 8);
  v1[47] = v12;
  v13 = *(v12 + 64) + 15;
  v1[48] = swift_task_alloc();
  v14 = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
  v1[49] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v1[50] = swift_task_alloc();

  return _swift_task_switch(sub_1001B52E8, 0, 0);
}

uint64_t sub_1001B52E8()
{
  v193 = v0;
  v1 = v0[49];
  sub_1001BC1A4(v0[31] + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration, v0[50]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[50];
    v3 = *v2;
    v0[51] = *v2;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_1001B6730;
    v4 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_100505CA0, &unk_10040D980);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001BB96C;
    v0[13] = &unk_1004CA758;
    v0[14] = v4;
    [v3 allPaymentApplicationUsageSummariesWithCompletion:v0 + 10];
    v5 = v0 + 2;

    return _swift_continuation_await(v5);
  }

  (*(v0[47] + 32))(v0[48], v0[50], v0[46]);
  v6 = ProvisioningDevice.target.getter();
  if (([v6 respondsToSelector:"allPaymentApplicationUsageSummaries"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v7 = [v6 allPaymentApplicationUsageSummaries];
  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_9:
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  sub_10009393C(0, &qword_100505CB8, PKPaymentApplicationUsageSummary_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_10:
  (*(v0[47] + 8))(v0[48], v0[46]);
  v191 = &_swiftEmptyDictionarySingleton;
  v9 = v8;
  v178 = v8;
  if (v8 >> 62)
  {
    goto LABEL_22;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    do
    {
      v11 = 0;
      v12 = v9 & 0xC000000000000001;
      v13 = v9 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v12)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v13 + 16))
          {
            goto LABEL_21;
          }

          v14 = *(v9 + 8 * v11 + 32);
        }

        v15 = v14;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v192[0] = v14;
        sub_1001B7A80(&v191, v192);

        ++v11;
        v9 = v178;
        if (v16 == v10)
        {
          v17 = v191;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v18 = _CocoaArrayWrapper.endIndex.getter();
      v9 = v178;
      v10 = v18;
    }

    while (v18);
  }

  v17 = &_swiftEmptyDictionarySingleton;
LABEL_24:
  v19 = v0[31];
  v20 = OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = *(v19 + v20);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_127;
  }

  v22 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_128:
    v188 = _swiftEmptyArrayStorage;
LABEL_129:
    v149 = v0[50];
    v150 = v0[48];
    v152 = v0[44];
    v151 = v0[45];
    v154 = v0[42];
    v153 = v0[43];
    v155 = v0[41];
    v156 = v0[39];
    v185 = v0[38];
    v187 = v0[35];
    v190 = v0[34];

    v157 = v0[1];

    return v157(v188);
  }

LABEL_26:
  v162 = v0[40];
  v163 = v0[41];
  v23 = v0[37];
  v174 = v0[31];
  v177 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v170 = isUniquelyReferenced_nonNull_native + 32;
  v171 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v173 = OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_snapshot;
  v175 = (v23 + 56);
  v166 = v23;
  v159 = (v23 + 32);
  v172 = v0[33];
  v176 = v22;

  v24 = 0;
  v188 = _swiftEmptyArrayStorage;
  v189 = v0;
  v184 = v17;
  while (1)
  {
    if (v177)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v171 + 16))
      {
        goto LABEL_125;
      }

      isUniquelyReferenced_nonNull_native = *(v170 + 8 * v24);
    }

    v25 = isUniquelyReferenced_nonNull_native;
    v26 = __OFADD__(v24, 1);
    v27 = v24 + 1;
    if (v26)
    {
      goto LABEL_124;
    }

    v28 = [isUniquelyReferenced_nonNull_native devicePaymentApplications];
    v186 = v27;
    if (v28)
    {
      v29 = v28;
      sub_10009393C(0, &qword_100505CA8, PKPaymentApplication_ptr);
      sub_1001BC678();
      v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v180 = v25;
      if ((v30 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        isUniquelyReferenced_nonNull_native = Set.Iterator.init(_cocoa:)();
        v31 = v189[18];
        v32 = v189[19];
        v33 = v189[20];
        v34 = v189[21];
        v35 = v189[22];
      }

      else
      {
        v37 = -1 << *(v30 + 32);
        v32 = v30 + 56;
        v33 = ~v37;
        v38 = -v37;
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        else
        {
          v39 = -1;
        }

        v35 = v39 & *(v30 + 56);

        v34 = 0;
        v31 = v30;
      }

      v0 = ((v33 + 64) >> 6);
      v182 = _swiftEmptyArrayStorage;
      while (1)
      {
        v17 = v34;
        if (v31 < 0)
        {
          v43 = __CocoaSet.Iterator.next()();
          if (!v43 || (v189[30] = v43, swift_dynamicCast(), (v42 = v189[29]) == 0))
          {
LABEL_59:
            sub_100093854();

            v0 = v189;
            v36 = v182;
            v17 = v184;
            v25 = v180;
            goto LABEL_60;
          }
        }

        else
        {
          v40 = v34;
          v41 = v35;
          if (!v35)
          {
            while (1)
            {
              v34 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                break;
              }

              if (v34 >= v0)
              {
                goto LABEL_59;
              }

              v41 = *(v32 + 8 * v34);
              ++v40;
              if (v41)
              {
                goto LABEL_48;
              }
            }

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
            v148 = isUniquelyReferenced_nonNull_native;
            v22 = _CocoaArrayWrapper.endIndex.getter();
            isUniquelyReferenced_nonNull_native = v148;
            if (!v22)
            {
              goto LABEL_128;
            }

            goto LABEL_26;
          }

LABEL_48:
          v35 = (v41 - 1) & v41;
          v42 = *(*(v31 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v41)))));
          if (!v42)
          {
            goto LABEL_59;
          }
        }

        v44 = [v42 applicationIdentifier];
        if (v44)
        {
          v45 = v44;
          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v168 = v47;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_10012EA44(0, v182[2] + 1, 1, v182);
            v182 = isUniquelyReferenced_nonNull_native;
          }

          v49 = v182[2];
          v48 = v182[3];
          if (v49 >= v48 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_10012EA44((v48 > 1), v49 + 1, 1, v182);
            v182 = isUniquelyReferenced_nonNull_native;
          }

          v182[2] = v49 + 1;
          v50 = &v182[2 * v49];
          v50[4] = v46;
          v50[5] = v168;
        }

        else
        {
        }
      }
    }

    v36 = _swiftEmptyArrayStorage;
LABEL_60:
    if ([v25 isHomeKeyPass])
    {
      break;
    }

    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000958E4(v64, qword_10051B240);
    v52 = v25;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v192[0] = swift_slowAlloc();
      *v67 = 136315906;
      v68 = [v52 uniqueID];

      if (!v68)
      {
        goto LABEL_135;
      }

      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = sub_1002FFA0C(v69, v71, v192);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      v73 = [v52 localizedDescription];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = sub_1002FFA0C(v74, v76, v192);

      *(v67 + 14) = v77;
      *(v67 + 22) = 1024;
      LODWORD(v77) = [v52 isUserDeletable];

      *(v67 + 24) = v77;
      *(v67 + 28) = 2080;
      v0[27] = v36;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v78 = BidirectionalCollection<>.joined(separator:)();
      v80 = sub_1002FFA0C(v78, v79, v192);

      *(v67 + 30) = v80;
      _os_log_impl(&_mh_execute_header, v65, v66, "Processing pass %s named %s, user deletable: %{BOOL}d, instance AIDs: %s", v67, 0x26u);
      swift_arrayDestroy();

      v17 = v184;
    }

    else
    {
    }

    if ([v52 isUserDeletable] && v36[2])
    {
      v96 = *(v174 + v173);
      SESnapshot.appletTypes(forAIDs:)();
      v181 = v52;
      v5 = [v181 uniqueID];
      if (!v5)
      {
        goto LABEL_136;
      }

      v97 = v5;
      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;

      if (v17[2])
      {
        v101 = sub_10008C908(v98, v100);
        v103 = v102;

        if (v103)
        {
          v104 = *(v17[7] + 8 * v101);
          v105 = v104 + 64;
          v106 = -1 << *(v104 + 32);
          if (-v106 < 64)
          {
            v107 = ~(-1 << -v106);
          }

          else
          {
            v107 = -1;
          }

          v108 = v107 & *(v104 + 64);
          v0 = ((63 - v106) >> 6);
          v167 = v104;
          isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
          v160 = _swiftEmptyArrayStorage;
          v164 = v0;
          v165 = v105;
          v109 = 0;
          if (!v108)
          {
            goto LABEL_90;
          }

          do
          {
            while (1)
            {
              v110 = v109;
LABEL_93:
              v179 = v189[44];
              v111 = v189[41];
              v17 = v189[36];
              v112 = __clz(__rbit64(v108));
              v108 &= v108 - 1;
              v113 = v112 | (v110 << 6);
              v114 = (*(v167 + 48) + 16 * v113);
              v115 = v114[1];
              v169 = *v114;
              v161 = *(v166 + 72);
              v116 = *(v162 + 48);
              v117 = *(v166 + 16);
              v117(&v111[v116], *(v167 + 56) + v161 * v113, v17);
              *v111 = v169;
              *(v163 + 8) = v115;
              v117(v179, &v111[v116], v17);
              (*(v166 + 56))(v179, 0, 1, v17);

              sub_100075768(v111, &qword_100505C98, &unk_10040D970);
              if ((*(v166 + 48))(v179, 1, v17) != 1)
              {
                break;
              }

              isUniquelyReferenced_nonNull_native = sub_100075768(v189[44], &qword_1005031F0, &unk_10040C4C0);
              v109 = v110;
              v0 = v164;
              v105 = v165;
              if (!v108)
              {
                goto LABEL_90;
              }
            }

            v119 = v189[38];
            v118 = v189[39];
            v17 = v189[36];
            v120 = *v159;
            (*v159)(v118, v189[44], v17);
            v120(v119, v118, v17);
            v0 = v164;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v160 = sub_10012FA80(0, v160[2] + 1, 1, v160);
            }

            v105 = v165;
            v122 = v160[2];
            v121 = v160[3];
            if (v122 >= v121 >> 1)
            {
              v160 = sub_10012FA80(v121 > 1, v122 + 1, 1, v160);
            }

            v123 = v189[38];
            v124 = v189[36];
            v160[2] = v122 + 1;
            isUniquelyReferenced_nonNull_native = v120(v160 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + v122 * v161, v123, v124);
            v109 = v110;
          }

          while (v108);
LABEL_90:
          while (1)
          {
            v110 = v109 + 1;
            if (__OFADD__(v109, 1))
            {
              goto LABEL_123;
            }

            if (v110 >= v0)
            {
              v0 = v189;
              v139 = v189[45];

              sub_1001B7EF0(v160, v139);

              goto LABEL_114;
            }

            v108 = *(v105 + 8 * v110);
            ++v109;
            if (v108)
            {
              goto LABEL_93;
            }
          }
        }
      }

      else
      {
      }

      (*v175)(v0[45], 1, 1, v0[36]);
LABEL_114:
      v5 = [v181 uniqueID];
      if (!v5)
      {
        goto LABEL_137;
      }

      v140 = v5;
      v141 = v0[45];
      v142 = v0[43];
      v143 = v0[35];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v144 = [v181 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000938D4(v141, v142, &qword_1005031F0, &unk_10040C4C0);
      SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)();
      v145 = v188;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = sub_10012FA58(0, v188[2] + 1, 1, v188);
      }

      v133 = *(v145 + 16);
      v146 = *(v145 + 24);
      v188 = v145;
      v134 = v133 + 1;
      v0 = v189;
      v17 = v184;
      if (v133 >= v146 >> 1)
      {
        v188 = sub_10012FA58(v146 > 1, v133 + 1, 1, v188);
      }

      v147 = v189[45];
      v136 = v189[35];
      v137 = v189[32];

      v138 = v147;
LABEL_120:
      sub_100075768(v138, &qword_1005031F0, &unk_10040C4C0);
      v188[2] = v134;
      isUniquelyReferenced_nonNull_native = (*(v172 + 32))(v188 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v133, v136, v137);
      goto LABEL_28;
    }

LABEL_28:
    v24 = v186;
    if (v186 == v176)
    {

      goto LABEL_129;
    }
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_1000958E4(v51, qword_10051B240);
  v52 = v25;

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v192[0] = swift_slowAlloc();
    *v55 = 136315394;
    v56 = [v52 uniqueID];

    if (!v56)
    {
      goto LABEL_134;
    }

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = sub_1002FFA0C(v57, v59, v192);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    v0[28] = v36;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v61 = BidirectionalCollection<>.joined(separator:)();
    v63 = sub_1002FFA0C(v61, v62, v192);

    *(v55 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v53, v54, "Processing Home Pass %s with aids %s", v55, 0x16u);
    swift_arrayDestroy();

    v17 = v184;
  }

  else
  {
  }

  v52 = v52;
  v81 = [v52 uniqueID];
  if (v81)
  {
    v82 = v81;
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    if (v17[2])
    {
      v86 = sub_10008C908(v83, v85);
      v88 = v87;

      if ((v88 & 1) == 0)
      {
        goto LABEL_106;
      }

      if (!v36[2])
      {
        goto LABEL_126;
      }

      v89 = *(v17[7] + 8 * v86);
      if (!*(v89 + 16))
      {
        goto LABEL_106;
      }

      v90 = v36[4];
      v91 = v36[5];

      v92 = sub_10008C908(v90, v91);
      v94 = v93;

      if (v94)
      {
        (*(v166 + 16))(v0[42], *(v89 + 56) + *(v166 + 72) * v92, v0[36]);

        v95 = 0;
LABEL_107:
        (*v175)(v0[42], v95, 1, v0[36]);
        v125 = [v52 uniqueID];
        if (!v125)
        {
          goto LABEL_133;
        }

        v126 = v125;
        v128 = v0[42];
        v127 = v0[43];
        v183 = v0[34];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v129 = *(v174 + v173);
        SESnapshot.appletTypes(forAIDs:)();
        v130 = [v52 localizedDescription];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000938D4(v128, v127, &qword_1005031F0, &unk_10040C4C0);
        SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)();
        v131 = v188;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_10012FA58(0, v188[2] + 1, 1, v188);
        }

        v133 = *(v131 + 16);
        v132 = *(v131 + 24);
        v188 = v131;
        v134 = v133 + 1;
        v0 = v189;
        v17 = v184;
        if (v133 >= v132 >> 1)
        {
          v188 = sub_10012FA58(v132 > 1, v133 + 1, 1, v188);
        }

        v135 = v189[42];
        v136 = v189[34];
        v137 = v189[32];

        v138 = v135;
        goto LABEL_120;
      }
    }

LABEL_106:
    v95 = 1;
    goto LABEL_107;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return _swift_continuation_await(v5);
}

uint64_t sub_1001B6730()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1001B6810, 0, 0);
}

void sub_1001B6810()
{
  v187 = v0;
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v185 = &_swiftEmptyDictionarySingleton;
  v172 = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v5)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_15;
          }

          v7 = *(v2 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v186[0] = v7;
        sub_1001B7A80(&v185, v186);

        ++v4;
        v2 = v172;
        if (v9 == v3)
        {
          v10 = v185;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v172;
      v3 = v11;
    }

    while (v11);
  }

  v10 = &_swiftEmptyDictionarySingleton;
LABEL_18:
  v12 = *(v0 + 248);
  v13 = OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = *(v12 + v13);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_121;
  }

  v15 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_122:
    v182 = _swiftEmptyArrayStorage;
LABEL_123:
    v144 = *(v0 + 400);
    v145 = *(v0 + 384);
    v147 = *(v0 + 352);
    v146 = *(v0 + 360);
    v149 = *(v0 + 336);
    v148 = *(v0 + 344);
    v150 = *(v0 + 328);
    v151 = *(v0 + 312);
    v179 = *(v0 + 304);
    v181 = *(v0 + 280);
    v184 = *(v0 + 272);

    v152 = *(v0 + 8);

    v152(v182);
    return;
  }

LABEL_20:
  v156 = *(v0 + 320);
  v157 = *(v0 + 328);
  v16 = *(v0 + 296);
  v168 = *(v0 + 248);
  v171 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v164 = isUniquelyReferenced_nonNull_native + 32;
  v165 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v167 = OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_snapshot;
  v169 = (v16 + 56);
  v160 = v16;
  v153 = (v16 + 32);
  v166 = *(v0 + 264);
  v170 = v15;

  v17 = 0;
  v182 = _swiftEmptyArrayStorage;
  v183 = v0;
  v178 = v10;
  while (1)
  {
    if (v171)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v165 + 16))
      {
        goto LABEL_119;
      }

      isUniquelyReferenced_nonNull_native = *(v164 + 8 * v17);
    }

    v18 = isUniquelyReferenced_nonNull_native;
    v19 = __OFADD__(v17, 1);
    v20 = v17 + 1;
    if (v19)
    {
      goto LABEL_118;
    }

    v21 = [isUniquelyReferenced_nonNull_native devicePaymentApplications];
    v180 = v20;
    if (v21)
    {
      v22 = v21;
      sub_10009393C(0, &qword_100505CA8, PKPaymentApplication_ptr);
      sub_1001BC678();
      v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v174 = v18;
      if ((v23 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        isUniquelyReferenced_nonNull_native = Set.Iterator.init(_cocoa:)();
        v24 = v183[18];
        v25 = v183[19];
        v26 = v183[20];
        v27 = v183[21];
        v28 = v183[22];
      }

      else
      {
        v30 = -1 << *(v23 + 32);
        v25 = v23 + 56;
        v26 = ~v30;
        v31 = -v30;
        if (v31 < 64)
        {
          v32 = ~(-1 << v31);
        }

        else
        {
          v32 = -1;
        }

        v28 = v32 & *(v23 + 56);

        v27 = 0;
        v24 = v23;
      }

      v0 = (v26 + 64) >> 6;
      v176 = _swiftEmptyArrayStorage;
      while (1)
      {
        v10 = v27;
        if (v24 < 0)
        {
          v36 = __CocoaSet.Iterator.next()();
          if (!v36 || (v183[30] = v36, swift_dynamicCast(), (v35 = v183[29]) == 0))
          {
LABEL_53:
            sub_100093854();

            v0 = v183;
            v29 = v176;
            v10 = v178;
            v18 = v174;
            goto LABEL_54;
          }
        }

        else
        {
          v33 = v27;
          v34 = v28;
          if (!v28)
          {
            while (1)
            {
              v27 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                break;
              }

              if (v27 >= v0)
              {
                goto LABEL_53;
              }

              v34 = *(v25 + 8 * v27);
              ++v33;
              if (v34)
              {
                goto LABEL_42;
              }
            }

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
            v143 = isUniquelyReferenced_nonNull_native;
            v15 = _CocoaArrayWrapper.endIndex.getter();
            isUniquelyReferenced_nonNull_native = v143;
            if (!v15)
            {
              goto LABEL_122;
            }

            goto LABEL_20;
          }

LABEL_42:
          v28 = (v34 - 1) & v34;
          v35 = *(*(v24 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v34)))));
          if (!v35)
          {
            goto LABEL_53;
          }
        }

        v37 = [v35 applicationIdentifier];
        if (v37)
        {
          v38 = v37;
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v162 = v40;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_10012EA44(0, v176[2] + 1, 1, v176);
            v176 = isUniquelyReferenced_nonNull_native;
          }

          v42 = v176[2];
          v41 = v176[3];
          if (v42 >= v41 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_10012EA44((v41 > 1), v42 + 1, 1, v176);
            v176 = isUniquelyReferenced_nonNull_native;
          }

          v176[2] = v42 + 1;
          v43 = &v176[2 * v42];
          v43[4] = v39;
          v43[5] = v162;
        }

        else
        {
        }
      }
    }

    v29 = _swiftEmptyArrayStorage;
LABEL_54:
    if ([v18 isHomeKeyPass])
    {
      break;
    }

    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000958E4(v57, qword_10051B240);
    v45 = v18;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v186[0] = swift_slowAlloc();
      *v60 = 136315906;
      v61 = [v45 uniqueID];

      if (!v61)
      {
        goto LABEL_129;
      }

      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = sub_1002FFA0C(v62, v64, v186);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      v66 = [v45 localizedDescription];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = sub_1002FFA0C(v67, v69, v186);

      *(v60 + 14) = v70;
      *(v60 + 22) = 1024;
      LODWORD(v70) = [v45 isUserDeletable];

      *(v60 + 24) = v70;
      *(v60 + 28) = 2080;
      *(v0 + 216) = v29;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v71 = BidirectionalCollection<>.joined(separator:)();
      v73 = sub_1002FFA0C(v71, v72, v186);

      *(v60 + 30) = v73;
      _os_log_impl(&_mh_execute_header, v58, v59, "Processing pass %s named %s, user deletable: %{BOOL}d, instance AIDs: %s", v60, 0x26u);
      swift_arrayDestroy();

      v10 = v178;
    }

    else
    {
    }

    if ([v45 isUserDeletable] && v29[2])
    {
      v89 = *(v168 + v167);
      SESnapshot.appletTypes(forAIDs:)();
      v175 = v45;
      v90 = [v175 uniqueID];
      if (!v90)
      {
        goto LABEL_130;
      }

      v91 = v90;
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;

      if (v10[2])
      {
        v95 = sub_10008C908(v92, v94);
        v97 = v96;

        if (v97)
        {
          v98 = *(v10[7] + 8 * v95);
          v99 = v98 + 64;
          v100 = -1 << *(v98 + 32);
          if (-v100 < 64)
          {
            v101 = ~(-1 << -v100);
          }

          else
          {
            v101 = -1;
          }

          v102 = v101 & *(v98 + 64);
          v0 = (63 - v100) >> 6;
          v161 = v98;
          isUniquelyReferenced_nonNull_native = swift_bridgeObjectRetain_n();
          v103 = 0;
          v154 = _swiftEmptyArrayStorage;
          v158 = v0;
          v159 = v99;
LABEL_83:
          v104 = v103;
          if (!v102)
          {
            goto LABEL_85;
          }

          do
          {
            v103 = v104;
LABEL_88:
            v173 = v183[44];
            v105 = v183[41];
            v10 = v183[36];
            v106 = __clz(__rbit64(v102));
            v102 &= v102 - 1;
            v107 = v106 | (v103 << 6);
            v108 = (*(v161 + 48) + 16 * v107);
            v109 = v108[1];
            v163 = *v108;
            v155 = *(v160 + 72);
            v110 = *(v156 + 48);
            v111 = *(v160 + 16);
            v111(&v105[v110], *(v161 + 56) + v155 * v107, v10);
            *v105 = v163;
            *(v157 + 8) = v109;
            v111(v173, &v105[v110], v10);
            (*(v160 + 56))(v173, 0, 1, v10);

            sub_100075768(v105, &qword_100505C98, &unk_10040D970);
            if ((*(v160 + 48))(v173, 1, v10) != 1)
            {
              v113 = v183[38];
              v112 = v183[39];
              v10 = v183[36];
              v114 = *v153;
              (*v153)(v112, v183[44], v10);
              v114(v113, v112, v10);
              v0 = v158;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v154 = sub_10012FA80(0, v154[2] + 1, 1, v154);
              }

              v99 = v159;
              v116 = v154[2];
              v115 = v154[3];
              if (v116 >= v115 >> 1)
              {
                v154 = sub_10012FA80(v115 > 1, v116 + 1, 1, v154);
              }

              v117 = v183[38];
              v118 = v183[36];
              v154[2] = v116 + 1;
              isUniquelyReferenced_nonNull_native = v114(v154 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + v116 * v155, v117, v118);
              goto LABEL_83;
            }

            isUniquelyReferenced_nonNull_native = sub_100075768(v183[44], &qword_1005031F0, &unk_10040C4C0);
            v104 = v103;
            v0 = v158;
            v99 = v159;
          }

          while (v102);
LABEL_85:
          while (1)
          {
            v103 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              goto LABEL_117;
            }

            if (v103 >= v0)
            {
              v0 = v183;
              v133 = v183[45];

              sub_1001B7EF0(v154, v133);

              goto LABEL_108;
            }

            v102 = *(v99 + 8 * v103);
            ++v104;
            if (v102)
            {
              goto LABEL_88;
            }
          }
        }
      }

      else
      {
      }

      (*v169)(*(v0 + 360), 1, 1, *(v0 + 288));
LABEL_108:
      v134 = [v175 uniqueID];
      if (!v134)
      {
        goto LABEL_131;
      }

      v135 = v134;
      v136 = *(v0 + 360);
      v137 = *(v0 + 344);
      v138 = *(v0 + 280);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v139 = [v175 localizedDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000938D4(v136, v137, &qword_1005031F0, &unk_10040C4C0);
      SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)();
      v140 = v182;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = sub_10012FA58(0, v182[2] + 1, 1, v182);
      }

      v127 = *(v140 + 16);
      v141 = *(v140 + 24);
      v182 = v140;
      v128 = v127 + 1;
      v0 = v183;
      v10 = v178;
      if (v127 >= v141 >> 1)
      {
        v182 = sub_10012FA58(v141 > 1, v127 + 1, 1, v182);
      }

      v142 = v183[45];
      v130 = v183[35];
      v131 = v183[32];

      v132 = v142;
LABEL_114:
      sub_100075768(v132, &qword_1005031F0, &unk_10040C4C0);
      v182[2] = v128;
      isUniquelyReferenced_nonNull_native = (*(v166 + 32))(v182 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v127, v130, v131);
      goto LABEL_22;
    }

LABEL_22:
    v17 = v180;
    if (v180 == v170)
    {

      goto LABEL_123;
    }
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_1000958E4(v44, qword_10051B240);
  v45 = v18;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v186[0] = swift_slowAlloc();
    *v48 = 136315394;
    v49 = [v45 uniqueID];

    if (!v49)
    {
      goto LABEL_128;
    }

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_1002FFA0C(v50, v52, v186);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    *(v0 + 224) = v29;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v54 = BidirectionalCollection<>.joined(separator:)();
    v56 = sub_1002FFA0C(v54, v55, v186);

    *(v48 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v46, v47, "Processing Home Pass %s with aids %s", v48, 0x16u);
    swift_arrayDestroy();

    v10 = v178;
  }

  else
  {
  }

  v45 = v45;
  v74 = [v45 uniqueID];
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    if (v10[2])
    {
      v79 = sub_10008C908(v76, v78);
      v81 = v80;

      if ((v81 & 1) == 0)
      {
        goto LABEL_100;
      }

      if (!v29[2])
      {
        goto LABEL_120;
      }

      v82 = *(v10[7] + 8 * v79);
      if (!*(v82 + 16))
      {
        goto LABEL_100;
      }

      v83 = v29[4];
      v84 = v29[5];

      v85 = sub_10008C908(v83, v84);
      v87 = v86;

      if (v87)
      {
        (*(v160 + 16))(*(v0 + 336), *(v82 + 56) + *(v160 + 72) * v85, *(v0 + 288));

        v88 = 0;
LABEL_101:
        (*v169)(*(v0 + 336), v88, 1, *(v0 + 288));
        v119 = [v45 uniqueID];
        if (!v119)
        {
          goto LABEL_127;
        }

        v120 = v119;
        v122 = *(v0 + 336);
        v121 = *(v0 + 344);
        v177 = *(v0 + 272);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v123 = *(v168 + v167);
        SESnapshot.appletTypes(forAIDs:)();
        v124 = [v45 localizedDescription];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000938D4(v122, v121, &qword_1005031F0, &unk_10040C4C0);
        SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)();
        v125 = v182;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_10012FA58(0, v182[2] + 1, 1, v182);
        }

        v127 = *(v125 + 16);
        v126 = *(v125 + 24);
        v182 = v125;
        v128 = v127 + 1;
        v0 = v183;
        v10 = v178;
        if (v127 >= v126 >> 1)
        {
          v182 = sub_10012FA58(v126 > 1, v127 + 1, 1, v182);
        }

        v129 = v183[42];
        v130 = v183[34];
        v131 = v183[32];

        v132 = v129;
        goto LABEL_114;
      }
    }

LABEL_100:
    v88 = 1;
    goto LABEL_101;
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

uint64_t sub_1001B7A80(void *a1, id *a2)
{
  v56 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v54 - v16;
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v20 = *a2;
  v21 = [*a2 lastUsed];
  if (v21)
  {
    v22 = v21;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = v4[4];
    v23(v17, v7, v3);
    v25 = v4[7];
    v24 = v4 + 56;
    v25(v17, 0, 1, v3);
    v23(v19, v17, v3);
    v25(v19, 0, 1, v3);
  }

  else
  {
    v26 = v4[7];
    v27 = 1;
    v26(v17, 1, 1, v3);
    v28 = [v20 lastUsedTransaction];
    if (v28)
    {
      v29 = v28;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = 0;
    }

    v26(v14, v27, 1, v3);
    sub_1001BC6E0(v14, v19);
    v30 = v4[6];
    v24 = v4 + 48;
    if (v30(v17, 1, v3) != 1)
    {
      sub_100075768(v17, &qword_1005031F0, &unk_10040C4C0);
    }
  }

  v31 = [v20 passUniqueIdentifier];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = [v20 paymentApplicationIdentifier];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  sub_1000938D4(v19, v55, &qword_1005031F0, &unk_10040C4C0);
  v39 = v56;
  v40 = *v56;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v39;
  v42 = v57;
  v44 = sub_10008C908(v32, v34);
  v45 = v42[2];
  v46 = (v43 & 1) == 0;
  v47 = v45 + v46;
  if (__OFADD__(v45, v46))
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v43;
  if (v42[3] >= v47)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

LABEL_17:
    sub_100312ECC();
    goto LABEL_12;
  }

  sub_10030D5E4(v47, isUniquelyReferenced_nonNull_native);
  v48 = sub_10008C908(v32, v34);
  if ((v24 & 1) != (v49 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v44 = v48;
LABEL_12:
  v50 = v57;
  *v56 = v57;
  if (v24)
  {
  }

  else
  {
    v51 = sub_1000919FC(_swiftEmptyArrayStorage);
    sub_10031785C(v44, v32, v34, v51, v50);
  }

  v52 = v50[7] + 8 * v44;
  sub_1000C5B04(v55, v36, v38);
  return sub_100075768(v19, &qword_1005031F0, &unk_10040C4C0);
}

uint64_t sub_1001B7EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
        sub_1001BC264(&qword_100505CC0, &type metadata accessor for Date);
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

uint64_t sub_1001B81A0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for SERXPCInternalErrors();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = type metadata accessor for SESnapshot.TargetDevice();
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001B82F8, 0, 0);
}

uint64_t sub_1001B82F8()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1001B83DC;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1001B83DC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1001B8B94;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1001B84F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001B84F8()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_1001B85CC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x5F286574656C6564, 0xEA0000000000293ALL, sub_1001B9D2C, 0, &type metadata for () + 8);
}

uint64_t sub_1001B85CC()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1001B8C28;
  }

  else
  {
    v3 = sub_1001B86E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001B86E0()
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000958E4(v1, qword_10051B240);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deletion TSM succeeded", v4, 2u);
  }

  v5 = v0[20];
  v6 = v0[5];
  v7 = v0[6];

  v8 = OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses;
  swift_beginAccess();

  v9 = sub_1001BBD04((v7 + v8), v6);

  v11 = *(v7 + v8);
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v25 = *(v7 + v8);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    v12 = result;
    if (result >= v9)
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12 < v9)
  {
    goto LABEL_16;
  }

LABEL_7:
  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[6];
  sub_1001A2724(v9, v12);
  swift_endAccess();
  sub_1001BC1A4(v15 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = v0[13];
  v17 = v0[14];
  v19 = v0[11];
  v20 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1001BC208(v0[11]);
    (*(v18 + 104))(v17, enum case for SESnapshot.TargetDevice.pairedWatch(_:), v20);
  }

  else
  {
    (*(v18 + 104))(v0[14], enum case for SESnapshot.TargetDevice.currentDevice(_:), v0[12]);
    v21 = type metadata accessor for ProvisioningDevice();
    (*(*(v21 - 8) + 8))(v19, v21);
  }

  (*(v0[13] + 32))(v0[15], v0[14], v0[12]);
  type metadata accessor for SERXPCServer();
  v22 = swift_task_alloc();
  v0[21] = v22;
  *v22 = v0;
  v22[1] = sub_1001B89C4;
  v23 = v0[15];
  v24 = v0[9];

  return sub_1002BC9B0(0, 0xF000000000000000, v23, v24);
}

uint64_t sub_1001B89C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;

  if (v1)
  {
    v7 = sub_1001B8EA4;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_1001B8AE8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001B8AE8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  (*(v0[13] + 8))(v0[15], v0[12]);

  v4 = v0[1];
  v5 = v0[22];

  return v4(v5);
}

uint64_t sub_1001B8B94()
{
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001B8C28()
{
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B240);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deletion failed with error %@", v6, 0xCu);
    sub_100075768(v7, &unk_100503F70, &unk_10040B2E0);
  }

  v9 = v0[20];

  v10 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
  swift_allocError();
  *v11 = 0xD000000000000013;
  v11[1] = 0x8000000100465CD0;
  (*(*(v10 - 8) + 104))(v11, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v10);
  swift_willThrow();

  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[11];
  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001B8EA4()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  sub_1001BC264(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v5 + 32))(v7, v4, v6);
  (*(v3 + 8))(v1, v2);
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001B8FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = *(*(sub_100068FC4(&qword_100504250, &qword_10040D610) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001B90D8, 0, 0);
}

void sub_1001B90D8()
{
  v65 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_13:
    v31 = *(v0 + 88);
    v32 = *(v0 + 96);
    v33 = *(v0 + 64);
    v34 = **(v0 + 40);
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    ThrowingTaskGroup.cancelAll()();

    v35 = *(v0 + 8);
LABEL_21:

    v35();
    return;
  }

  v3 = *(v0 + 80);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v60 = OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses;
  v61 = *(v0 + 56);
  swift_beginAccess();
  v5 = 0;
  v62 = *(v3 + 16);
  v6 = (v3 + 8);
  v59 = *(v3 + 72);
  while (1)
  {
    v8 = *(v0 + 96);
    v62(v8, v4, *(v0 + 72));
    v9 = *(v61 + v60);
    v10 = swift_task_alloc();
    *(v10 + 16) = v8;

    v11 = sub_10011F6D0(sub_1001BC3D4, v10, v9);

    v63 = v5;
    if (!v11)
    {
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 88);
      v18 = *(v0 + 96);
      v20 = *(v0 + 72);
      v21 = type metadata accessor for Logger();
      sub_1000958E4(v21, qword_10051B240);
      v62(v19, v18, v20);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 88);
      v26 = *(v0 + 72);
      if (v24)
      {
        v27 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v64[0] = v58;
        *v27 = 136315138;
        v56 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
        v29 = v28;
        v57 = v23;
        v7 = *v6;
        (*v6)(v25, v26);
        v30 = sub_1002FFA0C(v56, v29, v64);

        *(v27 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v22, v57, "PK Pass not found during deletion %s", v27, 0xCu);
        sub_1000752F4(v58);
      }

      else
      {

        v7 = *v6;
        (*v6)(v25, v26);
      }

      v7(*(v0 + 96), *(v0 + 72));
      goto LABEL_4;
    }

    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    v14 = *(v0 + 40);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v12;
    v16[5] = v11;

    v17 = v11;
    LOBYTE(v14) = sub_1001B9B0C(v13, &unk_10040D968, v16);
    sub_100075768(v13, &qword_100504250, &qword_10040D610);
    if ((v14 & 1) == 0)
    {
      break;
    }

    (*v6)(*(v0 + 96), *(v0 + 72));
LABEL_4:
    v4 += v59;
    --v2;
    v5 = v63;
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000958E4(v36, qword_10051B240);
  v37 = v17;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  v40 = v6;
  if (!os_log_type_enabled(v38, v39))
  {

LABEL_20:
    v48 = *(v0 + 88);
    v49 = *(v0 + 96);
    v50 = *(v0 + 64);
    v51 = *(v0 + 72);
    v52 = *(v0 + 40);
    v53 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v54 = 0xD00000000000001BLL;
    v54[1] = 0x8000000100465D10;
    (*(*(v53 - 8) + 104))(v54, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v53);
    swift_willThrow();

    (*v40)(v49, v51);
    v55 = *v52;
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    ThrowingTaskGroup.cancelAll()();

    v35 = *(v0 + 8);
    goto LABEL_21;
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v64[0] = v42;
  *v41 = 136315138;
  v43 = [v37 uniqueID];

  if (v43)
  {
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_1002FFA0C(v44, v46, v64);

    *(v41 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "Unable to schedule deletion for pass %s", v41, 0xCu);
    sub_1000752F4(v42);

    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1001B97A8(id *a1)
{
  v1 = [*a1 uniqueID];
  if (!v1)
  {
    SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
  if (!v5)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {

    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_11:

  return v9 & 1;
}

uint64_t sub_1001B9878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1001B9898, 0, 0);
}

uint64_t sub_1001B9898()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1001B998C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x70286574656C6564, 0xED0000293A737361, sub_1001BC4FC, v1, &type metadata for () + 8);
}

uint64_t sub_1001B998C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1001B9AA8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100133C30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001B9AA8()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1001B9B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v20 - v8;
  v10 = *v3;
  v11 = swift_taskGroup_addPending();
  if (v11)
  {
    sub_1000938D4(a1, v9, &qword_100504250, &qword_10040D610);
    v12 = type metadata accessor for TaskPriority();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_100075768(v9, &qword_100504250, &qword_10040D610);
      if (*(a3 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v13 + 8))(v9, v12);
      if (*(a3 + 16))
      {
LABEL_4:
        v14 = *(a3 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = dispatch thunk of Actor.unownedExecutor.getter();
        v17 = v16;
        swift_unknownObjectRelease();
        v18 = (v17 | v15);
        if (v17 | v15)
        {
          v21[0] = 0;
          v21[1] = 0;
          v18 = v21;
          v21[2] = v15;
          v21[3] = v17;
        }

        goto LABEL_6;
      }
    }

    v18 = 0;
LABEL_6:
    v20[1] = 1;
    v20[2] = v18;
    v20[3] = v10;
    swift_task_create();
  }

  return v11 & 1;
}

void sub_1001B9D2C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  v7 = [objc_opt_self() sharedRemoteAdminManager];
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  aBlock = 0xD000000000000010;
  v15 = 0x8000000100465CF0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v3 + 16))(v6, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v6, v2);
  v18 = sub_1001BC340;
  v19 = v11;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001BA05C;
  v17 = &unk_1004CA668;
  v12 = _Block_copy(&aBlock);

  [v7 connectToServer:0 initialClientRequestInfo:isa callback:v12];
  _Block_release(v12);
}

uint64_t sub_1001B9FE8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100068FC4(&qword_1005045B0, &qword_10040B978);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100068FC4(&qword_1005045B0, &qword_10040B978);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1001BA05C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1001BA0C8(uint64_t a1, uint64_t a2, char *a3)
{
  v47 = a3;
  v5 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = type metadata accessor for ProvisioningDevice();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001BC1A4(a2 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    (*(v6 + 16))(v9, a1, v5);
    v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v20 = swift_allocObject();
    v21 = v47;
    *(v20 + 16) = v47;
    (*(v6 + 32))(v20 + v19, v9, v5);
    v53 = sub_1001BC508;
    v54 = v20;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1001BA734;
    v52 = &unk_1004CA6E0;
    v22 = _Block_copy(&aBlock);
    v23 = v21;

    [v18 removePass:v23 withCompletionHandler:v22];
    _Block_release(v22);
  }

  else
  {
    (*(v48 + 32))(v13, v17, v10);
    v24 = [ProvisioningDevice.target.getter() respondsToSelector:"paymentWebService:removePass:withCompletionHandler:"];
    swift_unknownObjectRelease();
    if (v24)
    {
      v25 = ProvisioningDevice.target.getter();
      v26 = ProvisioningDevice.webService.getter();
      v27 = a1;
      v28 = v5;
      (*(v6 + 16))(v9, v27, v5);
      v29 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v30 = swift_allocObject();
      v31 = v47;
      *(v30 + 16) = v47;
      (*(v6 + 32))(v30 + v29, v9, v28);
      v53 = sub_1001BD29C;
      v54 = v30;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_1001BA734;
      v52 = &unk_1004CA730;
      v32 = _Block_copy(&aBlock);
      v33 = v31;

      [v25 paymentWebService:v26 removePass:v33 withCompletionHandler:v32];
      _Block_release(v32);
      swift_unknownObjectRelease();

      (*(v48 + 8))(v13, v10);
    }

    else
    {
      v47 = v13;
      v34 = v48;
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000958E4(v35, qword_10051B240);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        aBlock = v39;
        *v38 = 136315138;
        v40 = Selector.description.getter();
        v42 = sub_1002FFA0C(v40, v41, &aBlock);

        *(v38 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v36, v37, "%s not implemented by target device", v38, 0xCu);
        sub_1000752F4(v39);
      }

      v43 = v47;
      v44 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
      sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
      v45 = swift_allocError();
      *v46 = 0xD000000000000018;
      v46[1] = 0x8000000100465D50;
      (*(*(v44 - 8) + 104))(v46, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v44);
      aBlock = v45;
      CheckedContinuation.resume(throwing:)();
      (*(v34 + 8))(v43, v10);
    }
  }
}

void sub_1001BA734(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1001BA7AC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    sub_100068FC4(&qword_1005045B0, &qword_10040B978);
    CheckedContinuation.resume(returning:)();
    return;
  }

  swift_errorRetain();
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B240);
  swift_errorRetain();
  v5 = a3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_9;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v20 = v10;
  *v8 = 138412546;
  swift_errorRetain();
  v11 = _swift_stdlib_bridgeErrorToNSError();
  *(v8 + 4) = v11;
  *v9 = v11;
  *(v8 + 12) = 2080;
  v12 = [v5 uniqueID];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1002FFA0C(v13, v15, &v20);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deletion failed with error %@ for pkPass %s", v8, 0x16u);
    sub_100075768(v9, &unk_100503F70, &unk_10040B2E0);

    sub_1000752F4(v10);

LABEL_9:

    v17 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    v18 = swift_allocError();
    *v19 = 0xD00000000000001ALL;
    v19[1] = 0x8000000100465D70;
    (*(*(v17 - 8) + 104))(v19, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v17);
    v20 = v18;
    sub_100068FC4(&qword_1005045B0, &qword_10040B978);
    CheckedContinuation.resume(throwing:)();

    return;
  }

  __break(1u);
}

uint64_t sub_1001BAACC(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = sub_100068FC4(&qword_100505C90, &qword_10040D938);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v56 - v8;
  v58 = type metadata accessor for ProvisioningDevice();
  v59 = *(v58 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v58);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = [objc_opt_self() sharedService];
  if (v18)
  {
    v19 = v18;
    (*(v14 + 16))(v17, a1, v13);
    v20 = (*(v14 + 88))(v17, v13);
    if (v20 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:))
    {
      v56 = a1;
      v57 = v13;
      (*(v14 + 96))(v17, v13);
      v21 = *v17;
      v22 = enum case for ProvisioningDevice.DeviceType.phone(_:);
      v23 = type metadata accessor for ProvisioningDevice.DeviceType();
      v24 = v4;
      v25 = *(v23 - 8);
      (*(v25 + 104))(v9, v22, v23);
      (*(v25 + 56))(v9, 0, 1, v23);
      v4 = v24;
      v26 = v19;
      ProvisioningDevice.init(type:webService:)();
      v27 = v24 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration;
      v28 = v58;
      (*(v59 + 16))(v27, v12, v58);
      type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
      swift_storeEnumTagMultiPayload();
      *(v4 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_snapshot) = v21;
      v29 = v21;
      v30 = ProvisioningDevice.target.getter();
      if ([v30 respondsToSelector:"paymentWebService:passesOfType:"])
      {
        v31 = ProvisioningDevice.webService.getter();
        v32 = [v30 paymentWebService:v31 passesOfType:1];
        swift_unknownObjectRelease();
        if (v32)
        {
          sub_10009393C(0, &qword_100504708, PKPass_ptr);
          v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v34 = sub_1000F1A7C(v33);

          v35 = v56;
          if (v34)
          {

            (*(v14 + 8))(v35, v57);
            (*(v59 + 8))(v12, v28);
LABEL_20:
            *(v4 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses) = v34;
            return v4;
          }

          goto LABEL_18;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v35 = v56;
LABEL_18:

      (*(v14 + 8))(v35, v57);
      (*(v59 + 8))(v12, v28);
      goto LABEL_19;
    }

    if (v20 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.pairedWatch(_:))
    {
      v38 = *(v14 + 96);
      v57 = v13;
      v39 = v38(v17, v13);
      v40 = *v17;
      sub_1003F7018(v39);
      v42 = [objc_allocWithZone(*(v41 + 1360)) init];
      *(v4 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration) = v42;
      type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
      swift_storeEnumTagMultiPayload();
      *(v4 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_snapshot) = v40;
      v43 = v42;
      v44 = v40;
      v45 = [v43 passesOfType:1];
      if (v45)
      {
        v46 = v45;
        sub_10009393C(0, &qword_100504708, PKPass_ptr);
        v47 = a1;
        v48 = v4;
        v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = sub_1000F1A7C(v49);
        v4 = v48;
        a1 = v47;

        if (v34)
        {

          (*(v14 + 8))(v47, v57);
          goto LABEL_20;
        }
      }

      (*(v14 + 8))(a1, v57);
LABEL_19:

      v34 = _swiftEmptyArrayStorage;
      goto LABEL_20;
    }

    *a2 = 0xD00000000000001FLL;
    a2[1] = 0x8000000100465CB0;
    v50 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v51 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    (*(*(v51 - 8) + 104))(a2, v50, v51);
    sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_willThrowTypedImpl();

    v52 = *(v14 + 8);
    v52(a1, v13);
    v52(v17, v13);
  }

  else
  {
    *a2 = 0xD000000000000038;
    a2[1] = 0x8000000100465C70;
    v36 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v37 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    (*(*(v37 - 8) + 104))(a2, v36, v37);
    sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_willThrowTypedImpl();
    (*(v14 + 8))(a1, v13);
  }

  type metadata accessor for SEStorageManagementPassProvider(0);
  v53 = *(*v4 + 48);
  v54 = *(*v4 + 52);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1001BB294()
{
  sub_1001BC208(v0 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_deviceConfiguration);

  v1 = *(v0 + OBJC_IVAR____TtC10seserviced31SEStorageManagementPassProvider_pkPasses);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001BB340()
{
  result = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(319);
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

void sub_1001BB45C()
{
  sub_1001BB4D0();
  if (v1 <= 0x3F)
  {
    sub_1001BB518(v0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001BB4D0()
{
  if (!qword_100505C50)
  {
    v0 = type metadata accessor for ProvisioningDevice();
    if (!v1)
    {
      atomic_store(v0, &qword_100505C50);
    }
  }
}

void sub_1001BB518(double a1)
{
  if (!qword_100505C58)
  {
    sub_1003F703C(a1);
    v4 = sub_10009393C(v3, v2, (v1 + 1360));
    if (!v5)
    {
      atomic_store(v4, &qword_100505C58);
    }
  }
}

uint64_t sub_1001BB570()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001BD2A0;

  return sub_1001B5090();
}

uint64_t sub_1001BB600(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001BB698;

  return sub_1001B81A0(a1);
}

uint64_t sub_1001BB698(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1001BB798(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000C288C;

  return sub_1001B8FD0(a1, a2, v7, v6);
}

uint64_t sub_1001BB84C()
{
  v1 = sub_1001BC760();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001BB8C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001BD2A0;

  return sub_1001BC9A8(a1);
}

uint64_t sub_1001BB96C(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_10009393C(0, &qword_100505CB8, PKPaymentApplicationUsageSummary_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return swift_continuation_resume();
}

unint64_t sub_1001BB9FC(unint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_28:
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v26 = a1 & 0xC000000000000001;
  v23 = a1;
  v24 = a1 + 32;
  v32 = v27 + 16;
  v33 = (v27 + 8);
  while (1)
  {
    if (v7 == v28)
    {
      return 0;
    }

    v29 = v7;
    if (v26)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v25 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v8 = *(v24 + 8 * v7);
    }

    v35 = v8;
    v9 = *(v30 + 16);
    if (v9)
    {
      break;
    }

LABEL_4:

    v7 = v29 + 1;
    a1 = v23;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_27;
    }
  }

  v10 = v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v31 = *(v27 + 72);
  v34 = *(v27 + 16);
  v34(v6, v10, v3);
  while (1)
  {
    v11 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
    v13 = v12;
    v14 = [v35 uniqueID];
    if (!v14)
    {

      (*v33)(v6, v3);
      goto LABEL_12;
    }

    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v11 == v16 && v13 == v18)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v33)(v6, v3);
    if (v20)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 += v31;
    if (!--v9)
    {
      goto LABEL_4;
    }

    v34(v6, v10, v3);
  }

  (*v33)(v6, v3);
LABEL_23:

  return v29;
}

unint64_t sub_1001BBD04(unint64_t *a1, uint64_t a2)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  result = sub_1001BB9FC(*a1, a2);
  v46 = v2;
  if (v2)
  {
    return v3;
  }

  v47 = a1;
  if (v13)
  {
    if (v11 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = result;
  v14 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v54 = v7 + 16;
  v55 = (v7 + 8);
  v48 = v7;
  v15 = v11;
  v50 = a2;
LABEL_11:
  if (v15 >> 62)
  {
    if (v14 == _CocoaArrayWrapper.endIndex.getter())
    {
      return v3;
    }
  }

  else if (v14 == *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v3;
  }

  v52 = v15;
  v53 = v3;
  v51 = v14;
  v49 = v15 & 0xC000000000000001;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_56;
    }

    if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

    v16 = *(v15 + 8 * v14 + 32);
  }

  v58 = v16;
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = v50 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v19 = *(v48 + 16);
    v56 = *(v48 + 72);
    v57 = v19;
    v19(v10, v18, v6);
    while (1)
    {
      v20 = SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter();
      v22 = v21;
      v23 = [v58 uniqueID];
      if (v23)
      {
        v24 = v23;
        v25 = v10;
        v26 = v6;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        if (v20 == v27 && v22 == v29)
        {

          v10 = v25;
          v6 = v26;
          (*v55)(v25, v26);
LABEL_33:

          a2 = v50;
          v33 = v51;
          v15 = v52;
          v3 = v53;
LABEL_48:
          v45 = __OFADD__(v33, 1);
          v14 = v33 + 1;
          if (v45)
          {
            goto LABEL_58;
          }

          goto LABEL_11;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v10 = v25;
        v6 = v26;
        (*v55)(v25, v26);
        if (v31)
        {
          goto LABEL_33;
        }
      }

      else
      {

        (*v55)(v10, v6);
      }

      v18 += v56;
      if (!--v17)
      {
        break;
      }

      v57(v10, v18, v6);
    }
  }

  v32 = v53;
  v33 = v51;
  if (v53 == v51)
  {
    a2 = v50;
    v15 = v52;
    v3 = v53 + 1;
    if (!__OFADD__(v53, 1))
    {
      goto LABEL_48;
    }
  }

  else
  {
    v15 = v52;
    if (v49)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v35 = v33;
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v53 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      v37 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53 >= v37)
      {
        goto LABEL_62;
      }

      if (v51 >= v37)
      {
        goto LABEL_63;
      }

      v35 = v51;
      v38 = *(v52 + 32 + 8 * v51);
      v34 = *(v52 + 32 + 8 * v53);
      v36 = v38;
    }

    v39 = v36;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
    {
      v15 = sub_1001A291C(v15);
      v40 = (v15 >> 62) & 1;
    }

    else
    {
      LODWORD(v40) = 0;
    }

    v41 = v15 & 0xFFFFFFFFFFFFFF8;
    v42 = *((v15 & 0xFFFFFFFFFFFFFF8) + 8 * v32 + 0x20);
    *((v15 & 0xFFFFFFFFFFFFFF8) + 8 * v32 + 0x20) = v39;

    if ((v15 & 0x8000000000000000) == 0 && !v40)
    {
      v33 = v35;
      if ((v35 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v15 = sub_1001A291C(v15);
    v41 = v15 & 0xFFFFFFFFFFFFFF8;
    v33 = v35;
    if ((v35 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

LABEL_46:
    if (v33 >= *(v41 + 16))
    {
      goto LABEL_60;
    }

    v43 = v41 + 8 * v33;
    v44 = *(v43 + 32);
    *(v43 + 32) = v34;

    *v47 = v15;
    a2 = v50;
    v45 = __OFADD__(v32, 1);
    v3 = v32 + 1;
    if (!v45)
    {
      goto LABEL_48;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1001BC1A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BC208(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementPassProvider.DeviceConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BC264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001BC2AC()
{
  v1 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001BC340(uint64_t a1)
{
  v2 = *(*(sub_100068FC4(&qword_1005045B0, &qword_10040B978) - 8) + 80);

  return sub_1001B9FE8(a1);
}

uint64_t sub_1001BC3BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001BC3F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001BC43C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_1001B9878(a1, v4, v5, v7, v6);
}

uint64_t sub_1001BC50C()
{
  v1 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_1001BC678()
{
  result = qword_100505CB0;
  if (!qword_100505CB0)
  {
    sub_10009393C(255, &qword_100505CA8, PKPaymentApplication_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505CB0);
  }

  return result;
}

uint64_t sub_1001BC6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1001BC760()
{
  v1 = v0;
  v2 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  type metadata accessor for SEStorageMockEntryStore();
  v10 = sub_100259A0C(v9);
  if (v0)
  {
    sub_1001BC264(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    (*(v3 + 32))(v11, v9, v2);
  }

  else
  {
    v12 = v10;
    type metadata accessor for SEStorageMockEntryStore.Context();
    inited = swift_initStackObject();
    v14 = v12[2];
    v15 = type metadata accessor for ModelContext();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();

    v18 = ModelContext.init(_:)();

    *(inited + 16) = v18;
    v1 = sub_100259EC4(v7);
  }

  return v1;
}

uint64_t sub_1001BC9A8(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for SERXPCInternalErrors();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for SESnapshot.TargetDevice();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001BCB2C, 0, 0);
}

uint64_t sub_1001BCB2C()
{
  v1 = v0[15];
  type metadata accessor for SEStorageMockEntryStore();
  v2 = sub_100259A0C(v1);
  v3 = v0[14];
  v4 = v0[5];
  v5 = v2;
  type metadata accessor for SEStorageMockEntryStore.Context();
  inited = swift_initStackObject();
  v7 = v5[2];
  v8 = type metadata accessor for ModelContext();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = ModelContext.init(_:)();

  *(inited + 16) = v11;
  sub_10025B6EC(v4, v3);

  v12 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_1001BCDCC;

  return static Task<>.sleep(nanoseconds:)(5000000000);
}

uint64_t sub_1001BCDCC()
{
  v2 = *(*v1 + 128);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1001BD290;
  }

  else
  {
    v3 = sub_1001BCEE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001BCEE4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  type metadata accessor for SERXPCServer();
  (*(v2 + 104))(v1, enum case for SESnapshot.TargetDevice.currentDevice(_:), v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1001BCFC4;
  v5 = v0[11];
  v6 = v0[8];

  return sub_1002BC9B0(0, 0xF000000000000000, v5, v6);
}

uint64_t sub_1001BCFC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 80);
  v7 = *v2;

  v8 = (v6 + 8);
  if (v1)
  {
    (*v8)(v4[11], v4[9]);

    return _swift_task_switch(sub_1001BD188, 0, 0);
  }

  else
  {
    v10 = v4[14];
    v9 = v4[15];
    v11 = v4[11];
    v13 = v4 + 8;
    v12 = v4[8];
    (*v8)(v11, v13[1]);

    v14 = *(v7 + 8);

    return v14(a1);
  }
}

uint64_t sub_1001BD188()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1001BC264(&qword_100507080, &type metadata accessor for SERXPCInternalErrors);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001BD2A4()
{
  error = 0;
  v1 = *v0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = SecKeyCreateSignature(v1, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, isa, &error);

  if (v3)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Data._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  if (qword_100501A50 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_100505CC8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    swift_beginAccess();
    v9 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_1001BDD98();
      v10 = Error.localizedDescription.getter();
      v12 = v11;
    }

    else
    {
      v12 = 0xED0000726F727265;
      v10 = 0x206E776F6E6B6E55;
    }

    v13 = sub_1002FFA0C(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "SecKeyCreateSignature failed with error %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  sub_1001BDD44();
  swift_allocError();
  *v14 = 1;
  return swift_willThrow();
}

void sub_1001BD548(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  sub_100195DE8(a2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1001BE7CC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BDC18;
  aBlock[3] = &unk_1004CA7C8;
  v12 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v12);
}

void sub_1001BD730(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_100501A50 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_100505CC8);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31[0] = v7;
      *v6 = 136446210;
      v8 = _convertErrorToNSError(_:)();
      v9 = [v8 debugDescription];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_1002FFA0C(v10, v12, v31);

      *(v6 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Device Identity Error %{public}s", v6, 0xCu);
      sub_1000752F4(v7);
    }

    sub_1001BDD44();
    v14 = swift_allocError();
    *v15 = 2;
    v31[0] = v14;
    sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a1)
  {
    if (a2 && *(a2 + 16) == 2)
    {
      sub_1000754F0(a2 + 32, v31);
      type metadata accessor for SecCertificate(0);
      swift_dynamicCast();
      sub_1000754F0(a2 + 64, v31);
      swift_dynamicCast();
      sub_100068FC4(&qword_100504060, &qword_10040B370);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10040DA10;
      *(v18 + 32) = v30;
      *(v18 + 40) = v30;
      v31[0] = a1;
      v31[1] = v18;
      sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      if (qword_100501A50 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000958E4(v19, qword_100505CC8);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Device Identity returned nil/empty certificates", v22, 2u);
      }

      sub_1001BDD44();
      v23 = swift_allocError();
      *v24 = 2;
      v31[0] = v23;
      sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
      CheckedContinuation.resume(throwing:)();
    }
  }

  else
  {
    if (qword_100501A50 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000958E4(v25, qword_100505CC8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Device Identity returned nil reference key", v28, 2u);
    }

    sub_1001BDD44();
    swift_allocError();
    *v29 = 2;
    sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1001BDC18(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

uint64_t sub_1001BDCCC()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100505CC8);
  sub_1000958E4(v0, qword_100505CC8);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1001BDD44()
{
  result = qword_100505CE0;
  if (!qword_100505CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505CE0);
  }

  return result;
}

unint64_t sub_1001BDD98()
{
  result = qword_100504A60;
  if (!qword_100504A60)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504A60);
  }

  return result;
}

uint64_t sub_1001BDDF0(uint64_t a1)
{
  *(v1 + 344) = a1;

  return _swift_task_switch(sub_1001BDE80, 0, 0);
}

uint64_t sub_1001BDE80()
{
  v45 = v0;
  *(v0 + 328) = 0;
  v1 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0x40000000uLL, (v0 + 328));
  *(v0 + 352) = v1;
  if (v1)
  {
    sub_100068FC4(&qword_100505CE8, &qword_10040DA28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10040AA50;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for Int;
    *(inited + 40) = v3;
    *(inited + 48) = 60;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v4;
    *(inited + 120) = &type metadata for Int;
    *(inited + 96) = 43200;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v5;
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = 1;
    *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 184) = v6;
    v7 = SecAccessControlCopyData();
    if (v7)
    {
      v15 = v7;
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      *(inited + 216) = &type metadata for Data;
      *(inited + 192) = v16;
      *(inited + 200) = v18;
      *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 232) = v19;
      sub_100068FC4(&unk_100504720, &qword_100414C40);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10040AA50;
      *(v20 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 40) = v21;
      *(v20 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 56) = v22;
      *(v20 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 72) = v23;
      *(v20 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 88) = v24;
      *(v20 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v20 + 104) = v25;
      *(inited + 264) = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      *(inited + 240) = v20;
      v26 = sub_100091D34(inited);
      *(v0 + 360) = v26;
      swift_setDeallocating();
      sub_100068FC4(&qword_100502CC8, &qword_100409DA8);
      swift_arrayDestroy();
      v27 = swift_task_alloc();
      *(v0 + 368) = v27;
      *(v27 + 16) = v26;
      v28 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v29 = swift_task_alloc();
      *(v0 + 376) = v29;
      v30 = sub_100068FC4(&qword_100505CF0, &qword_10040DA30);
      *v29 = v0;
      v29[1] = sub_1001BE3C0;
      v14 = v30;
      v12 = sub_1001BE730;
      v7 = v0 + 312;
      v11 = 0x8000000100465DB0;
      v8 = 0;
      v9 = 0;
      v10 = 0xD000000000000024;
      v13 = v27;
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    if (qword_100501A50 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000958E4(v31, qword_100505CC8);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136315138;
      swift_beginAccess();
      v36 = *(v0 + 328);
      if (v36)
      {
        *(v0 + 336) = v36;
        type metadata accessor for CFError(0);
        sub_1001BDD98();
        v37 = Error.localizedDescription.getter();
        v39 = v38;
      }

      else
      {
        v39 = 0xE700000000000000;
        v37 = 0x6E776F6E6B6E55;
      }

      v40 = sub_1002FFA0C(v37, v39, &v44);

      *(v34 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "SecAccessControlCreateWithFlags failed with error %s", v34, 0xCu);
      sub_1000752F4(v35);
    }

    sub_1001BDD44();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_1001BE3C0()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v8 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_1001BE684;
  }

  else
  {
    v5 = *(v2 + 360);
    v6 = *(v2 + 368);

    v4 = sub_1001BE518;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001BE518()
{
  v2 = v0[39];
  v1 = v0[40];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v19 = v0[40];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = SecCertificateCopyData(v3);
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if ((v1 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_13:
    __break(1u);
  }

  v9 = *(v1 + 40);
LABEL_8:
  v10 = v9;
  v12 = v0[43];
  v11 = v0[44];

  v13 = SecCertificateCopyData(v10);
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *v12 = v2;
  v12[1] = v6;
  v12[2] = v8;
  v12[3] = v14;
  v12[4] = v16;
  v17 = v0[1];

  return v17();
}

uint64_t sub_1001BE684()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  v3 = *(v0 + 384);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001BE738()
{
  v1 = sub_100068FC4(&qword_100505CF8, &qword_10040DA38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1001BE7CC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_100068FC4(&qword_100505CF8, &qword_10040DA38) - 8) + 80);

  sub_1001BD730(a1, a2, a3);
}

uint64_t sub_1001BE860(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001BE888(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1001BE8D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001BE92C()
{
  result = qword_100505D00;
  if (!qword_100505D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505D00);
  }

  return result;
}

void *sub_1001BE980(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_10019F3E0(0, v4, 0);
    v35 = _swiftEmptyArrayStorage;
    v6 = v3 + 56;
    v7 = -1 << *(v3 + 32);
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v28 = v3 + 64;
    v29 = v4;
    v30 = v3 + 56;
    v31 = v3;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v32 = v9;
      v34 = *(v3 + 36);
      v12 = (*(v3 + 48) + 16 * v8);
      v13 = *v12;
      v14 = v12[1];
      sub_100069E2C(*v12, v14);
      v33 = v2;
      *&v36 = sub_100288788(v13, v14);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v15 = BidirectionalCollection<>.joined(separator:)();
      v17 = v16;

      sub_10006A178(v13, v14);
      v18 = v35;
      v39 = v35;
      v20 = v35[2];
      v19 = v35[3];
      if (v20 >= v19 >> 1)
      {
        sub_10019F3E0((v19 > 1), v20 + 1, 1);
        v18 = v39;
      }

      v37 = &type metadata for String;
      v38 = &protocol witness table for String;
      *&v36 = v15;
      *(&v36 + 1) = v17;
      v35 = v18;
      v18[2] = v20 + 1;
      result = sub_1000BC104(&v36, &v18[5 * v20 + 4]);
      v3 = v31;
      v10 = 1 << *(v31 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v6 = v30;
      v21 = *(v30 + 8 * v11);
      if ((v21 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (v34 != *(v31 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v8 & 0x3F));
      if (v22)
      {
        v10 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v2 = v33;
      }

      else
      {
        v23 = v11 << 6;
        v24 = v11 + 1;
        v25 = (v28 + 8 * v11);
        v2 = v33;
        while (v24 < (v10 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1000937D4(v8, v34, 0);
            v10 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v8, v34, 0);
      }

LABEL_4:
      v9 = v32 + 1;
      v8 = v10;
      if (v32 + 1 == v29)
      {
        return v35;
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
  }

  return result;
}

void sub_1001BEC7C(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_10019F4A4(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_10008E990(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 publicKeyIdentifier];
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_10019F4A4((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_100068FC4(&unk_100505FB0, &unk_10040DDE0);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_1000937D4(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_1000937D4(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_1000937D4(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

unint64_t sub_1001BEFE4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v56 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v73 = _swiftEmptyArrayStorage;
  sub_10019F464(0, v4 & ~(v4 >> 63), 0);
  v5 = _swiftEmptyArrayStorage;
  if (v56)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    result = _HashTable.startBucket.getter();
    v7 = *(v3 + 36);
  }

  v70 = result;
  v71 = v7;
  v72 = v56 != 0;
  if ((v4 & 0x8000000000000000) == 0)
  {
    result = sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v55 = v3;
    v9 = 0;
    v53 = v3 + 56;
    v52 = v3 + 64;
    v54 = v4;
    while (v9 < v4)
    {
      v11 = __OFADD__(v9, 1);
      v12 = v9 + 1;
      if (v11)
      {
        goto LABEL_42;
      }

      v57 = v12;
      v13 = v70;
      v60 = v71;
      v61 = v5;
      v59 = v72;
      v14 = sub_10008F590(v70, v71, v72, v3);
      v63 = 0xD000000000000010;
      v64 = 0x8000000100465F50;
      v62 = sub_100288788(*(v14 + 32), *(v14 + 40));
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v15 = BidirectionalCollection<>.joined(separator:)();
      v17 = v16;

      v65 = v15;
      v66 = v17;
      strcpy(v67, "keyIdentifier");
      HIWORD(v67[1]) = -4864;
      v58 = v2;
      v62 = sub_100288788(*(v14 + 16), *(v14 + 24));
      v18 = BidirectionalCollection<>.joined(separator:)();
      v20 = v19;

      v68 = v18;
      v69 = v20;
      v21 = static _DictionaryStorage.allocate(capacity:)();

      v23 = v63;
      v22 = v64;
      v25 = v65;
      v24 = v66;

      result = sub_10008C908(v23, v22);
      if (v26)
      {
        goto LABEL_39;
      }

      *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v27 = (v21[6] + 16 * result);
      *v27 = v23;
      v27[1] = v22;
      v28 = (v21[7] + 16 * result);
      *v28 = v25;
      v28[1] = v24;
      v29 = v21[2];
      v11 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v11)
      {
        goto LABEL_40;
      }

      v21[2] = v30;
      v31 = v67[0];
      v32 = v67[1];
      v34 = v68;
      v33 = v69;

      result = sub_10008C908(v31, v32);
      if (v35)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

      *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v36 = (v21[6] + 16 * result);
      *v36 = v31;
      v36[1] = v32;
      v37 = (v21[7] + 16 * result);
      *v37 = v34;
      v37[1] = v33;
      v38 = v21[2];
      v11 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v11)
      {
        goto LABEL_40;
      }

      v21[2] = v39;

      sub_100068FC4(&unk_100504020, &qword_100409CC0);
      swift_arrayDestroy();

      v5 = v61;
      v73 = v61;
      v41 = v61[2];
      v40 = v61[3];
      if (v41 >= v40 >> 1)
      {
        result = sub_10019F464((v40 > 1), v41 + 1, 1);
        v5 = v73;
      }

      v5[2] = v41 + 1;
      v5[v41 + 4] = v21;
      if (v56)
      {
        v3 = v55;
        if (!v59)
        {
          goto LABEL_47;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v4 = v54;
        sub_100068FC4(&qword_100505FA8, &qword_10040DDD8);
        v10 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v10(&v62, 0);
      }

      else
      {
        v3 = v55;
        if (v59)
        {
          goto LABEL_48;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v42 = 1 << *(v55 + 32);
        if (v13 >= v42)
        {
          goto LABEL_43;
        }

        v43 = v13 >> 6;
        v44 = *(v53 + 8 * (v13 >> 6));
        if (((v44 >> v13) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (*(v55 + 36) != v60)
        {
          goto LABEL_45;
        }

        v45 = v44 & (-2 << (v13 & 0x3F));
        if (v45)
        {
          v42 = __clz(__rbit64(v45)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v46 = v43 << 6;
          v47 = v43 + 1;
          v48 = (v52 + 8 * v43);
          while (v47 < (v42 + 63) >> 6)
          {
            v50 = *v48++;
            v49 = v50;
            v46 += 64;
            ++v47;
            if (v50)
            {
              result = sub_1000937D4(v13, v60, 0);
              v42 = __clz(__rbit64(v49)) + v46;
              goto LABEL_36;
            }
          }

          result = sub_1000937D4(v13, v60, 0);
        }

LABEL_36:
        v51 = *(v55 + 36);
        v70 = v42;
        v71 = v51;
        v72 = 0;
        v4 = v54;
      }

      v9 = v57;
      v2 = v58;
      if (v57 == v4)
      {
        sub_1000937D4(v70, v71, v72);
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1001BF594(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v16 = OBJC_IVAR____TtC10seserviced10DSKExpress_delegates;
    swift_beginAccess();
    v17 = *(v4 + v16);
    if (*(v17 + 16) && (v18 = sub_10008C8DC(a2, a3), (v19 & 1) != 0))
    {
      sub_1000BC094(*(v17 + 56) + 40 * v18, &v22);
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    swift_endAccess();
    v20 = *(&v23 + 1);
    sub_100075768(&v22, &qword_100505FC0, &unk_10040DDF0);
    if (v20)
    {
      sub_100079E24();
      swift_allocError();
      *v21 = 0;
      return swift_willThrow();
    }

    else
    {
      sub_1000BC094(a1, &v22);
      swift_beginAccess();
      sub_100069E2C(a2, a3);
      sub_1000C5710(&v22, a2, a3);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BF7F8()
{
  v0 = type metadata accessor for DSKExpress();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1001BF838();
  qword_10051B3F0 = result;
  return result;
}

uint64_t sub_1001BF838()
{
  v1 = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - v5;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v7 = OBJC_IVAR____TtC10seserviced10DSKExpress_debugBypassExpress;
  LOBYTE(aBlock[0]) = 0;
  v16 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  v8 = aBlock[0];
  *(v1 + v7) = aBlock[0];
  *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_delegates) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_requestedConfigurationItems) = &_swiftEmptyDictionarySingleton;
  if ((v8 & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
  }

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_1001C40D0;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193978;
  aBlock[3] = &unk_1004CA998;
  v12 = _Block_copy(aBlock);

  os_state_add_handler();
  _Block_release(v12);
  return v1;
}

_DWORD *sub_1001BFB48()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_debugBypassExpress);
  v26 = &type metadata for Bool;
  LOBYTE(v25) = v2;
  sub_100075D50(&v25, v24);
  v3 = _swiftEmptyDictionarySingleton;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v24, 0xD000000000000012, 0x8000000100465E60, isUniquelyReferenced_nonNull_native);
  v5 = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys);

  v7 = sub_1001BEFE4(v6);

  v26 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v25 = v7;
  sub_100075D50(&v25, v24);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v24, 0x4B73736572707865, 0xEB00000000737965, v8);
  LOBYTE(v25) = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState);
  v9 = String.init<A>(describing:)();
  v26 = &type metadata for String;
  *&v25 = v9;
  *(&v25 + 1) = v10;
  sub_100075D50(&v25, v24);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v24, 0x5373736572707865, 0xEC00000065746174, v11);
  v12 = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning);
  v26 = &type metadata for Bool;
  LOBYTE(v25) = v12;
  sub_100075D50(&v25, v24);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v24, 0x6E696E6E75527369, 0xE900000000000067, v13);
  v14 = OBJC_IVAR____TtC10seserviced10DSKExpress_requestedConfigurationItems;
  swift_beginAccess();
  v15 = *(v1 + v14);

  v17 = sub_1001384E4(v16);

  if (*(v17 + 16))
  {
    sub_100068FC4(&qword_100504770, &unk_10040BB10);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  *&v25 = v3;

  sub_1001C40EC(v18, 1, &v25);

  v19 = v25;
  v26 = sub_100068FC4(&qword_100504778, &qword_10040DDD0);
  *&v25 = v19;
  sub_100075D50(&v25, v24);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v24, 0xD00000000000001BLL, 0x8000000100465EA0, v20);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = sub_100015DA0("dskexpress.state", isa);

  return v22;
}

void sub_1001BFEC0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning;
    v10 = *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning);
    v11 = Logger.logObject.getter();
    if (v10)
    {
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "DSKExpress is already running", v13, 2u);
      }
    }

    else
    {
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, v14, "Starting DSKExpress", v15, 2u);
      }

      *(v1 + v9) = 1;
      sub_1001C0100();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001C0100()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v91 = *(v2 - 8);
  v3 = v91[8];
  __chkstk_darwin(v2);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v90 = *(v6 - 8);
  v7 = *(v90 + 64);
  __chkstk_darwin(v6);
  v92 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v14 = qword_10051B7F0;
    *v13 = qword_10051B7F0;
    (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
    v15 = v14;
    v16 = _dispatchPreconditionTest(_:)();
    (*(v10 + 8))(v13, v9);
    if ((v16 & 1) == 0)
    {
      __break(1u);
      goto LABEL_53;
    }

    if (*(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning) != 1)
    {
      break;
    }

    if (*(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_debugBypassExpress))
    {
      return;
    }

    v88 = v6;
    v17 = objc_opt_self();
    v97[0] = 0;
    v18 = sub_100055A74(v17, v97);
    if (!v18)
    {
      v25 = v97[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v97[0] = v29;
        *v28 = 136315138;
        swift_getErrorValue();
        v30 = Error.localizedDescription.getter();
        v32 = sub_1002FFA0C(v30, v31, v97);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to retrieve the express configuration %s", v28, 0xCu);
        sub_1000752F4(v29);
      }

      if (*(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState))
      {
        *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState) = 0;
        sub_1001C1084();
      }

      return;
    }

    v19 = v18;
    v20 = v97[0];
    if ([v19 state] == 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2 * ([v19 state] == 3);
    }

    v33 = OBJC_IVAR____TtC10seserviced10DSKExpress_expressState;
    *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState) = v21;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    v36 = os_log_type_enabled(v34, v35);
    v87 = v5;
    v89 = v33;
    v86 = v15;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v97[0] = v38;
      *v37 = 136315138;
      LOBYTE(aBlock[0]) = *(v1 + v89);
      v39 = String.init<A>(describing:)();
      v41 = sub_1002FFA0C(v39, v40, v97);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Express state %s", v37, 0xCu);
      sub_1000752F4(v38);
      v33 = v89;
    }

    if (!*(v1 + v33))
    {
      goto LABEL_36;
    }

    v42 = [v19 passConfigs];
    if (!v42 || (v43 = v42, sub_100068FC4(&unk_100503FB0, &unk_10040B300), v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v43, v6 = sub_1000F1724(v44), , !v6))
    {
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Failed to retrieve pass configurations", v57, 2u);
      }

      *(v1 + v33) = 0;
LABEL_36:
      sub_1001C1084();

      return;
    }

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v97[0] = v48;
      *v47 = 136315138;
      sub_100068FC4(&qword_100505FD0, &qword_10040B550);
      v49 = Array.description.getter();
      v51 = sub_1002FFA0C(v49, v50, v97);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "Express passes %s", v47, 0xCu);
      sub_1000752F4(v48);
    }

    v79 = v19;
    v85 = v2;
    v52 = _swiftEmptyArrayStorage;
    v97[0] = _swiftEmptyArrayStorage;
    v53 = *(v6 + 16);
    if (v53)
    {
      v54 = 0;
      v13 = 0;
      while (v54 < *(v6 + 16))
      {
        aBlock[0] = *(v6 + 32 + 8 * v54);

        sub_1001C1518(aBlock, v1, v96);

        if (*&v96[0])
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v52 = v97[0];
        }

        if (v53 == ++v54)
        {
          goto LABEL_38;
        }
      }

LABEL_53:
      __break(1u);
    }

    v13 = 0;
LABEL_38:

    v5 = sub_1000E01DC(v52);

    v58 = *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys);
    v84 = OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys;
    *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys) = v5;

    v9 = OBJC_IVAR____TtC10seserviced10DSKExpress_delegates;
    swift_beginAccess();
    v59 = *(v1 + v9);
    v60 = *(v59 + 64);
    v81 = v59 + 64;
    v61 = 1 << *(v59 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & v60;
    v80 = (v61 + 63) >> 6;
    v83 = v95;
    v82 = (v91 + 1);
    v90 += 8;
    v91 = v59;
    swift_bridgeObjectRetain_n();
    v2 = 0;
    if (v63)
    {
LABEL_41:
      v64 = v2;
      v10 = v89;
      goto LABEL_47;
    }

LABEL_42:
    v10 = v89;
    while (1)
    {
      v64 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v64 >= v80)
      {

        return;
      }

      v63 = *(v81 + 8 * v64);
      ++v2;
      if (v63)
      {
        v2 = v64;
LABEL_47:
        v65 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v66 = v65 | (v64 << 6);
        v67 = v91[6] + 16 * v66;
        v68 = *v67;
        v69 = *(v67 + 8);
        sub_1000BC094(v91[7] + 40 * v66, v98);
        v97[0] = v68;
        v97[1] = v69;
        v70 = *(v1 + v10);
        v71 = *(v1 + v84);
        sub_100069E2C(v68, v69);
        sub_100069E2C(v68, v69);

        v73 = sub_1001C48C4(v72, v68, v69);
        sub_10006A178(v68, v69);

        v74 = sub_1000E0074(v73);

        sub_1000BC094(v98, v96);
        v75 = swift_allocObject();
        sub_1000BC104(v96, v75 + 16);
        *(v75 + 56) = v70;
        *(v75 + 64) = v74;
        v95[2] = sub_1001C5088;
        v95[3] = v75;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v95[0] = sub_100080830;
        v95[1] = &unk_1004CAA88;
        v5 = _Block_copy(aBlock);
        v76 = v92;
        static DispatchQoS.unspecified.getter();
        v93 = _swiftEmptyArrayStorage;
        sub_1001C5000(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        v6 = v87;
        v77 = v85;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v9 = v86;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v5);
        (*v82)(v6, v77);
        (*v90)(v76, v88);

        sub_100075768(v97, &qword_100505FC8, &unk_10040DE00);
        if (v63)
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_51:
    swift_once();
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Not running", v24, 2u);
  }
}

void sub_1001C0DD4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning;
    v10 = *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning);
    v11 = Logger.logObject.getter();
    if (v10 == 1)
    {
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Stopping DSKExpress", v13, 2u);
      }

      if (*(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState))
      {
        *(v1 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState) = 0;
        sub_1001C1084();
      }

      v14 = OBJC_IVAR____TtC10seserviced10DSKExpress_requestedConfigurationItems;
      swift_beginAccess();
      v15 = *(v1 + v14);
      *(v1 + v14) = _swiftEmptyDictionarySingleton;

      v16 = OBJC_IVAR____TtC10seserviced10DSKExpress_delegates;
      swift_beginAccess();
      v17 = *(v1 + v16);
      *(v1 + v16) = _swiftEmptyDictionarySingleton;

      *(v1 + v9) = 0;
    }

    else
    {
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v11, v18, "DSKExpress is not running", v19, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001C1084()
{
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v29);
  v28 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v27);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys);
  *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys) = &_swiftEmptySetSingleton;

  v8 = OBJC_IVAR____TtC10seserviced10DSKExpress_delegates;
  swift_beginAccess();
  v9 = *(v0 + v8);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v25 = v34;
  v24 = (v1 + 8);
  v23 = (v4 + 8);
  v30 = v9;
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  v17 = v26;
  if (v13)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      do
      {
LABEL_8:
        sub_1000BC094(*(v30 + 56) + 40 * (__clz(__rbit64(v13)) | (v16 << 6)), v36);
        if (qword_100501D90 != -1)
        {
          swift_once();
        }

        v13 &= v13 - 1;
        v31 = qword_10051B7F0;
        sub_1000BC094(v36, v35);
        v19 = swift_allocObject();
        sub_1000BC104(v35, v19 + 16);
        v34[2] = sub_1001C4FF8;
        v34[3] = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v34[0] = sub_100080830;
        v34[1] = &unk_1004CAA38;
        v20 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        v32 = _swiftEmptyArrayStorage;
        sub_1001C5000(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        v21 = v28;
        v22 = v29;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v20);
        (*v24)(v21, v22);
        (*v23)(v17, v27);
        sub_1000752F4(v36);
      }

      while (v13);
    }
  }

  __break(1u);
  return result;
}

void *sub_1001C1518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {
    goto LABEL_16;
  }

  v8 = sub_10008C908(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1000754F0(*(v5 + 56) + 32 * v8, v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {

LABEL_16:

LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v46 = v43;
  v13 = sub_10008C908(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000754F0(*(v5 + 56) + 32 * v13, v45);
  if ((swift_dynamicCast() & 1) == 0 || (v43 & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {

LABEL_20:

    goto LABEL_21;
  }

  v18 = sub_10008C908(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1000754F0(*(v5 + 56) + 32 * v18, v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = sub_10013044C(v43, v44);
  if (v22 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v23 = v21;
  v24 = v22;
  v25 = sub_10013044C(v46, v44);
  if (v26 >> 60 == 15)
  {
    sub_10006A2D0(v23, v24);
LABEL_21:

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45[0] = v31;
      *v30 = 136315138;
      v32 = Dictionary.description.getter();
      v34 = sub_1002FFA0C(v32, v33, v45);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Malformed pass config %s", v30, 0xCu);
      sub_1000752F4(v31);
    }

    goto LABEL_17;
  }

  v35 = v26;
  v36 = v25;
  v37 = OBJC_IVAR____TtC10seserviced10DSKExpress_requestedConfigurationItems;
  swift_beginAccess();
  v38 = *(a2 + v37);
  if (*(v38 + 16) && (v39 = sub_10008C8DC(v23, v24), (v40 & 1) != 0))
  {
    v41 = *(*(v38 + 56) + 8 * v39);
    swift_endAccess();

    v42 = sub_1001C4704(v5, v41);
  }

  else
  {
    swift_endAccess();
    v42 = 0;
  }

  type metadata accessor for DSKExpress.ExpressKey();
  result = swift_allocObject();
  result[2] = v36;
  result[3] = v35;
  result[4] = v23;
  result[5] = v24;
  result[6] = v42;
LABEL_18:
  *a3 = result;
  return result;
}

uint64_t sub_1001C18CC(void *a1, char a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1000752B0(a1, v5);
  type metadata accessor for DSKExpress.ExpressReport();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = a3;
  v8 = *(v6 + 8);

  v8(inited, v5, v6);
  swift_setDeallocating();
  v9 = *(inited + 24);
}

void sub_1001C1974(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v15 = OBJC_IVAR____TtC10seserviced10DSKExpress_requestedConfigurationItems;
  swift_beginAccess();
  v16 = *(v4 + v15);
  if (*(v16 + 16) && (v17 = sub_10008C8DC(a2, a3), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = 0;
  }

  swift_endAccess();
  swift_beginAccess();
  sub_100069E2C(a2, a3);

  sub_1000C56E4(v20, a2, a3);
  swift_endAccess();
  if (v19)
  {
    if (a1)
    {
      v21 = sub_10008C5E8(v19, a1);

      if (v21)
      {
        return;
      }
    }

    else
    {
    }

LABEL_15:
    sub_1001C0100();
    return;
  }

  if (a1)
  {
    goto LABEL_15;
  }
}

uint64_t sub_1001C1BA4(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced10DSKExpress_debugBypassExpress))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    sub_100069E2C(a1, a2);
    if (qword_1005019E8 == -1)
    {
LABEL_6:
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1001C4F80;
      *(v12 + 24) = v5;

      v13 = sub_1000CAA04();

      sub_1001BEC7C(v13);
      v15 = v14;

      v16 = sub_1000E0074(v15);

      v17 = 1;
      goto LABEL_10;
    }

LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  v18 = OBJC_IVAR____TtC10seserviced10DSKExpress_expressState;
  if (*(v2 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState))
  {
    v19 = *(v2 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys);
    sub_100069E2C(a1, a2);

    v21 = sub_1001C48C4(v20, a1, a2);
    sub_10006A178(a1, a2);

    v16 = sub_1000E0074(v21);

    v17 = *(v2 + v18);
  }

  else
  {
    v17 = 0;
    v16 = &_swiftEmptySetSingleton;
  }

LABEL_10:
  type metadata accessor for DSKExpress.ExpressReport();
  result = swift_allocObject();
  *(result + 16) = v17;
  *(result + 24) = v16;
  return result;
}

unint64_t sub_1001C1E94(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = [a1 appletIdentifier];
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  LOBYTE(a3) = sub_10008FB4C(v6, v8, a2, a3);
  sub_10006A178(v6, v8);
  return a3 & 1;
}

uint64_t sub_1001C1F18(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v95 = a3;
  v91 = a2;
  v92 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_146;
  }

  while (1)
  {
    v11 = qword_10051B7F0;
    *v10 = qword_10051B7F0;
    (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
    v12 = v11;
    LOBYTE(v11) = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v10, v6);
    if ((v11 & 1) == 0)
    {
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
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
    }

    if (*(v4 + OBJC_IVAR____TtC10seserviced10DSKExpress_debugBypassExpress))
    {
      return 1;
    }

    v77 = v4;
    v84 = *(v4 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys);
    if ((v84 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKExpress.ExpressKey();
      sub_1001C5000(&qword_100503638, type metadata accessor for DSKExpress.ExpressKey);
      Set.Iterator.init(_cocoa:)();
      v14 = v98[3];
      v15 = v98[4];
      v16 = v98[5];
      v17 = v98[6];
      v7 = v98[7];
    }

    else
    {
      v18 = -1 << *(v84 + 32);
      v15 = v84 + 56;
      v16 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v7 = v20 & *(v84 + 56);
      v14 = v84;
      swift_bridgeObjectRetain_n();
      v17 = 0;
    }

    v10 = v92;
    v94 = 0;
    v83 = v16;
    v21 = (v16 + 64) >> 6;
    if (v92)
    {
      v22 = 0;
    }

    else
    {
      v22 = v91 == 0xC000000000000000;
    }

    v23 = !v22;
    v89 = v23;
    v4 = v91 >> 62;
    v24 = __OFSUB__(HIDWORD(v92), v92);
    v82 = v24;
    v81 = HIDWORD(v92) - v92;
    v88 = BYTE6(v91);
    if (v95)
    {
      v25 = 0;
    }

    else
    {
      v25 = a4 == 0xC000000000000000;
    }

    v26 = !v25;
    v86 = v26;
    v90 = a4 >> 62;
    v27 = __OFSUB__(HIDWORD(v95), v95);
    v79 = v27;
    v78 = HIDWORD(v95) - v95;
    v80 = a4;
    v85 = BYTE6(a4);
    v87 = v14;
    v93 = v91 >> 62;
    while (1)
    {
      v6 = v7;
      a4 = v17;
      if ((v14 & 0x8000000000000000) == 0)
      {
        break;
      }

      v32 = __CocoaSet.Iterator.next()();
      if (!v32 || (v97 = v32, type metadata accessor for DSKExpress.ExpressKey(), swift_dynamicCast(), v31 = v98[0], v30 = v6, v4 = v93, !v98[0]))
      {
LABEL_142:
        sub_100093854();

        return 0;
      }

LABEL_41:
      v96 = v30;
      v33 = v31[2];
      v34 = v31[3];
      v35 = v34 >> 62;
      if (v34 >> 62 == 3)
      {
        if (v33)
        {
          v36 = 0;
        }

        else
        {
          v36 = v34 == 0xC000000000000000;
        }

        v38 = !v36 || v4 < 3;
        if (((v38 | v89) & 1) == 0)
        {
          goto LABEL_92;
        }

LABEL_63:
        v39 = 0;
        if (v4 > 1)
        {
          goto LABEL_64;
        }

        goto LABEL_60;
      }

      if (v35 > 1)
      {
        if (v35 != 2)
        {
          goto LABEL_63;
        }

        v41 = *(v33 + 16);
        v40 = *(v33 + 24);
        v42 = __OFSUB__(v40, v41);
        v39 = v40 - v41;
        if (v42)
        {
          goto LABEL_152;
        }

        if (v4 > 1)
        {
          goto LABEL_64;
        }
      }

      else if (v35)
      {
        LODWORD(v39) = HIDWORD(v33) - v33;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_153;
        }

        v39 = v39;
        if (v4 > 1)
        {
LABEL_64:
          if (v4 != 2)
          {
            if (v39)
            {
              goto LABEL_31;
            }

            goto LABEL_92;
          }

          v45 = v10[2];
          v44 = v10[3];
          v42 = __OFSUB__(v44, v45);
          v43 = v44 - v45;
          if (v42)
          {
            goto LABEL_148;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v39 = BYTE6(v34);
        if (v4 > 1)
        {
          goto LABEL_64;
        }
      }

LABEL_60:
      v43 = v88;
      if (v4)
      {
        v43 = v81;
        if (v82)
        {
          goto LABEL_149;
        }
      }

LABEL_66:
      if (v39 != v43)
      {
        goto LABEL_31;
      }

      if (v39 >= 1)
      {
        if (v35 > 1)
        {
          if (v35 == 2)
          {
            v46 = *(v33 + 16);
            v76 = *(v33 + 24);
            v47 = __DataStorage._bytes.getter();
            if (v47)
            {
              v48 = __DataStorage._offset.getter();
              if (__OFSUB__(v46, v48))
              {
                goto LABEL_162;
              }

              v47 += v46 - v48;
            }

            if (__OFSUB__(v76, v46))
            {
              goto LABEL_159;
            }

LABEL_91:
            __DataStorage._length.getter();
            v53 = v47;
            v10 = v92;
            v54 = v94;
            sub_10019F024(v53, v92, v91, v98);
            v94 = v54;
            v14 = v87;
            v4 = v93;
            if ((v98[0] & 1) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_92;
          }

          memset(v98, 0, 14);
        }

        else
        {
          if (v35)
          {
            v49 = v33;
            if (v33 >> 32 < v33)
            {
              goto LABEL_158;
            }

            v50 = __DataStorage._bytes.getter();
            if (v50)
            {
              v76 = v50;
              v51 = __DataStorage._offset.getter();
              if (__OFSUB__(v49, v51))
              {
                goto LABEL_163;
              }

              v47 = v49 - v51 + v76;
            }

            else
            {
              v47 = 0;
            }

            goto LABEL_91;
          }

          v98[0] = v31[2];
          LOWORD(v98[1]) = v34;
          BYTE2(v98[1]) = BYTE2(v34);
          BYTE3(v98[1]) = BYTE3(v34);
          BYTE4(v98[1]) = BYTE4(v34);
          BYTE5(v98[1]) = BYTE5(v34);
        }

        v52 = v94;
        sub_10019F024(v98, v10, v91, &v97);
        v94 = v52;
        v14 = v87;
        if ((v97 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

LABEL_92:
      v55 = v31[4];
      v56 = v31[5];
      v57 = v56 >> 62;
      if (v56 >> 62 == 3)
      {
        if (v55)
        {
          v58 = 0;
        }

        else
        {
          v58 = v56 == 0xC000000000000000;
        }

        v59 = v90;
        v61 = !v58 || v90 < 3;
        if (((v61 | v86) & 1) == 0)
        {
LABEL_143:
          sub_100093854();

          return *(v77 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState);
        }

LABEL_114:
        v62 = 0;
        if (v59 > 1)
        {
          goto LABEL_115;
        }

LABEL_111:
        v65 = v85;
        if (v59)
        {
          v65 = v78;
          if (v79)
          {
            goto LABEL_151;
          }
        }

LABEL_117:
        if (v62 != v65)
        {
          goto LABEL_31;
        }

        if (v62 < 1)
        {
          goto LABEL_143;
        }

        if (v57 > 1)
        {
          if (v57 != 2)
          {
            memset(v98, 0, 14);
            goto LABEL_137;
          }

          v68 = *(v55 + 16);
          v76 = *(v55 + 24);
          v69 = __DataStorage._bytes.getter();
          if (v69)
          {
            v70 = __DataStorage._offset.getter();
            if (__OFSUB__(v68, v70))
            {
              goto LABEL_160;
            }

            v69 += v68 - v70;
          }

          if (__OFSUB__(v76, v68))
          {
            goto LABEL_157;
          }

LABEL_140:
          __DataStorage._length.getter();
          v75 = v94;
          sub_10019F024(v69, v95, v80, v98);
          v94 = v75;

          v10 = v92;
          v4 = v93;
          v14 = v87;
          v7 = v96;
          if (v98[0])
          {
LABEL_141:
            sub_100093854();

            return *(v77 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressState);
          }
        }

        else
        {
          if (v57)
          {
            v71 = v55;
            if (v55 >> 32 < v55)
            {
              goto LABEL_156;
            }

            v72 = __DataStorage._bytes.getter();
            if (v72)
            {
              v76 = v72;
              v73 = __DataStorage._offset.getter();
              if (__OFSUB__(v71, v73))
              {
                goto LABEL_161;
              }

              v69 = v71 - v73 + v76;
            }

            else
            {
              v69 = 0;
            }

            goto LABEL_140;
          }

          v98[0] = v31[4];
          LOWORD(v98[1]) = v56;
          BYTE2(v98[1]) = BYTE2(v56);
          BYTE3(v98[1]) = BYTE3(v56);
          BYTE4(v98[1]) = BYTE4(v56);
          BYTE5(v98[1]) = BYTE5(v56);
LABEL_137:
          v74 = v94;
          sub_10019F024(v98, v95, v80, &v97);
          v94 = v74;

          v14 = v87;
          v7 = v96;
          if (v97)
          {
            goto LABEL_141;
          }
        }
      }

      else
      {
        v59 = v90;
        if (v57 > 1)
        {
          if (v57 != 2)
          {
            goto LABEL_114;
          }

          v64 = *(v55 + 16);
          v63 = *(v55 + 24);
          v42 = __OFSUB__(v63, v64);
          v62 = v63 - v64;
          if (v42)
          {
            goto LABEL_154;
          }

          if (v90 <= 1)
          {
            goto LABEL_111;
          }
        }

        else if (v57)
        {
          LODWORD(v62) = HIDWORD(v55) - v55;
          if (__OFSUB__(HIDWORD(v55), v55))
          {
            goto LABEL_155;
          }

          v62 = v62;
          if (v90 <= 1)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v62 = BYTE6(v56);
          if (v90 <= 1)
          {
            goto LABEL_111;
          }
        }

LABEL_115:
        if (v59 == 2)
        {
          v67 = *(v95 + 16);
          v66 = *(v95 + 24);
          v42 = __OFSUB__(v66, v67);
          v65 = v66 - v67;
          if (v42)
          {
            goto LABEL_150;
          }

          goto LABEL_117;
        }

        if (!v62)
        {
          goto LABEL_143;
        }

LABEL_31:

        v7 = v96;
      }
    }

    v28 = v17;
    v29 = v7;
    if (v7)
    {
LABEL_37:
      v30 = (v29 - 1) & v29;
      v31 = *(*(v14 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v29)))));

      if (!v31)
      {
        goto LABEL_142;
      }

      goto LABEL_41;
    }

    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v17 >= v21)
      {
        goto LABEL_142;
      }

      v29 = *(v15 + 8 * v17);
      ++v28;
      if (v29)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_146:
    swift_once();
  }
}

uint64_t sub_1001C2924(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v93 = a3;
  v90 = a2;
  v91 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_143:
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
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
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
  }

  v85 = *(v4 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys);
  if ((v85 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    v6 = __CocoaSet.makeIterator()();
    type metadata accessor for DSKExpress.ExpressKey();
    sub_1001C5000(&qword_100503638, type metadata accessor for DSKExpress.ExpressKey);
    Set.Iterator.init(_cocoa:)();
    v10 = v98[3];
    v13 = v98[4];
    v14 = v98[5];
    v15 = v98[6];
    v7 = v98[7];
  }

  else
  {
    v16 = -1 << *(v85 + 32);
    v13 = v85 + 56;
    v14 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v7 = v18 & *(v85 + 56);
    v10 = v85;
    swift_bridgeObjectRetain_n();
    v15 = 0;
  }

  v19 = v91;
  v94 = 0;
  v84 = v14;
  v20 = (v14 + 64) >> 6;
  if (v91)
  {
    v21 = 0;
  }

  else
  {
    v21 = v90 == 0xC000000000000000;
  }

  v22 = !v21;
  v92 = v22;
  v4 = v90 >> 62;
  v23 = __OFSUB__(HIDWORD(v91), v91);
  v83 = v23;
  v82 = HIDWORD(v91) - v91;
  v89 = BYTE6(v90);
  if (v93)
  {
    v24 = 0;
  }

  else
  {
    v24 = a4 == 0xC000000000000000;
  }

  v25 = !v24;
  v87 = v25;
  v95 = a4 >> 62;
  v26 = __OFSUB__(HIDWORD(v93), v93);
  v79 = v26;
  v78 = HIDWORD(v93) - v93;
  v81 = a4;
  v86 = BYTE6(a4);
  v88 = v10;
  while (1)
  {
    a4 = v15;
    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    v27 = v15;
    v28 = v7;
    if (!v7)
    {
      while (1)
      {
        v15 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v15 >= v20)
        {
          goto LABEL_141;
        }

        v28 = *(v13 + 8 * v15);
        ++v27;
        if (v28)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_143;
    }

LABEL_35:
    v96 = (v28 - 1) & v28;
    v6 = *(*(v10 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v28)))));

    if (!v6)
    {
      goto LABEL_141;
    }

LABEL_39:
    v30 = v6[2];
    v31 = v6[3];
    v32 = v31 >> 62;
    if (v31 >> 62 == 3)
    {
      if (v30)
      {
        v33 = 0;
      }

      else
      {
        v33 = v31 == 0xC000000000000000;
      }

      v35 = !v33 || v4 < 3;
      if (((v35 | v92) & 1) == 0)
      {
        goto LABEL_90;
      }

LABEL_61:
      v36 = 0;
      if (v4 <= 1)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    if (v32 > 1)
    {
      if (v32 != 2)
      {
        goto LABEL_61;
      }

      v38 = *(v30 + 16);
      v37 = *(v30 + 24);
      v39 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v39)
      {
        goto LABEL_149;
      }

      if (v4 <= 1)
      {
        goto LABEL_58;
      }
    }

    else if (v32)
    {
      LODWORD(v36) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_150;
      }

      v36 = v36;
      if (v4 <= 1)
      {
LABEL_58:
        v40 = v89;
        if (v4)
        {
          v40 = v82;
          if (v83)
          {
            goto LABEL_146;
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      v36 = BYTE6(v31);
      if (v4 <= 1)
      {
        goto LABEL_58;
      }
    }

LABEL_62:
    if (v4 != 2)
    {
      if (v36)
      {
        goto LABEL_29;
      }

      goto LABEL_90;
    }

    v42 = *(v19 + 16);
    v41 = *(v19 + 24);
    v39 = __OFSUB__(v41, v42);
    v40 = v41 - v42;
    if (v39)
    {
      goto LABEL_145;
    }

LABEL_64:
    if (v36 != v40)
    {
      goto LABEL_29;
    }

    if (v36 < 1)
    {
      goto LABEL_90;
    }

    if (v32 > 1)
    {
      if (v32 != 2)
      {
        memset(v98, 0, 14);
LABEL_86:
        v49 = v94;
        sub_10019F024(v98, v19, v90, &v97);
        v94 = v49;
        v10 = v88;
        if ((v97 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_90;
      }

      v80 = v4;
      v43 = *(v30 + 16);
      v77 = *(v30 + 24);
      v44 = __DataStorage._bytes.getter();
      if (v44)
      {
        v45 = __DataStorage._offset.getter();
        if (__OFSUB__(v43, v45))
        {
          goto LABEL_159;
        }

        v44 += v43 - v45;
      }

      if (__OFSUB__(v77, v43))
      {
        goto LABEL_156;
      }
    }

    else
    {
      if (!v32)
      {
        v98[0] = v6[2];
        LOWORD(v98[1]) = v31;
        BYTE2(v98[1]) = BYTE2(v31);
        BYTE3(v98[1]) = BYTE3(v31);
        BYTE4(v98[1]) = BYTE4(v31);
        BYTE5(v98[1]) = BYTE5(v31);
        goto LABEL_86;
      }

      v80 = v4;
      v46 = v30;
      if (v30 >> 32 < v30)
      {
        goto LABEL_155;
      }

      v47 = __DataStorage._bytes.getter();
      if (v47)
      {
        v77 = v47;
        v48 = __DataStorage._offset.getter();
        if (__OFSUB__(v46, v48))
        {
          goto LABEL_160;
        }

        v44 = v46 - v48 + v77;
      }

      else
      {
        v44 = 0;
      }
    }

    __DataStorage._length.getter();
    v50 = v44;
    v19 = v91;
    v51 = v94;
    sub_10019F024(v50, v91, v90, v98);
    v94 = v51;
    v10 = v88;
    v4 = v80;
    if ((v98[0] & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_90:
    v52 = v6[4];
    v53 = v6[5];
    v54 = v53 >> 62;
    if (v53 >> 62 == 3)
    {
      if (v52)
      {
        v55 = 0;
      }

      else
      {
        v55 = v53 == 0xC000000000000000;
      }

      v57 = !v55 || v95 < 3;
      if (((v57 | v87) & 1) == 0)
      {
LABEL_140:
        sub_100093854();

        v74 = v6[6];

        return v74;
      }

      v58 = 0;
LABEL_111:
      v59 = v95;
      if (v95 <= 1)
      {
        goto LABEL_112;
      }

      goto LABEL_105;
    }

    v59 = v95;
    if (v54 > 1)
    {
      if (v54 == 2)
      {
        v64 = *(v52 + 16);
        v63 = *(v52 + 24);
        v39 = __OFSUB__(v63, v64);
        v58 = v63 - v64;
        if (v39)
        {
          goto LABEL_151;
        }

        goto LABEL_111;
      }

      v58 = 0;
      if (v95 <= 1)
      {
        goto LABEL_112;
      }
    }

    else if (v54)
    {
      LODWORD(v58) = HIDWORD(v52) - v52;
      if (__OFSUB__(HIDWORD(v52), v52))
      {
        goto LABEL_152;
      }

      v58 = v58;
      if (v95 <= 1)
      {
LABEL_112:
        v65 = v59;
        v62 = v86;
        if (v65)
        {
          v62 = v78;
          if (v79)
          {
            goto LABEL_148;
          }
        }

        goto LABEL_114;
      }
    }

    else
    {
      v58 = BYTE6(v53);
      if (v95 <= 1)
      {
        goto LABEL_112;
      }
    }

LABEL_105:
    if (v59 != 2)
    {
      if (!v58)
      {
        goto LABEL_140;
      }

      goto LABEL_29;
    }

    v61 = *(v93 + 16);
    v60 = *(v93 + 24);
    v39 = __OFSUB__(v60, v61);
    v62 = v60 - v61;
    if (v39)
    {
      goto LABEL_147;
    }

LABEL_114:
    if (v58 != v62)
    {
      goto LABEL_29;
    }

    if (v58 < 1)
    {
      goto LABEL_140;
    }

    if (v54 > 1)
    {
      if (v54 != 2)
      {
        memset(v98, 0, 14);
LABEL_136:
        v72 = v94;
        sub_10019F024(v98, v93, v81, &v97);
        v94 = v72;
        v10 = v88;
        if (v97)
        {
          goto LABEL_140;
        }

        goto LABEL_29;
      }

      v80 = v4;
      v66 = *(v52 + 16);
      v77 = *(v52 + 24);
      v67 = __DataStorage._bytes.getter();
      if (v67)
      {
        v68 = __DataStorage._offset.getter();
        if (__OFSUB__(v66, v68))
        {
          goto LABEL_157;
        }

        v67 += v66 - v68;
      }

      if (__OFSUB__(v77, v66))
      {
        goto LABEL_154;
      }
    }

    else
    {
      if (!v54)
      {
        v98[0] = v6[4];
        LOWORD(v98[1]) = v53;
        BYTE2(v98[1]) = BYTE2(v53);
        BYTE3(v98[1]) = BYTE3(v53);
        BYTE4(v98[1]) = BYTE4(v53);
        BYTE5(v98[1]) = BYTE5(v53);
        goto LABEL_136;
      }

      v80 = v4;
      v69 = v52;
      if (v52 >> 32 < v52)
      {
        goto LABEL_153;
      }

      v70 = __DataStorage._bytes.getter();
      if (v70)
      {
        v77 = v70;
        v71 = __DataStorage._offset.getter();
        if (__OFSUB__(v69, v71))
        {
          goto LABEL_158;
        }

        v67 = v69 - v71 + v77;
      }

      else
      {
        v67 = 0;
      }
    }

    __DataStorage._length.getter();
    v73 = v94;
    sub_10019F024(v67, v93, v81, v98);
    v94 = v73;
    v19 = v91;
    v10 = v88;
    v4 = v80;
    if (v98[0])
    {
      goto LABEL_140;
    }

LABEL_29:

    v7 = v96;
  }

  v29 = __CocoaSet.Iterator.next()();
  if (v29)
  {
    v97 = v29;
    type metadata accessor for DSKExpress.ExpressKey();
    swift_dynamicCast();
    v6 = v98[0];
    v96 = v7;
    if (v98[0])
    {
      goto LABEL_39;
    }
  }

LABEL_141:
  sub_100093854();

  return 0;
}

uint64_t sub_1001C32F4(void *a1)
{
  v1 = a1[4];
  sub_1000752B0(a1, a1[3]);
  type metadata accessor for DSKExpress.ExpressReport();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = &_swiftEmptySetSingleton;
  (*(v1 + 8))();
  swift_setDeallocating();
  v3 = *(inited + 24);
}

uint64_t sub_1001C337C()
{
  BYTE8(v6) = 0;
  _StringGuts.grow(_:)(18);
  v1._countAndFlagsBits = 0x2073736572707845;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  *&v6 = *(v0 + 16);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x207379656B20;
  v3._object = 0xE600000000000000;
  String.append(_:)(v3);
  v4 = sub_1001BE980(*(v0 + 24));
  sub_100288EC8(v4);

  return *(&v6 + 1);
}

uint64_t sub_1001C3470()
{
  sub_10006A178(v0[2], v0[3]);
  sub_10006A178(v0[4], v0[5]);
  v1 = v0[6];

  return swift_deallocClassInstance();
}

Swift::Int sub_1001C34B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001C3500()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return Data.hash(into:)();
}

Swift::Int sub_1001C350C()
{
  Hasher.init(_seed:)();
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001C3564()
{
  v1 = OBJC_IVAR____TtC10seserviced10DSKExpress_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_delegates);

  v4 = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_expressKeys);

  v5 = *(v0 + OBJC_IVAR____TtC10seserviced10DSKExpress_requestedConfigurationItems);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DSKExpress()
{
  result = qword_100505D70;
  if (!qword_100505D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001C3684()
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

uint64_t sub_1001C3784(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20[1] = qword_10051B7F0;
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_1001C50E0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CAAD8;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1001C5000(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

void sub_1001C3AA8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced10DSKExpress_isRunning) == 1)
  {
    if (a2 == 0xD00000000000001ELL && 0x8000000100465FC0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v7 = XPC_EVENT_KEY_NAME.getter();
      if (!xpc_dictionary_get_string(a4, v7))
      {
        goto LABEL_18;
      }

      v8 = String.init(cString:)();
      v10 = v9;
      if (v8 == 0x64616F6C796150 && v9 == 0xE700000000000000 || (v11 = v8, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v12 = String.utf8CString.getter();

        string = xpc_dictionary_get_string(a4, (v12 + 32));

        if (string)
        {
          v15 = String.init(cString:)();
          v16 = v14;
          if (v15 == 0xD00000000000002CLL && 0x8000000100466060 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              *v19 = 0;
              _os_log_impl(&_mh_execute_header, v17, v18, "Received UWB express config change event", v19, 2u);
            }

            sub_1001C0100();
            return;
          }

          oslog = Logger.logObject.getter();
          v23 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(oslog, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v30 = v25;
            *v24 = 136315138;
            v28 = sub_1002FFA0C(v15, v16, &v30);

            *(v24 + 4) = v28;
            v26 = "Ignoring event string value %s";
            goto LABEL_30;
          }

          goto LABEL_32;
        }

LABEL_18:
        oslog = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(oslog, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          v22 = "Bad XPC event dictionary";
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(oslog, v23))
      {
LABEL_32:

        goto LABEL_21;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      v27 = sub_1002FFA0C(v11, v10, &v30);

      *(v24 + 4) = v27;
      v26 = "Ignoring event string key %s";
    }

    else
    {

      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(oslog, v23))
      {
        goto LABEL_21;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1002FFA0C(a2, a3, &v30);
      v26 = "Ignoring stream %s";
    }

LABEL_30:
    _os_log_impl(&_mh_execute_header, oslog, v23, v26, v24, 0xCu);
    sub_1000752F4(v25);

    return;
  }

  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Not running";
LABEL_20:
    _os_log_impl(&_mh_execute_header, oslog, v20, v22, v21, 2u);
  }

LABEL_21:
}

unint64_t sub_1001C4034()
{
  result = qword_100505F98;
  if (!qword_100505F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505F98);
  }

  return result;
}

uint64_t sub_1001C40D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C40EC(void *a1, char a2, void *a3)
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

  v10 = sub_10008C908(v7, v6);
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
    sub_10030C7E8(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_10008C908(v7, v6);
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
  sub_100312640();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
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
    v38._object = 0x8000000100466020;
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

      v27 = sub_10008C908(v7, v6);
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
        sub_10030C7E8(v31, 1);
        v32 = *a3;
        v27 = sub_10008C908(v7, v6);
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