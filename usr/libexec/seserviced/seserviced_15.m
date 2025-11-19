uint64_t sub_100143CC4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100143DA4, 0, 0);
}

uint64_t sub_100143DA4()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

void sub_100143E08(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  if (a2)
  {
    if (a3)
    {
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = a2;
      v14[5] = a1;
      v14[6] = a3;
      v14[7] = a4;
      v14[8] = v4;
      v15 = a2;
      sub_100113B54(a3);

      sub_1001F9BE8(0, 0, v12, &unk_10040BD90, v14);
    }

    else
    {
      v18 = qword_1005019D8;
      v27 = a2;
      if (v18 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000958E4(v19, qword_10051B2C8);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "In Session deletion bust provide deletionCompletion", v22, 2u);
      }

      v23 = v27;
    }
  }

  else
  {
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = a1;
    v16[5] = v4;
    v28[0] = 0x6369767265736573;
    v28[1] = 0xEA00000000006465;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 2;
    v17 = objc_allocWithZone(type metadata accessor for SECAdminSession());
    sub_100113B54(a3);

    v24 = sub_1002753A8(v28, sub_100146F14, v16);
    if (qword_100501A48 != -1)
    {
      swift_once();
    }

    v25 = qword_10051B398;
    os_unfair_lock_lock((qword_10051B398 + 16));
    sub_1001B0864(&v25[6], v24);
    os_unfair_lock_unlock(v25 + 4);
    sub_1001B0970();
  }
}

void sub_1001442A8(_BYTE *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v53 - v14;
  if (!a1)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000958E4(v43, qword_10051B2C8);
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = a3;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v59 = v48;
      *v47 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v49 = Error.localizedDescription.getter();
        v51 = v50;
      }

      else
      {
        v51 = 0xE700000000000000;
        v49 = 0x6E776F6E6B6E55;
      }

      v52 = sub_1002FFA0C(v49, v51, &v59);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Error %s encountered when starting admin session", v47, 0xCu);
      sub_1000752F4(v48);

      a3 = v46;
      if (!v46)
      {
        return;
      }
    }

    else
    {

      if (!a3)
      {
        return;
      }
    }

    a3(0, a2);
    return;
  }

  v56 = a6;
  v59 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo];
  v16 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 64];
  v18 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 16];
  v17 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 32];
  v62 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 48];
  v63 = v16;
  v60 = v18;
  v61 = v17;
  v20 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 96];
  v19 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 112];
  v21 = *&a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 80];
  v67 = a1[OBJC_IVAR____TtC10seserviced15SECAdminSession_clientInfo + 128];
  v65 = v20;
  v66 = v19;
  v64 = v21;
  v22 = a1;
  sub_10012E344(&v59, v58);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v57 = a5;
  v23 = type metadata accessor for Logger();
  sub_1000958E4(v23, qword_10051B2C8);
  sub_10012E344(&v59, v58);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  sub_10012E3A0(&v59);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v54 = v27;
    v55 = a4;
    v58[0] = v27;
    *v26 = 136315138;
    v28 = sub_10013F33C(v27);
    v30 = v15;
    v31 = v22;
    v32 = a3;
    v33 = sub_1002FFA0C(v28, v29, v58);

    *(v26 + 4) = v33;
    a3 = v32;
    v22 = v31;
    v15 = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Start admin session %s", v26, 0xCu);
    sub_1000752F4(v54);
    a4 = v55;
  }

  v34 = swift_allocObject();
  v35 = v63;
  *(v34 + 120) = v64;
  v36 = v66;
  *(v34 + 136) = v65;
  *(v34 + 152) = v36;
  v37 = v59;
  *(v34 + 56) = v60;
  v38 = v62;
  *(v34 + 72) = v61;
  *(v34 + 88) = v38;
  *(v34 + 104) = v35;
  *(v34 + 16) = a3;
  *(v34 + 24) = a4;
  *(v34 + 32) = v22;
  *(v34 + 168) = v67;
  *(v34 + 40) = v37;
  *(v34 + 176) = v56;
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v15, 1, 1, v39);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v41 = v57;
  v40[4] = v22;
  v40[5] = v41;
  v40[6] = sub_100147104;
  v40[7] = v34;
  v42 = v22;
  sub_100113B54(a3);

  sub_1001F9BE8(0, 0, v15, &unk_10040BD98, v40);
}

uint64_t sub_100144794(void (*a1)(uint64_t, void), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27[-v11 - 8];
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_10051B2C8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Finished deleting all orphaned credentials", v16, 2u);
  }

  if (a1)
  {
    a1(1, 0);
  }

  v17 = swift_allocObject();
  v18 = *(a4 + 112);
  *(v17 + 112) = *(a4 + 96);
  *(v17 + 128) = v18;
  *(v17 + 144) = *(a4 + 128);
  v19 = *(a4 + 48);
  *(v17 + 48) = *(a4 + 32);
  *(v17 + 64) = v19;
  v20 = *(a4 + 80);
  *(v17 + 80) = *(a4 + 64);
  *(v17 + 96) = v20;
  v21 = *(a4 + 16);
  *(v17 + 16) = *a4;
  *(v17 + 32) = v21;
  *(v17 + 152) = a5;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a3;
  v23[5] = sub_1001472BC;
  v23[6] = v17;
  sub_10012E344(a4, v27);
  v24 = a3;
  sub_1001F9BE8(0, 0, v12, &unk_10040BDA0, v23);
}

void sub_1001449F8(uint64_t a1)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  sub_10012E344(a1, v10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  sub_10012E3A0(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10[0] = v6;
    *v5 = 136315138;
    v7 = sub_10013F33C(v6);
    v9 = sub_1002FFA0C(v7, v8, v10);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Ended admin session %s", v5, 0xCu);
    sub_1000752F4(v6);
  }
}

uint64_t sub_100144B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[6] = a5;
  v9 = swift_task_alloc();
  v7[9] = v9;
  *v9 = v7;
  v9[1] = sub_100144BF4;

  return sub_1002002FC(a5);
}

uint64_t sub_100144BF4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100144D74;
  }

  else
  {
    v3 = sub_100144D08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100144D08()
{
  v1 = *(v0 + 64);
  (*(v0 + 56))(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100144D74()
{
  v24 = v0;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_errorRetain();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315394;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v23);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100147FB4(&unk_100507480, &type metadata accessor for UUID);
    v15 = Set.description.getter();
    v17 = sub_1002FFA0C(v15, v16, &v23);

    *(v8 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error %s while deleting credentials %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v18 = v0[10];
  v20 = v0[7];
  v19 = v0[8];
  swift_errorRetain();
  v20(0, v18);

  v21 = v0[1];

  return v21();
}

uint64_t sub_100144FE8()
{
  v0 = sub_100068FC4(&qword_100504228, &unk_10040F470);
  sub_1000B6A94(v0, qword_1005047B0);
  sub_1000958E4(v0, qword_1005047B0);
  sub_100068FC4(&qword_1005048A0, &qword_100409C80);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001450BC()
{
  v0 = sub_100068FC4(&unk_100504890, &qword_10040B568);
  sub_1000B6A94(v0, qword_1005047C8);
  sub_1000958E4(v0, qword_1005047C8);
  sub_100068FC4(&qword_100502FA0, &qword_10040A390);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_100145198()
{
  v0 = sub_100068FC4(&unk_100504890, &qword_10040B568);
  sub_1000B6A94(v0, qword_1005047E0);
  sub_1000958E4(v0, qword_1005047E0);
  sub_100068FC4(&qword_100502FA0, &qword_10040A390);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_100145274()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_1005047F8);
  sub_1000958E4(v0, qword_1005047F8);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_100145328()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_100504810);
  sub_1000958E4(v0, qword_100504810);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001453DC()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_10051B2C8);
  sub_1000958E4(v0, qword_10051B2C8);
  return Logger.init(subsystem:category:)();
}

double sub_10014545C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10008C8DC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003117D8();
      v12 = v14;
    }

    sub_10006A178(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    sub_1000BC104((*(v12 + 56) + 40 * v9), a3);
    sub_1000DDDB8(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_100145508@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10008C808(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100311E08();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    *a2 = *(*(v11 + 56) + 16 * v8);
    sub_1000DE114(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1004098E0;
  }

  return result;
}

uint64_t sub_1001455E4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_10008CB58(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1000DE5E4(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100312654();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10013E4F0(v4, v7);

  v9 = sub_10008CB58(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1000DE5E4(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_100145730(int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10008CBA8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1003127B4();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_1000DE770(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_1001457B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10008C908(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100312C4C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1000DE8E4(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_100145928@<D0>(unsigned __int16 a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10008CA34(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100313CD8();
      v11 = v13;
    }

    *a2 = *(*(v11 + 56) + 16 * v8);
    sub_1000DEAD4(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1004098E0;
  }

  return result;
}

uint64_t sub_1001459BC(int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10008CBA8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100314394();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_1000E39DC(v10, v9);
  *v2 = v9;
  return v11;
}

void sub_100145A44(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_state);
  if (v3)
  {
    v6 = qword_1005019D8;
    v7 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Adding %@ to backgroundassertion", v12, 0xCu);
      sub_1000C2998(v13);
    }

    if ([v9 processIdentifier] >= 1)
    {
      v15 = OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_appStateObserver;
      v16 = [*(a3 + OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_appStateObserver) isAppBackgroundedOrSuspended:v9];
      v17 = *&v7[OBJC_IVAR____TtCC10seserviced22SECBackgroundAssertion24AppStateObserverDelegate_assertions];
      v18 = __chkstk_darwin(v16);
      __chkstk_darwin(v18);

      os_unfair_lock_lock(v17 + 6);
      sub_100147E48(&v17[4]);
      os_unfair_lock_unlock(v17 + 6);

      [*(a3 + v15) registerForAppStateChanges:v9];

      return;
    }

    v25 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v25, v23, "Invalid PID", v24, 2u);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_10051B2C8);
    v25 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1002FFA0C(0xD000000000000012, 0x8000000100464290, &v26);
      _os_log_impl(&_mh_execute_header, v25, v20, "%s called while not active", v21, 0xCu);
      sub_1000752F4(v22);

      return;
    }
  }
}

void sub_100145E54(void (**a1)(void, void, void))
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = objc_opt_self();
  _Block_copy(a1);
  v14 = [v13 currentConnection];
  if (v14)
  {
    v36 = v14;
    sub_1001263BC(v14, v39);
    if (qword_100501D50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = off_10050A868;

    os_unfair_lock_lock(v21 + 6);
    v22 = *&v21[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v21 + 6);

    if (v22)
    {
      v35[1] = *(v22 + 72);
      v23 = swift_allocObject();
      v24 = v39[6];
      *(v23 + 104) = v39[5];
      *(v23 + 120) = v24;
      *(v23 + 136) = v39[7];
      v25 = v39[0];
      *(v23 + 40) = v39[1];
      *(v23 + 56) = v39[2];
      v26 = v39[4];
      *(v23 + 72) = v39[3];
      *(v23 + 88) = v26;
      *(v23 + 16) = v22;
      *(v23 + 152) = v40;
      *(v23 + 24) = v25;
      *(v23 + 160) = sub_100148164;
      *(v23 + 168) = v12;
      aBlock[4] = sub_100147F8C;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C88F0;
      v35[0] = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v37 = _swiftEmptyArrayStorage;
      sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_1000BA838();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = v35[0];
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v27);

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      sub_10012E3A0(v39);
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000958E4(v28, qword_10051B2C8);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_1002FFA0C(0xD000000000000029, 0x80000001004642D0, aBlock);
        _os_log_impl(&_mh_execute_header, v29, v30, "%s SECPresentmentIntentManager is nil", v31, 0xCu);
        sub_1000752F4(v32);
      }

      sub_10009591C();
      swift_allocError();
      *v33 = 6;
      v34 = _convertErrorToNSError(_:)();
      (a1)[2](a1, 0, v34);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B2C8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to resolve current XPC connection", v18, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v19 = 15;
    v20 = _convertErrorToNSError(_:)();
    (a1)[2](a1, 0, v20);
  }
}

void sub_1001465D8(void (**a1)(void, void))
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    v4 = kTCCServiceSecureElementAccess;
    if (kTCCServiceSecureElementAccess)
    {
      v16[0] = v14;
      v16[1] = v15;
      v5 = TCCAccessPreflightWithAuditToken();

      [v3 auditToken];
      v17 = 0;
      if (sub_100306124(v5 != 2, v16, 0, 0))
      {
        a1[2](a1, 0);
      }

      else
      {
        sub_10009591C();
        swift_allocError();
        *v12 = 27;
        v13 = _convertErrorToNSError(_:)();
        (a1)[2](a1, v13);
      }
    }

    else
    {
      _Block_release(a1);
      __break(1u);
    }
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to resolve current XPC connection", v9, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v10 = 15;
    v11 = _convertErrorToNSError(_:)();
    (a1)[2](a1, v11);
  }
}

uint64_t sub_100146854(void *a1)
{
  v2 = v1;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_10051B2C8);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Accepting %@", v8, 0xCu);
    sub_1000C2998(v9);
  }

  v11 = objc_opt_self();
  v12 = [v11 interfaceWithProtocol:&OBJC_PROTOCOL____TtP10seserviced18SECredentialServer_];
  v13 = sub_100286650();
  v14 = sub_100286A48();
  [v12 setInterface:v14 forSelector:"queueSessionWithCallbackProxy:reply:" argumentIndex:0 ofReply:0];

  [v12 setInterface:v13 forSelector:"queueSessionWithCallbackProxy:reply:" argumentIndex:0 ofReply:1];
  v15 = [v11 interfaceWithProtocol:&OBJC_PROTOCOL____TtP10seserviced38SECredentialPresentmentIntentAssertion_];
  [v12 setInterface:v15 forSelector:"acquirePresentmentIntentAssertionWithReply:" argumentIndex:0 ofReply:1];

  [v5 setExportedInterface:v12];
  [v5 setExportedObject:v2];
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v5;
  v29 = sub_10014803C;
  v30 = v16;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100080830;
  v28 = &unk_1004C8940;
  v17 = _Block_copy(&v25);
  v18 = v5;
  v19 = v2;

  [v18 setInvalidationHandler:v17];
  _Block_release(v17);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v29 = sub_100148044;
  v30 = v20;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100080830;
  v28 = &unk_1004C8990;
  v21 = _Block_copy(&v25);
  v22 = v18;
  v23 = v19;

  [v22 setInterruptionHandler:v21];
  _Block_release(v21);
  [v22 resume];
  return 1;
}

uint64_t sub_100146C68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100146CA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100146CE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_100142758(a1, v4, v5, v6);
}

uint64_t sub_100146DC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100146E00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 36);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_10014308C(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_100146ECC()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100146F28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10012E598;

  return sub_100144B50(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100147004()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 48);

  sub_10014708C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_10014708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{
  if (a15 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100147120(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  v4 = *(v1 + 40);

  v5 = *(v1 + 56);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10014717C(uint64_t a1)
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
  v10[1] = sub_1000C288C;

  return sub_100275E20(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100147250()
{
  v1 = *(v0 + 24);

  sub_10014708C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1001472C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100147310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_100275B90(a1, v4, v5, v6, v7, v8);
}

void sub_1001473D8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  sub_100141D3C();
  v7 = *(a2 + OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor);
  if (v7)
  {
    v8 = objc_opt_self();

    v9 = v7;
    v10 = [v8 currentConnection];
    if (!v10)
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000958E4(v19, qword_10051B2C8);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Unable to resolve current XPC connection", v22, 2u);
      }

      sub_10009591C();
      swift_allocError();
      *v23 = 15;
      v24 = _convertErrorToNSError(_:)();
      (a3)[2](a3, 0, v24);

      goto LABEL_34;
    }

    v11 = v10;
    sub_1001263BC(v10, v91);
    v88 = v96;
    v89[0] = v97[0];
    v89[1] = v97[1];
    v90 = v98;
    v84 = v92;
    v85 = v93;
    v86 = v94;
    v87 = v95;
    v76 = v9;
    v77 = v6;
    if (v98)
    {
      if (v98 == 2)
      {
        v25 = v11;
        v26 = a1;
LABEL_26:
        sub_10012E344(v91, &v82);
        [v25 auditToken];
        v51 = *v82.val;
        v52 = *&v82.val[2];
        v54 = *&v82.val[4];
        v53 = *&v82.val[6];
        v55 = objc_allocWithZone(type metadata accessor for SECUserSession());

        swift_unknownObjectRetain();
        v56 = v26;
        v57 = v25;
        v58 = sub_100201DF0(v91, v51, v52, v54, v53, sub_1000C2784, v77, v56);
        v59 = v76;
        if ([*&v76[OBJC_IVAR____TtC10seserviced22SECBackgroundAssertion_appStateObserver] isAppBackgroundedOrSuspended:v25])
        {
          if (qword_1005019D8 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_1000958E4(v60, qword_10051B2C8);
          sub_10012E344(v91, &v82);
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();
          sub_10012E3A0(v91);
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            *v82.val = v64;
            *v63 = 136315138;
            v65 = sub_10013F33C(v64);
            v66 = v58;
            v68 = v67;
            sub_10012E3A0(v91);
            v69 = sub_1002FFA0C(v65, v68, &v82);
            v58 = v66;

            *(v63 + 4) = v69;
            _os_log_impl(&_mh_execute_header, v61, v62, "Cannot queue session %s while backgrounded or suspended", v63, 0xCu);
            sub_1000752F4(v64);

            v59 = v76;
          }

          else
          {

            sub_10012E3A0(v91);
          }

          sub_10009591C();
          swift_allocError();
          *v72 = 18;
          v73 = _convertErrorToNSError(_:)();
          (a3)[2](a3, 0, v73);

          return;
        }

        sub_10012E3A0(v91);
        if (qword_100501A48 != -1)
        {
          swift_once();
        }

        v70 = qword_10051B398;
        v71 = v58;
        os_unfair_lock_lock(v70 + 4);
        sub_1001B0644(&v70[6], v71, &off_1004CBB58);
        os_unfair_lock_unlock(v70 + 4);
        sub_1001B0970();

LABEL_34:

        return;
      }

      v25 = v11;
      v37 = v97;
      v38 = v88;
      v39 = *(&v87 + 1);
      v40 = v87;
      v41 = *(&v86 + 1);
      v42 = v86;
      v43 = *(&v85 + 1);
      v44 = v85;
      v45 = *(&v84 + 1);
    }

    else
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000958E4(v27, qword_10051B2C8);
      sub_10012E344(v91, &v82);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      sub_10012E3A0(v91);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v82.val = v75;
        *v30 = 136315138;
        v31 = sub_10013F33C(v75);
        v74 = v29;
        v33 = v11;
        v34 = a1;
        v35 = sub_1002FFA0C(v31, v32, &v82);

        v36 = v30;
        *(v30 + 4) = v35;
        a1 = v34;
        v11 = v33;
        v9 = v76;
        _os_log_impl(&_mh_execute_header, v28, v74, "Registering client %s for background monitoring", v36, 0xCu);
        sub_1000752F4(v75);
      }

      v25 = v11;
      sub_100145A44(v11, a2, v9);
      v45 = *(&v84 + 1);
      v43 = *(&v85 + 1);
      v44 = v85;
      v41 = *(&v86 + 1);
      v42 = v86;
      v39 = *(&v87 + 1);
      v40 = v87;
      v37 = v89;
      v38 = v88;
    }

    v46 = v37[1];
    *v83.val = *v37;
    *&v83.val[4] = v46;
    v78[0] = v84;
    v78[1] = v45;
    v78[2] = v44;
    v78[3] = v43;
    v78[4] = v42;
    v78[5] = v41;
    v78[6] = v40;
    v78[7] = v39;
    v79 = v38;
    v80 = *v83.val;
    v81 = v46;
    sub_10012E3F4(&v84, &v82);
    v82 = v83;
    audit_token_to_pid(&v82);
    sub_10012E450(v78);
    v47 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
    v48 = swift_beginAccess();
    v49 = *(a2 + v47);
    v50 = __chkstk_darwin(v48);
    v26 = a1;
    __chkstk_darwin(v50);

    os_unfair_lock_lock(v49 + 6);
    sub_100147E48(&v49[4]);
    os_unfair_lock_unlock(v49 + 6);

    goto LABEL_26;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000958E4(v12, qword_10051B2C8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v91[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1002FFA0C(0xD000000000000022, 0x8000000100464260, v91);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s called before backgroundAssertionMonitor set up", v15, 0xCu);
    sub_1000752F4(v16);
  }

  sub_10009591C();
  swift_allocError();
  *v17 = 6;
  v18 = _convertErrorToNSError(_:)();
  (a3)[2](a3, 0, v18);
}

uint64_t sub_100147DF0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100147EA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100068FC4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100147F0C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_10014708C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  v3 = *(v0 + 168);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100147F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100147FB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100147FFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100148044()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100141A30();
}

uint64_t sub_10014804C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100145730([*(v1 + 16) processIdentifier]);
  *a1 = result;
  return result;
}

void *sub_10014809C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1001480E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100148174()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10014822C(void *a1)
{
  v3 = a1[2];
  v4 = *(a1[3] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(v3 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(a1 - 1) + 64);
  __chkstk_darwin(v10);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v1, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x6576697463616E69;
    }

    (*(v8 + 32))(v12, v15, v3);
    v18 = 0x6572676F72506E69;
    v19 = 29555;
  }

  else
  {
    (*(v8 + 32))(v12, v15, v3);
    v18 = 0x656C756465686373;
    v19 = 8292;
  }

  v24[0] = v18;
  v24[1] = v19 | 0xED0000203A200000;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20 = a1[4];
  v21._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v21);

  v22 = v24[0];
  (*(v8 + 8))(v12, v3);
  return v22;
}

uint64_t sub_1001484E4()
{
  v1 = *(v0 + 24);

  v2 = qword_1005048B0;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_1005048B8 + 8);

  v5 = *(v0 + qword_1005048C0);

  return v0;
}

uint64_t sub_100148570()
{
  sub_1001484E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001485E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10014864C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_100148758(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_10014891C()
{
  v1 = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - v5;
  if (qword_1005019C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1000958E4(v2, qword_1005047F8);
  (*(v3 + 16))(v6, v7, v2);
  UserDefaultBacked.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  if (v14)
  {
    return 1;
  }

  sub_100068FC4(&qword_1005049C8, &qword_10040BE48);
  result = swift_initStackObject();
  *(result + 16) = xmmword_100409900;
  if (!kTCCAccessCheckOptionPrompt)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(result + 32) = kTCCAccessCheckOptionPrompt;
  *(result + 40) = 1;
  if (!kTCCAccessCheckOptionPurposeRequired)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(result + 48) = kTCCAccessCheckOptionPurposeRequired;
  *(result + 56) = 0;
  sub_1000916C0(result);
  swift_setDeallocating();
  sub_100068FC4(&qword_1005049D0, &unk_10040BE50);
  result = swift_arrayDestroy();
  v9 = kTCCServiceSecureElementAccess;
  if (kTCCServiceSecureElementAccess)
  {
    v10 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken + 16);
    v14 = *(v1 + OBJC_IVAR____TtC10seserviced14SECUserSession_auditToken);
    v15 = v10;
    type metadata accessor for CFString(0);
    sub_100148B8C();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v13[0] = v14;
    v13[1] = v15;
    v12 = TCCAccessCheckAuditToken();

    return v12 != 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_100148B8C()
{
  result = qword_1005021B0;
  if (!qword_1005021B0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005021B0);
  }

  return result;
}

id sub_100148BE4()
{
  result = [objc_allocWithZone(type metadata accessor for SEStorageManagementXPCServer()) init];
  qword_10051B2E0 = result;
  return result;
}

uint64_t sub_100148CB0(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
}

double sub_100148D4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = type metadata accessor for XPCReceivedMessage();
  v53 = *(v56 - 8);
  v3 = *(v53 + 64);
  __chkstk_darwin(v56);
  v4 = type metadata accessor for SEStorageManagementInternal.XPCRequest();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v55 = (&v47 - v10);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v13 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = a1;
  v18 = XPCReceivedMessage.auditToken.getter();
  sub_1001495B8(v18, v19, v20, v21, v17);
  v48 = v8;
  v49 = v3;
  v22 = v54;
  v51 = v12;
  v52 = v14;
  v50 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v56;
  sub_10014D478(&qword_100504A20, &type metadata accessor for SEStorageManagementInternal.XPCRequest);
  v24 = v55;
  v25 = v57;
  XPCReceivedMessage.decode<A>(as:)();
  v26 = v22;
  v27 = *(v22 + 32);
  v28 = v51;
  v27(v51, v24, v4);
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000958E4(v29, qword_10051B240);
  v30 = v48;
  (*(v26 + 16))(v48, v28, v4);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v30;
    v34 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v59 = v55;
    *v34 = 136315138;
    sub_10014D478(&qword_100504A28, &type metadata accessor for SEStorageManagementInternal.XPCRequest);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v38 = v33;
    v39 = *(v26 + 8);
    v39(v38, v4);
    v40 = sub_1002FFA0C(v35, v37, &v59);
    v28 = v51;

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "Decoded request %s", v34, 0xCu);
    sub_1000752F4(v55);
  }

  else
  {

    v39 = *(v26 + 8);
    v39(v30, v4);
  }

  v41 = v53;
  v42 = v50;
  XPCReceivedMessage.detachHandoff()();
  (*(v41 + 16))(v42, v25, v23);
  v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v44 = swift_allocObject();
  (*(v41 + 32))(v44 + v43, v42, v23);
  sub_10014AE70(v28, sub_10014AE00, v44);

  v39(v28, v4);
  v45 = v58;
  *(v58 + 32) = 0;
  result = 0.0;
  *v45 = 0u;
  v45[1] = 0u;
  return result;
}

void sub_1001495B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *v29.val = a1;
  *&v29.val[2] = a2;
  *&v29.val[4] = a3;
  *&v29.val[6] = a4;
  v7 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v29);
  if (v7)
  {
    v8 = v7;
    v9 = sub_100149CD0(v7, 0xD000000000000016, 0x80000001004645D0);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    v13 = sub_10014A134(v8, *(v5 + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_entitlementKey), *(v5 + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_entitlementKey + 8));
    if ((v13 == 2 || (v13 & 1) == 0) && ((v14 = sub_10014A134(v8, *(v5 + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_serviceName), *(v5 + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_serviceName + 8)), v14 == 2) || (v14 & 1) == 0))
    {
      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000958E4(v21, qword_10051B240);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v29.val = v25;
        *v24 = 136315138;
        v26 = sub_1002FFA0C(v11, v12, &v29);

        *(v24 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v22, v23, "Client %s is not entitled", v24, 0xCu);
        sub_1000752F4(v25);
      }

      else
      {
      }

      v27 = enum case for SEStorageManagementInternal.Types.ErrorCode.notEntitled(_:);
      v28 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
      (*(*(v28 - 8) + 104))(a5, v27, v28);
      sub_10014D478(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
      swift_willThrowTypedImpl();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B240);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to create SecTaskCreateWithAuditToken", v18, 2u);
    }

    *a5 = 0xD00000000000002CLL;
    a5[1] = 0x80000001004645A0;
    v19 = enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:);
    v20 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    (*(*(v20 - 8) + 104))(a5, v19, v20);
    sub_10014D478(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode);
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_100149A00()
{
  type metadata accessor for SEStorageManagementInternal.XPCResponse();
  sub_10014D478(&qword_100504A18, &type metadata accessor for SEStorageManagementInternal.XPCResponse);
  return XPCReceivedMessage.reply<A>(_:)();
}

void sub_100149A7C(uint64_t a1)
{
  v2 = type metadata accessor for XPCRichError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_10051B240);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = XPCRichError.debugDescription.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_1002FFA0C(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Client disconnected with error %s", v10, 0xCu);
    sub_1000752F4(v11);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  if (qword_10051B4D8)
  {

    sub_1001E0CD4();
  }
}

uint64_t sub_100149CD0(__SecTask *a1, uint64_t a2, unint64_t a3)
{
  error = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = SecTaskCopyValueForEntitlement(a1, v6, &error);

  if (v7)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v26;
    }

    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_10051B240);
    swift_unknownObjectRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1002FFA0C(a2, a3, &v26);
      *(v21 + 12) = 2080;
      swift_getObjectType();
      v22 = _typeName(_:qualified:)();
      v24 = sub_1002FFA0C(v22, v23, &v26);

      *(v21 + 14) = v24;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1002FFA0C(0x676E69727453, 0xE600000000000000, &v26);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to cast result of entitlement %s from %s to %s", v21, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = error;
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000958E4(v10, qword_10051B240);
    v11 = v9;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1002FFA0C(a2, a3, &v26);
      *(v14 + 12) = 2080;
      if (v9)
      {
        type metadata accessor for CFError(0);
        sub_10014D478(&qword_100504A60, type metadata accessor for CFError);
        v15 = Error.localizedDescription.getter();
        v17 = v16;
      }

      else
      {
        v17 = 0xE500000000000000;
        v15 = 0x3E6C696E3CLL;
      }

      v25 = sub_1002FFA0C(v15, v17, &v26);

      *(v14 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to SecTaskCopyValueForEntitlement %s : %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_10014A134(__SecTask *a1, uint64_t a2, unint64_t a3)
{
  error = 0;
  v6 = String._bridgeToObjectiveC()();
  v7 = SecTaskCopyValueForEntitlement(a1, v6, &error);

  if (v7)
  {
    v28 = v7;
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      return v27;
    }

    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_10051B240);
    swift_unknownObjectRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1002FFA0C(a2, a3, &v28);
      *(v21 + 12) = 2080;
      swift_getObjectType();
      v22 = _typeName(_:qualified:)();
      v24 = sub_1002FFA0C(v22, v23, &v28);

      *(v21 + 14) = v24;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1002FFA0C(1819242306, 0xE400000000000000, &v28);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to cast result of entitlement %s from %s to %s", v21, 0x20u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 2;
  }

  v9 = error;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_10051B240);
  v11 = v9;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v12, v13))
  {

    return 2;
  }

  v14 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  *v14 = 136315394;
  *(v14 + 4) = sub_1002FFA0C(a2, a3, &v28);
  *(v14 + 12) = 2080;
  if (v9)
  {
    type metadata accessor for CFError(0);
    sub_10014D478(&qword_100504A60, type metadata accessor for CFError);
    v15 = Error.localizedDescription.getter();
    v17 = v16;
  }

  else
  {
    v17 = 0xE500000000000000;
    v15 = 0x3E6C696E3CLL;
  }

  v25 = sub_1002FFA0C(v15, v17, &v28);

  *(v14 + 14) = v25;
  _os_log_impl(&_mh_execute_header, v12, v13, "Failed to SecTaskCopyValueForEntitlement %s : %s", v14, 0x16u);
  v8 = 2;
  swift_arrayDestroy();

  return v8;
}

uint64_t sub_10014A598(char a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v21 = a3;
  v5 = type metadata accessor for SEStorageManagementInternal.XPCResponse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014D408(a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100075768(v13, &unk_100506F00, &qword_10040BE90);
    *v9 = a1 & 1;
    (*(v6 + 104))(v9, enum case for SEStorageManagementInternal.XPCResponse.storageSufficient(_:), v5);
    v21(v9);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    (*(v15 + 16))(v9, v18, v14);
    (*(v6 + 104))(v9, enum case for SEStorageManagementInternal.XPCResponse.error(_:), v5);
    v21(v9);
    (*(v6 + 8))(v9, v5);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_10014A878(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for SEStorageManagementInternal.XPCResponse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014D408(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100075768(v12, &unk_100506F00, &qword_10040BE90);
    (*(v5 + 104))(v8, enum case for SEStorageManagementInternal.XPCResponse.dismissed(_:), v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    (*(v14 + 16))(v8, v17, v13);
    (*(v5 + 104))(v8, enum case for SEStorageManagementInternal.XPCResponse.error(_:), v4);
    a2(v8);
    (*(v5 + 8))(v8, v4);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_10014AD30()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10014AD78()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10014AE00()
{
  v0 = *(*(type metadata accessor for XPCReceivedMessage() - 8) + 80);

  return sub_100149A00();
}

uint64_t sub_10014AE70(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v270 = a2;
  v271 = a3;
  v259 = type metadata accessor for SEStorageManagementInternal.XPCResponse();
  v258 = *(v259 - 8);
  v3 = *(v258 + 64);
  __chkstk_darwin(v259);
  v257 = (&v229 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v253 = &v229 - v7;
  v8 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
  v264 = *(v8 - 8);
  v265 = v8;
  v9 = *(v264 + 8);
  v10 = __chkstk_darwin(v8);
  v254 = (&v229 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = &v229 - v13;
  v15 = __chkstk_darwin(v12);
  v245 = &v229 - v16;
  v17 = __chkstk_darwin(v15);
  v247 = (&v229 - v18);
  __chkstk_darwin(v17);
  v243 = &v229 - v19;
  v20 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v255 = (&v229 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __chkstk_darwin(v22);
  v244 = &v229 - v25;
  __chkstk_darwin(v24);
  v260 = (&v229 - v26);
  v263 = type metadata accessor for UUID();
  v262 = *(v263 - 8);
  v27 = *(v262 + 64);
  v28 = __chkstk_darwin(v263);
  v256 = &v229 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v261 = &v229 - v30;
  v266 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  v269 = *(v266 - 8);
  v31 = *(v269 + 64);
  v32 = __chkstk_darwin(v266);
  v252 = &v229 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = v33;
  __chkstk_darwin(v32);
  v268 = &v229 - v34;
  v35 = type metadata accessor for SEStorageManagementInternal.Types.CredentialsToProvision();
  v267 = *(v35 - 8);
  v36 = *(v267 + 64);
  __chkstk_darwin(v35);
  v38 = &v229 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v40 = *(v39 - 8);
  v41 = v40[8];
  v42 = __chkstk_darwin(v39);
  v251 = &v229 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v246 = (&v229 - v45);
  v46 = __chkstk_darwin(v44);
  v250 = &v229 - v47;
  v248 = v48;
  __chkstk_darwin(v46);
  v50 = &v229 - v49;
  v51 = type metadata accessor for SEStorageManagementInternal.XPCRequest.Operation();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  __chkstk_darwin(v51);
  v55 = (&v229 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  SEStorageManagementInternal.XPCRequest.operation.getter();
  v56 = (*(v52 + 88))(v55, v51);
  if (v56 == enum case for SEStorageManagementInternal.XPCRequest.Operation.presentStorageManagementSheet(_:))
  {
    (*(v52 + 96))(v55, v51);
    v57 = sub_100068FC4(&qword_100504A48, &qword_10040BEA8);
    v58 = v57[12];
    v59 = (v55 + v57[16]);
    v61 = *v59;
    v60 = v59[1];
    v238 = v61;
    v239 = v60;
    v62 = (v55 + v57[20]);
    v64 = *v62;
    v63 = v62[1];
    v237 = v64;
    v240 = v63;
    v65 = v57[24];
    v254 = v40;
    v68 = v40[4];
    v66 = v40 + 4;
    v67 = v68;
    v257 = v50;
    v258 = v39;
    v68(v50, v55, v39);
    v69 = *(v267 + 32);
    v242 = v35;
    v69(v38, v55 + v58, v35);
    v71 = v269 + 32;
    v70 = *(v269 + 32);
    v72 = v55 + v65;
    v73 = v266;
    v70(v268, v72, v266);
    v74 = v261;
    SEStorageManagementInternal.XPCRequest.clientIdentifier.getter();
    v75 = SEStorageManagementInternal.Types.CredentialsToProvision.credentials.getter();
    v76 = swift_allocObject();
    v77 = v270;
    v259 = v76;
    v78 = v271;
    *(v76 + 16) = v270;
    *(v76 + 24) = v78;
    v241 = v38;
    if (qword_10051B4D8)
    {
      v79 = v77;
      swift_retain_n();

      if (qword_100501938 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      sub_1000958E4(v80, qword_10051B240);

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();

      v83 = v74;
      if (os_log_type_enabled(v81, v82))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v273 = v85;
        *v84 = 136315138;
        v86 = UUID.uuidString.getter();
        v88 = sub_1002FFA0C(v86, v87, &v273);

        *(v84 + 4) = v88;
        _os_log_impl(&_mh_execute_header, v81, v82, "Presentation is already in progress for %s", v84, 0xCu);
        sub_1000752F4(v85);
        v73 = v266;
        v79 = v270;
      }

      v89 = v269;
      v90 = v267;
      v92 = v264;
      v91 = v265;
      v93 = v260;
      (*(v264 + 13))(v260, enum case for SEStorageManagementInternal.Types.ErrorCode.presentationInProgress(_:), v265);
      (*(v92 + 7))(v93, 0, 1, v91);
      sub_10014A598(0, v93, v79);

      sub_100075768(v93, &unk_100506F00, &qword_10040BE90);
      (*(v262 + 8))(v83, v263);
      (*(v89 + 8))(v268, v73);
      (*(v90 + 8))(v241, v242);
      v110 = v254[1];
      v111 = v257;
      return v110(v111, v258);
    }

    v233 = v70;
    v234 = v71;
    v235 = v67;
    v232 = v66;
    v236 = v75;
    v101 = *(v262 + 16);
    v102 = v256;
    v103 = v263;
    v101(v256, v74, v263);
    v104 = type metadata accessor for SEStorageManagementUIClient(0);
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    swift_allocObject();
    swift_retain_n();
    v107 = sub_1001E0E8C(v102);
    qword_10051B4D8 = v107;

    v101(v102, v74, v103);
    v108 = objc_allocWithZone(type metadata accessor for SEStorageManagementPresenter(0));

    v109 = sub_1001E2868(v102, 0);
    sub_1001E1140(v109);
    v256 = 0;
    v117 = *&v109[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession];
    *&v109[OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession] = 0;

    v118 = v259;
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    sub_1000958E4(v119, qword_10051B240);
    v120 = v109;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      v273 = v260;
      *v123 = 136315138;
      v124 = v122;
      v125 = v120;
      v126 = [v125 description];
      v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v129 = v128;

      v130 = sub_1002FFA0C(v127, v129, &v273);

      *(v123 + 4) = v130;
      v118 = v259;
      _os_log_impl(&_mh_execute_header, v121, v124, "SharedUIClient: Starting presenter %s", v123, 0xCu);
      sub_1000752F4(v260);
    }

    v131 = v270;
    v132 = v107[4];
    v107[4] = v120;
    v133 = v120;

    v134 = swift_allocObject();
    v134[2] = v107;
    v134[3] = sub_10014CF98;
    v134[4] = v118;
    v135 = *(v133 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_state);
    swift_retain_n();
    swift_retain_n();

    os_unfair_lock_lock((v135 + 20));
    v136 = *(v135 + 16);
    os_unfair_lock_unlock((v135 + 20));

    v260 = v133;
    if (v136)
    {
      v137 = v133;
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v231 = v134;
        v142 = v141;
        v273 = v141;
        *v140 = 136315138;
        v143 = v137;
        v144 = v107;
        v145 = [v143 description];
        v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v148 = v147;

        v107 = v144;
        v149 = v146;
        v150 = v270;
        v151 = sub_1002FFA0C(v149, v148, &v273);

        *(v140 + 4) = v151;
        _os_log_impl(&_mh_execute_header, v138, v139, "%s Unable to start presentation out of pending state", v140, 0xCu);
        sub_1000752F4(v142);
      }

      else
      {
        v150 = v131;
      }

      v168 = v269;
      v169 = v267;
      v170 = v241;
      v172 = v264;
      v171 = v265;
      v173 = v255;
      *v255 = 0xD00000000000001ALL;
      v173[1] = 0x8000000100464520;
      (*(v172 + 13))(v173, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v171);
      (*(v172 + 7))(v173, 0, 1, v171);
      v174 = v107[4];
      v175 = v242;
      if (v174)
      {
        v176 = *(v174 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
        *(v174 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;
      }

      v177 = v255;
      sub_10014A598(0, v255, v150);
      sub_100075768(v177, &unk_100506F00, &qword_10040BE90);

      v178 = v266;
      v179 = v268;
LABEL_30:
      v180 = v257;
LABEL_37:

      (*(v262 + 8))(v261, v263);
      (*(v168 + 8))(v179, v178);
      (*(v169 + 8))(v170, v175);
      v110 = v254[1];
      v111 = v180;
      return v110(v111, v258);
    }

    v231 = v134;
    v160 = v254;
    v161 = v254 + 2;
    v162 = v250;
    v163 = v258;
    v230 = v254[2];
    v230(v250, v257, v258);
    v164 = (v160[11])(v162, v163);
    v165 = v164;
    v166 = enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:);
    if (v164 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.currentDevice(_:) || v164 == enum case for SEStorageManagementSheet.ProvisioningDeviceConfiguration.pairedWatch(_:))
    {
      v270 = v161;
      (v160[12])(v162, v163);
      v250 = *v162;
      swift_beginAccess();
      sub_100068FC4(&unk_100504880, &unk_10040A5B0);
      UserDefaultBacked.wrappedValue.getter();
      v167 = v272;
      swift_endAccess();
      if (v167 == 1)
      {
        v255 = v107;
        v274 = &type metadata for SEStorageManagementMockPassProvider;
        v275 = sub_10014D3B4();
      }

      else
      {
        v185 = v246;
        v230(v246, v257, v163);
        v186 = type metadata accessor for SEStorageManagementPassProvider(0);
        v187 = *(v186 + 48);
        v188 = *(v186 + 52);
        swift_allocObject();
        v189 = v185;
        v190 = v256;
        v191 = v247;
        v192 = sub_1001BAACC(v189, v247);
        if (v190)
        {
          v194 = v264;
          v193 = v265;
          v195 = *(v264 + 4);
          v196 = v243;
          v195(v243, v191, v265);
          v197 = v245;
          v195(v245, v196, v193);
          v198 = v244;
          (*(v194 + 2))(v244, v197, v193);
          (*(v194 + 7))(v198, 0, 1, v193);
          v199 = v107[4];
          if (v199)
          {
            v200 = *(v199 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession);
            *(v199 + OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_activeCredentialSession) = 0;
          }

          sub_10014A598(0, v198, v131);

          sub_100075768(v198, &unk_100506F00, &qword_10040BE90);
          (*(v194 + 1))(v197, v193);

          v178 = v266;
          v169 = v267;
          v179 = v268;
          v168 = v269;
          v175 = v242;
          v170 = v241;
          goto LABEL_30;
        }

        v201 = v192;
        v255 = v107;
        v274 = v186;
        v275 = sub_10014D478(&unk_100507430, type metadata accessor for SEStorageManagementPassProvider);
        v273 = v201;
      }

      v202 = OBJC_IVAR____TtC10seservicedP33_6BF624923E613E1EC57F47F80535A8D428SEStorageManagementPresenter_passProvider;
      swift_beginAccess();
      sub_10014CFEC(&v273, v133 + v202);
      swift_endAccess();
      LODWORD(v265) = v165 == v166;
      v203 = swift_allocObject();
      v204 = v231;
      *(v203 + 16) = sub_10014CFE0;
      *(v203 + 24) = v204;
      sub_100068FC4(&unk_100507440, &unk_10040BEB0);
      v205 = swift_allocObject();
      sub_100068FC4(&qword_100504A58, &unk_10040FA00);
      v206 = swift_allocObject();
      *(v206 + 16) = 0;
      v205[3] = v203;
      v205[4] = v206;
      v205[2] = sub_10014D094;
      v207 = swift_allocObject();
      *(v207 + 16) = sub_10014D09C;
      *(v207 + 24) = v205;
      v208 = type metadata accessor for TaskPriority();
      v209 = *(*(v208 - 8) + 56);
      v210 = v253;
      v209(v253, 1, 1, v208);
      v211 = swift_allocObject();
      *(v211 + 16) = 0;
      *(v211 + 24) = 0;
      *(v211 + 32) = xmmword_10040BE60;
      v264 = sub_10014D0A4;
      *(v211 + 48) = v133;
      *(v211 + 56) = sub_10014D0A4;
      v256 = v207;
      *(v211 + 64) = v207;
      v212 = v133;
      v246 = v212;

      v247 = sub_100201B44(0, 0, v210, &unk_10040BEC0, v211);
      v209(v210, 1, 1, v208);
      v230(v251, v257, v258);
      v213 = v269 + 16;
      v178 = v266;
      (*(v269 + 16))(v252, v268, v266);
      v214 = (*(v254 + 80) + 40) & ~*(v254 + 80);
      v215 = (v248 + *(v213 + 64) + v214) & ~*(v213 + 64);
      v270 = (v215 + v249 + 7) & 0xFFFFFFFFFFFFFFF8;
      v216 = (v215 + v249 + 23) & 0xFFFFFFFFFFFFFFF8;
      v217 = (v216 + 15) & 0xFFFFFFFFFFFFFFF8;
      v218 = (v217 + 23) & 0xFFFFFFFFFFFFFFF8;
      v219 = (v218 + 23) & 0xFFFFFFFFFFFFFFF8;
      v220 = swift_allocObject();
      *(v220 + 2) = 0;
      *(v220 + 3) = 0;
      *(v220 + 4) = v212;
      v235(&v220[v214], v251, v258);
      v233(&v220[v215], v252, v178);
      v168 = v269;
      v221 = &v220[v270];
      *v221 = v236;
      v221[8] = v265;
      *&v220[v216] = v250;
      v222 = &v220[v217];
      v223 = v239;
      *v222 = v238;
      *(v222 + 1) = v223;
      v224 = &v220[v218];
      v225 = v240;
      *v224 = v237;
      *(v224 + 1) = v225;
      *&v220[v219] = v247;
      v179 = v268;
      v226 = &v220[(v219 + 15) & 0xFFFFFFFFFFFFFFF8];
      v227 = v256;
      *v226 = v264;
      v226[1] = v227;

      v228 = v246;

      sub_1001F9BE8(0, 0, v253, &unk_10040FA10, v220);

      v180 = v257;

      v175 = v242;
      v169 = v267;
      v170 = v241;
      goto LABEL_37;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v94 = v270;
    if (v56 == enum case for SEStorageManagementInternal.XPCRequest.Operation.addMockPasses(_:))
    {
      (*(v52 + 96))(v55, v51);
      v95 = *v55;
      v96 = v55[1];
      v97 = type metadata accessor for PropertyListDecoder();
      v98 = *(v97 + 48);
      v99 = *(v97 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      sub_100068FC4(&qword_100504A30, &unk_10040BE98);
      sub_10014CEE4();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      v115 = v273;
      type metadata accessor for SEStorageMockEntryStore();
      v116 = sub_100259A0C(v14);
      v269 = v96;
      v152 = v116;
      type metadata accessor for SEStorageMockEntryStore.Context();
      inited = swift_initStackObject();
      v154 = v152[2];
      v155 = type metadata accessor for ModelContext();
      v156 = *(v155 + 48);
      v157 = *(v155 + 52);
      swift_allocObject();

      v158 = ModelContext.init(_:)();

      *(inited + 16) = v158;
      sub_10025AE64(v115, v254);

      swift_setDeallocating();
      v181 = *(inited + 16);

      v182 = v258;
      v183 = v257;
      v184 = v259;
      (*(v258 + 104))(v257, enum case for SEStorageManagementInternal.XPCResponse.added(_:), v259);
      v94(v183);
      sub_10006A178(v95, v269);
      return (*(v182 + 8))(v183, v184);
    }

    else if (v56 == enum case for SEStorageManagementInternal.XPCRequest.Operation.dismissStorageManagementSheet(_:))
    {
      v100 = v256;
      SEStorageManagementInternal.XPCRequest.clientIdentifier.getter();

      sub_1001F0B78(v100, v94);

      return (*(v262 + 8))(v100, v263);
    }

    else
    {
      v112 = v257;
      *v257 = 0xD000000000000011;
      *(v112 + 1) = 0x80000001004644E0;
      (*(v264 + 13))(v112, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v265);
      v113 = v258;
      v114 = v259;
      (*(v258 + 104))(v112, enum case for SEStorageManagementInternal.XPCResponse.error(_:), v259);
      v94(v112);
      (*(v113 + 8))(v112, v114);
      return (*(v52 + 8))(v55, v51);
    }
  }

  return result;
}

unint64_t sub_10014CEE4()
{
  result = qword_100504A38;
  if (!qword_100504A38)
  {
    sub_1000692D8(&qword_100504A30, &unk_10040BE98);
    sub_10014D478(&qword_100504A40, &type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504A38);
  }

  return result;
}

uint64_t sub_10014CFA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10014CFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100504A50, &unk_10040F9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D05C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10014D0AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10014D0F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000C288C;

  return sub_1001E3610(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10014D1D0()
{
  v23 = type metadata accessor for SEStorageManagementSheet.ProvisioningDeviceConfiguration();
  v1 = *(v23 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SEStorageManagementSheet.DisplayConfiguration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v8 + *(v6 + 64);
  v24 = v2 | v7;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v1 + 8))(v0 + v3, v23);
  (*(v6 + 8))(v0 + v8, v5);
  v15 = *(v0 + v22);

  v16 = *(v0 + v11 + 8);

  v17 = *(v0 + v12 + 8);

  v18 = *(v0 + v13);

  v19 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v19 + 8);

  return _swift_deallocObject(v0, v19 + 16, v24 | 7);
}

unint64_t sub_10014D3B4()
{
  result = qword_100507450;
  if (!qword_100507450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100507450);
  }

  return result;
}

uint64_t sub_10014D408(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_100506F00, &qword_10040BE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014D478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014D4CC(int64_t *a1, uint64_t a2, void *a3)
{
  v77 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v77);
  v76 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v75);
  v74 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a2;
  if (*(a2 + 16))
  {
    v13 = a3;
  }

  else
  {
    [a3 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10014E510();
    swift_dynamicCast();
    v13 = v90;
  }

  v14 = sub_1001107E0(v13);
  v79 = a3;
  v68 = v3;
  if (v14)
  {

    v15 = *a1;
    if ((v15 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      sub_100075C60(&qword_100504AA8, &unk_100503FA0, &unk_10040B2F0);
      result = Set.Iterator.init(_cocoa:)();
      v15 = v90;
      v17 = v91;
      v18 = v92;
      v19 = v93;
      v20 = v94;
    }

    else
    {
      v26 = -1 << *(v15 + 32);
      v17 = (v15 + 56);
      v18 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v20 = v28 & *(v15 + 56);

      v19 = 0;
    }

    v67 = v18;
    v29 = (v18 + 64) >> 6;
    v71 = &v86;
    v70 = (v7 + 8);
    v69 = (v10 + 8);
    v72 = v29;
    v73 = v17;
    if (v15 < 0)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v30 = v19;
      v31 = v20;
      v32 = v19;
      if (!v20)
      {
        break;
      }

LABEL_18:
      v33 = (v31 - 1) & v31;
      v34 = *(*(v15 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));

      if (!v34)
      {
        return sub_100093854();
      }

      while (1)
      {
        v82 = v33;
        v36 = swift_allocObject();
        v38 = v78;
        v37 = v79;
        v36[2] = v34;
        v36[3] = v38;
        v36[4] = v37;
        v81 = v34[4];
        v88 = sub_10014E504;
        v89 = v36;
        aBlock = _NSConcreteStackBlock;
        v85 = 1107296256;
        v86 = sub_100080830;
        v87 = &unk_1004C8CE8;
        v80 = _Block_copy(&aBlock);
        v39 = v37;

        v40 = v74;
        static DispatchQoS.unspecified.getter();
        v83 = _swiftEmptyArrayStorage;
        sub_1000BA7E0();
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        v41 = v76;
        v42 = v15;
        v43 = v77;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v44 = v80;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v44);
        v17 = v73;

        v45 = v43;
        v15 = v42;
        (*v70)(v41, v45);
        (*v69)(v40, v75);

        v19 = v32;
        v20 = v82;
        v29 = v72;
        if ((v15 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_20:
        v35 = __CocoaSet.Iterator.next()();
        if (v35)
        {
          v83 = v35;
          sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
          swift_dynamicCast();
          v34 = aBlock;
          v32 = v19;
          v33 = v20;
          if (aBlock)
          {
            continue;
          }
        }

        return sub_100093854();
      }
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v29)
      {
        return sub_100093854();
      }

      v31 = v17[v32];
      ++v30;
      if (v31)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = *a1;
    if ((v21 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
      sub_100075C60(&qword_100504AA8, &unk_100503FA0, &unk_10040B2F0);
      result = Set.Iterator.init(_cocoa:)();
      v21 = v90;
      v22 = v91;
      v23 = v92;
      v24 = v93;
      v25 = v94;
    }

    else
    {
      v46 = -1 << *(v21 + 32);
      v22 = (v21 + 56);
      v23 = ~v46;
      v47 = -v46;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v25 = v48 & *(v21 + 56);

      v24 = 0;
    }

    v67 = v23;
    v49 = (v23 + 64) >> 6;
    v71 = &v86;
    v70 = (v7 + 8);
    v69 = (v10 + 8);
    v72 = v49;
    v73 = v21;
    if (v21 < 0)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v50 = v24;
      v51 = v25;
      v52 = v24;
      if (!v25)
      {
        break;
      }

LABEL_33:
      v53 = (v51 - 1) & v51;
      v54 = *(*(v21 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(v51)))));

      if (!v54)
      {
        return sub_100093854();
      }

      while (1)
      {
        v82 = v53;
        v56 = swift_allocObject();
        v58 = v78;
        v57 = v79;
        v56[2] = v54;
        v56[3] = v58;
        v56[4] = v57;
        v81 = v54[4];
        v88 = sub_10014E498;
        v89 = v56;
        aBlock = _NSConcreteStackBlock;
        v85 = 1107296256;
        v86 = sub_100080830;
        v87 = &unk_1004C8C98;
        v80 = _Block_copy(&aBlock);
        v59 = v57;

        v60 = v74;
        static DispatchQoS.unspecified.getter();
        v83 = _swiftEmptyArrayStorage;
        sub_1000BA7E0();
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
        v61 = v76;
        v62 = v22;
        v63 = v77;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v64 = v80;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v64);
        v21 = v73;

        v65 = v63;
        v22 = v62;
        (*v70)(v61, v65);
        (*v69)(v60, v75);

        v24 = v52;
        v25 = v82;
        v49 = v72;
        if ((v21 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_35:
        v55 = __CocoaSet.Iterator.next()();
        if (v55)
        {
          v83 = v55;
          sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
          swift_dynamicCast();
          v54 = aBlock;
          v52 = v24;
          v53 = v25;
          if (aBlock)
          {
            continue;
          }
        }

        return sub_100093854();
      }
    }

    while (1)
    {
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v52 >= v49)
      {
        return sub_100093854();
      }

      v51 = *(v22 + v52);
      ++v50;
      if (v51)
      {
        goto LABEL_33;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_10014DE34(uint64_t a1, uint64_t a2, id a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (*(a2 + 16))
  {
    v8 = a3;
    v5 = a3;
  }

  else
  {
    [a3 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10014E510();
    swift_dynamicCast();
    v5 = v8;
  }

  ObjectType = swift_getObjectType();
  v7[0] = v5;
  (*(v3 + 16))(v7, ObjectType, v3);
}

void sub_10014DF00(uint64_t a1, uint64_t a2, id a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (*(a2 + 16))
  {
    v8 = a3;
    v5 = a3;
  }

  else
  {
    [a3 copyWithZone:0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10014E510();
    swift_dynamicCast();
    v5 = v8;
  }

  ObjectType = swift_getObjectType();
  v7[0] = v5;
  (*(v3 + 24))(v7, ObjectType, v3);
}

uint64_t sub_10014DFCC()
{
  sub_100068FC4(&qword_100504A98, &qword_10040BEE0);
  v0 = swift_allocObject();
  sub_100068FC4(&qword_100504AA0, &unk_10040BEE8);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = &_swiftEmptySetSingleton;
  *(result + 24) = &_swiftEmptySetSingleton;
  *(v0 + 24) = result;
  *(v0 + 16) = 0;
  off_100504A68 = v0;
  return result;
}

uint64_t sub_10014E4A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10014E4BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10014E510()
{
  result = qword_100503F00;
  if (!qword_100503F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100503F00);
  }

  return result;
}

id sub_10014E588()
{
  result = [objc_allocWithZone(type metadata accessor for AlishaHUP(0)) init];
  qword_10051B2E8 = result;
  return result;
}

id sub_10014E5BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &aBlock[-1] - v6;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v8 = OBJC_IVAR____TtC10seserviced9AlishaHUP_enableFriendHUP;
  LOBYTE(aBlock[0]) = 0;
  v18 = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  v1[v8] = aBlock[0];
  *&v1[OBJC_IVAR____TtC10seserviced9AlishaHUP_hupTimeoutSec] = 0x4072C00000000000;
  *&v1[OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions] = _swiftEmptyArrayStorage;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, "init");
  v10 = qword_100501D90;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  aBlock[4] = sub_1001570D8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193978;
  aBlock[3] = &unk_1004C90D0;
  v13 = _Block_copy(aBlock);

  os_state_add_handler();
  _Block_release(v13);

  return v11;
}

_DWORD *sub_10014E870()
{
  v1 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_70;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_56;
  }

  *&v51[0] = _swiftEmptyArrayStorage;

  sub_10019F3C0(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  v5 = 0;
  v6 = *&v51[0];
  v46 = v2 & 0xC000000000000001;
  v42 = v2 + 32;
  v43 = v2 & 0xFFFFFFFFFFFFFF8;
  v44 = v2;
  v45 = v3;
  do
  {
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_64;
    }

    v48 = v6;
    if (v46)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v43 + 16))
      {
        goto LABEL_65;
      }

      v8 = *(v42 + 8 * v5);
    }

    v9 = (*(v8 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v10 = v9[1];
    if (v10 >> 60 == 15)
    {
      goto LABEL_74;
    }

    v11 = *v9;
    v12 = v10 >> 62;
    v49 = HIDWORD(*v9);
    v47 = v7;
    if ((v10 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_51;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v13 = v14 - v15;
      if (__OFSUB__(v14, v15))
      {
        goto LABEL_67;
      }

      goto LABEL_22;
    }

    if (v12)
    {
      if (__OFSUB__(v49, v11))
      {
        goto LABEL_68;
      }

      v13 = v49 - v11;
LABEL_22:
      sub_100069E2C(v11, v10);
      if (!v13)
      {
        goto LABEL_51;
      }

LABEL_23:
      v16 = v13 & ~(v13 >> 63);
      sub_10019F3C0(0, v16, 0);
      v4 = _swiftEmptyArrayStorage;
      if (v12 == 2)
      {
        v2 = *(v11 + 16);
LABEL_27:
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_66;
      }

      if (v12 == 1)
      {
        v2 = v11;
        goto LABEL_27;
      }

      if (v13 < 0)
      {
        goto LABEL_69;
      }

      v2 = 0;
      while (1)
      {
LABEL_31:
        if (!v16)
        {
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
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        if (v12 == 2)
        {
          if (v2 < *(v11 + 16))
          {
            goto LABEL_58;
          }

          if (v2 >= *(v11 + 24))
          {
            goto LABEL_61;
          }

          v21 = __DataStorage._bytes.getter();
          if (!v21)
          {
            goto LABEL_73;
          }

          v18 = v21;
          v22 = __DataStorage._offset.getter();
          v20 = v2 - v22;
          if (__OFSUB__(v2, v22))
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v12 != 1)
          {
            if (v2 >= BYTE6(v10))
            {
              goto LABEL_59;
            }

            LOWORD(v52) = v11;
            BYTE2(v52) = BYTE2(v11);
            BYTE3(v52) = BYTE3(v11);
            BYTE4(v52) = v49;
            BYTE5(v52) = BYTE5(v11);
            BYTE6(v52) = BYTE6(v11);
            BYTE7(v52) = HIBYTE(v11);
            WORD4(v52) = v10;
            BYTE10(v52) = BYTE2(v10);
            BYTE11(v52) = BYTE3(v10);
            BYTE12(v52) = BYTE4(v10);
            BYTE13(v52) = BYTE5(v10);
            v23 = *(&v52 + v2);
            goto LABEL_47;
          }

          if (v2 < v11 || v2 >= v11 >> 32)
          {
            goto LABEL_60;
          }

          v17 = __DataStorage._bytes.getter();
          if (!v17)
          {
            goto LABEL_72;
          }

          v18 = v17;
          v19 = __DataStorage._offset.getter();
          v20 = v2 - v19;
          if (__OFSUB__(v2, v19))
          {
            goto LABEL_62;
          }
        }

        v23 = *(v18 + v20);
LABEL_47:
        sub_100068FC4(&qword_100502440, &unk_10040B240);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1004098F0;
        *(v24 + 56) = &type metadata for UInt8;
        *(v24 + 64) = &protocol witness table for UInt8;
        *(v24 + 32) = v23;
        v25 = String.init(format:_:)();
        v50 = v4;
        v28 = v4[2];
        v27 = v4[3];
        if (v28 >= v27 >> 1)
        {
          v41 = v25;
          v30 = v26;
          sub_10019F3C0((v27 > 1), v28 + 1, 1);
          v26 = v30;
          v25 = v41;
          v4 = v50;
        }

        v4[2] = v28 + 1;
        v29 = &v4[2 * v28];
        v29[4] = v25;
        v29[5] = v26;
        ++v2;
        --v16;
        if (!--v13)
        {
          v2 = v44;
          goto LABEL_51;
        }
      }
    }

    v13 = BYTE6(v10);
    if (BYTE6(v10))
    {
      goto LABEL_23;
    }

LABEL_51:
    *&v52 = v4;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;
    sub_10006A2D0(v11, v10);

    v6 = v48;
    *&v51[0] = v48;
    v35 = v48[2];
    v34 = v48[3];
    if (v35 >= v34 >> 1)
    {
      sub_10019F3C0((v34 > 1), v35 + 1, 1);
      v6 = *&v51[0];
    }

    v6[2] = v35 + 1;
    v36 = &v6[2 * v35];
    v36[4] = v31;
    v36[5] = v33;
    v5 = v47;
    v4 = _swiftEmptyArrayStorage;
  }

  while (v47 != v45);

LABEL_56:
  v53 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *&v52 = v6;
  sub_100075D50(&v52, v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v51, 0xD000000000000010, 0x8000000100464820, isUniquelyReferenced_nonNull_native);
  sub_1001950D4(&_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v39 = sub_100015DA0("alishahup.state", isa);

  return v39;
}

void sub_10014EEBC(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v167 = a2;
  v168 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v159 = *(v8 - 8);
  v9 = *(v159 + 64);
  __chkstk_darwin(v8);
  v11 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v158 = *(v12 - 1);
  v13 = *(v158 + 64);
  __chkstk_darwin(v12);
  v157 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = (&v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    v151 = v17;
    swift_once();
    v17 = v151;
  }

  v20 = qword_10051B7F0;
  *v19 = qword_10051B7F0;
  v21 = *(v17 + 104);
  v162 = enum case for DispatchPredicate.onQueue(_:);
  v22 = v17;
  v163 = v17 + 104;
  v161 = v21;
  v21(v19);
  v23 = v20;
  v24 = _dispatchPreconditionTest(_:)();
  v25 = v15;
  v26 = v24;
  v27 = *(v22 + 8);
  v169 = v19;
  v165 = v25;
  v164 = v22 + 8;
  v160 = v27;
  v27(v19);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_82:
    v37 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_8;
  }

  v154 = v11;
  v155 = v12;
  v156 = v8;
  v166 = v23;
  v28 = OBJC_IVAR____TtC10seserviced9AlishaHUP_logger;

  v170 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  v31 = os_log_type_enabled(v29, v30);
  v12 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  v171 = a3;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock = v33;
    *v32 = 67109378;
    *(v32 + 4) = a3 & 1;
    *(v32 + 8) = 2080;
    v34 = UUID.uuidString.getter();
    v36 = sub_1002FFA0C(v34, v35, &aBlock);

    *(v32 + 10) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "triggerHeadUnitPairing isRequestedByVehicle %{BOOL}d peer %s", v32, 0x12u);
    sub_1000752F4(v33);
  }

  v23 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  swift_beginAccess();
  v153 = v23;
  v26 = *&v5[v23];
  v172 = v5;
  a3 = v26 & 0xFFFFFFFFFFFFFF8;
  if (v26 >> 62)
  {
    goto LABEL_82;
  }

  v37 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v38 = *v12;

  for (i = 0; ; ++i)
  {
    if (v37 == i)
    {
      goto LABEL_18;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (i >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    v40 = *(v26 + 8 * i + 32);

    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

LABEL_13:
    v41 = *(v40 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer);
    v42 = *v12;
    v23 = static UUID.== infix(_:_:)();

    if (v23)
    {

      return;
    }
  }

  v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (!__OFADD__(i, 1))
  {
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
LABEL_18:

  v43 = qword_1005019E8;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = swift_allocObject();
  *(v44 + 16) = sub_100157158;
  *(v44 + 24) = a4;

  v45 = sub_1000CAA04();

  v46 = sub_1000CA810(v45);

  v47 = v172;
  v48 = v171;
  if (!v46)
  {
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Endpoint does not exist", v54, 2u);
    }

    return;
  }

  v49 = [v46 hupDone];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 BOOLValue];
  }

  else
  {
    v51 = 0;
  }

  type metadata accessor for AlishaPeer();
  v55 = swift_dynamicCastClass();
  if (!v55)
  {
    if (v51)
    {
      goto LABEL_40;
    }

LABEL_34:
    v56 = v167;
    if (v167 >> 60 == 15)
    {
      sub_100150214();
LABEL_49:

      return;
    }

    sub_100069E2C(v168, v167);
    v72 = [v46 hupData];
    if (v72)
    {
      v73 = v72;
      v74 = v56;
      v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      sub_10006A178(v75, v77);
    }

    else
    {
      if (qword_100501D98 != -1)
      {
        swift_once();
      }

      v169 = qword_10051B7F8;
      v78 = swift_allocObject();
      v79 = v168;
      v78[2] = v46;
      v78[3] = v79;
      v80 = v172;
      v78[4] = v56;
      v78[5] = v80;
      v178 = sub_100156D28;
      v179 = v78;
      aBlock = _NSConcreteStackBlock;
      v175 = 1107296256;
      v176 = sub_100080830;
      v177 = &unk_1004C8D88;
      v165 = _Block_copy(&aBlock);
      sub_10006A2BC(v79, v56);
      v81 = v46;
      v82 = v80;
      v83 = v157;
      static DispatchQoS.unspecified.getter();
      v173 = _swiftEmptyArrayStorage;
      sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
      v74 = v56;
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      v84 = v154;
      v85 = v156;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v86 = v165;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v86);
      (*(v159 + 8))(v84, v85);
      (*(v158 + 8))(v83, v155);
    }

    v87 = v74 >> 62;
    v88 = v74;
    if ((v74 >> 62) > 1)
    {
      if (v87 != 2)
      {
        goto LABEL_65;
      }

      v91 = *(v168 + 16);
      v90 = *(v168 + 24);
      v92 = __OFSUB__(v90, v91);
      v89 = v90 - v91;
      if (!v92)
      {
LABEL_64:
        if (v89 >= 9)
        {
          v105 = v168;
          v106 = Data.subdata(in:)();
          v108 = v107;
          sub_10006A2BC(v105, v88);
          v109 = sub_100090214(v105, v88, 7, 0, 0);
          sub_10006A2D0(v105, v88);
          v110 = ((v109 & 2) >> 1);
          v111 = 2;
          if ((v109 & 2) != 0)
          {
            v111 = 3;
          }

          if ((v109 & 4) != 0)
          {
            v110 = v111;
          }

          v165 = v110;
          sub_100069E2C(v106, v108);
          v169 = v46;
          v112 = [v46 publicKeyIdentifier];
          v113 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = v106;
          v116 = v115;

          aBlock = sub_100288788(v113, v116);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          BidirectionalCollection<>.joined(separator:)();
          sub_10006A178(v113, v116);

          sub_1003F6F88(v117);
          v119 = objc_allocWithZone(*(v118 + 1392));
          isa = Data._bridgeToObjectiveC()().super.isa;
          v121 = String._bridgeToObjectiveC()();

          v122 = [v119 initWithVehicleAddress:isa supportedCapabilites:v165 keyIdentifier:v121];

          v164 = v114;
          v165 = v108;
          sub_10006A178(v114, v108);

          v123 = v172;
          v124 = Logger.logObject.getter();
          v125 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            aBlock = v127;
            *v126 = 136315138;
            v128 = UUID.uuidString.getter();
            v130 = v122;
            v131 = sub_1002FFA0C(v128, v129, &aBlock);

            *(v126 + 4) = v131;
            v122 = v130;
            _os_log_impl(&_mh_execute_header, v124, v125, "Started CARWirelessPairingSession for %s", v126, 0xCu);
            sub_1000752F4(v127);

            v123 = v172;
          }

          v132 = v166;
          [v122 setDelegate:v123];
          v133 = type metadata accessor for AlishaHUP.HUPSession(0);
          v134 = *(v133 + 48);
          v135 = *(v133 + 52);
          v136 = swift_allocObject();
          *(v136 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer) = 0;
          *(v136 + 16) = v122;
          *(v136 + 24) = v171 & 1;
          v137 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
          swift_beginAccess();
          v138 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_connectionIdentifier;
          v139 = type metadata accessor for UUID();
          (*(*(v139 - 8) + 16))(v136 + v138, &a4[v137], v139);
          *(v136 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer) = a4;
          v140 = swift_allocObject();
          swift_weakInit();
          v141 = swift_allocObject();
          v141[2] = v140;
          v141[3] = v123;
          v141[4] = a4;
          v142 = objc_allocWithZone(SESTimer);
          v178 = sub_100156DCC;
          v179 = v141;
          aBlock = _NSConcreteStackBlock;
          v175 = 1107296256;
          v176 = sub_100080830;
          v177 = &unk_1004C8E00;
          v143 = _Block_copy(&aBlock);
          swift_retain_n();
          v144 = v123;
          a4 = v122;

          v145 = sub_1003AE50C(v142, v132, v143);
          _Block_release(v143);

          v146 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer;
          v147 = *(v136 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer);
          *(v136 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer) = v145;

          v148 = v153;
          swift_beginAccess();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v38 = v169;
          if (*((*(v123 + v148) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v123 + v148) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v152 = *((*(v123 + v148) & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          [a4 requestPairing];
          v149 = *(v136 + v146);
          v23 = v168;
          if (v149)
          {
            v150 = v149;
            sub_1003AE618(v150, 300.0);

            sub_10006A2D0(v23, v167);
            sub_10006A178(v164, v165);
          }

          else
          {
LABEL_79:

            sub_10006A2D0(v23, v167);
            sub_10006A178(v164, v165);
          }

          return;
        }

LABEL_65:
        v93 = v168;
        sub_100069E2C(v168, v74);
        v94 = Logger.logObject.getter();
        v95 = v167;
        v96 = v94;
        v97 = static os_log_type_t.error.getter();
        sub_10006A2D0(v93, v95);
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          aBlock = v99;
          *v98 = 136315138;
          v173 = sub_100288788(v93, v95);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v100 = BidirectionalCollection<>.joined(separator:)();
          v102 = v101;

          v103 = sub_1002FFA0C(v100, v102, &aBlock);
          v93 = v168;

          *(v98 + 4) = v103;
          _os_log_impl(&_mh_execute_header, v96, v97, "Invalid HU_PP payload %s", v98, 0xCu);
          sub_1000752F4(v99);
        }

        sub_100150214();
        v104 = objc_opt_self();
        sub_10004CB20(v104, v46, 2147483649);

        sub_10006A2D0(v93, v95);
        return;
      }

      __break(1u);
    }

    else if (!v87)
    {
      v89 = BYTE6(v74);
      goto LABEL_64;
    }

    LODWORD(v89) = HIDWORD(v168) - v168;
    if (__OFSUB__(HIDWORD(v168), v168))
    {
      __break(1u);
      goto LABEL_86;
    }

    v89 = v89;
    goto LABEL_64;
  }

  if ((v51 & 1) == 0)
  {
    if (*(*(v55 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 64))
    {
      if (v47[OBJC_IVAR____TtC10seserviced9AlishaHUP_enableFriendHUP])
      {
        goto LABEL_34;
      }

      if ([v46 getEndpointUser] != 1)
      {

        goto LABEL_34;
      }
    }

    else
    {
    }

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "HUP disabled by configuration", v59, 2u);
    }

    sub_100150214();
  }

LABEL_40:
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "HUP already done", v62, 2u);
  }

  v63 = v169;
  if ((v48 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v64 = sub_10013044C(0xD000000000000094, 0x8000000100464740);
  if (v65 >> 60 != 15)
  {
    v66 = v64;
    v67 = v65;
    v69 = v165;
    v68 = v166;
    *v63 = v166;
    v161(v63, v162, v69);
    v70 = v68;
    LOBYTE(v68) = _dispatchPreconditionTest(_:)();
    v160(v63, v69);
    if (v68)
    {
      v48 = sub_100239160(6, 23, v66, v67);
      v63 = v71;
      if (qword_100501960 == -1)
      {
LABEL_48:
        sub_1000E71A0(v48, v63, a4);

        sub_10006A178(v48, v63);
        sub_10006A2D0(v66, v67);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_48;
  }

LABEL_86:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void sub_100150214()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v26);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B7F0;
  *v14 = qword_10051B7F0;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = [v0 hupDone];
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = [v0 hupDone];
  if (!v18)
  {
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = [v18 BOOLValue];

  if ((v20 & 1) == 0)
  {
LABEL_7:
    v25 = v2;
    if (qword_100501D98 == -1)
    {
LABEL_8:
      v21 = swift_allocObject();
      *(v21 + 16) = v0;
      aBlock[4] = sub_100156EF8;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C8F18;
      v22 = _Block_copy(aBlock);
      v23 = v0;
      static DispatchQoS.unspecified.getter();
      v27 = _swiftEmptyArrayStorage;
      sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v22);
      (*(v25 + 8))(v5, v1);
      (*(v6 + 8))(v9, v26);

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_8;
  }
}

uint64_t sub_100150678(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v32 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v15 = [a1 publicKeyIdentifier];
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  aBlock = sub_100288788(v16, v18);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  BidirectionalCollection<>.joined(separator:)();
  sub_10006A178(v16, v18);

  v19 = String._bridgeToObjectiveC()();

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v43 = sub_100156E10;
  v44 = v20;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_1000A409C;
  v42 = &unk_1004C8E78;
  v21 = _Block_copy(&aBlock);
  sub_100069E2C(a2, a3);

  v22 = SESEndPointUpdateWithBlock();
  _Block_release(v21);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  v25 = v32;
  v24 = v33;
  v23[2] = v22;
  v23[3] = v25;
  v23[4] = v24;
  v43 = sub_100156EB4;
  v44 = v23;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_100080830;
  v42 = &unk_1004C8EC8;
  v26 = _Block_copy(&aBlock);
  v27 = v22;
  v28 = v25;
  v29 = v24;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  v30 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v36 + 8))(v10, v30);
  (*(v34 + 8))(v14, v35);
}

void sub_100150B24(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_errorRetain();
    v4 = a3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v7 = 136315394;
      v8 = [v4 publicKeyIdentifier];
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      sub_100288788(v9, v11);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;
      sub_10006A178(v9, v11);

      v15 = sub_1002FFA0C(v12, v14, &v22);

      *(v7 + 4) = v15;
      *(v7 + 12) = 2080;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = sub_1002FFA0C(v16, v17, &v22);

      *(v7 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to update HUP data for %s %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Endpoint updated with hupData", v20, 2u);
    }
  }
}

void sub_100150E50(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_29:
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (v8[13])(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (v8[1])(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_6;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  [*(Strong + 16) invalidate];
  a1 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  swift_beginAccess();
  v11 = *(a2 + a1);
  v41 = _swiftEmptyArrayStorage;
  if (v11 >> 62)
  {
    goto LABEL_31;
  }

  v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v8 = &unk_100504000;
  v17 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer;

  if (v16)
  {
    v36 = a1;
    v37 = a3;
    v38 = a2;
    a2 = 0;
    a1 = v11 & 0xC000000000000001;
    v7 = v11 & 0xFFFFFFFFFFFFFF8;
    v39 = v11 & 0xFFFFFFFFFFFFFF8;
    v40 = v11 & 0xC000000000000001;
    while (1)
    {
      if (a1)
      {
        a3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v24 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v27 = v41;
          a3 = v37;
          a2 = v38;
          a1 = v36;
          goto LABEL_20;
        }
      }

      else
      {
        if (a2 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        a3 = *(v11 + 8 * a2 + 32);

        v24 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_17;
        }
      }

      v25 = *(a3 + v8[354]);
      v26 = *(v3 + v17);
      if (static UUID.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v18 = v17;
        v19 = v8;
        v20 = v16;
        v21 = v11;
        v22 = v3;
        v23 = v41[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v3 = v22;
        v11 = v21;
        v16 = v20;
        v8 = v19;
        v17 = v18;
        v7 = v39;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        a1 = v40;
      }

      ++a2;
      if (v24 == v16)
      {
        goto LABEL_18;
      }
    }
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_20:

  v28 = *(a2 + a1);
  *(a2 + a1) = v27;

  v29 = qword_1005019E8;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = swift_allocObject();
  *(v30 + 16) = sub_100157158;
  *(v30 + 24) = a3;

  v31 = sub_1000CAA04();

  v32 = sub_1000CA810(v31);

  if (v32)
  {
    sub_100150214();
    v33 = objc_opt_self();
    sub_10004CB20(v33, v32, 2147483652);
  }

  else
  {
    v32 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v32, v34, "Endpoint does not exist", v35, 2u);
    }
  }
}

uint64_t sub_1001512D0(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_38:
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  v13 = *(v5 + 8);
  v12 = v5 + 8;
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v12 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  swift_beginAccess();
  v2 = *(v1 + v12);
  if (v2 >> 62)
  {
LABEL_40:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v37 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;

  if (!v14)
  {
  }

  v34 = v12;
  v35 = v1;
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v1 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  while (!v5)
  {
    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = *(v2 + 8 * v4 + 32);

    v15 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    v16 = *(v8 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    if (static UUID.== infix(_:_:)())
    {
      goto LABEL_16;
    }

    ++v4;
    if (v15 == v14)
    {
    }
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v15 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  v17 = v35;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v36 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v38 = v2;
    *v21 = 136315138;
    v22 = UUID.uuidString.getter();
    v24 = sub_1002FFA0C(v22, v23, &v38);

    *(v21 + 4) = v24;
    a1 = v36;
    _os_log_impl(&_mh_execute_header, v18, v19, "Cancelling HUP for %s", v21, 0xCu);
    sub_1000752F4(v2);

    v17 = v35;
  }

  v25 = v34;
  [v8[2] invalidate];
  v26 = *(v17 + v25);
  v38 = _swiftEmptyArrayStorage;
  v1 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
  if (v26 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    v31 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v27 = 0;
  v5 = v26 & 0xC000000000000001;
  while (2)
  {
    if (v5)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      goto LABEL_27;
    }

    if (v27 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    v2 = *(v26 + 8 * v27 + 32);

    v29 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
LABEL_27:
      v30 = *(v2 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      if (static UUID.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = v38[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v36;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v1 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      }

      ++v27;
      if (v29 == v4)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_32:
  v31 = v38;
  v17 = v35;
LABEL_34:

  v32 = *(v17 + v34);
  *(v17 + v34) = v31;
}

void sub_100151780(char a1, void *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v151) = a8;
  v149 = a6;
  v150 = a7;
  v158 = a5;
  LOBYTE(v11) = a1;
  v12 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v153 = &v142 - v14;
  v15 = type metadata accessor for UUID();
  v152 = *(v15 - 8);
  v16 = *(v152 + 64);
  v17 = __chkstk_darwin(v15);
  v147 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v148 = &v142 - v20;
  __chkstk_darwin(v19);
  v159 = &v142 - v21;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = v23[8];
  __chkstk_darwin(v22);
  v26 = &v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_79:
    swift_once();
  }

  v27 = qword_10051B7F0;
  *v26 = qword_10051B7F0;
  v28 = v23[13];
  LODWORD(v157) = enum case for DispatchPredicate.onQueue(_:);
  v156 = v28;
  (v28)(v26);
  v154 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v155 = v23[1];
  v155(v26, v22);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_81:
    swift_once();
    goto LABEL_11;
  }

  v29 = OBJC_IVAR____TtC10seserviced9AlishaHUP_logger;
  if (v11 != 24)
  {
    if (v11 == 22)
    {

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v162[0] = v33;
        *v32 = 136315138;
        v34 = UUID.uuidString.getter();
        v36 = a4;
        v37 = sub_1002FFA0C(v34, v35, v162);

        *(v32 + 4) = v37;
        a4 = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Received HUP HU_PP from %s", v32, 0xCu);
        sub_1000752F4(v33);
      }

      sub_10014EEBC(a2, a3, 1, a4);
    }

    else
    {
      sub_100069E2C(a2, a3);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();
      sub_10006A178(a2, a3);
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v162[0] = v70;
        *v69 = 16777730;
        *(v69 + 4) = v11;
        *(v69 + 5) = 2080;
        v163[0] = sub_100288788(a2, a3);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v71 = BidirectionalCollection<>.joined(separator:)();
        v73 = v72;

        v74 = sub_1002FFA0C(v71, v73, v162);

        *(v69 + 7) = v74;
        _os_log_impl(&_mh_execute_header, v67, v68, "Ignoring unknown message with identifier %hhu payload %s", v69, 0xFu);
        sub_1000752F4(v70);
      }
    }

    return;
  }

  v143 = a2;
  v144 = a3;

  v146 = v29;
  v11 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();

  v39 = os_log_type_enabled(v11, v38);
  v145 = v15;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v162[0] = v142;
    *v40 = 136315138;
    v41 = UUID.uuidString.getter();
    v43 = a4;
    v44 = sub_1002FFA0C(v41, v42, v162);

    *(v40 + 4) = v44;
    a4 = v43;
    _os_log_impl(&_mh_execute_header, v11, v38, "Received HUP HUP_RS from %s", v40, 0xCu);
    sub_1000752F4(v142);
  }

  v45 = qword_1005019E8;

  if (v45 != -1)
  {
    goto LABEL_81;
  }

LABEL_11:
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100156C20;
  *(v15 + 24) = a4;

  v46 = sub_1000CAA04();

  v47 = sub_1000CA810(v46);

  if (!v47)
  {
LABEL_15:
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "HUP already done", v52, 2u);
    }

    if (qword_100501B60 != -1)
    {
      swift_once();
    }

    v15 = qword_10051B5A0;
    v53 = sub_10013044C(0xD000000000000094, 0x8000000100464740);
    if (v54 >> 60 == 15)
    {
LABEL_85:
      __break(1u);
      return;
    }

    a2 = v53;
    a3 = v54;
    v55 = v154;
    *v26 = v154;
    (v156)(v26, v157, v22);
    v56 = v55;
    v57 = _dispatchPreconditionTest(_:)();
    v155(v26, v22);
    if (v57)
    {
      v58 = v158;
      v59 = v159;
      v60 = v153;
      if (v158)
      {
        sub_1000756F8(v149, v153);
        v61 = v152;
        v62 = v145;
        if ((*(v152 + 48))(v60, 1, v145) != 1)
        {
          v160 = a2;
          (*(v61 + 32))(v59, v60, v62);
          v82 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
          swift_beginAccess();
          v83 = *(v61 + 16);
          v156 = v82;
          v157 = v83;
          v84 = v148;
          v83(v148, &v82[a4], v62);
          v85 = v61;
          v86 = static UUID.== infix(_:_:)();
          v89 = *(v85 + 8);
          v88 = v85 + 8;
          v87 = v89;
          v89(v84, v62);
          if ((v86 & 1) == 0)
          {
            v158 = v87;
            v152 = v88;
            v97 = v147;
            v157(v147, v59, v62);

            v98 = Logger.logObject.getter();
            v99 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              v163[0] = v155;
              *v100 = 136315394;
              v101 = sub_100147FB4(&qword_100504C70, &type metadata accessor for UUID);
              v151 = a4;
              v153 = v101;
              LODWORD(v154) = v99;
              v102 = dispatch thunk of CustomStringConvertible.description.getter();
              v104 = v103;
              v105 = v158;
              (v158)(v97, v62);
              v106 = sub_1002FFA0C(v102, v104, v163);

              *(v100 + 4) = v106;
              *(v100 + 12) = 2080;
              v107 = v148;
              v157(v148, &v156[v151], v62);
              v108 = v98;
              v109 = dispatch thunk of CustomStringConvertible.description.getter();
              v111 = v110;
              v105(v107, v62);
              v112 = sub_1002FFA0C(v109, v111, v163);

              *(v100 + 14) = v112;
              _os_log_impl(&_mh_execute_header, v108, v154, "Connection identifier has changed %s %s", v100, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              v105 = v158;
              (v158)(v97, v62);
            }

            v117 = v160;
            v105(v159, v62);
            v116 = v117;
            goto LABEL_67;
          }

          v87(v59, v62);
          a2 = v160;
          if ((v158 & 2) == 0)
          {
            goto LABEL_27;
          }

LABEL_25:
          if ((v151 & 1) == 0)
          {
            v63 = OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber;
            if (*&a4[OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber] != v150)
            {

              v57 = Logger.logObject.getter();
              v95 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v57, v95))
              {
                v96 = swift_slowAlloc();
                *v96 = 134218240;
                *(v96 + 4) = v150;
                *(v96 + 12) = 2048;
                *(v96 + 14) = *&a4[v63];

                _os_log_impl(&_mh_execute_header, v57, v95, "Sequence number has changed %ld %ld", v96, 0x16u);
              }

              else
              {
LABEL_65:
              }

              goto LABEL_66;
            }
          }

LABEL_27:
          v64 = sub_100239160(6, 23, a2, a3);
          v66 = v65;
          if (qword_100501960 != -1)
          {
            swift_once();
          }

          sub_1000E71A0(v64, v66, a4);
          sub_10006A178(v64, v66);
LABEL_66:
          v116 = a2;
LABEL_67:
          sub_10006A2D0(v116, a3);
          return;
        }

        sub_100156C78(v60);
      }

      if ((v58 & 2) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_83;
  }

  v48 = [v47 hupDone];
  if (v48)
  {
    v49 = v48;
    v15 = [v48 BOOLValue];

    if (v15)
    {

      goto LABEL_15;
    }
  }

  v75 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  v76 = v160;
  swift_beginAccess();
  v57 = *(v76 + v75);
  v142 = v47;
  if (!(v57 >> 62))
  {
    v22 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_35;
  }

LABEL_83:
  v22 = _CocoaArrayWrapper.endIndex.getter();
LABEL_35:
  v23 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;

  if (v22)
  {
    v26 = 0;
    a3 = v57 & 0xC000000000000001;
    a4 = (v57 & 0xFFFFFFFFFFFFFF8);
    a2 = &unk_100504000;
    while (1)
    {
      if (a3)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      else
      {
        if (v26 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_79;
        }

        v15 = *(v57 + 8 * v26 + 32);

        v11 = (v26 + 1);
        if (__OFADD__(v26, 1))
        {
          goto LABEL_45;
        }
      }

      v77 = *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer);
      if (static UUID.== infix(_:_:)())
      {
        break;
      }

      ++v26;
      if (v11 == v22)
      {
        goto LABEL_46;
      }
    }

    v90 = *(v15 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer);
    if (v90)
    {
      sub_1003AE754(v90);
    }

    v91 = v144;
    v92 = v144 >> 62;
    v93 = v143;
    if ((v144 >> 62) > 1)
    {
      if (v92 != 2)
      {
        goto LABEL_73;
      }

      v114 = v143[2];
      v113 = v143[3];
      v115 = __OFSUB__(v113, v114);
      v94 = v113 - v114;
      if (v115)
      {
        __break(1u);
        goto LABEL_65;
      }

LABEL_72:
      if (v94 >= 70)
      {
        v128 = Data.subdata(in:)();
        v159 = v129;
        v160 = v128;
        v156 = Data.subdata(in:)();
        v157 = v130;
        v158 = Data.subdata(in:)();
        v132 = v131;
        v133 = Data.subdata(in:)();
        v135 = v134;
        v136 = *(v15 + 16);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v138 = Data._bridgeToObjectiveC()().super.isa;
        v139 = Data._bridgeToObjectiveC()().super.isa;
        v140 = v157;
        v141 = Data._bridgeToObjectiveC()().super.isa;
        [v136 setupVehicleDataC192:isa r192:v138 c256:v139 r256:v141];

        sub_10006A178(v133, v135);
        sub_10006A178(v158, v132);
        sub_10006A178(v156, v140);
        sub_10006A178(v160, v159);
      }

      else
      {
LABEL_73:
        sub_100069E2C(v143, v144);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.error.getter();
        sub_10006A178(v93, v91);
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v163[0] = v121;
          *v120 = 136315138;
          v161 = sub_100288788(v93, v91);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v122 = BidirectionalCollection<>.joined(separator:)();
          v124 = v123;

          v125 = sub_1002FFA0C(v122, v124, v163);

          *(v120 + 4) = v125;
          _os_log_impl(&_mh_execute_header, v118, v119, "Invalid HUP_RS payload %s", v120, 0xCu);
          sub_1000752F4(v121);
        }

        v126 = v142;
        sub_100150214();
        v127 = objc_opt_self();
        sub_10004CB20(v127, v126, 2147483650);
      }

      return;
    }

    if (!v92)
    {
      v94 = BYTE6(v144);
      goto LABEL_72;
    }

    LODWORD(v94) = HIDWORD(v143) - v143;
    if (!__OFSUB__(HIDWORD(v143), v143))
    {
      v94 = v94;
      goto LABEL_72;
    }

    __break(1u);
    goto LABEL_85;
  }

LABEL_46:

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "No active HUP session", v80, 2u);
  }

  v81 = v142;
  sub_100150214();
}

uint64_t sub_1001529C0(void *a1, uint64_t a2)
{
  v3 = [a1 publicKeyIdentifier];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v8 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v7 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v6 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_10006A2BC(v8, v7);
      sub_10006A2D0(v4, v6);
      return 1;
    }

    goto LABEL_5;
  }

  if (v7 >> 60 == 15)
  {
LABEL_5:
    sub_10006A2BC(v8, v7);
    sub_10006A2D0(v4, v6);
    sub_10006A2D0(v8, v7);
    return 0;
  }

  sub_10006A2BC(v8, v7);
  sub_10006A2BC(v8, v7);
  sub_100069E2C(v4, v6);
  v10 = sub_10008FB4C(v4, v6, v8, v7);
  sub_10006A2D0(v8, v7);
  sub_10006A2D0(v8, v7);
  sub_10006A178(v4, v6);
  sub_10006A2D0(v4, v6);
  return v10 & 1;
}

void sub_100152B0C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_23:
    swift_once();
  }

  v11 = qword_10051B7F0;
  v10->isa = qword_10051B7F0;
  (v7[13])(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = v7[1];
  ++v7;
  v14(v10, v6);
  if (v13)
  {
    v15 = OBJC_IVAR____TtC10seserviced9AlishaHUP_logger;

    v10 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    v17 = os_log_type_enabled(v10, v16);
    v7 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v31 = a1;
    v32 = a2;
    v33 = v15;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315138;
      v20 = UUID.uuidString.getter();
      v22 = sub_1002FFA0C(v20, v21, &v35);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v10, v16, "Received HUP event from %s", v18, 0xCu);
      sub_1000752F4(v19);
    }

    v23 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
    swift_beginAccess();
    v6 = *(v3 + v23);
    v34 = v3;
    if (!(v6 >> 62))
    {
      v24 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:
  a1 = *v7;

  if (v24)
  {
    a2 = 0;
    v3 = v6 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (a2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v10 = *(v6 + 8 * a2 + 32);

        v7 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          goto LABEL_17;
        }
      }

      v25 = *(&v10->isa + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer);
      if (static UUID.== infix(_:_:)())
      {

        v30 = v31;
        v29 = v32;
        sub_100069E2C(v31, v32);
        [(objc_class *)v10[2].isa handleVehicleReportedResult:sub_1000939AC(v30, v29, 0, 0, 0) == 0];

        return;
      }

      ++a2;
    }

    while (v7 != v24);
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "No active HUP session", v28, 2u);
  }
}

uint64_t sub_100152FB0()
{
  v1 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_connectionIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_100153074(void *a1, void *a2)
{
  v2 = *(*a1 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer);
  v3 = *(*a2 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer);
  return static UUID.== infix(_:_:)();
}

uint64_t sub_100153148()
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

uint64_t sub_100153224()
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

uint64_t sub_1001532E4(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v38 = a4;
  v39 = a8;
  v47 = a12;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v43 - 8);
  v18 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v44 = *(v20 - 8);
  v45 = v20;
  v21 = *(v44 + 64);
  __chkstk_darwin(v20);
  v40 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v41 = qword_10051B7F0;
  v23 = swift_allocObject();
  v24 = v47;
  v23[2] = v48;
  v23[3] = a1;
  v23[4] = a2;
  v23[5] = a3;
  v25 = a5;
  v23[6] = a5;
  v23[7] = a6;
  v26 = a6;
  v27 = a7;
  v23[8] = a7;
  v28 = v39;
  v23[9] = v39;
  v23[10] = a9;
  v23[11] = a10;
  v23[12] = a11;
  v37 = a1;
  v29 = v38;
  v23[13] = v24;
  v23[14] = v29;
  aBlock[4] = sub_100157090;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C9058;
  v38 = _Block_copy(aBlock);
  v30 = v48;
  v31 = v37;
  sub_100069E2C(a2, a3);
  sub_10006A2BC(v25, v26);
  sub_10006A2BC(v27, v28);
  sub_10006A2BC(a9, a10);
  sub_10006A2BC(a11, v47);
  v32 = v40;
  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  v33 = v42;
  v34 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v38;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  (*(v46 + 8))(v33, v34);
  (*(v44 + 8))(v32, v45);
}

void sub_100153698(uint8_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, char *a13)
{
  v196 = a8;
  v199 = a6;
  v197 = a5;
  v200 = a4;
  v195 = a3;
  v193 = type metadata accessor for UUID();
  v191 = *(v193 - 8);
  v17 = *(v191 + 64);
  v18 = __chkstk_darwin(v193);
  v186 = v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v187 = v176 - v21;
  __chkstk_darwin(v20);
  v190 = (v176 - v22);
  v189 = type metadata accessor for DispatchPredicate();
  v188 = *(v189 - 8);
  v23 = v188[8];
  __chkstk_darwin(v189);
  v25 = (v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = v176 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = v176 - v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Received HUP delegate requestedPairingWithDeviceAddress for CARWirelessPairingSession", v13, 2u);
  }

  v194 = a7;

  v35 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  swift_beginAccess();
  v198 = v35;
  v36 = *&a1[v35];
  v201 = a1;
  v192 = v32;
  if (v36 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v37)
  {
LABEL_16:

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "No active HUP session", v41, 2u);
    }

    return;
  }

  v38 = 0;
  v184 = a12;
  v182 = a11;
  v185 = a10;
  v183 = a9;
  v181 = a13;
  while (1)
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v202 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = (v38 + 1);
      if (__OFADD__(v38, 1))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_84;
      }

      v202 = *(v36 + 8 * v38 + 32);

      v13 = (v38 + 1);
      if (__OFADD__(v38, 1))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    if (*(v202 + 16) == a2)
    {
      break;
    }

    ++v38;
    if (v13 == v37)
    {
      goto LABEL_16;
    }
  }

  v42 = v202;
  v37 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer;
  v43 = *(v202 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer);
  if (v43)
  {
    sub_1003AE754(v43);
    v42 = v202;
  }

  v44 = qword_1005019E8;

  v13 = v201;
  if (v44 != -1)
  {
    swift_once();
  }

  v45 = swift_allocObject();
  *(v45 + 16) = sub_1001570D0;
  *(v45 + 24) = v42;

  v46 = sub_1000CAA04();

  a2 = sub_1000CA810(v46);

  if (!a2)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Endpoint does not exist or is not paired", v50, 2u);
    }

    [*(v202 + 16) invalidate];
    v38 = *&v13[v198];
    v204 = _swiftEmptyArrayStorage;
    if (v38 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = &unk_100504000;
    v51 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer;

    if (v37)
    {
      a2 = 0;
      v52 = v38 & 0xC000000000000001;
      v53 = v38 & 0xFFFFFFFFFFFFFF8;
      v25 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      v199 = v38;
      v200 = v37;
      do
      {
        if (v52)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a2 >= *(v53 + 16))
          {
            goto LABEL_98;
          }

          v30 = *(v38 + 8 * a2 + 32);
        }

        v13 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          goto LABEL_97;
        }

        v59 = *&v30[OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer];
        v60 = *(v202 + v51) + *v25;
        if (static UUID.== infix(_:_:)())
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v54 = v25;
          v55 = v53;
          v56 = v52;
          v57 = v51;
          v58 = v204[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v51 = v57;
          v52 = v56;
          v53 = v55;
          v25 = v54;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v38 = v199;
          v37 = v200;
        }

        ++a2;
      }

      while (v13 != v37);
      v65 = v204;
      v13 = v201;
    }

    else
    {
      v65 = _swiftEmptyArrayStorage;
    }

    v68 = *&v13[v198];
    *&v13[v198] = v65;

    return;
  }

  v47 = v200 >> 62;
  if ((v200 >> 62) > 1)
  {
    v36 = v199;
    v38 = v197;
    if (v47 != 2)
    {
      goto LABEL_117;
    }

    v62 = *(v195 + 16);
    v61 = *(v195 + 24);
    v63 = __OFSUB__(v61, v62);
    v64 = v61 - v62;
    if (!v63)
    {
      if (v64 != 6)
      {
        goto LABEL_117;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v36 = v199;
  v38 = v197;
  if (v47)
  {
    if (!__OFSUB__(HIDWORD(v195), v195))
    {
      if (HIDWORD(v195) - v195 != 6)
      {
        goto LABEL_117;
      }

      goto LABEL_50;
    }

    goto LABEL_168;
  }

  if (BYTE6(v200) != 6)
  {
    goto LABEL_117;
  }

LABEL_50:
  if (v36 >> 60 != 15)
  {
    v66 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v66 != 2)
      {
LABEL_116:
        sub_10006A2D0(v38, v36);
        goto LABEL_117;
      }

      v70 = *(v38 + 16);
      v69 = *(v38 + 24);
      v67 = v69 - v70;
      if (!__OFSUB__(v69, v70))
      {
        goto LABEL_62;
      }

      __break(1u);
    }

    else if (!v66)
    {
      v67 = BYTE6(v36);
LABEL_63:
      if (v67 != 16 || v196 >> 60 == 15)
      {
        goto LABEL_116;
      }

      v71 = v196 >> 62;
      if ((v196 >> 62) > 1)
      {
        if (v71 != 2)
        {
LABEL_115:
          sub_10006A2D0(v194, v196);
          goto LABEL_116;
        }

        v73 = v194;
        v75 = *(v194 + 16);
        v74 = *(v194 + 24);
        v72 = v74 - v75;
        if (!__OFSUB__(v74, v75))
        {
          goto LABEL_74;
        }

        __break(1u);
      }

      else if (!v71)
      {
        v72 = BYTE6(v196);
LABEL_75:
        if (v72 != 16 || v185 >> 60 == 15)
        {
          goto LABEL_115;
        }

        v76 = v185 >> 62;
        if ((v185 >> 62) > 1)
        {
          if (v76 != 2)
          {
LABEL_114:
            sub_10006A2D0(v183, v185);
            goto LABEL_115;
          }

          v78 = v183;
          v80 = *(v183 + 16);
          v79 = *(v183 + 24);
          v77 = v79 - v80;
          if (!__OFSUB__(v79, v80))
          {
            goto LABEL_87;
          }

          __break(1u);
LABEL_84:
          __break(1u);
        }

        else if (!v76)
        {
          v77 = BYTE6(v185);
LABEL_88:
          if (v77 != 16 || v184 >> 60 == 15)
          {
            goto LABEL_114;
          }

          v81 = v184 >> 62;
          if ((v184 >> 62) > 1)
          {
            if (v81 != 2)
            {
LABEL_113:
              sub_10006A2D0(v182, v184);
              goto LABEL_114;
            }

            v83 = v182;
            v85 = *(v182 + 16);
            v84 = *(v182 + 24);
            v82 = v84 - v85;
            if (!__OFSUB__(v84, v85))
            {
              goto LABEL_101;
            }

            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
          }

          else if (!v81)
          {
            v82 = BYTE6(v184);
            goto LABEL_102;
          }

          v83 = v182;
          if (__OFSUB__(HIDWORD(v182), v182))
          {
            __break(1u);
            return;
          }

          v82 = HIDWORD(v182) - v182;
LABEL_101:
          sub_100069E2C(v83, v184);
LABEL_102:
          if (v82 == 16)
          {
            v180 = a2;
            if (v181 == 1)
            {
              v86 = 512;
            }

            else
            {
              v86 = (v181 == 2) << 10;
            }

            v87 = type metadata accessor for __DataStorage();
            v88 = *(v87 + 48);
            v89 = *(v87 + 52);
            swift_allocObject();
            v90 = __DataStorage.init(capacity:)();
            v208 = 0;
            v209 = (v90 | 0x4000000000000000);
            LOWORD(v203) = v86;
            v206 = &type metadata for UnsafeRawBufferPointer;
            v207 = &protocol witness table for UnsafeRawBufferPointer;
            v204 = &v203;
            v205 = &v203 + 2;
            v91 = sub_1000752B0(&v204, &type metadata for UnsafeRawBufferPointer);
            v93 = *v91;
            v92 = v91[1];
            Data._Representation.append(contentsOf:)();
            sub_1000752F4(&v204);
            Data.append(_:)();
            LOWORD(v203) = v86;
            v206 = &type metadata for UnsafeRawBufferPointer;
            v207 = &protocol witness table for UnsafeRawBufferPointer;
            v204 = &v203;
            v205 = &v203 + 2;
            v94 = sub_1000752B0(&v204, &type metadata for UnsafeRawBufferPointer);
            v96 = *v94;
            v95 = v94[1];
            Data._Representation.append(contentsOf:)();
            sub_1000752F4(&v204);
            Data.append(_:)();
            Data.append(_:)();
            Data.append(_:)();
            Data.append(_:)();
            if (qword_100501B60 != -1)
            {
              swift_once();
            }

            v176[1] = qword_10051B5A0;
            v200 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer;
            v181 = *(v202 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer);
            v177 = v208;
            v178 = v209;
            v97 = v191;
            v98 = *(v191 + 16);
            v99 = v192;
            v100 = v193;
            v195 = v191 + 16;
            v179 = v98;
            v98(v192, (v202 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_connectionIdentifier), v193);
            (*(v97 + 56))(v99, 0, 1, v100);
            if (qword_100501D90 != -1)
            {
              swift_once();
            }

            v101 = qword_10051B7F0;
            *v25 = qword_10051B7F0;
            v102 = v188;
            v103 = v189;
            (v188[13])(v25, enum case for DispatchPredicate.onQueue(_:), v189);
            v104 = v101;
            v105 = _dispatchPreconditionTest(_:)();
            v107 = v102[1];
            v106 = (v102 + 1);
            v107(v25, v103);
            if ((v105 & 1) == 0)
            {
              __break(1u);
              goto LABEL_175;
            }

            sub_1000756F8(v99, v30);
            v13 = v193;
            v108 = (*(v97 + 48))(v30, 1, v193);
            v109 = v190;
            if (v108 == 1)
            {
              sub_100156C78(v30);
              v101 = v181;
              goto LABEL_139;
            }

            goto LABEL_137;
          }

          goto LABEL_113;
        }

        v78 = v183;
        if (__OFSUB__(HIDWORD(v183), v183))
        {
          goto LABEL_173;
        }

        v77 = HIDWORD(v183) - v183;
LABEL_87:
        sub_100069E2C(v78, v185);
        goto LABEL_88;
      }

      v73 = v194;
      if (__OFSUB__(HIDWORD(v194), v194))
      {
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
      }

      v72 = HIDWORD(v194) - v194;
LABEL_74:
      sub_100069E2C(v73, v196);
      goto LABEL_75;
    }

    if (__OFSUB__(HIDWORD(v38), v38))
    {
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    v67 = HIDWORD(v38) - v38;
LABEL_62:
    sub_100069E2C(v38, v36);
    goto LABEL_63;
  }

LABEL_117:
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&_mh_execute_header, v110, v111, "Invalid parameters", v112, 2u);
  }

  [*(v202 + 16) invalidate];
  v113 = *&v13[v198];
  v204 = _swiftEmptyArrayStorage;
  if (v113 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v37 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer;

  if (v37)
  {
    v180 = a2;
    v115 = 0;
    v116 = v113 & 0xC000000000000001;
    v97 = v113 & 0xFFFFFFFFFFFFFF8;
    v109 = &OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v199 = v113;
    v200 = v37;
    while (1)
    {
      if (v116)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v115 >= *(v97 + 16))
        {
          goto LABEL_136;
        }

        v30 = *(v113 + 8 * v115 + 32);
      }

      v13 = (v115 + 1);
      if (__OFADD__(v115, 1))
      {
        break;
      }

      v122 = *&v30[OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer];
      v123 = *(v202 + v114) + *v109;
      if (static UUID.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v117 = v109;
        v118 = v97;
        v119 = v116;
        v120 = v114;
        v121 = v204[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v114 = v120;
        v116 = v119;
        v97 = v118;
        v109 = v117;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v113 = v199;
        v37 = v200;
      }

      ++v115;
      if (v13 == v37)
      {
        v124 = v204;
        v13 = v201;
        a2 = v180;
        goto LABEL_134;
      }
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    (*(v97 + 32))(v109, v30, v13);
    v127 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
    v128 = v181;
    swift_beginAccess();
    v129 = v187;
    v179(v187, &v128[v127], v13);
    v130 = static UUID.== infix(_:_:)();
    v131 = v97 + 8;
    v132 = *(v97 + 8);
    v132(v129, v13);
    if (v130)
    {
      v132(v109, v13);
      v101 = v128;
LABEL_139:
      v106 = sub_100239160(6, 23, v177, v178);
      v97 = v133;
      if (qword_100501960 == -1)
      {
LABEL_140:
        sub_1000E71A0(v106, v97, v101);
        sub_10006A178(v106, v97);
        sub_100156C78(v192);
LABEL_161:
        v171 = v199;
        v172 = v197;
        v173 = *(v202 + v37);
        v174 = v180;
        if (v173)
        {
          v175 = v173;
          sub_1003AE618(v175, 300.0);
          sub_10006A2D0(v172, v171);
          sub_10006A2D0(v194, v196);
          sub_10006A2D0(v183, v185);
        }

        else
        {
          sub_10006A2D0(v197, v199);
          sub_10006A2D0(v194, v196);
          sub_10006A2D0(v183, v185);
        }

        sub_10006A2D0(v182, v184);

        sub_10006A178(v208, v209);
        return;
      }

LABEL_175:
      swift_once();
      goto LABEL_140;
    }

    v191 = v131;
    v134 = v186;
    v179(v186, v109, v13);

    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v189 = v137;
      v188 = swift_slowAlloc();
      v203 = v188;
      *v137 = 136315394;
      sub_100147FB4(&qword_100504C70, &type metadata accessor for UUID);
      v178 = v135;
      LODWORD(v177) = v136;
      v138 = dispatch thunk of CustomStringConvertible.description.getter();
      v140 = v139;
      v132(v134, v193);
      v141 = sub_1002FFA0C(v138, v140, &v203);
      v109 = v190;
      v13 = v193;

      v142 = v189;
      *(v189 + 4) = v141;
      *(v142 + 12) = 2080;
      v143 = &v128[v127];
      v144 = v187;
      v179(v187, v143, v13);
      v145 = dispatch thunk of CustomStringConvertible.description.getter();
      v147 = v146;
      v132(v144, v13);
      v148 = sub_1002FFA0C(v145, v147, &v203);

      v149 = v189;
      *(v189 + 14) = v148;
      v150 = v178;
      _os_log_impl(&_mh_execute_header, v178, v177, "Connection identifier has changed %s %s", v149, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v132(v134, v13);
    }

    sub_100079E24();
    v151 = swift_allocError();
    *v152 = 2;
    swift_willThrow();
    v132(v109, v13);
    sub_100156C78(v192);
    swift_errorRetain();
    v153 = v201;
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v203 = v157;
      *v156 = 136315138;
      swift_getErrorValue();
      v158 = Error.localizedDescription.getter();
      v160 = sub_1002FFA0C(v158, v159, &v203);

      *(v156 + 4) = v160;
      v153 = v201;
      _os_log_impl(&_mh_execute_header, v154, v155, "Failed to send HUP_RQ %s", v156, 0xCu);
      sub_1000752F4(v157);
    }

    [*(v202 + 16) invalidate];
    v161 = *&v153[v198];
    v203 = _swiftEmptyArrayStorage;
    v193 = v151;
    if (v161 >> 62)
    {
      v162 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v162 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v162)
    {
LABEL_160:

      v170 = *&v153[v198];
      *&v153[v198] = v203;

      goto LABEL_161;
    }

    v163 = 0;
    v164 = v161 & 0xFFFFFFFFFFFFFF8;
    v195 = v161 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v161 & 0xC000000000000001) != 0)
      {
        v166 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v163 >= *(v164 + 16))
        {
          goto LABEL_170;
        }

        v166 = *(v161 + 8 * v163 + 32);
      }

      v167 = v163 + 1;
      if (__OFADD__(v163, 1))
      {
        goto LABEL_169;
      }

      v168 = *(v166 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer);
      v169 = *(v202 + v200) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      if (static UUID.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v165 = v203[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v153 = v201;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v164 = v195;
      }

      ++v163;
      if (v167 == v162)
      {
        goto LABEL_160;
      }
    }
  }

  v124 = _swiftEmptyArrayStorage;
LABEL_134:

  v125 = *&v13[v198];
  *&v13[v198] = v124;

  sub_100150214();
  v126 = objc_opt_self();
  sub_10004CB20(v126, a2, 2147483651);
}

uint64_t sub_100154DC0(void *a1, uint64_t a2)
{
  v4 = [a1 publicKeyIdentifier];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(a2 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v10 = *v8;
  v9 = v8[1];
  if (v7 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10006A2BC(v10, v9);
      sub_10006A2D0(v5, v7);
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (v9 >> 60 == 15)
  {
LABEL_5:
    sub_10006A2BC(v10, v9);
    sub_10006A2D0(v5, v7);
    sub_10006A2D0(v10, v9);
    return 0;
  }

  sub_10006A2BC(v10, v9);
  sub_10006A2BC(v10, v9);
  sub_100069E2C(v5, v7);
  v12 = sub_10008FB4C(v5, v7, v10, v9);
  sub_10006A2D0(v10, v9);
  sub_10006A2D0(v10, v9);
  sub_10006A178(v5, v7);
  sub_10006A2D0(v5, v7);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  result = [a1 bleUUID];
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_100155114(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19[1] = qword_10051B7F0;
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a2;
  v14[4] = a1;
  aBlock[4] = sub_100156FD4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8FE0;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  v17 = a1;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v20);
}

void sub_100155420(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v121 = v6;
  v122 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v114 = v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v115 = v111 - v12;
  __chkstk_darwin(v11);
  v14 = v111 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v117 = (v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v123 = v111 - v24;
  v25 = OBJC_IVAR____TtC10seserviced9AlishaHUP_logger;
  v128 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v28 = os_log_type_enabled(v26, v27);
  v125 = v25;
  v116 = v14;
  v119 = v16;
  v120 = v15;
  v118 = v19;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v131 = v30;
    *v29 = 136315138;
    v31 = a2;
    v130 = a2;
    type metadata accessor for CARWirelessPairingResult(0);
    v32 = String.init<A>(describing:)();
    v34 = sub_1002FFA0C(v32, v33, &v131);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v26, v27, "Received HUP delegate completedWithResult %s", v29, 0xCu);
    sub_1000752F4(v30);
  }

  else
  {
    v31 = a2;
  }

  [a3 invalidate];
  v35 = OBJC_IVAR____TtC10seserviced9AlishaHUP_sessions;
  v36 = v128;
  swift_beginAccess();
  v124 = v35;
  v37 = *(v36 + v35);
  if (v37 >> 62)
  {
LABEL_65:
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v38)
  {
    goto LABEL_17;
  }

  v39 = 0;
  while (1)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "No active HUP session", v44, 2u);
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v40 = *(v37 + 8 * v39 + 32);

      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_16;
      }
    }

    if (*(v40 + 16) == a3)
    {
      break;
    }

    ++v39;
    if (v41 == v38)
    {
      goto LABEL_17;
    }
  }

  v45 = *(v40 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_timer);
  if (v45)
  {
    sub_1003AE754(v45);
  }

  v37 = *(v128 + v124);
  v130 = _swiftEmptyArrayStorage;
  v46 = v31;
  if (v37 >> 62)
  {
    v47 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v47 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer;

  v113 = v31;
  if (!v47)
  {
    v57 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v49 = 0;
  v50 = v37 & 0xC000000000000001;
  a3 = (v37 & 0xFFFFFFFFFFFFFF8);
  v126 = v37 & 0xC000000000000001;
  v127 = v40;
  while (v50)
  {
    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v31 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_34;
    }

LABEL_30:
    v55 = *(v54 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer);
    v56 = *(v40 + v48);
    if (static UUID.== infix(_:_:)())
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v51 = a3;
      v52 = v48;
      v53 = v130[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v48 = v52;
      a3 = v51;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v50 = v126;
      v40 = v127;
    }

    ++v49;
    if (v31 == v47)
    {
      goto LABEL_35;
    }
  }

  if (v49 >= a3[2])
  {
    goto LABEL_64;
  }

  v54 = *(v37 + 8 * v49 + 32);

  v31 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {
    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  v57 = v130;
  v46 = v113;
LABEL_37:

  v58 = *(v128 + v124);
  *(v128 + v124) = v57;

  if (!v46 || *(v40 + 24) != 1)
  {
    goto LABEL_55;
  }

  if (qword_100501B60 != -1)
  {
    swift_once();
  }

  v59 = qword_10051B5A0;
  v60 = sub_10013044C(0xD000000000000094, 0x8000000100464740);
  v62 = v121;
  if (v61 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v63 = v61;
    v124 = v59;
    v126 = v60;
    v64 = *(v40 + v48);
    v65 = v122;
    v66 = v123;
    v67 = v122 + 16;
    v68 = *(v122 + 16);
    v68(v123, v40 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_connectionIdentifier, v121);
    (*(v65 + 56))(v66, 0, 1, v62);
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v69 = qword_10051B7F0;
    v71 = v118;
    v70 = v119;
    *v118 = qword_10051B7F0;
    v72 = v120;
    (*(v70 + 104))(v71, enum case for DispatchPredicate.onQueue(_:), v120);
    v73 = v69;
    v74 = _dispatchPreconditionTest(_:)();
    v75 = *(v70 + 8);
    v46 = v70 + 8;
    v75(v71, v72);
    if ((v74 & 1) == 0)
    {
      __break(1u);
      goto LABEL_68;
    }

    v76 = v117;
    sub_1000756F8(v123, v117);
    v78 = v121;
    v77 = v122;
    if ((*(v122 + 48))(v76, 1, v121) == 1)
    {
      sub_100156C78(v76);
      goto LABEL_49;
    }

    v120 = v63;
    v79 = v116;
    (*(v77 + 32))(v116, v76, v78);
    v80 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
    swift_beginAccess();
    v119 = v80;
    v81 = v115;
    v68(v115, v64 + v80, v78);
    v82 = v77;
    v83 = static UUID.== infix(_:_:)();
    v86 = *(v82 + 8);
    v84 = v82 + 8;
    v85 = v86;
    v86(v81, v78);
    if (v83)
    {
      v85(v79, v78);
      v63 = v120;
LABEL_49:
      v71 = v126;
      v69 = sub_100239160(6, 23, v126, v63);
      v67 = v87;
      v46 = v113;
      if (qword_100501960 == -1)
      {
LABEL_50:
        sub_1000E71A0(v69, v67, v64);
        sub_10006A178(v69, v67);
        sub_10006A2D0(v71, v63);
        sub_100156C78(v123);
        goto LABEL_55;
      }

LABEL_68:
      swift_once();
      goto LABEL_50;
    }

    v118 = v85;
    v122 = v84;
    v88 = v114;
    v68(v114, v79, v78);

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v117 = v89;
      v92 = v91;
      v124 = swift_slowAlloc();
      v129 = v124;
      *v92 = 136315394;
      v111[1] = sub_100147FB4(&qword_100504C70, &type metadata accessor for UUID);
      v112 = v90;
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      v96 = v118;
      v118(v88, v78);
      v97 = sub_1002FFA0C(v93, v95, &v129);

      *(v92 + 4) = v97;
      *(v92 + 12) = 2080;
      v98 = v115;
      v68(v115, v64 + v119, v78);
      v99 = v96;
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v101;
      v99(v98, v78);
      v103 = sub_1002FFA0C(v100, v102, &v129);

      *(v92 + 14) = v103;
      v104 = v117;
      _os_log_impl(&_mh_execute_header, v117, v112, "Connection identifier has changed %s %s", v92, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v99 = v118;
      v118(v88, v78);
    }

    sub_10006A2D0(v126, v120);
    v46 = v113;
    v99(v116, v78);
    sub_100156C78(v123);
LABEL_55:
    v105 = qword_1005019E8;

    if (v105 != -1)
    {
      swift_once();
    }

    v106 = swift_allocObject();
    *(v106 + 16) = sub_100156FE0;
    *(v106 + 24) = v40;

    v107 = sub_1000CAA04();

    v42 = sub_1000CA810(v107);

    if (v42)
    {
      sub_100150214();
      v108 = objc_opt_self();
      sub_10004CB20(v108, v42, v46);
    }

    else
    {
      v42 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&_mh_execute_header, v42, v109, "No endpoint found", v110, 2u);
      }
    }

LABEL_62:
  }
}

uint64_t sub_10015611C(void *a1, uint64_t a2)
{
  v3 = [a1 publicKeyIdentifier];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = (*(a2 + OBJC_IVAR____TtCC10seserviced9AlishaHUPP33_064FC107EADA2071ABEBB0503A0F3D3810HUPSession_peer) + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v9 = *v7;
  v8 = v7[1];
  if (v6 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_10006A2BC(v9, v8);
      sub_10006A2D0(v4, v6);
      return 1;
    }

    goto LABEL_5;
  }

  if (v8 >> 60 == 15)
  {
LABEL_5:
    sub_10006A2BC(v9, v8);
    sub_10006A2D0(v4, v6);
    sub_10006A2D0(v9, v8);
    return 0;
  }

  sub_10006A2BC(v9, v8);
  sub_10006A2BC(v9, v8);
  sub_100069E2C(v4, v6);
  v11 = sub_10008FB4C(v4, v6, v9, v8);
  sub_10006A2D0(v9, v8);
  sub_10006A2D0(v9, v8);
  sub_10006A178(v4, v6);
  sub_10006A2D0(v4, v6);
  return v11 & 1;
}

uint64_t sub_1001562E4(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 publicKeyIdentifier];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  aBlock = sub_100288788(v11, v13);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  BidirectionalCollection<>.joined(separator:)();
  sub_10006A178(v11, v13);

  v14 = String._bridgeToObjectiveC()();

  v31 = sub_100156744;
  v32 = 0;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1000A409C;
  v30 = &unk_1004C8F40;
  v15 = _Block_copy(&aBlock);
  v16 = SESEndPointUpdateWithBlock();
  _Block_release(v15);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  v31 = sub_100156F40;
  v32 = v17;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100080830;
  v30 = &unk_1004C8F90;
  v18 = _Block_copy(&aBlock);
  v19 = v16;
  v20 = a1;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100147FB4(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v5, v2);
  (*(v23 + 8))(v9, v24);
}

void sub_100156744(void *a1)
{
  sub_100156F48();
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  [a1 setHupDone:isa];
}

uint64_t sub_1001567AC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v35[-v10];
  if (a1)
  {
    swift_errorRetain();
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v5 + 16))(v9, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v4);
    swift_errorRetain();
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v15 = 136315394;
      v16 = [v12 publicKeyIdentifier];
      v37 = v13;
      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v40 = sub_100288788(v18, v20);
      v36 = v14;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      v38 = v4;
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v21 = BidirectionalCollection<>.joined(separator:)();
      v23 = v22;
      sub_10006A178(v18, v20);

      v24 = sub_1002FFA0C(v21, v23, &v41);

      *(v15 + 4) = v24;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_1002FFA0C(v25, v26, &v41);

      *(v15 + 14) = v27;
      v28 = v37;
      _os_log_impl(&_mh_execute_header, v37, v36, "Failed to update HUP done for %s %s", v15, 0x16u);
      swift_arrayDestroy();

      return (*(v5 + 8))(v9, v38);
    }

    v33 = *(v5 + 8);
    v34 = v9;
  }

  else
  {
    if (qword_100501D88 != -1)
    {
      swift_once();
    }

    (*(v5 + 16))(v11, qword_10051B7E8 + OBJC_IVAR____TtC10seserviced3DSK_logger, v4);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Endpoint updated with hupDone", v32, 2u);
    }

    v33 = *(v5 + 8);
    v34 = v11;
  }

  return v33(v34, v4);
}

uint64_t sub_100156C40()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100156C78(uint64_t a1)
{
  v2 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100156CE0()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100156D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100156D4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100156D84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100156DD8()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100156E10(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 setHupData:isa];
}

uint64_t sub_100156E6C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100156EC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100156F00()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100156F48()
{
  result = qword_100504C80;
  if (!qword_100504C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100504C80);
  }

  return result;
}

uint64_t sub_100156F94()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100156FE8()
{
  sub_10006A178(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_10006A178(*(v0 + 48), v1);
  }

  v2 = *(v0 + 72);
  if (v2 >> 60 != 15)
  {
    sub_10006A178(*(v0 + 64), v2);
  }

  v3 = *(v0 + 88);
  if (v3 >> 60 != 15)
  {
    sub_10006A178(*(v0 + 80), v3);
  }

  v4 = *(v0 + 104);
  if (v4 >> 60 != 15)
  {
    sub_10006A178(*(v0 + 96), v4);
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1001573F4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001574C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100157598(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100157664()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_10051B2F0);
  sub_1000958E4(v0, qword_10051B2F0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001576D8()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  sub_1000B6A94(v0, qword_100504C88);
  sub_1000958E4(v0, qword_100504C88);
  return UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
}

uint64_t sub_1001577D0()
{
  v1 = v0[19];
  v2._object = 0xEE006D2D646D2D69;
  v2._countAndFlagsBits = 0x2D656C7070612D78;
  if (!URLRequest.value(forHTTPHeaderField:)(v2).value._object)
  {
    goto LABEL_7;
  }

  v3 = v0[19];

  v4._object = 0xEC000000646D2D69;
  v4._countAndFlagsBits = 0x2D656C7070612D78;
  if (!URLRequest.value(forHTTPHeaderField:)(v4).value._object)
  {
    goto LABEL_7;
  }

  v5 = v0[19];

  v6._object = 0x8000000100464A70;
  v6._countAndFlagsBits = 0xD000000000000012;
  if (URLRequest.value(forHTTPHeaderField:)(v6).value._object)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
LABEL_7:
    v9 = [objc_allocWithZone(AKAnisetteProvisioningController) init];
    v0[20] = v9;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001579C4;
    v10 = swift_continuation_init();
    v0[17] = sub_100068FC4(&qword_100504D58, &qword_10040C020);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001573F4;
    v0[13] = &unk_1004C9158;
    v0[14] = v10;
    [v9 anisetteDataWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1001579C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100157DB4;
  }

  else
  {
    v3 = sub_100157AD4;
  }

  return _swift_task_switch(v3, 0, 0);
}

id sub_100157AD4()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    result = [*(v0 + 144) machineID];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = *(v0 + 152);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(v0 + 80) = v5;
    *(v0 + 88) = v7;
    v8.value._countAndFlagsBits = String.init<A>(_:)();
    v9._object = 0xEE006D2D646D2D69;
    v9._countAndFlagsBits = 0x2D656C7070612D78;
    URLRequest.setValue(_:forHTTPHeaderField:)(v8, v9);

    v10 = [v1 oneTimePassword];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v22 = *(v0 + 152);
    v23 = *(v0 + 160);
    v24._object = 0xEC000000646D2D69;
    v25.value._countAndFlagsBits = v12;
    v25.value._object = v14;
    v24._countAndFlagsBits = 0x2D656C7070612D78;
    URLRequest.setValue(_:forHTTPHeaderField:)(v25, v24);

    *(v0 + 80) = [v1 routingInfo];
    v26.value._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v27._object = 0x8000000100464A70;
    v27._countAndFlagsBits = 0xD000000000000012;
    URLRequest.setValue(_:forHTTPHeaderField:)(v26, v27);

    v21 = *(v0 + 8);
  }

  else
  {
    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B2F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Anisette data is nil", v18, 2u);
    }

    v19 = *(v0 + 160);

    sub_10015CC60();
    swift_allocError();
    *v20 = xmmword_10040BF80;
    *(v20 + 16) = 5;
    swift_willThrow();

    v21 = *(v0 + 8);
  }

  return v21();
}

uint64_t sub_100157DB4()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[21];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100157E24(uint64_t a1)
{
  v1[22] = a1;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_100157EF0, 0, 0);
}

uint64_t sub_100157EF0()
{
  v1 = *(v0 + 176);
  v2._countAndFlagsBits = 0x7A69726F68747561;
  v2._object = 0xED00006E6F697461;
  if (URLRequest.value(forHTTPHeaderField:)(v2).value._object)
  {

    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B2F0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Auth header already exists", v6, 2u);
    }

LABEL_15:
    v18 = *(v0 + 200);

    v19 = *(v0 + 8);
LABEL_16:

    return v19();
  }

  if (qword_100501A00 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 184);
  v10 = sub_1000958E4(v9, qword_100504C88);
  (*(v8 + 16))(v7, v10, v9);
  UserDefaultBacked.wrappedValue.getter();
  (*(v8 + 8))(v7, v9);
  if (*(v0 + 256))
  {
    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_10051B2F0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Skipping AuthKit header", v14, 2u);
    }

    v15 = *(v0 + 176);

    v16.value._countAndFlagsBits = 0xD00000000000001ALL;
    v16.value._object = 0x80000001004649E0;
    v17._countAndFlagsBits = 0x7A69726F68747561;
    v17._object = 0xED00006E6F697461;
    URLRequest.setValue(_:forHTTPHeaderField:)(v16, v17);
    goto LABEL_15;
  }

  v21 = [objc_opt_self() defaultStore];
  *(v0 + 208) = v21;
  if (!v21)
  {
LABEL_28:
    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000958E4(v32, qword_10051B2F0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Unable to get AIDA information", v35, 2u);
    }

    sub_10015CC60();
    swift_allocError();
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 5;
    swift_willThrow();
    v37 = *(v0 + 200);

    v19 = *(v0 + 8);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v21 aida_accountForPrimaryiCloudAccount];
  *(v0 + 216) = v23;
  if (!v23)
  {
    v24 = v22;
LABEL_27:

    goto LABEL_28;
  }

  v24 = v23;
  v25 = [v23 aida_alternateDSID];
  if (!v25)
  {

    goto LABEL_27;
  }

  v26 = v25;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  *(v0 + 160) = v27;
  *(v0 + 168) = v28;

  *(v0 + 224) = v29;
  v30 = String._bridgeToObjectiveC()();
  *(v0 + 232) = v30;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100158474;
  v31 = swift_continuation_init();
  *(v0 + 136) = sub_100068FC4(&qword_100504D40, &unk_10040BFF8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001574C4;
  *(v0 + 104) = &unk_1004C9108;
  *(v0 + 112) = v31;
  [v24 aida_tokenForService:v30 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100158474()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  if (v3)
  {
    v4 = v1[28];

    v5 = sub_1001586E0;
  }

  else
  {
    v1[31] = v1[20];
    v5 = sub_100158594;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100158594()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 216);
  v14 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  sub_100068FC4(&qword_100502440, &unk_10040B240);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100409900;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_1000959BC();
  *(v7 + 32) = v1;
  *(v7 + 40) = v2;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 64) = v8;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v9.value._countAndFlagsBits = String.init(format:_:)();
  v10._countAndFlagsBits = 0x7A69726F68747561;
  v10._object = 0xED00006E6F697461;
  URLRequest.setValue(_:forHTTPHeaderField:)(v9, v10);

  v11 = *(v0 + 200);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001586E0()
{
  v1 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  if (qword_1005019F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to get AIDA token", v6, 2u);
  }

  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];

  sub_10015CC60();
  swift_allocError();
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 5;
  swift_willThrow();

  v11 = v0[25];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10015885C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_10015887C, 0, 0);
}

uint64_t sub_10015887C()
{
  v1 = [objc_opt_self() defaultStore];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 aida_accountForPrimaryiCloudAccount];
    v0[22] = v3;
    if (v3)
    {
      v4 = v3;
      sub_100068FC4(&qword_100504D48, &qword_10040C010);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1004098F0;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 32) = 0xD000000000000014;
      *(v5 + 40) = 0x8000000100464980;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v0[23] = isa;

      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_100158B98;
      v7 = swift_continuation_init();
      v0[17] = sub_100068FC4(&qword_100504D50, &qword_10040C018);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100157598;
      v0[13] = &unk_1004C9130;
      v0[14] = v7;
      [v2 aida_renewCredentialsForAccount:v4 services:isa force:1 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }
  }

  if (qword_1005019F8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_10051B2F0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unable to get AIDA information", v11, 2u);
  }

  sub_10015CC60();
  swift_allocError();
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 5;
  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_100158B98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_10015909C;
  }

  else
  {
    v3 = sub_100158CA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100158CA8()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_10051B2F0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_17;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Grandslam token renewal failed";
    goto LABEL_16;
  }

  if (qword_1005019F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_10051B2F0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 160);
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = v10;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 3;
    _os_log_impl(&_mh_execute_header, v8, v9, "Grandslam token renewal successful, trying again %ld out of %ld", v11, 0x16u);
  }

  v12 = *(v0 + 176);

  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 aida_tokenWithExpiryCheckForService:v13];

  if (v14)
  {
    v15 = *(v0 + 176);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v15 aida_alternateDSID];
    if (v19)
    {
      v20 = *(v0 + 176);
      v35 = *(v0 + 168);
      v21 = *(v0 + 152);
      v22 = v19;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100409900;
      *(v26 + 56) = &type metadata for String;
      v27 = sub_1000959BC();
      *(v26 + 32) = v23;
      *(v26 + 40) = v25;
      *(v26 + 96) = &type metadata for String;
      *(v26 + 104) = v27;
      *(v26 + 64) = v27;
      *(v26 + 72) = v16;
      *(v26 + 80) = v18;
      v28.value._countAndFlagsBits = String.init(format:_:)();
      v29._countAndFlagsBits = 0x7A69726F68747561;
      v29._object = 0xED00006E6F697461;
      URLRequest.setValue(_:forHTTPHeaderField:)(v28, v29);

      v30 = *(v0 + 8);
      goto LABEL_18;
    }
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Unable to get aida info after renewal";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);
  }

LABEL_17:
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);

  sub_10015CC60();
  swift_allocError();
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = 5;
  swift_willThrow();

  v30 = *(v0 + 8);
LABEL_18:

  return v30();
}

uint64_t sub_10015909C()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  if (qword_1005019F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to renew credentials with AIDA", v6, 2u);
  }

  v7 = v0[24];
  v9 = v0[21];
  v8 = v0[22];

  sub_10015CC60();
  swift_allocError();
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 5;
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100159210(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 80) = a2;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_10015923C, 0, 0);
}

uint64_t sub_10015923C()
{
  v62 = v0;
  v1 = *(v0 + 48);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 56) = v2;
  v3 = qword_1005019F8;
  if (v2)
  {
    v4 = v2;
    v5 = *(v0 + 48);
    if (v3 == -1)
    {
      v6 = v5;
    }

    else
    {
      swift_once();
      v6 = *(v0 + 48);
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_10051B2F0);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 48);
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v4 statusCode];

      _os_log_impl(&_mh_execute_header, v9, v10, "Response Status : %ld", v12, 0xCu);
    }

    else
    {

      v9 = *(v0 + 48);
    }

    v34 = *(v0 + 32);
    v33 = *(v0 + 40);

    sub_100069E2C(v34, v33);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    sub_10006A178(v34, v33);
    if (os_log_type_enabled(v35, v36))
    {
      v38 = *(v0 + 32);
      v37 = *(v0 + 40);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v61[0] = v40;
      *v39 = 136315138;
      v41 = Data.base64EncodedString(options:)(0);
      v42 = sub_1002FFA0C(v41._countAndFlagsBits, v41._object, v61);

      *(v39 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Response Data   : %s", v39, 0xCu);
      sub_1000752F4(v40);
    }

    v43 = [v4 statusCode];
    if ((v43 - 200) <= 0x62)
    {
      v44 = *(v0 + 48);
      sub_100069E2C(*(v0 + 32), *(v0 + 40));

      v45 = *(v0 + 8);
      v46 = *(v0 + 32);
      v47 = *(v0 + 40);

      return v45(v46, v47);
    }

    if (v43 == 401)
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 24);
        v52 = swift_slowAlloc();
        *v52 = 134218240;
        *(v52 + 4) = v51;
        *(v52 + 12) = 2048;
        *(v52 + 14) = 3;
        _os_log_impl(&_mh_execute_header, v49, v50, "GS Token invalid: attempt %ld of %ld", v52, 0x16u);
      }

      v53 = *(v0 + 80);

      if (v53 == 1)
      {
        v54 = swift_task_alloc();
        *(v0 + 64) = v54;
        *v54 = v0;
        v54[1] = sub_100159844;
        v56 = *(v0 + 16);
        v55 = *(v0 + 24);

        return sub_10015885C(v56, v55);
      }
    }

    v57 = *(v0 + 48);
    v58 = [*(v0 + 56) statusCode];
    sub_10015CC60();
    swift_allocError();
    *v59 = v58;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 48);
    v14 = type metadata accessor for Logger();
    sub_1000958E4(v14, qword_10051B2F0);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 48);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v61[0] = v20;
      *v19 = 136315138;
      v21 = v18;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_1002FFA0C(v23, v25, v61);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "Invalid or nil HTTP response? %s", v19, 0xCu);
      sub_1000752F4(v20);
    }

    v27 = *(v0 + 48);
    v28 = [v27 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    sub_10015CC60();
    swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v31;
    *(v32 + 16) = 1;
    swift_willThrow();
  }

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_100159844()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100159A0C;
  }

  else
  {
    v3 = sub_100159958;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100159958()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 56) statusCode];
  sub_10015CC60();
  swift_allocError();
  *v3 = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100159A0C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100159A70(uint64_t a1, char a2)
{
  *(v2 + 249) = a2;
  *(v2 + 360) = a1;
  v3 = type metadata accessor for URL();
  *(v2 + 368) = v3;
  v4 = *(v3 - 8);
  *(v2 + 376) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 384) = swift_task_alloc();
  v6 = *(*(sub_100068FC4(&unk_10050BEA0, &unk_10040F450) - 8) + 64) + 15;
  *(v2 + 392) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v2 + 400) = v7;
  v8 = *(v7 - 8);
  *(v2 + 408) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 416) = swift_task_alloc();
  v10 = type metadata accessor for URLRequest();
  *(v2 + 424) = v10;
  v11 = *(v10 - 8);
  *(v2 + 432) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 440) = swift_task_alloc();
  *(v2 + 448) = swift_task_alloc();

  return _swift_task_switch(sub_100159C30, 0, 0);
}

uint64_t sub_100159C30()
{
  v1 = v0[56];
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[45];
  v5 = *(v3 + 16);
  v0[57] = v5;
  v0[58] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = swift_task_alloc();
  v0[59] = v6;
  *v6 = v0;
  v6[1] = sub_100159CEC;
  v7 = v0[56];

  return sub_1001577B0(v7);
}

uint64_t sub_100159CEC()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_10015A4F4;
  }

  else
  {
    v3 = sub_100159E00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100159E00()
{
  v1 = *(v0 + 408);
  *(v0 + 488) = 0;
  *(v0 + 496) = 1;
  if (*(v0 + 249) == 1)
  {
    v2 = *(v0 + 448);
    swift_beginAccess();
    v3 = swift_task_alloc();
    *(v0 + 504) = v3;
    *v3 = v0;
    v3[1] = sub_10015A5AC;
    v4 = *(v0 + 448);

    return sub_100157E24(v4);
  }

  else
  {
    v6 = *(v0 + 448);
    v7 = *(v0 + 416);
    v8 = *(v0 + 400);
    UUID.init()();
    v9 = UUID.uuidString.getter();
    v11 = v10;
    (*(v1 + 8))(v7, v8);
    *(v0 + 256) = v9;
    *(v0 + 264) = v11;
    *(v0 + 272) = 45;
    *(v0 + 280) = 0xE100000000000000;
    *(v0 + 288) = 0;
    *(v0 + 296) = 0xE000000000000000;
    v66 = sub_10012512C();
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v14 = v13;

    swift_beginAccess();
    v15._countAndFlagsBits = 0x7365757165722D78;
    v15._object = 0xEC00000064692D74;
    v16.value._countAndFlagsBits = v12;
    v16.value._object = v14;
    URLRequest.setValue(_:forHTTPHeaderField:)(v16, v15);
    swift_endAccess();

    if (qword_1005019F8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    *(v0 + 520) = sub_1000958E4(v17, qword_10051B2F0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 448);
      v21 = *(v0 + 392);
      v22 = *(v0 + 368);
      v23 = *(v0 + 376);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *(v0 + 352) = v25;
      *v24 = 136315138;
      swift_beginAccess();
      URLRequest.url.getter();
      v26 = (*(v23 + 48))(v21, 1, v22);
      v27 = *(v0 + 392);
      if (v26)
      {
        sub_10015CD2C(*(v0 + 392));
        swift_endAccess();
        v28 = 0xE400000000000000;
        v29 = 1701736302;
      }

      else
      {
        v31 = *(v0 + 376);
        v30 = *(v0 + 384);
        v32 = *(v0 + 368);
        (*(v31 + 16))(v30, *(v0 + 392), v32);
        sub_10015CD2C(v27);
        swift_endAccess();
        v33 = URL.absoluteString.getter();
        v28 = v34;
        (*(v31 + 8))(v30, v32);
        v29 = v33;
      }

      v35 = sub_1002FFA0C(v29, v28, (v0 + 352));

      *(v24 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v18, v19, "Request URL: %s", v24, 0xCu);
      sub_1000752F4(v25);
    }

    else
    {
    }

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 448);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *(v0 + 344) = v40;
      *v39 = 136315138;
      swift_beginAccess();
      if (URLRequest.allHTTPHeaderFields.getter())
      {
        swift_endAccess();
        v41 = Dictionary.debugDescription.getter();
        v43 = v42;
      }

      else
      {
        v41 = 0x3E656E6F6E3CLL;
        swift_endAccess();
        v43 = 0xE600000000000000;
      }

      v44 = sub_1002FFA0C(v41, v43, (v0 + 344));

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Request headers: %s", v39, 0xCu);
      sub_1000752F4(v40);
    }

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 448);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *(v0 + 336) = v49;
      *v48 = 136315138;
      swift_beginAccess();
      v50 = URLRequest.httpBody.getter();
      if (v51 >> 60 == 15)
      {
        countAndFlagsBits = 0x3E656E6F6E3CLL;
        swift_endAccess();
        object = 0xE600000000000000;
      }

      else
      {
        v54 = v50;
        v55 = v51;
        swift_endAccess();
        v56 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v56._countAndFlagsBits;
        object = v56._object;
        sub_10006A2D0(v54, v55);
      }

      v57 = sub_1002FFA0C(countAndFlagsBits, object, (v0 + 336));

      *(v48 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v45, v46, "Request body: %s", v48, 0xCu);
      sub_1000752F4(v49);
    }

    v59 = *(v0 + 456);
    v58 = *(v0 + 464);
    v60 = *(v0 + 440);
    v61 = *(v0 + 448);
    v62 = *(v0 + 424);
    *(v0 + 528) = [objc_opt_self() sharedSession];
    v59(v60, v61, v62);
    v63 = async function pointer to NSURLSession.data(for:delegate:)[1];
    v64 = swift_task_alloc();
    *(v0 + 536) = v64;
    *v64 = v0;
    v64[1] = sub_10015ADE0;
    v65 = *(v0 + 440);

    return NSURLSession.data(for:delegate:)(v65, 0);
  }
}

uint64_t sub_10015A4F4()
{
  v1 = v0[60];
  v2 = v0[55];
  v3 = v0[52];
  v5 = v0[48];
  v4 = v0[49];
  (*(v0[54] + 8))(v0[56], v0[53]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10015A5AC()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_10015AD14;
  }

  else
  {
    swift_endAccess();
    v3 = sub_10015A6C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015A6C8()
{
  v1 = v0[56];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[50];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v0[32] = v5;
  v0[33] = v7;
  v0[34] = 45;
  v0[35] = 0xE100000000000000;
  v0[36] = 0;
  v0[37] = 0xE000000000000000;
  v63 = sub_10012512C();
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v10 = v9;

  swift_beginAccess();
  v11._countAndFlagsBits = 0x7365757165722D78;
  v11._object = 0xEC00000064692D74;
  v12.value._countAndFlagsBits = v8;
  v12.value._object = v10;
  URLRequest.setValue(_:forHTTPHeaderField:)(v12, v11);
  swift_endAccess();

  if (qword_1005019F8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v0[65] = sub_1000958E4(v13, qword_10051B2F0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[56];
    v17 = v0[49];
    v18 = v0[46];
    v19 = v0[47];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v0[44] = v21;
    *v20 = 136315138;
    swift_beginAccess();
    URLRequest.url.getter();
    v22 = (*(v19 + 48))(v17, 1, v18);
    v23 = v0[49];
    if (v22)
    {
      sub_10015CD2C(v0[49]);
      swift_endAccess();
      v24 = 0xE400000000000000;
      v25 = 1701736302;
    }

    else
    {
      v27 = v0[47];
      v26 = v0[48];
      v28 = v0[46];
      (*(v27 + 16))(v26, v0[49], v28);
      sub_10015CD2C(v23);
      swift_endAccess();
      v29 = URL.absoluteString.getter();
      v24 = v30;
      (*(v27 + 8))(v26, v28);
      v25 = v29;
    }

    v31 = sub_1002FFA0C(v25, v24, v0 + 44);

    *(v20 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v14, v15, "Request URL: %s", v20, 0xCu);
    sub_1000752F4(v21);
  }

  else
  {
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v0[56];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v0[43] = v36;
    *v35 = 136315138;
    swift_beginAccess();
    if (URLRequest.allHTTPHeaderFields.getter())
    {
      swift_endAccess();
      v37 = Dictionary.debugDescription.getter();
      v39 = v38;
    }

    else
    {
      v37 = 0x3E656E6F6E3CLL;
      swift_endAccess();
      v39 = 0xE600000000000000;
    }

    v40 = sub_1002FFA0C(v37, v39, v0 + 43);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "Request headers: %s", v35, 0xCu);
    sub_1000752F4(v36);
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v0[56];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v0[42] = v45;
    *v44 = 136315138;
    swift_beginAccess();
    v46 = URLRequest.httpBody.getter();
    if (v47 >> 60 == 15)
    {
      countAndFlagsBits = 0x3E656E6F6E3CLL;
      swift_endAccess();
      object = 0xE600000000000000;
    }

    else
    {
      v50 = v46;
      v51 = v47;
      swift_endAccess();
      v52 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v52._countAndFlagsBits;
      object = v52._object;
      sub_10006A2D0(v50, v51);
    }

    v53 = sub_1002FFA0C(countAndFlagsBits, object, v0 + 42);

    *(v44 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v41, v42, "Request body: %s", v44, 0xCu);
    sub_1000752F4(v45);
  }

  v55 = v0[57];
  v54 = v0[58];
  v56 = v0[55];
  v57 = v0[56];
  v58 = v0[53];
  v0[66] = [objc_opt_self() sharedSession];
  v55(v56, v57, v58);
  v59 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v60 = swift_task_alloc();
  v0[67] = v60;
  *v60 = v0;
  v60[1] = sub_10015ADE0;
  v61 = v0[55];

  return NSURLSession.data(for:delegate:)(v61, 0);
}

uint64_t sub_10015AD14()
{
  v1 = v0[61];
  swift_endAccess();

  v2 = v0[64];
  v3 = v0[55];
  v4 = v0[52];
  v6 = v0[48];
  v5 = v0[49];
  (*(v0[54] + 8))(v0[56], v0[53]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10015ADE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 536);
  v8 = *v4;
  v6[68] = a1;
  v6[69] = a2;
  v6[70] = a3;
  v6[71] = v3;

  v9 = v5[66];
  v10 = v5[55];
  v11 = v5[54];
  v12 = v5[53];
  v15 = *(v11 + 8);
  v13 = v11 + 8;
  v14 = v15;
  if (v3)
  {
    v14(v10, v12);

    v16 = sub_10015BF88;
  }

  else
  {
    v6[72] = v14;
    v6[73] = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v10, v12);

    v16 = sub_10015AF9C;
  }

  return _swift_task_switch(v16, 0, 0);
}

uint64_t sub_10015AF9C()
{
  v1 = *(v0 + 448);
  swift_beginAccess();
  v2 = swift_task_alloc();
  *(v0 + 592) = v2;
  *v2 = v0;
  v2[1] = sub_10015B058;
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 496);
  v7 = *(v0 + 448);
  v8 = *(v0 + 249);

  return sub_100159210(v7, v8, v6, v5, v4, v3);
}

uint64_t sub_10015B058(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 592);
  v8 = *v3;
  *(*v3 + 600) = v2;

  if (v2)
  {
    v9 = sub_10015B28C;
  }

  else
  {
    *(v6 + 608) = a2;
    *(v6 + 616) = a1;
    swift_endAccess();
    v9 = sub_10015B198;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10015B198()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[61];
  v8 = v0[55];
  v7 = v0[56];
  v10 = v0[52];
  v9 = v0[53];
  v15 = v0[49];
  v16 = v0[48];

  sub_10006A178(v5, v4);
  v2(v7, v9);

  v11 = v0[1];
  v12 = v0[77];
  v13 = v0[76];

  return v11(v12, v13);
}

uint64_t sub_10015B28C()
{
  v130 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  swift_endAccess();

  sub_10006A178(v3, v2);
  v4 = *(v0 + 600);
  *(v0 + 304) = v4;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 520);
  if (v5)
  {

    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v9 = *(v0 + 248);
    sub_10015CCB4(v8, v7, *(v0 + 248));
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    sub_10015CCF0(v8, v7, v9);
    v127 = v8;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 496);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v129[0] = v14;
      *v13 = 136315650;
      v15 = sub_100157174(v8, v7, v9);
      v17 = sub_1002FFA0C(v15, v16, v129);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v12;
      *(v13 + 22) = 2048;
      *(v13 + 24) = 3;
      _os_log_impl(&_mh_execute_header, v10, v11, "Connection error %s : attempt %ld of %ld", v13, 0x20u);
      sub_1000752F4(v14);
    }

    v18 = *(v0 + 520);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 448);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *(v0 + 328) = v23;
      *v22 = 136315138;
      swift_beginAccess();
      if (URLRequest.allHTTPHeaderFields.getter())
      {
        swift_endAccess();
        v24 = Dictionary.debugDescription.getter();
        v26 = v25;
      }

      else
      {
        v24 = 0x3E656E6F6E3CLL;
        swift_endAccess();
        v26 = 0xE600000000000000;
      }

      v48 = sub_1002FFA0C(v24, v26, (v0 + 328));

      *(v22 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v19, v20, "Request headers: %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    v49 = *(v0 + 488);
    sub_10015CC60();
    v50 = swift_allocError();
    *v51 = v127;
    *(v51 + 8) = v7;
    *(v51 + 16) = v9;

    v52 = *(v0 + 304);
  }

  else
  {
    v27 = *(v0 + 304);

    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 496);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v129[0] = v32;
      *v31 = 136315650;
      swift_getErrorValue();
      v34 = *(v0 + 64);
      v33 = *(v0 + 72);
      v35 = *(v0 + 80);
      v36 = Error.localizedDescription.getter();
      v38 = sub_1002FFA0C(v36, v37, v129);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v30;
      *(v31 + 22) = 2048;
      *(v31 + 24) = 3;
      _os_log_impl(&_mh_execute_header, v28, v29, "URL Session error %s : attempt %ld of %ld", v31, 0x20u);
      sub_1000752F4(v32);
    }

    v39 = *(v0 + 520);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 448);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *(v0 + 312) = v44;
      *v43 = 136315138;
      swift_beginAccess();
      if (URLRequest.allHTTPHeaderFields.getter())
      {
        swift_endAccess();
        v45 = Dictionary.debugDescription.getter();
        v47 = v46;
      }

      else
      {
        v45 = 0x3E656E6F6E3CLL;
        swift_endAccess();
        v47 = 0xE600000000000000;
      }

      v53 = sub_1002FFA0C(v45, v47, (v0 + 312));

      *(v43 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v40, v41, "Request headers: %s", v43, 0xCu);
      sub_1000752F4(v44);
    }

    v54 = *(v0 + 488);
    sub_10015CC60();
    v50 = swift_allocError();
    *v55 = v4;
    *(v55 + 8) = 0;
    *(v55 + 16) = 2;
  }

  v56 = *(v0 + 496);
  if (v56 == 3)
  {
    swift_willThrow();
    v57 = *(v0 + 440);
    v58 = *(v0 + 416);
    v60 = *(v0 + 384);
    v59 = *(v0 + 392);
    (*(*(v0 + 432) + 8))(*(v0 + 448), *(v0 + 424));

    v61 = *(v0 + 8);

    return v61();
  }

  else
  {
    *(v0 + 488) = v50;
    *(v0 + 496) = v56 + 1;
    if (*(v0 + 249) == 1)
    {
      v63 = *(v0 + 448);
      swift_beginAccess();
      v64 = swift_task_alloc();
      *(v0 + 504) = v64;
      *v64 = v0;
      v64[1] = sub_10015A5AC;
      v65 = *(v0 + 448);

      return sub_100157E24(v65);
    }

    else
    {
      v66 = *(v0 + 448);
      v68 = *(v0 + 408);
      v67 = *(v0 + 416);
      v69 = *(v0 + 400);
      UUID.init()();
      v70 = UUID.uuidString.getter();
      v72 = v71;
      (*(v68 + 8))(v67, v69);
      *(v0 + 256) = v70;
      *(v0 + 264) = v72;
      *(v0 + 272) = 45;
      *(v0 + 280) = 0xE100000000000000;
      *(v0 + 288) = 0;
      *(v0 + 296) = 0xE000000000000000;
      v126 = sub_10012512C();
      v73 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v75 = v74;

      swift_beginAccess();
      v76._countAndFlagsBits = 0x7365757165722D78;
      v76._object = 0xEC00000064692D74;
      v77.value._countAndFlagsBits = v73;
      v77.value._object = v75;
      URLRequest.setValue(_:forHTTPHeaderField:)(v77, v76);
      swift_endAccess();

      if (qword_1005019F8 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      *(v0 + 520) = sub_1000958E4(v78, qword_10051B2F0);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = *(v0 + 448);
        v82 = *(v0 + 392);
        v83 = *(v0 + 368);
        v84 = *(v0 + 376);
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *(v0 + 352) = v86;
        *v85 = 136315138;
        swift_beginAccess();
        URLRequest.url.getter();
        v87 = (*(v84 + 48))(v82, 1, v83);
        v88 = *(v0 + 392);
        if (v87)
        {
          sub_10015CD2C(*(v0 + 392));
          swift_endAccess();
          v89 = 0xE400000000000000;
          v90 = 1701736302;
        }

        else
        {
          v92 = *(v0 + 376);
          v91 = *(v0 + 384);
          v128 = *(v0 + 368);
          (*(v92 + 16))(v91, v88);
          sub_10015CD2C(v88);
          swift_endAccess();
          v93 = URL.absoluteString.getter();
          v89 = v94;
          (*(v92 + 8))(v91, v128);
          v90 = v93;
        }

        v95 = sub_1002FFA0C(v90, v89, (v0 + 352));

        *(v85 + 4) = v95;
        _os_log_impl(&_mh_execute_header, v79, v80, "Request URL: %s", v85, 0xCu);
        sub_1000752F4(v86);
      }

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = *(v0 + 448);
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *(v0 + 344) = v100;
        *v99 = 136315138;
        swift_beginAccess();
        if (URLRequest.allHTTPHeaderFields.getter())
        {
          swift_endAccess();
          v101 = Dictionary.debugDescription.getter();
          v103 = v102;
        }

        else
        {
          v101 = 0x3E656E6F6E3CLL;
          swift_endAccess();
          v103 = 0xE600000000000000;
        }

        v104 = sub_1002FFA0C(v101, v103, (v0 + 344));

        *(v99 + 4) = v104;
        _os_log_impl(&_mh_execute_header, v96, v97, "Request headers: %s", v99, 0xCu);
        sub_1000752F4(v100);
      }

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = *(v0 + 448);
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *(v0 + 336) = v109;
        *v108 = 136315138;
        swift_beginAccess();
        v110 = URLRequest.httpBody.getter();
        if (v111 >> 60 == 15)
        {
          countAndFlagsBits = 0x3E656E6F6E3CLL;
          swift_endAccess();
          object = 0xE600000000000000;
        }

        else
        {
          v114 = v110;
          v115 = v111;
          swift_endAccess();
          v116 = Data.base64EncodedString(options:)(0);
          countAndFlagsBits = v116._countAndFlagsBits;
          object = v116._object;
          sub_10006A2D0(v114, v115);
        }

        v117 = sub_1002FFA0C(countAndFlagsBits, object, (v0 + 336));

        *(v108 + 4) = v117;
        _os_log_impl(&_mh_execute_header, v105, v106, "Request body: %s", v108, 0xCu);
        sub_1000752F4(v109);
      }

      v119 = *(v0 + 456);
      v118 = *(v0 + 464);
      v120 = *(v0 + 440);
      v121 = *(v0 + 448);
      v122 = *(v0 + 424);
      *(v0 + 528) = [objc_opt_self() sharedSession];
      v119(v120, v121, v122);
      v123 = async function pointer to NSURLSession.data(for:delegate:)[1];
      v124 = swift_task_alloc();
      *(v0 + 536) = v124;
      *v124 = v0;
      v124[1] = sub_10015ADE0;
      v125 = *(v0 + 440);

      return NSURLSession.data(for:delegate:)(v125, 0);
    }
  }
}