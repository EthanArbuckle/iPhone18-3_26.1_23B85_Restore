uint64_t sub_100483168(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_10048318C, 0, 0);
}

uint64_t sub_10048318C()
{
  v15 = v0;
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    swift_errorRetain();
    if (qword_1005A85B8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 16);
    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0D18);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v2, 1);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 16);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_10000D01C(0xD000000000000016, 0x80000001004EAE60, &v14);
      *(v8 + 12) = 2114;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error: %{public}@", v8, 0x16u);
      sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v10);

      sub_1002BC5B4(v7, 1);
    }

    else
    {

      sub_1002BC5B4(v7, 1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1004833B0()
{
  v2 = *(type metadata accessor for PreferenceStreamChange() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100003690;

  return sub_10047FB6C(v4, v0 + v3, v5);
}

uint64_t sub_1004834B8()
{
  v1 = type metadata accessor for PreferenceStreamChange();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100483588(uint64_t a1)
{
  v4 = *(type metadata accessor for PreferenceStreamChange() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_10047FDA4(a1, v6, v1 + v5, v7);
}

uint64_t sub_1004836A4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_10048069C(a1, a2, v6, v7, v8);
}

uint64_t sub_100483768(uint64_t a1)
{
  v4 = *(type metadata accessor for PreferenceStreamChange() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_100480CA8(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100483898(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for PreferenceStreamChange() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_1004816F0(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_100483A20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100483A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10047E048();
}

uint64_t sub_100483B04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002D40;

  return sub_10047D288(a1, v1);
}

uint64_t sub_100483B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_10047E0D8(a1, v4, v5, v7, v6);
}

unint64_t sub_100483C70()
{
  result = qword_1005B5278;
  if (!qword_1005B5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5278);
  }

  return result;
}

unint64_t sub_100483CC4()
{
  result = qword_1005B5280;
  if (!qword_1005B5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5280);
  }

  return result;
}

uint64_t sub_100483D2C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  return _swift_task_switch(sub_100483D50, v1, 0);
}

uint64_t sub_100483D50()
{
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "isMyLocationEnabled cached: %{BOOL}d", v5, 8u);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100483EAC;
  v7 = *(v0 + 16);

  return sub_1004878B8();
}

uint64_t sub_100483EAC()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    *(v2 + 32) = v8;
    *v8 = v4;
    v8[1] = sub_100484020;

    return daemon.getter();
  }
}

uint64_t sub_100484020(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009758(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009758(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1004841FC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004841FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_100484508, v7, 0);
  }

  else
  {
    v8 = v4[5];

    v4[8] = a1;
    v9 = swift_task_alloc();
    v4[9] = v9;
    *v9 = v6;
    v9[1] = sub_100484388;

    return sub_1001DBB70();
  }
}

uint64_t sub_100484388(char a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 81) = a1;

  return _swift_task_switch(sub_1004844A0, v3, 0);
}

uint64_t sub_1004844A0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 81);

  return v2(v3);
}

uint64_t sub_100484508()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_100484570(uint64_t a1, char a2)
{
  *(v3 + 152) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for Device();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100484658, v2, 0);
}

uint64_t sub_100484658()
{
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 80) = sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 152);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "activeLocationSharingDevice cached: %{BOOL}d", v5, 8u);
  }

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1004847B8;
  v7 = *(v0 + 24);

  return sub_1004878B8();
}

uint64_t sub_1004847B8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[8];
    v5 = v2[9];
    v9 = v2 + 6;
    v7 = v2[6];
    v8 = v9[1];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {
    v12 = async function pointer to daemon.getter[1];
    v13 = swift_task_alloc();
    v2[12] = v13;
    *v13 = v4;
    v13[1] = sub_10048494C;

    return daemon.getter();
  }
}

uint64_t sub_10048494C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009758(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009758(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100484B28;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100484B28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {
    v7 = v4[3];

    return _swift_task_switch(sub_100485358, v7, 0);
  }

  else
  {
    v8 = v4[13];

    v9 = swift_task_alloc();
    v4[17] = v9;
    *v9 = v6;
    v9[1] = sub_100484CB0;

    return sub_100245198();
  }
}

uint64_t sub_100484CB0(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_100484DC8, v3, 0);
}

void sub_100484DC8()
{
  v62 = v0;
  v1 = v0[18];
  v2 = v0[10];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v61[0] = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = sub_10000D01C(v9, v10, v61);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "All devices: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  v12 = v0[18];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v0[5];
    v16 = (v15 + 8);
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        return;
      }

      v17 = *(v15 + 16);
      v17(v0[9], v0[18] + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v14, v0[4]);
      if (Device.isActive.getter())
      {
        break;
      }

      ++v14;
      (*v16)(v0[9], v0[4]);
      if (v13 == v14)
      {
        v18 = v0[18];
        goto LABEL_9;
      }
    }

    v30 = v0[18];
    v31 = v0[9];
    v33 = v0[7];
    v32 = v0[8];
    v34 = v0[5];
    v57 = v0[6];
    v59 = v0[10];
    v35 = v0[4];
    v36 = v0[2];

    (*(v34 + 32))(v36, v31, v35);
    v17(v32, v36, v35);
    v17(v33, v36, v35);
    v17(v57, v36, v35);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v41 = v0[7];
    v40 = v0[8];
    v42 = v0[6];
    v43 = v0[4];
    if (v39)
    {
      v60 = v0[15];
      v44 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v61[0] = v58;
      *v44 = 141558787;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      sub_100009758(&qword_1005B1DF0, &type metadata accessor for Device);
      log = v37;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v55 = v38;
      v48 = *v16;
      (*v16)(v40, v43);
      v49 = sub_10000D01C(v45, v47, v61);

      *(v44 + 14) = v49;
      *(v44 + 22) = 1026;
      LODWORD(v49) = Device.isThisDevice.getter() & 1;
      v48(v41, v43);
      *(v44 + 24) = v49;
      *(v44 + 28) = 1026;
      LODWORD(v49) = Device.isActive.getter() & 1;
      v48(v42, v43);
      *(v44 + 30) = v49;
      _os_log_impl(&_mh_execute_header, log, v55, "Me device: %{private,mask.hash}s\nisThisDevice? %{BOOL,public}d\nisActive? %{BOOL,public}d", v44, 0x22u);
      sub_100004984(v58);
    }

    else
    {
      v50 = *v16;
      (*v16)(v0[6], v0[4]);
      v50(v41, v43);

      v50(v40, v43);
    }

    v52 = v0[8];
    v51 = v0[9];
    v54 = v0[6];
    v53 = v0[7];

    v29 = v0[1];
  }

  else
  {
LABEL_9:
    v19 = v0[10];

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing meDevice)", v22, 2u);
    }

    v23 = v0[15];

    sub_10006D30C();
    swift_allocError();
    *v24 = 8;
    swift_willThrow();

    v26 = v0[8];
    v25 = v0[9];
    v28 = v0[6];
    v27 = v0[7];

    v29 = v0[1];
  }

  v29();
}

uint64_t sub_100485358()
{
  v1 = v0[13];

  v2 = v0[16];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

BOOL sub_1004853E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  sub_10048DA28(a1, &v20 - v9, type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v12 = 1;
      }

      else
      {
        v12 = 5;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v12 = 7;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = type metadata accessor for Friend();
      (*(*(v13 - 8) + 8))(v10, v13);
      v12 = 4;
    }

    else
    {
      v12 = 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = type metadata accessor for Friend();
    (*(*(v14 - 8) + 8))(v10, v14);
    v12 = 3;
  }

  else
  {
    sub_100002CE0(v10, &qword_1005AA718, &qword_1004C4370);
    v12 = 2;
  }

  sub_10048DA28(a2, v8, type metadata accessor for DataManager.State);
  v15 = swift_getEnumCaseMultiPayload();
  if (v15 > 3)
  {
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        v16 = 1;
      }

      else
      {
        v16 = 5;
      }
    }

    else if (v15 == 4)
    {
      v16 = 7;
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15 > 1)
  {
    if (v15 == 2)
    {
      v17 = type metadata accessor for Friend();
      (*(*(v17 - 8) + 8))(v8, v17);
      v16 = 4;
    }

    else
    {
      v16 = 6;
    }
  }

  else if (v15)
  {
    v18 = type metadata accessor for Friend();
    (*(*(v18 - 8) + 8))(v8, v18);
    v16 = 3;
  }

  else
  {
    sub_100002CE0(v8, &qword_1005AA718, &qword_1004C4370);
    v16 = 2;
  }

  return v12 >= v16;
}

uint64_t sub_1004856D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1004856F4, v1, 0);
}

uint64_t sub_1004856F4()
{
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "thisDeviceWithCompanion", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_100485840;
  v6 = *(v0 + 24);

  return sub_1004878B8();
}

uint64_t sub_100485840()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    *(v2 + 40) = v8;
    *v8 = v4;
    v8[1] = sub_1004859B0;

    return daemon.getter();
  }
}

uint64_t sub_1004859B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009758(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009758(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100485B8C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100485B8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[3];

    return _swift_task_switch(sub_100330E90, v7, 0);
  }

  else
  {
    v8 = v4[6];

    v4[9] = a1;
    v9 = swift_task_alloc();
    v4[10] = v9;
    *v9 = v6;
    v9[1] = sub_10042A178;
    v10 = v4[2];

    return sub_1001DB4C0(v10);
  }
}

uint64_t sub_100485D1C(uint64_t a1, uint64_t a2)
{
  v3[123] = v2;
  v3[122] = a2;
  v3[121] = a1;
  v4 = type metadata accessor for SavePreferencesEndpoint();
  v3[124] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[125] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v3[126] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v3[127] = v7;
  v8 = *(v7 - 8);
  v3[128] = v8;
  v9 = *(v8 + 64) + 15;
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();

  return _swift_task_switch(sub_100485E64, v2, 0);
}

uint64_t sub_100485E64()
{
  v13 = v0;
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = v0[122];
  v2 = type metadata accessor for Logger();
  v0[132] = sub_10000A6F0(v2, qword_1005E0D18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[122];
    v6 = v0[121];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000D01C(v6, v5, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "setActiveLocationSharingDevice: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  v9 = swift_task_alloc();
  v0[133] = v9;
  *v9 = v0;
  v9[1] = sub_100486028;
  v10 = v0[123];

  return sub_1004878B8();
}

uint64_t sub_100486028()
{
  v2 = *v1;
  v3 = *(*v1 + 1064);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[131];
    v6 = v2[130];
    v7 = v2[129];
    v8 = v2[126];
    v9 = v2[125];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {
    v12 = async function pointer to daemon.getter[1];
    v13 = swift_task_alloc();
    v2[134] = v13;
    *v13 = v4;
    v13[1] = sub_1004861D8;

    return daemon.getter();
  }
}

uint64_t sub_1004861D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1072);
  v12 = *v1;
  v3[135] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[136] = v6;
  v7 = type metadata accessor for Daemon();
  v3[137] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009758(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[138] = v9;
  v10 = sub_100009758(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1004863B8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004863B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1088);
  v6 = *v2;
  v4[139] = a1;
  v4[140] = v1;

  if (v1)
  {
    v7 = v4[123];

    return _swift_task_switch(sub_100487620, v7, 0);
  }

  else
  {
    v8 = v4[135];

    v9 = swift_task_alloc();
    v4[141] = v9;
    *v9 = v6;
    v9[1] = sub_100486544;

    return sub_100245198();
  }
}

uint64_t sub_100486544(uint64_t a1)
{
  v2 = *(*v1 + 1128);
  v3 = *(*v1 + 984);
  v5 = *v1;
  *(*v1 + 1136) = a1;

  return _swift_task_switch(sub_10048665C, v3, 0);
}

uint64_t sub_10048665C()
{
  v17 = v0;
  v1 = v0[142];
  v2 = v0[132];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[142];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    type metadata accessor for Device();
    v9 = Array.description.getter();
    v11 = v10;

    v12 = sub_10000D01C(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "All devices: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
  }

  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  v0[143] = v14;
  *v14 = v0;
  v14[1] = sub_100486814;

  return daemon.getter();
}

uint64_t sub_100486814(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1144);
  v5 = *v1;
  v3[144] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[145] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100009758(&qword_1005A9118, type metadata accessor for AccountService);
  *v7 = v5;
  v7[1] = sub_1004869C8;
  v10 = v3[138];
  v11 = v3[137];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1004869C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1160);
  v6 = *v2;
  v4[146] = a1;
  v4[147] = v1;

  if (v1)
  {
    v7 = v4[123];

    return _swift_task_switch(sub_1004876CC, v7, 0);
  }

  else
  {
    v8 = v4[144];

    v9 = swift_task_alloc();
    v4[148] = v9;
    *v9 = v6;
    v9[1] = sub_100486B58;
    v10 = v4[126];

    return sub_10000EB24(v10);
  }
}

uint64_t sub_100486B58()
{
  v1 = *(*v0 + 1184);
  v2 = *(*v0 + 984);
  v4 = *v0;

  return _swift_task_switch(sub_100486C68, v2, 0);
}

uint64_t sub_100486C68()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[132];
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to setActiveLocationSharingDevice!", v7, 2u);
    }

    v8 = v0[146];
    v9 = v0[139];

    sub_10006D30C();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();

    v11 = v0[131];
    v12 = v0[130];
    v13 = v0[129];
    v14 = v0[126];
    v15 = v0[125];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[131];
    v19 = v0[130];
    v20 = v0[125];
    v29 = v0[129];
    v30 = v0[122];
    (*(v1 + 32))(v18, v3, v2);
    v21 = *(v1 + 16);
    v21(v19, v18, v2);
    sub_10006DF9C(v19);
    v22 = URLComponents.path.modify();
    v23._countAndFlagsBits = 0x657250657661732FLL;
    v23._object = 0xEA00000000007366;
    String.append(_:)(v23);
    v22(v0 + 117, 0);
    v24 = *(v1 + 8);
    v0[149] = v24;
    v0[150] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v19, v2);
    v21(v29, v18, v2);

    v25 = swift_task_alloc();
    v0[151] = v25;
    *v25 = v0;
    v25[1] = sub_100486FAC;
    v26 = v0[129];
    v27 = v0[122];
    v28 = v0[121];

    return sub_10019A590(v26, v28, v27);
  }
}

uint64_t sub_100486FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 1208);
  v8 = *v4;
  v6[152] = a1;
  v6[153] = a2;
  v6[154] = a3;
  v6[155] = v3;

  v9 = v5[123];
  if (v3)
  {
    v10 = sub_100487404;
  }

  else
  {
    v10 = sub_1004870EC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1004870EC()
{
  v1 = v0[154];
  v2 = v0[153];
  v3 = v0[152];
  v4 = v0[131];
  v5 = v0[125];
  v0[105] = v0[124];
  v0[106] = sub_100009758(&qword_1005B5288, type metadata accessor for SavePreferencesEndpoint);
  v6 = sub_10000331C(v0 + 102);
  sub_10048DA28(v5, v6, type metadata accessor for SavePreferencesEndpoint);
  v0[110] = &type metadata for SavePreferencesRequest;
  v0[111] = sub_10019D69C();
  v0[107] = v3;
  v0[108] = v2;
  v0[109] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[115] = type metadata accessor for BasicCredential();
  v0[116] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 112);
  BasicCredential.init(username:password:)();
  v7 = swift_task_alloc();
  v0[156] = v7;
  *v7 = v0;
  v7[1] = sub_1004872A0;
  v8 = v0[139];

  return sub_1001D7B78((v0 + 2), (v0 + 102), (v0 + 107), (v0 + 112));
}

uint64_t sub_1004872A0()
{
  v2 = *v1;
  v3 = (*v1)[156];
  v7 = *v1;
  (*v1)[157] = v0;

  if (v0)
  {
    v4 = v2[123];
    sub_100002CE0((v2 + 112), &qword_1005A9138, &qword_1004C2600);
    v5 = sub_100487784;
  }

  else
  {
    v4 = v2[123];
    sub_10005D06C((v2 + 2));
    sub_100002CE0((v2 + 112), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 107);
    sub_100004984(v2 + 102);
    v5 = sub_1004874F8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100487404()
{
  v1 = v0[150];
  v2 = v0[149];
  v3 = v0[146];
  v4 = v0[139];
  v5 = v0[131];
  v6 = v0[127];
  v7 = v0[125];

  sub_10048DA90(v7, type metadata accessor for SavePreferencesEndpoint);
  v2(v5, v6);
  v8 = v0[155];
  v9 = v0[131];
  v10 = v0[130];
  v11 = v0[129];
  v12 = v0[126];
  v13 = v0[125];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1004874F8()
{
  v1 = v0[154];
  v2 = v0[153];
  v3 = v0[152];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[146];
  v7 = v0[139];
  v8 = v0[131];
  v13 = v0[130];
  v14 = v0[129];
  v9 = v0[127];
  v15 = v0[126];
  v10 = v0[125];

  sub_10001A794(v2, v1);
  sub_10048DA90(v10, type metadata accessor for SavePreferencesEndpoint);
  v5(v8, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100487620()
{
  v1 = v0[135];

  v2 = v0[140];
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[129];
  v6 = v0[126];
  v7 = v0[125];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004876CC()
{
  v1 = v0[144];
  v2 = v0[139];

  v3 = v0[147];
  v4 = v0[131];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[126];
  v8 = v0[125];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100487784()
{
  v1 = v0[154];
  v2 = v0[153];
  v3 = v0[152];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[146];
  v7 = v0[139];
  v8 = v0[131];
  v9 = v0[127];
  v10 = v0[125];

  sub_10001A794(v2, v1);
  sub_10048DA90(v10, type metadata accessor for SavePreferencesEndpoint);
  v5(v8, v9);
  sub_100004984(v0 + 107);
  sub_100004984(v0 + 102);
  v11 = v0[157];
  v12 = v0[131];
  v13 = v0[130];
  v14 = v0[129];
  v15 = v0[126];
  v16 = v0[125];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004878B8()
{
  v1[5] = v0;
  v2 = type metadata accessor for DataManager.State(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_100487988;

  return daemon.getter();
}

uint64_t sub_100487988(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  v3[10] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[11] = v6;
  v7 = type metadata accessor for Daemon();
  v3[12] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009758(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[13] = v9;
  v10 = sub_100009758(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100487B68;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100487B68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[14] = a1;
  v4[15] = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = sub_1004885C0;
  }

  else
  {
    v9 = v4[10];

    v8 = sub_100487CA0;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100487CA0()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC13findmylocated11DataManager_state;
  swift_beginAccess();
  sub_10048DA28(v1 + v4, v2, type metadata accessor for DataManager.State);

  return _swift_task_switch(sub_100487D54, v3, 0);
}

uint64_t sub_100487D54()
{
  v24 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  swift_storeEnumTagMultiPayload();
  v4 = sub_1004853E8(v2, v1);
  sub_10048DA90(v1, type metadata accessor for DataManager.State);
  sub_10048DA90(v2, type metadata accessor for DataManager.State);
  if (v4)
  {
    if (qword_1005A85B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005E0D18);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[14];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004EAFC0, &v23);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s DataManager is ready", v10, 0xCu);
      sub_100004984(v11);
    }

    v13 = v0[7];
    v12 = v0[8];

    v14 = v0[1];

    return v14();
  }

  else
  {
    if (qword_1005A85B8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005E0D18);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004EAFC0, &v23);
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s DataManager is not ready. Retry initClient.", v19, 0xCu);
      sub_100004984(v20);
    }

    v21 = async function pointer to daemon.getter[1];
    v22 = swift_task_alloc();
    v0[16] = v22;
    *v22 = v0;
    v22[1] = sub_1004880AC;

    return daemon.getter();
  }
}

uint64_t sub_1004880AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;
  v3[17] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[18] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100009758(&qword_1005A9118, type metadata accessor for AccountService);
  *v7 = v5;
  v7[1] = sub_100488260;
  v10 = v3[13];
  v11 = v3[12];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100488260(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = v4[5];

    return _swift_task_switch(sub_100488634, v7, 0);
  }

  else
  {
    v8 = v4[17];

    v4[20] = a1;
    v9 = swift_task_alloc();
    v4[21] = v9;
    *v9 = v6;
    v9[1] = sub_1004883EC;

    return sub_1004997A8();
  }
}

uint64_t sub_1004883EC()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1004884FC, v2, 0);
}

uint64_t sub_1004884FC()
{
  v1 = v0[20];
  v2 = v0[14];
  sub_10006D30C();
  swift_allocError();
  *v3 = 11;
  swift_willThrow();

  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004885C0()
{
  v1 = v0[10];

  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100488634()
{
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[19];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004886B4(char a1)
{
  *(v2 + 968) = v1;
  *(v2 + 1224) = a1;
  v3 = type metadata accessor for SavePreferencesEndpoint();
  *(v2 + 976) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 984) = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  *(v2 + 992) = swift_task_alloc();
  v6 = type metadata accessor for Account();
  *(v2 + 1000) = v6;
  v7 = *(v6 - 8);
  *(v2 + 1008) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 1016) = swift_task_alloc();
  *(v2 + 1024) = swift_task_alloc();
  *(v2 + 1032) = swift_task_alloc();

  return _swift_task_switch(sub_1004887F8, v1, 0);
}

uint64_t sub_1004887F8()
{
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 1040) = sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1224);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "hideMyLocation: %{BOOL}d", v5, 8u);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 1048) = v7;
  *v7 = v0;
  v7[1] = sub_100488958;

  return daemon.getter();
}

uint64_t sub_100488958(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1048);
  v12 = *v1;
  v3[132] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[133] = v6;
  v7 = type metadata accessor for Daemon();
  v3[134] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100009758(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[135] = v9;
  v10 = sub_100009758(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_100488B38;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100488B38(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1064);
  v6 = *v2;
  v4[136] = a1;
  v4[137] = v1;

  if (v1)
  {
    v7 = v4[121];

    return _swift_task_switch(sub_100489AA8, v7, 0);
  }

  else
  {
    v8 = v4[132];

    v9 = swift_task_alloc();
    v4[138] = v9;
    *v9 = v6;
    v9[1] = sub_100488CC8;
    v10 = v4[124];

    return sub_10000EB24(v10);
  }
}

uint64_t sub_100488CC8()
{
  v1 = *(*v0 + 1104);
  v2 = *(*v0 + 968);
  v4 = *v0;

  return _swift_task_switch(sub_100488DD8, v2, 0);
}

uint64_t sub_100488DD8()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1040);
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to hideMyLocation!", v7, 2u);
    }

    v8 = *(v0 + 1088);

    sub_10006D30C();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();

    v10 = *(v0 + 1032);
    v11 = *(v0 + 1024);
    v12 = *(v0 + 1016);
    v13 = *(v0 + 992);
    v14 = *(v0 + 984);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 1032);
    v18 = *(v0 + 1024);
    v27 = *(v0 + 1016);
    v19 = *(v0 + 984);
    (*(v1 + 32))(v17, v3, v2);
    v26 = *(v1 + 16);
    v26(v18, v17, v2);
    sub_10006DF9C(v18);
    v20 = URLComponents.path.modify();
    v21._object = 0x80000001004EB050;
    v21._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v21);
    v20(v0 + 936, 0);
    v22 = *(v1 + 8);
    *(v0 + 1112) = v22;
    *(v0 + 1120) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v18, v2);
    v26(v27, v17, v2);
    v23 = swift_task_alloc();
    *(v0 + 1128) = v23;
    *v23 = v0;
    v23[1] = sub_100489100;
    v24 = *(v0 + 1016);
    v25 = *(v0 + 1224);

    return sub_10019B810(v24, v25);
  }
}

uint64_t sub_100489100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 1128);
  v6 = *v4;
  v6[142] = a1;
  v6[143] = a2;
  v6[144] = a3;
  v6[145] = v3;

  if (v3)
  {
    v7 = v6[121];

    return _swift_task_switch(sub_100489580, v7, 0);
  }

  else
  {
    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v6[146] = v9;
    *v9 = v6;
    v9[1] = sub_100489278;

    return daemon.getter();
  }
}

uint64_t sub_100489278(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1168);
  v5 = *v1;
  v3[147] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[148] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009758(&qword_1005A90D0, type metadata accessor for DataManager);
  *v7 = v5;
  v7[1] = sub_10048942C;
  v10 = v3[135];
  v11 = v3[134];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10048942C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1184);
  v6 = *v2;
  *(v4 + 1192) = a1;
  *(v4 + 1200) = v1;

  v7 = *(v3 + 1176);
  v8 = *(v3 + 968);

  if (v1)
  {
    v9 = sub_100489B54;
  }

  else
  {
    v9 = sub_100489668;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100489580()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[136];
  v4 = v0[129];
  v5 = v0[125];
  v6 = v0[123];

  sub_10048DA90(v6, type metadata accessor for SavePreferencesEndpoint);
  v2(v4, v5);
  v7 = v0[145];
  v8 = v0[129];
  v9 = v0[128];
  v10 = v0[127];
  v11 = v0[124];
  v12 = v0[123];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100489668()
{
  v1 = v0[144];
  v2 = v0[143];
  v3 = v0[142];
  v4 = v0[129];
  v5 = v0[123];
  v0[105] = v0[122];
  v0[106] = sub_100009758(&qword_1005B5288, type metadata accessor for SavePreferencesEndpoint);
  v6 = sub_10000331C(v0 + 102);
  sub_10048DA28(v5, v6, type metadata accessor for SavePreferencesEndpoint);
  v0[110] = &type metadata for SavePreferencesRequest;
  v0[111] = sub_10019D69C();
  v0[107] = v3;
  v0[108] = v2;
  v0[109] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[115] = type metadata accessor for BasicCredential();
  v0[116] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 112);
  BasicCredential.init(username:password:)();
  v7 = swift_task_alloc();
  v0[151] = v7;
  *v7 = v0;
  v7[1] = sub_10048981C;
  v8 = v0[149];

  return sub_1001D7B78((v0 + 2), (v0 + 102), (v0 + 107), (v0 + 112));
}

uint64_t sub_10048981C()
{
  v2 = *v1;
  v3 = (*v1)[151];
  v7 = *v1;
  (*v1)[152] = v0;

  if (v0)
  {
    v4 = v2[121];
    sub_100002CE0((v2 + 112), &qword_1005A9138, &qword_1004C2600);
    v5 = sub_100489C64;
  }

  else
  {
    v4 = v2[121];
    sub_10005D06C((v2 + 2));
    sub_100002CE0((v2 + 112), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 107);
    sub_100004984(v2 + 102);
    v5 = sub_100489980;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100489980()
{
  v1 = v0[149];
  v2 = v0[144];
  v3 = v0[143];
  v4 = v0[142];
  v5 = v0[140];
  v6 = v0[139];
  v7 = v0[136];
  v8 = v0[129];
  v13 = v0[128];
  v14 = v0[127];
  v9 = v0[125];
  v15 = v0[124];
  v10 = v0[123];

  sub_10001A794(v3, v2);
  sub_10048DA90(v10, type metadata accessor for SavePreferencesEndpoint);
  v6(v8, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100489AA8()
{
  v1 = v0[132];

  v2 = v0[137];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[127];
  v6 = v0[124];
  v7 = v0[123];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100489B54()
{
  v1 = v0[144];
  v2 = v0[143];
  v3 = v0[142];
  v4 = v0[140];
  v5 = v0[139];
  v6 = v0[136];
  v7 = v0[129];
  v8 = v0[125];
  v9 = v0[123];

  sub_10001A794(v2, v1);
  sub_10048DA90(v9, type metadata accessor for SavePreferencesEndpoint);
  v5(v7, v8);
  v10 = v0[150];
  v11 = v0[129];
  v12 = v0[128];
  v13 = v0[127];
  v14 = v0[124];
  v15 = v0[123];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100489C64()
{
  v1 = v0[149];
  v2 = v0[144];
  v3 = v0[143];
  v4 = v0[142];
  v5 = v0[140];
  v6 = v0[139];
  v7 = v0[136];
  v8 = v0[129];
  v9 = v0[125];
  v10 = v0[123];

  sub_10001A794(v3, v2);
  sub_10048DA90(v10, type metadata accessor for SavePreferencesEndpoint);
  v6(v8, v9);
  sub_100004984(v0 + 107);
  sub_100004984(v0 + 102);
  v11 = v0[152];
  v12 = v0[129];
  v13 = v0[128];
  v14 = v0[127];
  v15 = v0[124];
  v16 = v0[123];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100489D98(char a1)
{
  *(v2 + 968) = v1;
  *(v2 + 1224) = a1;
  v3 = type metadata accessor for SavePreferencesEndpoint();
  *(v2 + 976) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 984) = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  *(v2 + 992) = swift_task_alloc();
  v6 = type metadata accessor for Account();
  *(v2 + 1000) = v6;
  v7 = *(v6 - 8);
  *(v2 + 1008) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 1016) = swift_task_alloc();
  *(v2 + 1024) = swift_task_alloc();
  *(v2 + 1032) = swift_task_alloc();

  return _swift_task_switch(sub_100489EDC, v1, 0);
}

uint64_t sub_100489EDC()
{
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 1040) = sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1224);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "allowFriendshipRequests: %{BOOL}d", v5, 8u);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 1048) = v7;
  *v7 = v0;
  v7[1] = sub_10048A03C;

  return daemon.getter();
}

uint64_t sub_10048A03C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1048);
  v12 = *v1;
  v3[132] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[133] = v6;
  v7 = type metadata accessor for Daemon();
  v3[134] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100009758(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[135] = v9;
  v10 = sub_100009758(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_10048A21C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10048A21C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1064);
  v6 = *v2;
  v4[136] = a1;
  v4[137] = v1;

  if (v1)
  {
    v7 = v4[121];

    return _swift_task_switch(sub_10048DAF4, v7, 0);
  }

  else
  {
    v8 = v4[132];

    v9 = swift_task_alloc();
    v4[138] = v9;
    *v9 = v6;
    v9[1] = sub_10048A3AC;
    v10 = v4[124];

    return sub_10000EB24(v10);
  }
}

uint64_t sub_10048A3AC()
{
  v1 = *(*v0 + 1104);
  v2 = *(*v0 + 968);
  v4 = *v0;

  return _swift_task_switch(sub_10048A4BC, v2, 0);
}

uint64_t sub_10048A4BC()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[130];
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to hideMyLocation!", v7, 2u);
    }

    v8 = v0[136];

    sub_10006D30C();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();

    v10 = v0[129];
    v11 = v0[128];
    v12 = v0[127];
    v13 = v0[124];
    v14 = v0[123];

    v15 = v0[1];

    return v15();
  }

  else
  {
    (*(v1 + 32))(v0[129], v3, v2);
    v17 = async function pointer to daemon.getter[1];
    v18 = swift_task_alloc();
    v0[139] = v18;
    *v18 = v0;
    v18[1] = sub_10048A6E0;

    return daemon.getter();
  }
}

uint64_t sub_10048A6E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1112);
  v5 = *v1;
  v3[140] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[141] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009758(&qword_1005A90D0, type metadata accessor for DataManager);
  *v7 = v5;
  v7[1] = sub_10048A894;
  v10 = v3[135];
  v11 = v3[134];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10048A894(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1128);
  v6 = *v2;
  *(v4 + 1136) = a1;
  *(v4 + 1144) = v1;

  v7 = *(v3 + 1120);
  v8 = *(v3 + 968);

  if (v1)
  {
    v9 = sub_10048B1EC;
  }

  else
  {
    v9 = sub_10048A9E8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10048A9E8()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v14 = v1;
  v15 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 984);
  v6 = *(v3 + 16);
  v6(v2);
  sub_10006DF9C(v2);
  v7 = URLComponents.path.modify();
  v8._object = 0x80000001004EB030;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v8);
  v7(v0 + 936, 0);
  v9 = *(v3 + 8);
  *(v0 + 1152) = v9;
  *(v0 + 1160) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  (v6)(v15, v14, v4);
  v10 = swift_task_alloc();
  *(v0 + 1168) = v10;
  *v10 = v0;
  v10[1] = sub_10048AB78;
  v11 = *(v0 + 1016);
  v12 = *(v0 + 1224);

  return sub_10019C604(v11, v12);
}

uint64_t sub_10048AB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 1168);
  v8 = *v4;
  v6[147] = a1;
  v6[148] = a2;
  v6[149] = a3;
  v6[150] = v3;

  v9 = v5[121];
  if (v3)
  {
    v10 = sub_10048AFD0;
  }

  else
  {
    v10 = sub_10048ACB8;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10048ACB8()
{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[129];
  v5 = v0[123];
  v0[105] = v0[122];
  v0[106] = sub_100009758(&qword_1005B5288, type metadata accessor for SavePreferencesEndpoint);
  v6 = sub_10000331C(v0 + 102);
  sub_10048DA28(v5, v6, type metadata accessor for SavePreferencesEndpoint);
  v0[110] = &type metadata for SavePreferencesRequest;
  v0[111] = sub_10019D69C();
  v0[107] = v3;
  v0[108] = v2;
  v0[109] = v1;

  sub_10002CF44(v2, v1);
  Account.dsid.getter();
  Account.appToken.getter();
  v0[115] = type metadata accessor for BasicCredential();
  v0[116] = &protocol witness table for BasicCredential;
  sub_10000331C(v0 + 112);
  BasicCredential.init(username:password:)();
  v7 = swift_task_alloc();
  v0[151] = v7;
  *v7 = v0;
  v7[1] = sub_10048AE6C;
  v8 = v0[142];

  return sub_1001D7B78((v0 + 2), (v0 + 102), (v0 + 107), (v0 + 112));
}

uint64_t sub_10048AE6C()
{
  v2 = *v1;
  v3 = (*v1)[151];
  v7 = *v1;
  (*v1)[152] = v0;

  if (v0)
  {
    v4 = v2[121];
    sub_100002CE0((v2 + 112), &qword_1005A9138, &qword_1004C2600);
    v5 = sub_10048B2BC;
  }

  else
  {
    v4 = v2[121];
    sub_10005D06C((v2 + 2));
    sub_100002CE0((v2 + 112), &qword_1005A9138, &qword_1004C2600);
    sub_100004984(v2 + 107);
    sub_100004984(v2 + 102);
    v5 = sub_10048B0C4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10048AFD0()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[142];
  v4 = v0[136];
  v5 = v0[129];
  v6 = v0[125];
  v7 = v0[123];

  sub_10048DA90(v7, type metadata accessor for SavePreferencesEndpoint);
  v2(v5, v6);
  v8 = v0[150];
  v9 = v0[129];
  v10 = v0[128];
  v11 = v0[127];
  v12 = v0[124];
  v13 = v0[123];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10048B0C4()
{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[145];
  v5 = v0[144];
  v6 = v0[142];
  v7 = v0[136];
  v8 = v0[129];
  v13 = v0[128];
  v14 = v0[127];
  v9 = v0[125];
  v15 = v0[124];
  v10 = v0[123];

  sub_10001A794(v2, v1);
  sub_10048DA90(v10, type metadata accessor for SavePreferencesEndpoint);
  v5(v8, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10048B1EC()
{
  v1 = v0[136];
  v2 = v0[129];
  v3 = v0[126];
  v4 = v0[125];

  (*(v3 + 8))(v2, v4);
  v5 = v0[143];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[127];
  v9 = v0[124];
  v10 = v0[123];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10048B2BC()
{
  v1 = v0[149];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[145];
  v5 = v0[144];
  v6 = v0[142];
  v7 = v0[136];
  v8 = v0[129];
  v9 = v0[125];
  v10 = v0[123];

  sub_10001A794(v2, v1);
  sub_10048DA90(v10, type metadata accessor for SavePreferencesEndpoint);
  v5(v8, v9);
  sub_100004984(v0 + 107);
  sub_100004984(v0 + 102);
  v11 = v0[152];
  v12 = v0[129];
  v13 = v0[128];
  v14 = v0[127];
  v15 = v0[124];
  v16 = v0[123];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10048B3F0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  return _swift_task_switch(sub_10048B414, v1, 0);
}

uint64_t sub_10048B414()
{
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "areFriendshipRequestsAllowed cached: %{BOOL}d", v5, 8u);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_10048B570;
  v7 = *(v0 + 16);

  return sub_1004878B8();
}

uint64_t sub_10048B570()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    *(v2 + 32) = v8;
    *v8 = v4;
    v8[1] = sub_10048B6E4;

    return daemon.getter();
  }
}

uint64_t sub_10048B6E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009758(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009758(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10048B8C0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10048B8C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_10048DAF0, v7, 0);
  }

  else
  {
    v8 = v4[5];

    v4[8] = a1;
    v9 = swift_task_alloc();
    v4[9] = v9;
    *v9 = v6;
    v9[1] = sub_10048BA4C;

    return sub_1001DBE84();
  }
}

uint64_t sub_10048BA4C(char a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 81) = a1;

  return _swift_task_switch(sub_10048DAF8, v3, 0);
}

uint64_t sub_10048BB80()
{
  v9 = v0;
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004EB000, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Keep SettingsConnection active", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10048BCF8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 96) = a1;
  return _swift_task_switch(sub_10048BD1C, v1, 0);
}

uint64_t sub_10048BD1C()
{
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "allDevices cached: %{BOOL}d", v5, 8u);
  }

  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_10048BE7C;
  v7 = *(v0 + 16);

  return sub_1004878B8();
}

uint64_t sub_10048BE7C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    *(v2 + 40) = v8;
    *v8 = v4;
    v8[1] = sub_10048BFEC;

    return daemon.getter();
  }
}

uint64_t sub_10048BFEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009758(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009758(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10048C1C8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10048C1C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_100253EE0, v7, 0);
  }

  else
  {
    v8 = v4[6];

    v9 = swift_task_alloc();
    v4[10] = v9;
    *v9 = v6;
    v9[1] = sub_10048C350;

    return sub_100245198();
  }
}

uint64_t sub_10048C350(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_10048C468, v3, 0);
}

uint64_t sub_10048C468()
{
  v17 = v0;
  v1 = v0[11];
  v2 = v0[3];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    type metadata accessor for Device();
    v9 = Array.description.getter();
    v11 = sub_10000D01C(v9, v10, &v16);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "All devices: %{private,mask.hash}s", v7, 0x16u);
    sub_100004984(v8);
  }

  else
  {
    v12 = v0[8];
  }

  v13 = v0[1];
  v14 = v0[11];

  return v13(v14);
}

uint64_t sub_10048C614()
{
  v10 = v0;
  if (qword_1005A85B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[22] = sub_10000A6F0(v1, qword_1005E0D18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004EAFE0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_10048C7C4;
  v7 = v0[21];

  return sub_1004878B8();
}

uint64_t sub_10048C7C4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    *(v2 + 192) = v8;
    *v8 = v4;
    v8[1] = sub_10048C934;

    return daemon.getter();
  }
}

uint64_t sub_10048C934(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v12 = *v1;
  *(v3 + 200) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 208) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009758(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009758(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10048CB10;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10048CB10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  if (v1)
  {
    v7 = v4[21];
    v8 = sub_10048D2DC;
  }

  else
  {
    v9 = v4[25];

    v4[29] = OBJC_IVAR____TtC13findmylocated11DataManager_serverAlertPresenter;
    v8 = sub_10048CC58;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10048CC58()
{
  v1 = v0[21];
  sub_100011004(v0[27] + v0[29], (v0 + 15));

  return _swift_task_switch(sub_10048CCD0, v1, 0);
}

uint64_t sub_10048CCD0()
{
  v11 = v0;
  sub_10004B564(qword_1005B5290, &qword_1004DC928);
  type metadata accessor for ServerAlertPresenter();
  if (swift_dynamicCast())
  {
    v0[30] = v0[20];

    return _swift_task_switch(sub_10048CEC4, 0, 0);
  }

  else
  {
    v1 = v0[22];
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004EAFE0, &v10);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s, unexpected type of serverAlertPresenter", v4, 0xCu);
      sub_100004984(v5);
    }

    v6 = v0[27];
    sub_10006D30C();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10048CEC4()
{
  v1 = v0[28];
  v2 = sub_1001912E8(0);
  v0[31] = v3;
  if (v1)
  {
    v0[34] = v1;
    v4 = v0[21];

    return _swift_task_switch(sub_10048D26C, v4, 0);
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v7 = swift_task_alloc();
    v0[32] = v7;
    *v7 = v0;
    v7[1] = sub_10048CFC8;

    return sub_1001900E0((v0 + 2), v5, v6);
  }
}

uint64_t sub_10048CFC8()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_10048D18C;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_10048D0E4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10048D0E4()
{
  v1 = v0[33];
  sub_100193084();
  if (v1)
  {
    sub_1001974E8((v0 + 2));
    v0[34] = v1;
    v2 = v0[21];
    v3 = sub_10048D26C;
  }

  else
  {
    v4 = v0[21];
    sub_1001974E8((v0 + 2));
    v3 = sub_10048D1FC;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10048D18C()
{
  v1 = v0[31];

  v0[34] = v0[33];
  v2 = v0[21];

  return _swift_task_switch(sub_10048D26C, v2, 0);
}

uint64_t sub_10048D1FC()
{
  v1 = v0[30];
  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10048D26C()
{
  v1 = v0[30];
  v2 = v0[27];

  v3 = v0[34];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10048D2DC()
{
  v1 = v0[25];

  v2 = v0[28];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10048D340(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100485D1C(a1, a2);
}

uint64_t sub_10048D3E4(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_1004886B4(a1);
}

uint64_t sub_10048D478(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_100489D98(a1);
}

uint64_t sub_10048D50C(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100484570(a1, a2);
}

uint64_t sub_10048D5B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1004856D4(a1);
}

uint64_t sub_10048D64C(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10048D6E0;

  return sub_100483D2C(a1);
}

uint64_t sub_10048D6E0(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_10048D7E8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10048DAFC;

  return sub_10048B3F0(a1);
}

uint64_t sub_10048D87C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10048BB64();
}

uint64_t sub_10048D908(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100054E60;

  return sub_10048BCF8(a1);
}

uint64_t sub_10048D99C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10048C5F4();
}

uint64_t sub_10048DA28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048DA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10048DB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Transaction();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_10048DC24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = swift_isaMask & *a1;
  v7 = type metadata accessor for ClientSessionError.Category();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = type metadata accessor for ClientSessionError();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10048DD84, a1, 0);
}

uint64_t sub_10048DD84()
{
  v1 = *(v0 + 24);
  *(v0 + 120) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_10048DDF4, 0, 0);
}

uint64_t sub_10048DDF4()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 64);
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = async function pointer to dispatch thunk of SettingsProtocol.setActiveLocationSharingDevice(_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_10048DF08;
    v6 = *(v0 + 120);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);

    return dispatch thunk of SettingsProtocol.setActiveLocationSharingDevice(_:)(v8, v7, v2, v3);
  }

  else
  {
    v9 = *(v0 + 56);
    (*(v0 + 48))(0);
    v10 = *(v0 + 112);
    v11 = *(v0 + 88);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10048DF08()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_10048E0A0;
  }

  else
  {
    v5 = *(v2 + 120);
    swift_unknownObjectRelease();
    v4 = sub_10048E024;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10048E024()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))(0);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10048E0A0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10048E10C, v2, 0);
}

uint64_t sub_10048E10C()
{
  v0[2] = v0[17];
  v1 = v0[14];
  v2 = v0[12];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[17];
    (*(v0[13] + 8))(v0[14], v0[12]);
    swift_errorRetain();
    v4 = v0[17];
  }

  else
  {
    v5 = v0[12];
    (*(v0[10] + 104))(v0[11], enum case for ClientSessionError.Category.settingsService(_:), v0[9]);
    sub_10049302C(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[18] = v4;

  return _swift_task_switch(sub_10048E26C, 0, 0);
}

uint64_t sub_10048E26C()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[6];
  v3 = v0[7];
  swift_errorRetain();
  v4(v1);

  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10048E314(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;

  sub_10048DB54(v5, v7, sub_1000CAB5C, v8);
}

uint64_t sub_10048E3FC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 136) = a2;
  *(v4 + 24) = a1;
  *(v4 + 48) = swift_isaMask & *a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10048E55C, a1, 0);
}

uint64_t sub_10048E55C()
{
  v1 = *(v0 + 24);
  *(v0 + 104) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_10048E5CC, 0, 0);
}

uint64_t sub_10048E5CC()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 48);
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = async function pointer to dispatch thunk of SettingsProtocol.hideMyLocation(hidden:)[1];
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_10048E6E0;
    v6 = *(v0 + 104);
    v7 = *(v0 + 136);

    return dispatch thunk of SettingsProtocol.hideMyLocation(hidden:)(v7, v2, v3);
  }

  else
  {
    v8 = *(v0 + 40);
    (*(v0 + 32))(0);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10048E6E0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_10048E878;
  }

  else
  {
    v5 = *(v2 + 104);
    swift_unknownObjectRelease();
    v4 = sub_10048E7FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10048E7FC()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10048E878()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10048E8E4, v2, 0);
}

uint64_t sub_10048E8E4()
{
  v0[2] = v0[15];
  v1 = v0[12];
  v2 = v0[10];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[15];
    (*(v0[11] + 8))(v0[12], v0[10]);
    swift_errorRetain();
    v4 = v0[15];
  }

  else
  {
    v5 = v0[10];
    (*(v0[8] + 104))(v0[9], enum case for ClientSessionError.Category.settingsService(_:), v0[7]);
    sub_10049302C(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[16] = v4;

  return _swift_task_switch(sub_10048EA44, 0, 0);
}

uint64_t sub_10048EA44()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[4];
  v3 = v0[5];
  swift_errorRetain();
  v4(v1);

  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10048EB4C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 136) = a2;
  *(v4 + 24) = a1;
  *(v4 + 48) = swift_isaMask & *a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10048ECAC, a1, 0);
}

uint64_t sub_10048ECAC()
{
  v1 = *(v0 + 24);
  *(v0 + 104) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_10048ED1C, 0, 0);
}

uint64_t sub_10048ED1C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 48);
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = async function pointer to dispatch thunk of SettingsProtocol.allowFriendshipRequests(allowed:)[1];
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_10048EE30;
    v6 = *(v0 + 104);
    v7 = *(v0 + 136);

    return dispatch thunk of SettingsProtocol.allowFriendshipRequests(allowed:)(v7, v2, v3);
  }

  else
  {
    v8 = *(v0 + 40);
    (*(v0 + 32))(0);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10048EE30()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_10048EF4C;
  }

  else
  {
    v5 = *(v2 + 104);
    swift_unknownObjectRelease();
    v4 = sub_100493390;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10048EF4C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10048EFB8, v2, 0);
}

uint64_t sub_10048EFB8()
{
  v0[2] = v0[15];
  v1 = v0[12];
  v2 = v0[10];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[15];
    (*(v0[11] + 8))(v0[12], v0[10]);
    swift_errorRetain();
    v4 = v0[15];
  }

  else
  {
    v5 = v0[10];
    (*(v0[8] + 104))(v0[9], enum case for ClientSessionError.Category.settingsService(_:), v0[7]);
    sub_10049302C(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[16] = v4;

  return _swift_task_switch(sub_100493388, 0, 0);
}

uint64_t sub_10048F14C(int a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  a7(a3, a6, v11);
}

uint64_t sub_10048F218(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 160) = a2;
  *(v4 + 24) = a1;
  *(v4 + 48) = swift_isaMask & *a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  *(v4 + 104) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10048F3B4, a1, 0);
}

uint64_t sub_10048F3B4()
{
  v1 = *(v0 + 24);
  *(v0 + 120) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_10048F424, 0, 0);
}

uint64_t sub_10048F424()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 48);
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = async function pointer to dispatch thunk of SettingsProtocol.activeLocationSharingDevice(cached:)[1];
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_10048F6BC;
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 160);

    return dispatch thunk of SettingsProtocol.activeLocationSharingDevice(cached:)(v6, v8, v2, v3);
  }

  else
  {
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = type metadata accessor for Device();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = type metadata accessor for PropertyListEncoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100492C30(&qword_1005B5238, &qword_1005AA718, &qword_1004C4370);
    v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v16 = *(v0 + 112);
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v19 = v15;
    v21 = v20;

    sub_100005F6C(v19, v21);
    v18(v19, v21, 0);
    sub_1000049D0(v19, v21);
    sub_1000049D0(v19, v21);
    sub_100002CE0(v16, &qword_1005AA718, &qword_1004C4370);
    v22 = *(v0 + 112);
    v23 = *(v0 + 96);
    v24 = *(v0 + 72);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_10048F6BC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_10048FB48;
  }

  else
  {
    v5 = *(v2 + 120);
    swift_unknownObjectRelease();
    v4 = sub_10048F7D8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10048F7D8()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = type metadata accessor for Device();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = type metadata accessor for PropertyListEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100492C30(&qword_1005B5238, &qword_1005AA718, &qword_1004C4370);
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v0[14];
  if (v1)
  {
    sub_100002CE0(v0[14], &qword_1005AA718, &qword_1004C4370);

    v0[18] = v1;
    v11 = v0[3];

    return _swift_task_switch(sub_10048F9E8, v11, 0);
  }

  else
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = v8;
    v15 = v9;

    sub_100005F6C(v14, v15);
    v13(v14, v15, 0);
    sub_1000049D0(v14, v15);
    sub_1000049D0(v14, v15);
    sub_100002CE0(v10, &qword_1005AA718, &qword_1004C4370);
    v16 = v0[14];
    v17 = v0[12];
    v18 = v0[9];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_10048F9E8()
{
  v0[2] = v0[18];
  v1 = v0[12];
  v2 = v0[10];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[18];
    (*(v0[11] + 8))(v0[12], v0[10]);
    swift_errorRetain();
    v4 = v0[18];
  }

  else
  {
    v5 = v0[10];
    (*(v0[8] + 104))(v0[9], enum case for ClientSessionError.Category.settingsService(_:), v0[7]);
    sub_10049302C(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[19] = v4;

  return _swift_task_switch(sub_100493394, 0, 0);
}

uint64_t sub_10048FB48()
{
  v1 = v0[15];
  swift_unknownObjectRelease();
  v0[18] = v0[17];
  v2 = v0[3];

  return _swift_task_switch(sub_10048F9E8, v2, 0);
}

uint64_t sub_10048FC18(void *a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = swift_isaMask & *a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = type metadata accessor for ClientSessionError();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_10004B564(&qword_1005B5330, &qword_1004DCA60);
  v3[13] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10048FDB0, a1, 0);
}

uint64_t sub_10048FDB0()
{
  v1 = *(v0 + 24);
  *(v0 + 120) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_10048FE20, 0, 0);
}

uint64_t sub_10048FE20()
{
  if (v0[15])
  {
    v1 = v0[6];
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = async function pointer to dispatch thunk of SettingsProtocol.thisDeviceWithCompanion()[1];
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_100490088;
    v6 = v0[14];
    v7 = v0[15];

    return dispatch thunk of SettingsProtocol.thisDeviceWithCompanion()(v6, v2, v3);
  }

  else
  {
    v9 = v0[13];
    v8 = v0[14];
    v10 = type metadata accessor for DeviceWithCompanion();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = type metadata accessor for PropertyListEncoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100492F78();
    v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v15 = v0[14];
    v17 = v0[4];
    v16 = v0[5];
    v18 = v14;
    v20 = v19;

    sub_100005F6C(v18, v20);
    v17(v18, v20, 0);
    sub_1000049D0(v18, v20);
    sub_1000049D0(v18, v20);
    sub_100002CE0(v15, &qword_1005B5330, &qword_1004DCA60);
    v21 = v0[14];
    v22 = v0[12];
    v23 = v0[9];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100490088()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1004905A4;
  }

  else
  {
    v5 = *(v2 + 120);
    swift_unknownObjectRelease();
    v4 = sub_1004901A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004901A4()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = type metadata accessor for DeviceWithCompanion();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = type metadata accessor for PropertyListEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100492F78();
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v0[14];
  if (v1)
  {
    sub_100002CE0(v0[14], &qword_1005B5330, &qword_1004DCA60);

    v0[18] = v1;
    v11 = v0[3];

    return _swift_task_switch(sub_100490388, v11, 0);
  }

  else
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = v8;
    v15 = v9;

    sub_100005F6C(v14, v15);
    v13(v14, v15, 0);
    sub_1000049D0(v14, v15);
    sub_1000049D0(v14, v15);
    sub_100002CE0(v10, &qword_1005B5330, &qword_1004DCA60);
    v16 = v0[14];
    v17 = v0[12];
    v18 = v0[9];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_100490388()
{
  v0[2] = v0[18];
  v1 = v0[12];
  v2 = v0[10];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[18];
    (*(v0[11] + 8))(v0[12], v0[10]);
    swift_errorRetain();
    v4 = v0[18];
  }

  else
  {
    v5 = v0[10];
    (*(v0[8] + 104))(v0[9], enum case for ClientSessionError.Category.settingsService(_:), v0[7]);
    sub_10049302C(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[19] = v4;

  return _swift_task_switch(sub_1004904E8, 0, 0);
}

uint64_t sub_1004904E8()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[4];
  v3 = v0[5];
  swift_errorRetain();
  v4(0, 0xF000000000000000, v1);

  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004905A4()
{
  v1 = v0[15];
  swift_unknownObjectRelease();
  v0[18] = v0[17];
  v2 = v0[3];

  return _swift_task_switch(sub_100490388, v2, 0);
}

uint64_t sub_100490674(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 136) = a2;
  *(v4 + 24) = a1;
  *(v4 + 48) = swift_isaMask & *a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1004907D4, a1, 0);
}

uint64_t sub_1004907D4()
{
  v1 = *(v0 + 24);
  *(v0 + 104) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_100490844, 0, 0);
}

uint64_t sub_100490844()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 48);
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = async function pointer to dispatch thunk of SettingsProtocol.isMyLocationEnabled(cached:)[1];
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_10049095C;
    v6 = *(v0 + 104);
    v7 = *(v0 + 136);

    return dispatch thunk of SettingsProtocol.isMyLocationEnabled(cached:)(v7, v2, v3);
  }

  else
  {
    v8 = *(v0 + 40);
    (*(v0 + 32))(0, 0);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10049095C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_100490B10;
  }

  else
  {
    v8 = *(v4 + 104);
    swift_unknownObjectRelease();
    *(v4 + 137) = a1 & 1;
    v7 = sub_100490A90;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100490A90()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(*(v0 + 137), 0);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100490B10()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100490B7C, v2, 0);
}

uint64_t sub_100490B7C()
{
  v0[2] = v0[15];
  v1 = v0[12];
  v2 = v0[10];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[15];
    (*(v0[11] + 8))(v0[12], v0[10]);
    swift_errorRetain();
    v4 = v0[15];
  }

  else
  {
    v5 = v0[10];
    (*(v0[8] + 104))(v0[9], enum case for ClientSessionError.Category.settingsService(_:), v0[7]);
    sub_10049302C(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[16] = v4;

  return _swift_task_switch(sub_100490CDC, 0, 0);
}

uint64_t sub_100490CDC()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[4];
  v3 = v0[5];
  swift_errorRetain();
  v4(0, v1);

  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

void sub_100490DBC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_100490E58(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 136) = a2;
  *(v4 + 24) = a1;
  *(v4 + 48) = swift_isaMask & *a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100490FB8, a1, 0);
}

uint64_t sub_100490FB8()
{
  v1 = *(v0 + 24);
  *(v0 + 104) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_100491028, 0, 0);
}

uint64_t sub_100491028()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 48);
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = async function pointer to dispatch thunk of SettingsProtocol.areFriendshipRequestsAllowed(cached:)[1];
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_100491140;
    v6 = *(v0 + 104);
    v7 = *(v0 + 136);

    return dispatch thunk of SettingsProtocol.areFriendshipRequestsAllowed(cached:)(v7, v2, v3);
  }

  else
  {
    v8 = *(v0 + 40);
    (*(v0 + 32))(0, 0);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100491140(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_100491274;
  }

  else
  {
    v8 = *(v4 + 104);
    swift_unknownObjectRelease();
    *(v4 + 137) = a1 & 1;
    v7 = sub_10049339C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100491274()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1004912E0, v2, 0);
}

uint64_t sub_1004912E0()
{
  v0[2] = v0[15];
  v1 = v0[12];
  v2 = v0[10];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[15];
    (*(v0[11] + 8))(v0[12], v0[10]);
    swift_errorRetain();
    v4 = v0[15];
  }

  else
  {
    v5 = v0[10];
    (*(v0[8] + 104))(v0[9], enum case for ClientSessionError.Category.settingsService(_:), v0[7]);
    sub_10049302C(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[16] = v4;

  return _swift_task_switch(sub_10049338C, 0, 0);
}

uint64_t sub_1004914A0(void *a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = swift_isaMask & *a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = type metadata accessor for ClientSessionError();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004915FC, a1, 0);
}

uint64_t sub_1004915FC()
{
  v1 = *(v0 + 24);
  *(v0 + 104) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_10049166C, 0, 0);
}

uint64_t sub_10049166C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 48);
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = async function pointer to dispatch thunk of SettingsProtocol.startMonitoringPreferencesChangeForClient()[1];
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_100491778;
    v6 = *(v0 + 104);

    return dispatch thunk of SettingsProtocol.startMonitoringPreferencesChangeForClient()(v2, v3);
  }

  else
  {
    v7 = *(v0 + 40);
    (*(v0 + 32))(0);
    v8 = *(v0 + 96);
    v9 = *(v0 + 72);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100491778()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100491894;
  }

  else
  {
    v5 = *(v2 + 104);
    swift_unknownObjectRelease();
    v4 = sub_100493390;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100491894()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10048EFB8, v2, 0);
}

uint64_t sub_100491934(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  a6(a5, v9);
}

uint64_t sub_1004919F8(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100491ABC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 160) = a2;
  *(v4 + 32) = a1;
  *(v4 + 56) = swift_isaMask & *a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  *(v4 + 88) = v9;
  v10 = *(v9 - 8);
  *(v4 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100491C1C, a1, 0);
}

uint64_t sub_100491C1C()
{
  v1 = *(v0 + 32);
  *(v0 + 112) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_100491C8C, 0, 0);
}

uint64_t sub_100491C8C()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 56);
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = async function pointer to dispatch thunk of SettingsProtocol.allDevices(cached:)[1];
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_100491EA0;
    v6 = *(v0 + 112);
    v7 = *(v0 + 160);

    return dispatch thunk of SettingsProtocol.allDevices(cached:)(v7, v2, v3);
  }

  else
  {
    v8 = type metadata accessor for PropertyListEncoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    *(v0 + 24) = 0;
    sub_10004B564(&qword_1005B5318, &qword_1004DCA18);
    sub_100492B80();
    v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    v14 = v11;
    v16 = v15;

    sub_100005F6C(v14, v16);
    v13(v14, v16, 0);
    sub_1000049D0(v14, v16);
    sub_1000049D0(v14, v16);
    v17 = *(v0 + 104);
    v18 = *(v0 + 80);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100491EA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_100492370;
  }

  else
  {
    v8 = *(v4 + 112);
    swift_unknownObjectRelease();
    *(v4 + 136) = a1;
    v7 = sub_100491FD0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100491FD0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v1;
  sub_10004B564(&qword_1005B5318, &qword_1004DCA18);
  sub_100492B80();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v2)
  {

    v0[18] = v2;
    v8 = v0[4];

    return _swift_task_switch(sub_100492160, v8, 0);
  }

  else
  {
    v10 = v0[5];
    v9 = v0[6];
    v11 = v6;
    v12 = v7;

    sub_100005F6C(v11, v12);
    v10(v11, v12, 0);
    sub_1000049D0(v11, v12);
    sub_1000049D0(v11, v12);
    v13 = v0[13];
    v14 = v0[10];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100492160()
{
  v0[2] = v0[18];
  v1 = v0[13];
  v2 = v0[11];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[18];
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_errorRetain();
    v4 = v0[18];
  }

  else
  {
    v5 = v0[11];
    (*(v0[9] + 104))(v0[10], enum case for ClientSessionError.Category.settingsService(_:), v0[8]);
    sub_10049302C(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[19] = v4;

  return _swift_task_switch(sub_1004922C0, 0, 0);
}

uint64_t sub_1004922C0()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[5];
  v3 = v0[6];
  swift_errorRetain();
  v4(0, 0xF000000000000000, v1);

  v5 = v0[13];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100492370()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  v0[18] = v0[16];
  v2 = v0[4];

  return _swift_task_switch(sub_100492160, v2, 0);
}

uint64_t sub_100492440(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Transaction();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1004924F4(void *a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = swift_isaMask & *a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = type metadata accessor for ClientSessionError();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100492650, a1, 0);
}

uint64_t sub_100492650()
{
  v1 = *(v0 + 24);
  *(v0 + 104) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_1004926C0, 0, 0);
}

uint64_t sub_1004926C0()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 48);
    v2 = *(v1 + 80);
    v3 = *(v1 + 88);
    v4 = async function pointer to dispatch thunk of SettingsProtocol.emulateShowSaveMeAlertCommand()[1];
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_1004927CC;
    v6 = *(v0 + 104);

    return dispatch thunk of SettingsProtocol.emulateShowSaveMeAlertCommand()(v2, v3);
  }

  else
  {
    v7 = *(v0 + 40);
    (*(v0 + 32))(0);
    v8 = *(v0 + 96);
    v9 = *(v0 + 72);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1004927CC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1004928E8;
  }

  else
  {
    v5 = *(v2 + 104);
    swift_unknownObjectRelease();
    v4 = sub_100493390;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004928E8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10048EFB8, v2, 0);
}

void sub_100492988()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1004929D8()
{
  swift_unknownObjectWeakDestroy();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100492A28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1004924F4(v2, v3, v4);
}

uint64_t sub_100492AD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100003690;

  return sub_100491ABC(v2, v3, v5, v4);
}

unint64_t sub_100492B80()
{
  result = qword_1005B5320;
  if (!qword_1005B5320)
  {
    sub_10004B610(&qword_1005B5318, &qword_1004DCA18);
    sub_100492C30(&qword_1005B5328, &qword_1005B1C10, &qword_1004D5AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5320);
  }

  return result;
}

uint64_t sub_100492C30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    sub_10049302C(&qword_1005B5240, &type metadata accessor for Device);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100492CC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1004914A0(v2, v3, v4);
}

uint64_t sub_100492D70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100490E58(v2, v3, v5, v4);
}

uint64_t sub_100492E20()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_100490674(v2, v3, v5, v4);
}

uint64_t sub_100492ED0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10048FC18(v2, v3, v4);
}

unint64_t sub_100492F78()
{
  result = qword_1005B5338;
  if (!qword_1005B5338)
  {
    sub_10004B610(&qword_1005B5330, &qword_1004DCA60);
    sub_10049302C(&qword_1005B5340, &type metadata accessor for DeviceWithCompanion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5338);
  }

  return result;
}

uint64_t sub_10049302C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100493074()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10048F218(v2, v3, v5, v4);
}

uint64_t sub_100493124()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10048EB4C(v2, v3, v5, v4);
}

uint64_t sub_1004931D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100493214()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10048E3FC(v2, v3, v5, v4);
}

uint64_t sub_1004932C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000368C;

  return sub_10048DC24(v2, v3, v4, v5, v6);
}

uint64_t sub_1004933A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005F04(a3, v27 - v11, &qword_1005A9690, &qword_1004C2A00);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002CE0(v12, &qword_1005A9690, &qword_1004C2A00);
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

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100493660(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100493754()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0D30);
  sub_10000A6F0(v0, qword_1005E0D30);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004937D8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0D48);
  v1 = sub_10000A6F0(v0, qword_1005E0D48);
  if (qword_1005A85C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0D30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004938A0()
{
  v1 = v0;
  v2 = type metadata accessor for Account();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccountService.State(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F4254(v1, v10, type metadata accessor for AccountService.State);
  v11 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v12 = (*(*(v11 - 8) + 48))(v10, 3, v11);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      return 0x6C696176616E752ELL;
    }

    else
    {
      return 0x756F6363416F6E2ELL;
    }
  }

  else if (v12)
  {
    return 0x6E776F6E6B6E752ELL;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    v13._object = 0x80000001004E5490;
    v13._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v13);
    _print_unlocked<A, B>(_:_:)();
    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = v17[0];
    (*(v3 + 8))(v6, v2);
    return v15;
  }
}

uint64_t sub_100493B14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004A0710(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100493B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A06BC();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_100493B98()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000016;
    v6 = 0xD00000000000001BLL;
    if (v1 != 6)
    {
      v5 = 0xD00000000000001BLL;
    }

    if (v1 != 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E752ELL;
    v3 = 0x6F707075736E752ELL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0)
    {
      v2 = 0x74756F656D69742ELL;
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
}

uint64_t sub_100493CAC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  swift_defaultActor_initialize();
  strcpy((v0 + 112), "AccountService");
  *(v0 + 127) = -18;
  type metadata accessor for WorkItemQueue();
  UUID.init()();
  *(v0 + 128) = WorkItemQueue.__allocating_init(identifier:)();
  *(v0 + 136) = 0;
  v4 = OBJC_IVAR____TtC13findmylocated14AccountService_state;
  v5 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 3, v5);
  v6 = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  v7 = type metadata accessor for Account();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC13findmylocated14AccountService_stateContinuations) = _swiftEmptyDictionarySingleton;
  v8 = OBJC_IVAR____TtC13findmylocated14AccountService_cloudKitAccountStateStream;
  v9 = sub_10004B564(&qword_1005B3560, &qword_1004D82E8);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC13findmylocated14AccountService_isInitialized) = 0;
  return v1;
}

void *sub_100493E94()
{
  v1 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = v0[16];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  swift_retain_n();
  sub_1004933A0(0, 0, v4, &unk_1004DCD58, v7);

  sub_100002CE0(v4, &qword_1005A9690, &qword_1004C2A00);
  v8 = v0[17];
  if (v8)
  {
    v9 = objc_opt_self();
    swift_unknownObjectRetain();
    v10 = [v9 defaultCenter];
    [v10 removeObserver:v8];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v11 = v0[15];

  v12 = v0[16];

  v13 = v0[17];
  swift_unknownObjectRelease();
  sub_10049FD7C(v0 + OBJC_IVAR____TtC13findmylocated14AccountService_state, type metadata accessor for AccountService.State);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14AccountService__account, &qword_1005A9110, &qword_1004C25F8);
  v14 = *(v0 + OBJC_IVAR____TtC13findmylocated14AccountService_stateContinuations);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14AccountService_cloudKitAccountStateStream, &qword_1005B3728, &qword_1004D8410);
  v15 = *(v0 + OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1004940D8()
{
  v1 = *(&async function pointer to dispatch thunk of WorkItemQueue.invalidate() + 1);
  v4 = (&async function pointer to dispatch thunk of WorkItemQueue.invalidate() + async function pointer to dispatch thunk of WorkItemQueue.invalidate());
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10000368C;

  return v4();
}

uint64_t sub_10049417C()
{
  sub_100493E94();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1004941B0()
{
  v0 = type metadata accessor for AccountService.State(319);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10049C008();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10049C060();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100494314()
{
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccountService startup", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10049442C()
{
  v1[263] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B3728, &qword_1004D8410) - 8) + 64) + 15;
  v1[269] = swift_task_alloc();
  v3 = *(*(type metadata accessor for AccountService.State(0) - 8) + 64) + 15;
  v1[275] = swift_task_alloc();
  v4 = sub_10004B564(&qword_1005AFA48, &unk_1004D1178);
  v1[281] = v4;
  v5 = *(v4 - 8);
  v1[287] = v5;
  v6 = *(v5 + 64) + 15;
  v1[293] = swift_task_alloc();
  v1[299] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v1[305] = swift_task_alloc();
  v8 = type metadata accessor for Account();
  v1[311] = v8;
  v9 = *(v8 - 8);
  v1[317] = v9;
  v10 = *(v9 + 64) + 15;
  v1[318] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v1[319] = v12;
  *v12 = v1;
  v12[1] = sub_10049462C;

  return daemon.getter();
}

uint64_t sub_10049462C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2552);
  v12 = *v1;
  v3[320] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[321] = v6;
  v7 = type metadata accessor for Daemon();
  v3[322] = v7;
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_10000EE98(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[323] = v9;
  v10 = sub_10000EE98(&qword_1005AD510, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_10049480C;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_10049480C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2568);
  v6 = *v2;
  v4[324] = a1;
  v4[325] = v1;

  if (v1)
  {
    v7 = v4[263];

    return _swift_task_switch(sub_1004959EC, v7, 0);
  }

  else
  {
    v8 = v4[320];

    v9 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
    v12 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v10 = swift_task_alloc();
    v4[326] = v10;
    *v10 = v6;
    v10[1] = sub_1004949B4;

    return v12();
  }
}

uint64_t sub_1004949B4()
{
  v1 = *(*v0 + 2608);
  v2 = *(*v0 + 2104);
  v4 = *v0;

  return _swift_task_switch(sub_100494AC4, v2, 0);
}

uint64_t sub_100494AC4()
{
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[327] = sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccountService run", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[328] = v5;
  *v5 = v0;
  v5[1] = sub_100494C1C;
  v6 = v0[318];
  v7 = v0[263];

  return sub_10049AC64(v6);
}

uint64_t sub_100494C1C()
{
  v2 = *v1;
  v3 = *(*v1 + 2624);
  v4 = *v1;
  *(*v1 + 2632) = v0;

  v5 = *(v2 + 2104);
  if (v0)
  {
    v6 = sub_100495AA4;
  }

  else
  {
    v6 = sub_100494D48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100494D48()
{
  v1 = v0[327];
  v2 = v0[317];
  v3 = v0[311];
  v4 = v0[305];
  v5 = v0[263];
  v6 = *(v2 + 16);
  v6(v4, v0[318], v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v7 = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  swift_beginAccess();
  sub_100022364(v4, v5 + v7, &qword_1005A9110, &qword_1004C25F8);
  swift_endAccess();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Successfully updated account info", v10, 2u);
  }

  v11 = v0[263];

  v12 = OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations;
  v13 = *(v11 + OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations);
  v14 = *(v13 + 16);
  if (v14)
  {
    v33 = OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations;
    v34 = v6;
    v15 = v0[287];
    v18 = *(v15 + 16);
    v17 = v15 + 16;
    v16 = v18;
    v19 = v13 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);

    do
    {
      v21 = v0[299];
      v22 = v0[281];
      v16(v21, v19, v22);
      CheckedContinuation.resume(returning:)();
      (*(v17 - 8))(v21, v22);
      v19 += v20;
      --v14;
    }

    while (v14);

    v12 = v33;
    v23 = *(v11 + v33);
    v6 = v34;
  }

  v24 = v0[318];
  v25 = v0[311];
  v26 = v0[275];
  v27 = v0[263];
  *(v11 + v12) = _swiftEmptyArrayStorage;

  *(v27 + OBJC_IVAR____TtC13findmylocated14AccountService_isInitialized) = 1;
  v6(v26, v24, v25);
  v28 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  (*(*(v28 - 8) + 56))(v26, 0, 3, v28);
  v29 = swift_task_alloc();
  v0[330] = v29;
  *v29 = v0;
  v29[1] = sub_100495044;
  v30 = v0[275];
  v31 = v0[263];

  return sub_100496084(v30, 0);
}

uint64_t sub_100495044()
{
  v1 = *(*v0 + 2640);
  v2 = *(*v0 + 2200);
  v3 = *(*v0 + 2104);
  v5 = *v0;

  sub_10049FD7C(v2, type metadata accessor for AccountService.State);

  return _swift_task_switch(sub_100495184, v3, 0);
}

uint64_t sub_100495184()
{
  (*(v0[317] + 8))(v0[318], v0[311]);
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[331] = v2;
  *v2 = v0;
  v2[1] = sub_100495230;

  return daemon.getter();
}

uint64_t sub_100495230(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2648);
  v5 = *v1;
  v3[332] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[333] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_10000EE98(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_1004953E4;
  v10 = v3[323];
  v11 = v3[322];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1004953E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2664);
  v6 = *v2;
  v4[334] = a1;
  v4[335] = v1;

  if (v1)
  {
    v7 = v4[263];
    v8 = sub_100495D00;
  }

  else
  {
    v9 = v4[332];

    v8 = sub_100495520;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100495520()
{
  *(v0 + 2688) = *(*(v0 + 2672) + 136);
  type metadata accessor for CloudKitStorage();
  sub_10000EE98(&qword_1005B3738, &type metadata accessor for CloudKitStorage);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004955E0, v2, v1);
}

uint64_t sub_1004955E0()
{
  v1 = v0[336];
  v2 = v0[269];
  v3 = v0[263];
  dispatch thunk of CloudKitStorage.stateStream()();

  return _swift_task_switch(sub_100495650, v3, 0);
}

uint64_t sub_100495650()
{
  v1 = *(v0 + 2152);
  v2 = *(v0 + 2104);
  v3 = sub_10004B564(&qword_1005B3560, &qword_1004D82E8);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14AccountService_cloudKitAccountStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B3728, &qword_1004D8410);
  swift_endAccess();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_1004957E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 2696) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 1296, a2, sub_100495DC4, v3 + 2000);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 656);
  }
}

uint64_t sub_100495824(uint64_t a1, uint64_t a2)
{
  *(v3 + 2704) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 1296, a2, sub_100495F24, v3 + 2208);
  }

  else
  {
    return _swift_asyncLet_get(v3 + 1296, a2, sub_100495864, v3 + 2352);
  }
}

uint64_t sub_10049590C()
{
  v1 = v0[334];
  v2 = v0[324];
  v3 = v0[318];
  v4 = v0[305];
  v5 = v0[299];
  v6 = v0[293];
  v7 = v0[275];
  v8 = v0[269];
  v9 = v0[263];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004959EC()
{
  v1 = v0[320];

  v2 = v0[325];
  v3 = v0[318];
  v4 = v0[305];
  v5 = v0[299];
  v6 = v0[293];
  v7 = v0[275];
  v8 = v0[269];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100495AA4()
{
  v1 = v0[329];
  v2 = v0[327];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[329];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to update account info due to %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  v9 = v0[263];

  v10 = OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations;
  v11 = *(v9 + OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations);
  v12 = *(v11 + 16);
  if (v12)
  {
    v27 = OBJC_IVAR____TtC13findmylocated14AccountService_initContinuations;
    v28 = v9;
    v13 = v0[287];
    v16 = *(v13 + 16);
    v14 = v13 + 16;
    v15 = v16;
    v17 = v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);

    do
    {
      v19 = v0[293];
      v20 = v0[281];
      v15(v19, v17, v20);
      CheckedContinuation.resume(returning:)();
      (*(v14 - 8))(v19, v20);
      v17 += v18;
      --v12;
    }

    while (v12);

    v10 = v27;
    v9 = v28;
  }

  v21 = v0[329];
  v22 = v0[263];

  v23 = *(v9 + v10);
  *(v9 + v10) = _swiftEmptyArrayStorage;

  *(v22 + OBJC_IVAR____TtC13findmylocated14AccountService_isInitialized) = 1;
  v24 = async function pointer to daemon.getter[1];
  v25 = swift_task_alloc();
  v0[331] = v25;
  *v25 = v0;
  v25[1] = sub_100495230;

  return daemon.getter();
}

uint64_t sub_100495D00()
{
  v1 = v0[332];
  v2 = v0[324];

  v3 = v0[335];
  v4 = v0[318];
  v5 = v0[305];
  v6 = v0[299];
  v7 = v0[293];
  v8 = v0[275];
  v9 = v0[269];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100495E50()
{
  v1 = v0[334];
  v2 = v0[324];
  v3 = v0[263];

  v4 = v0[337];
  v5 = v0[318];
  v6 = v0[305];
  v7 = v0[299];
  v8 = v0[293];
  v9 = v0[275];
  v10 = v0[269];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100495FB0()
{
  v1 = v0[334];
  v2 = v0[324];
  v3 = v0[263];

  v4 = v0[338];
  v5 = v0[318];
  v6 = v0[305];
  v7 = v0[299];
  v8 = v0[293];
  v9 = v0[275];
  v10 = v0[269];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100496084(uint64_t a1, char a2)
{
  *(v3 + 232) = a2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  v4 = sub_10004B564(&qword_1005B5628, &qword_1004DCCB0);
  *(v3 + 104) = v4;
  v5 = *(v4 - 8);
  *(v3 + 112) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  *(v3 + 128) = v7;
  v8 = *(v7 - 8);
  *(v3 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005B5610, &qword_1004DCC98);
  *(v3 + 152) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v12 = *(*(type metadata accessor for AccountService.State(0) - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100496278, v2, 0);
}

uint64_t sub_100496278()
{
  v109 = v0;
  v1 = *(v0 + 224);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = OBJC_IVAR____TtC13findmylocated14AccountService_state;
  swift_beginAccess();
  sub_1003F4254(v5 + v6, v1, type metadata accessor for AccountService.State);
  v7 = *(v3 + 48);
  sub_10049FCB4(v1, v2);
  sub_1003F4254(v4, v2 + v7, type metadata accessor for AccountService.State);
  v8 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v2, 3, v8);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if (v9(v2 + v7, 3, v8) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v9(v2 + v7, 3, v8) != 3)
    {
      goto LABEL_11;
    }
  }

  else if (v10)
  {
    if (v9(v2 + v7, 3, v8) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1003F4254(*(v0 + 160), *(v0 + 216), type metadata accessor for AccountService.State);
    v11 = v9(v2 + v7, 3, v8);
    v12 = type metadata accessor for Account();
    v13 = *(*(v12 - 8) + 8);
    v14 = *(v0 + 216);
    if (v11)
    {
      (v13)(*(v0 + 216), v12);
LABEL_11:
      sub_100002CE0(*(v0 + 160), &qword_1005B5610, &qword_1004DCC98);
      goto LABEL_14;
    }

    v15 = v2 + v7;
    v16 = v12;
    v13(v15);
    (v13)(v14, v16);
  }

  v17 = *(v0 + 232);
  sub_10049FD7C(*(v0 + 160), type metadata accessor for AccountService.State);
  if (v17 != 1)
  {
    goto LABEL_58;
  }

LABEL_14:
  v18 = &qword_1005A8000;
  v104 = v0;
  if ((static SystemInfo.isInternalBuild.getter() & 1) == 0)
  {
    if (qword_1005A85C8 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 192);
    v40 = *(v0 + 88);
    v39 = *(v0 + 96);
    v41 = type metadata accessor for Logger();
    sub_10000A6F0(v41, qword_1005E0D48);
    sub_1003F4254(v40, v38, type metadata accessor for AccountService.State);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v42, v43))
    {
      v57 = *(v0 + 192);

      v56 = v57;
      goto LABEL_27;
    }

    v44 = v9;
    v45 = v5;
    v46 = *(v0 + 176);
    v47 = *(v0 + 184);
    v48 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v48 = 136446466;
    v49 = v45;
    v102 = v6;
    sub_1003F4254(v45 + v6, v47, type metadata accessor for AccountService.State);
    sub_1003F4254(v47, v46, type metadata accessor for AccountService.State);
    v50 = v44(v46, 3, v8);
    sub_10049FD7C(v47, type metadata accessor for AccountService.State);
    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v54 = 0x6C696176616E752ELL;
        v55 = 0xEC000000656C6261;
      }

      else
      {
        v54 = 0x756F6363416F6E2ELL;
        v55 = 0xEA0000000000746ELL;
      }
    }

    else
    {
      if (!v50)
      {
        v51 = v104;
        v52 = v104[22];
        v53 = type metadata accessor for Account();
        (*(*(v53 - 8) + 8))(v52, v53);
        v54 = 0x62616C696176612ELL;
        v55 = 0xEA0000000000656CLL;
LABEL_33:
        v58 = v51[24];
        v59 = v51[21];
        v60 = sub_10000D01C(v54, v55, &v108);

        *(v48 + 4) = v60;
        *(v48 + 12) = 2082;
        sub_1003F4254(v58, v59, type metadata accessor for AccountService.State);
        v61 = v44(v59, 3, v8);
        sub_10049FD7C(v58, type metadata accessor for AccountService.State);
        if (v61 > 1)
        {
          v5 = v49;
          v6 = v102;
          v18 = &qword_1005A8000;
          if (v61 == 2)
          {
            v64 = 0x6C696176616E752ELL;
            v65 = 0xEC000000656C6261;
          }

          else
          {
            v64 = 0x756F6363416F6E2ELL;
            v65 = 0xEA0000000000746ELL;
          }

          v0 = v104;
        }

        else
        {
          v5 = v49;
          v6 = v102;
          v18 = &qword_1005A8000;
          if (v61)
          {
            v65 = 0xE800000000000000;
            v0 = v104;
            v64 = 0x6E776F6E6B6E752ELL;
          }

          else
          {
            v0 = v104;
            v62 = v104[21];
            v63 = type metadata accessor for Account();
            (*(*(v63 - 8) + 8))(v62, v63);
            v64 = 0x62616C696176612ELL;
            v65 = 0xEA0000000000656CLL;
          }
        }

        v66 = sub_10000D01C(v64, v65, &v108);

        *(v48 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v42, v43, "State: %{public}s -> %{public}s", v48, 0x16u);
        swift_arrayDestroy();

        goto LABEL_42;
      }

      v55 = 0xE800000000000000;
      v54 = 0x6E776F6E6B6E752ELL;
    }

    v51 = v104;
    goto LABEL_33;
  }

  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 208);
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  v22 = type metadata accessor for Logger();
  sub_10000A6F0(v22, qword_1005E0D48);
  sub_1003F4254(v20, v19, type metadata accessor for AccountService.State);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 208);
  if (!v25)
  {

    v56 = v26;
LABEL_27:
    sub_10049FD7C(v56, type metadata accessor for AccountService.State);
    goto LABEL_42;
  }

  v27 = *(v0 + 200);
  v28 = swift_slowAlloc();
  v108 = swift_slowAlloc();
  *v28 = 141558787;
  *(v28 + 4) = 1752392040;
  *(v28 + 12) = 2081;
  sub_1003F4254(v5 + v6, v27, type metadata accessor for AccountService.State);
  v105 = v5;
  v29 = sub_1004938A0();
  v30 = v6;
  v32 = v31;
  sub_10049FD7C(v27, type metadata accessor for AccountService.State);
  v33 = sub_10000D01C(v29, v32, &v108);
  v6 = v30;
  v0 = v104;

  *(v28 + 14) = v33;
  *(v28 + 22) = 2160;
  *(v28 + 24) = 1752392040;
  *(v28 + 32) = 2081;
  v34 = sub_1004938A0();
  v36 = v35;
  v18 = &qword_1005A8000;
  sub_10049FD7C(v26, type metadata accessor for AccountService.State);
  v37 = sub_10000D01C(v34, v36, &v108);
  v5 = v105;

  *(v28 + 34) = v37;
  _os_log_impl(&_mh_execute_header, v23, v24, "State: %{private,mask.hash}s -> %{private,mask.hash}s", v28, 0x2Au);
  swift_arrayDestroy();

LABEL_42:
  v67 = *(v0 + 88);
  v68 = *(v0 + 96);
  swift_beginAccess();
  sub_10049FD18(v67, v5 + v6);
  swift_endAccess();
  v69 = OBJC_IVAR____TtC13findmylocated14AccountService_stateContinuations;
  swift_beginAccess();
  v70 = *(v68 + v69);
  v71 = *(v70 + 16);
  if (v71)
  {
    if (v18[185] != -1)
    {
LABEL_62:
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000A6F0(v72, qword_1005E0D48);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 134217984;
      *(v75 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v73, v74, "Publishing State change event to %ld subscribers", v75, 0xCu);
    }

    v70 = *(v68 + v69);
  }

  v76 = *(v0 + 136);
  v77 = *(v0 + 112);
  v78 = v70 + 64;
  v79 = -1;
  v80 = -1 << *(v70 + 32);
  if (-v80 < 64)
  {
    v79 = ~(-1 << -v80);
  }

  v0 = v79 & *(v70 + 64);
  v81 = (63 - v80) >> 6;
  v100 = (v77 + 8);
  v101 = v76;
  v103 = v70;

  v82 = 0;
  if (v0)
  {
    while (1)
    {
      v83 = v82;
LABEL_55:
      v84 = v104[25];
      v85 = v104[18];
      v69 = v104[15];
      v68 = v104[16];
      v106 = v104[13];
      v86 = v104[11];
      v87 = __clz(__rbit64(v0));
      v0 &= v0 - 1;
      v71 = v101;
      (*(v101 + 16))(v85, *(v103 + 56) + *(v101 + 72) * (v87 | (v83 << 6)), v68);
      sub_1003F4254(v86, v84, type metadata accessor for AccountService.State);
      AsyncStream.Continuation.yield(_:)();
      (*v100)(v69, v106);
      (*(v101 + 8))(v85, v68);
      if (!v0)
      {
        goto LABEL_51;
      }
    }
  }

  while (1)
  {
LABEL_51:
    v83 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v83 >= v81)
    {
      break;
    }

    v0 = *(v78 + 8 * v83);
    ++v82;
    if (v0)
    {
      v82 = v83;
      goto LABEL_55;
    }
  }

  v0 = v104;
LABEL_58:
  v89 = *(v0 + 216);
  v88 = *(v0 + 224);
  v91 = *(v0 + 200);
  v90 = *(v0 + 208);
  v93 = *(v0 + 184);
  v92 = *(v0 + 192);
  v95 = *(v0 + 168);
  v94 = *(v0 + 176);
  v96 = *(v0 + 160);
  v97 = *(v0 + 144);
  v107 = *(v0 + 120);

  v98 = *(v0 + 8);

  return v98();
}

uint64_t sub_100496E78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100496F08();
}

uint64_t sub_100496F08()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for CloudKitStorage.State();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005B3758, &qword_1004D8580) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005B3760, &qword_1004D8588);
  v1[15] = v7;
  v8 = *(v7 - 8);
  v1[16] = v8;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005B3728, &qword_1004D8410) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v11 = sub_10004B564(&qword_1005B3560, &qword_1004D82E8);
  v1[19] = v11;
  v12 = *(v11 - 8);
  v1[20] = v12;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_100497180, v0, 0);
}

uint64_t sub_100497180()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);

    v10 = *(v0 + 8);
LABEL_11:

    return v10();
  }

  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  *(v0 + 176) = sub_10000A6F0(v11, qword_1005E0D48);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Monitoring CloudKit AccountState stream", v14, 2u);
  }

  v15 = *(v0 + 152);
  v16 = *(v0 + 160);
  v17 = *(v0 + 144);
  v18 = *(v0 + 40);

  v19 = OBJC_IVAR____TtC13findmylocated14AccountService_cloudKitAccountStateStream;
  swift_beginAccess();
  sub_100005F04(v18 + v19, v17, &qword_1005B3728, &qword_1004D8410);
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    sub_100002CE0(*(v0 + 144), &qword_1005B3728, &qword_1004D8410);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "cloudKitAccountStateStream should be available by now!", v22, 2u);
    }

    sub_10049FA50();
    swift_allocError();
    *v23 = 7;
    swift_willThrow();
    v24 = *(v0 + 168);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v28 = *(v0 + 104);
    v27 = *(v0 + 112);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);

    v10 = *(v0 + 8);
    goto LABEL_11;
  }

  v34 = *(v0 + 136);
  (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
  AsyncStream.makeAsyncIterator()();
  v35 = sub_10000EE98(&qword_1005B5608, type metadata accessor for AccountService);
  v36 = enum case for CloudKitStorage.State.unavailable(_:);
  *(v0 + 232) = enum case for CloudKitStorage.State.unknown(_:);
  *(v0 + 236) = v36;
  v37 = enum case for CloudKitStorage.State.loading(_:);
  *(v0 + 240) = enum case for CloudKitStorage.State.noAccount(_:);
  *(v0 + 244) = v37;
  v38 = enum case for CloudKitStorage.State.available(_:);
  *(v0 + 248) = enum case for CloudKitStorage.State.rebuilding(_:);
  *(v0 + 252) = v38;
  *(v0 + 256) = enum case for CloudKitStorage.State.apnsConnected(_:);
  *(v0 + 184) = v35;
  *(v0 + 192) = 0;
  v39 = *(v0 + 40);
  v40 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v41 = swift_task_alloc();
  *(v0 + 200) = v41;
  *v41 = v0;
  v41[1] = sub_1004975FC;
  v42 = *(v0 + 136);
  v43 = *(v0 + 112);
  v44 = *(v0 + 120);

  return AsyncStream.Iterator.next(isolation:)(v43, v39, v35, v44);
}

uint64_t sub_1004975FC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10049770C, v2, 0);
}

uint64_t sub_10049770C()
{
  v108 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 152);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 168);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    v15 = *(v0 + 56);

    v16 = *(v0 + 8);
LABEL_5:

    return v16();
  }

  v17 = *(v0 + 192);
  (*(v3 + 32))(*(v0 + 104), v1, v2);
  static Task<>.checkCancellation()();
  *(v0 + 208) = v17;
  if (v17)
  {
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v20 = *(v0 + 152);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v23 = *(v0 + 120);
    (*(*(v0 + 72) + 8))(*(v0 + 104), *(v0 + 64));
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v24 = *(v0 + 168);
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    v28 = *(v0 + 104);
    v27 = *(v0 + 112);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);

    v16 = *(v0 + 8);
    goto LABEL_5;
  }

  v34 = *(v0 + 176);
  v35 = *(*(v0 + 72) + 16);
  v35(*(v0 + 96), *(v0 + 104), *(v0 + 64));
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 96);
  v41 = *(v0 + 64);
  v40 = *(v0 + 72);
  if (v38)
  {
    v42 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v107[0] = v103;
    *v42 = 136315138;
    sub_10000EE98(&qword_1005B3768, &type metadata accessor for CloudKitStorage.State);
    v102 = v37;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v35;
    v45 = v44;
    v46 = *(v40 + 8);
    v46(v39, v41);
    v47 = sub_10000D01C(v43, v45, v107);
    v35 = v105;

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v36, v102, "cloudKitAccountStateStream event: %s", v42, 0xCu);
    sub_100004984(v103);
  }

  else
  {

    v46 = *(v40 + 8);
    v46(v39, v41);
  }

  *(v0 + 216) = v46;
  v49 = *(v0 + 232);
  v48 = *(v0 + 236);
  v50 = *(v0 + 88);
  v51 = *(v0 + 64);
  v52 = *(v0 + 72);
  v35(v50, *(v0 + 104), v51);
  v53 = (*(v52 + 88))(v50, v51);
  if (v53 == v49 || v53 == v48)
  {
    goto LABEL_20;
  }

  if (v53 == *(v0 + 240))
  {
    v54 = *(v0 + 176);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 104);
    v59 = *(v0 + 64);
    v60 = *(v0 + 72);
    if (v57)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "CK account is .noAccount.", v61, 2u);

      v46(v58, v59);
LABEL_25:
      *(v0 + 192) = *(v0 + 208);
      v85 = *(v0 + 184);
      v86 = *(v0 + 40);
      v87 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
      v88 = swift_task_alloc();
      *(v0 + 200) = v88;
      *v88 = v0;
      v88[1] = sub_1004975FC;
      v89 = *(v0 + 136);
      v90 = *(v0 + 112);
      v91 = *(v0 + 120);

      return AsyncStream.Iterator.next(isolation:)(v90, v86, v85, v91);
    }

    v83 = v58;
    v84 = v59;
LABEL_24:
    v46(v83, v84);
    goto LABEL_25;
  }

  if (v53 == *(v0 + 244) || v53 == *(v0 + 248))
  {
LABEL_20:
    v69 = *(v0 + 176);
    v35(*(v0 + 80), *(v0 + 104), *(v0 + 64));
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v0 + 104);
    v75 = *(v0 + 72);
    v74 = *(v0 + 80);
    v76 = *(v0 + 64);
    if (!v72)
    {

      v46(v74, v76);
      v46(v73, v76);
      goto LABEL_25;
    }

    v104 = *(v0 + 104);
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v107[0] = v78;
    *v77 = 136315138;
    sub_10000EE98(&qword_1005B3768, &type metadata accessor for CloudKitStorage.State);
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v81 = v80;
    v46(v74, v76);
    v82 = sub_10000D01C(v79, v81, v107);

    *(v77 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v70, v71, "Ignoring %s", v77, 0xCu);
    sub_100004984(v78);

    v83 = v104;
    v84 = v76;
    goto LABEL_24;
  }

  if (v53 == *(v0 + 252))
  {
    v106 = *(v0 + 104);
    v62 = *(v0 + 64);
    v64 = *(v0 + 48);
    v63 = *(v0 + 56);
    v65 = *(v0 + 40);
    v66 = *(v0 + 72) + 8;
    v67 = *(v65 + 128);
    type metadata accessor for WorkItemQueue.WorkItem();
    v68 = swift_allocObject();
    *(v68 + 16) = v65;
    *(v68 + 24) = v64;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v46(v106, v62);
    goto LABEL_25;
  }

  if (v53 != *(v0 + 256))
  {
    v94 = *(v0 + 176);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "Unknown CloudKitStorage.State!", v97, 2u);
    }

    v98 = *(v0 + 104);
    v99 = *(v0 + 88);
    v100 = *(v0 + 64);
    v101 = *(v0 + 72);

    v46(v98, v100);
    v46(v99, v100);
    goto LABEL_25;
  }

  v92 = swift_task_alloc();
  *(v0 + 224) = v92;
  *v92 = v0;
  v92[1] = sub_100498000;
  v93 = *(v0 + 40);

  return sub_1004997A8();
}

uint64_t sub_100498000()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100498110, v2, 0);
}

uint64_t sub_100498110()
{
  v1 = *(v0 + 72) + 8;
  (*(v0 + 216))(*(v0 + 104), *(v0 + 64));
  *(v0 + 192) = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 40);
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_1004975FC;
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);

  return AsyncStream.Iterator.next(isolation:)(v7, v3, v2, v8);
}

uint64_t sub_1004981E8(uint64_t a1, void *a2)
{
  v2[2] = a2;
  v2[3] = *a2;
  v4 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1004982B0, a2, 0);
}

uint64_t sub_1004982B0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = sub_10000EE98(&qword_1005B5608, type metadata accessor for AccountService);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v3;
  v6[5] = v2;
  swift_retain_n();
  sub_1001D7F30(0, 0, v1, &unk_1004DCD10, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004983FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003788;

  return sub_10049848C();
}

uint64_t sub_10049848C()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return _swift_task_switch(sub_1004984D4, v0, 0);
}

uint64_t sub_1004984D4()
{
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering for account store changes", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[9];

  v7 = [objc_opt_self() defaultCenter];
  v8 = ACDAccountStoreDidChangeNotification;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v6;
  v0[6] = sub_10049FFB0;
  v0[7] = v10;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100493660;
  v0[5] = &unk_10059ECD0;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  v13 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);

  v14 = *(v5 + 136);
  *(v5 + 136) = v13;
  swift_unknownObjectRelease();
  v15 = v0[1];

  return v15();
}

uint64_t sub_100498710(uint64_t a1)
{
  v39 = a1;
  v38 = sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  v35 = *(v38 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v38);
  v3 = &v27 - v2;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
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

    sub_1001D7F30(0, 0, v37, &unk_1004DCD70, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_100498B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
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

  sub_1001D7F30(0, 0, v11, &unk_1004DCD80, v14);
}

uint64_t sub_100498CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100498D14, a4, 0);
}

uint64_t sub_100498D14()
{
  v1 = v0[2];
  sub_100498D74(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100498D74(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AC680, &qword_1004C6F28);
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
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005E0D48);
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
    sub_10000EE98(&qword_1005A92C0, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = a1;
    v20 = v19;
    (*(v7 + 8))(v12, v6);
    v21 = sub_10000D01C(v18, v20, &v30);
    a1 = v26;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Removing stateContinuation for %{public}s", v17, 0xCu);
    sub_100004984(v25);

    v5 = v27;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  v22 = v29;
  v28(v29, a1, v6);
  v23 = sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  swift_beginAccess();
  sub_1001468A8(v5, v22);
  return swift_endAccess();
}

uint64_t sub_100499110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_10004B564(&qword_1005B5628, &qword_1004DCCB0);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(*(type metadata accessor for AccountService.State(0) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_10049921C, a4, 0);
}

uint64_t sub_10049921C()
{
  v1 = v0[12];
  v2 = v0[5];
  sub_1004993D4(v0[6], v0[7]);
  v3 = OBJC_IVAR____TtC13findmylocated14AccountService_state;
  swift_beginAccess();
  sub_1003F4254(v2 + v3, v1, type metadata accessor for AccountService.State);

  return _swift_task_switch(sub_1004992D0, 0, 0);
}

uint64_t sub_1004992D0()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  sub_1003F4254(v1, v0[11], type metadata accessor for AccountService.State);
  sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  sub_10049FD7C(v1, type metadata accessor for AccountService.State);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004993D4(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_10004B564(&qword_1005AC680, &qword_1004C6F28);
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
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005E0D48);
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
    sub_10000EE98(&qword_1005A92C0, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a2;
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_10000D01C(v19, v21, &v34);
    a2 = v29;

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Storing stateContinuation for %{public}s", v18, 0xCu);
    sub_100004984(v28);

    v6 = v30;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v23 = v32;
  v31(v32, a2, v7);
  v24 = sub_10004B564(&qword_1005AC688, &unk_1004C6F30);
  v25 = *(v24 - 8);
  (*(v25 + 16))(v6, v33, v24);
  (*(v25 + 56))(v6, 0, 1, v24);
  swift_beginAccess();
  sub_1001468A8(v6, v23);
  return swift_endAccess();
}

uint64_t sub_1004997A8()
{
  v1[8] = v0;
  v2 = *(*(type metadata accessor for AccountService.State(0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for Account();
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();
  v7 = type metadata accessor for DataManager.State(0);
  v1[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100499908, v0, 0);
}

uint64_t sub_100499908()
{
  v10 = v0;
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 136) = sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EB300, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_100499AB8;

  return daemon.getter();
}

uint64_t sub_100499AB8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v12 = *v1;
  *(v3 + 152) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_10000EE98(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10000EE98(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100499C94;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100499C94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  if (v1)
  {
    v7 = v4[8];
    v8 = sub_10049A608;
  }

  else
  {
    v9 = v4[19];

    v8 = sub_100499DCC;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100499DCC()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC13findmylocated11DataManager_state;
  swift_beginAccess();
  sub_1003F4254(v1 + v4, v2, type metadata accessor for DataManager.State);

  return _swift_task_switch(sub_100499E80, v3, 0);
}

uint64_t sub_100499E80()
{
  v46 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  swift_storeEnumTagMultiPayload();
  v4 = sub_100207E2C(v2, v1);
  sub_10049FD7C(v1, type metadata accessor for DataManager.State);
  sub_10049FD7C(v2, type metadata accessor for DataManager.State);
  if ((v4 & 1) == 0)
  {
    v29 = v0[21];

LABEL_10:
    v31 = v0[15];
    v30 = v0[16];
    v32 = v0[13];
    v34 = v0[9];
    v33 = v0[10];

    v35 = v0[1];

    return v35();
  }

  v5 = v0[17];
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EB300, v45);
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Sending account .available state to retry initClient", v8, 0xCu);
    sub_100004984(v9);
  }

  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[10];
  v13 = v0[8];
  v14 = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  swift_beginAccess();
  sub_100005F04(v13 + v14, v12, &qword_1005A9110, &qword_1004C25F8);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    v15 = v0[17];
    sub_100002CE0(v0[10], &qword_1005A9110, &qword_1004C25F8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EB300, v45);
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s Account is nil!", v18, 0xCu);
      sub_100004984(v19);
    }

    v20 = v0[21];
    sub_10049FA50();
    swift_allocError();
    *v21 = 6;
    swift_willThrow();

    v22 = v0[17];
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v45[0] = v27;
      *v25 = 136446466;
      *(v25 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EB300, v45);
      *(v25 + 12) = 2114;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v28;
      *v26 = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s failed due to %{public}@", v25, 0x16u);
      sub_100002CE0(v26, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v27);
    }

    else
    {
    }

    goto LABEL_10;
  }

  v38 = v0[12];
  v37 = v0[13];
  v39 = v0[11];
  v40 = v0[9];
  (*(v38 + 32))(v37, v0[10], v39);
  (*(v38 + 16))(v40, v37, v39);
  v41 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  (*(*(v41 - 8) + 56))(v40, 0, 3, v41);
  v42 = swift_task_alloc();
  v0[23] = v42;
  *v42 = v0;
  v42[1] = sub_10049A410;
  v44 = v0[8];
  v43 = v0[9];

  return sub_100496084(v43, 1);
}

uint64_t sub_10049A410()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v5 = *v0;

  sub_10049FD7C(v2, type metadata accessor for AccountService.State);

  return _swift_task_switch(sub_10049A550, v3, 0);
}

uint64_t sub_10049A550()
{
  v1 = v0[21];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  (*(v3 + 8))(v2, v4);
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v9 = v0[9];
  v8 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10049A608()
{
  v18 = v0;
  v1 = v0[19];

  v2 = v0[22];
  v3 = v0[17];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EB300, &v17);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed due to %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[13];
  v14 = v0[9];
  v13 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10049A7FC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10049A898, v1, 0);
}

uint64_t sub_10049A898()
{
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Renewing credentials...", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10049A9E8;
  v6 = v0[5];
  v7 = v0[6];

  return sub_10049AC64(v6);
}

uint64_t sub_10049A9E8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 48);

    return _swift_task_switch(sub_10049AB34, v8, 0);
  }
}

uint64_t sub_10049AB34()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = type metadata accessor for Account();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  swift_beginAccess();
  sub_100022364(v1, v2 + v6, &qword_1005A9110, &qword_1004C25F8);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10049AC64(uint64_t a1)
{
  v2[51] = a1;
  v2[52] = v1;
  v3 = type metadata accessor for Account();
  v2[53] = v3;
  v4 = *(v3 - 8);
  v2[54] = v4;
  v5 = *(v4 + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v6 = type metadata accessor for Account.TokenStatus();
  v2[57] = v6;
  v7 = *(v6 - 8);
  v2[58] = v7;
  v8 = *(v7 + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v9 = *(*(type metadata accessor for AccountService.State(0) - 8) + 64) + 15;
  v2[61] = swift_task_alloc();

  return _swift_task_switch(sub_10049ADC4, v1, 0);
}

uint64_t sub_10049ADC4()
{
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[62] = sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving account info...", v4, 2u);
  }

  v5 = v0[61];

  v6 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  (*(*(v6 - 8) + 56))(v5, 2, 3, v6);
  v7 = swift_task_alloc();
  v0[63] = v7;
  *v7 = v0;
  v7[1] = sub_10049AF70;
  v8 = v0[61];
  v9 = v0[52];

  return sub_100496084(v8, 0);
}

uint64_t sub_10049AF70()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 416);
  v5 = *v0;

  sub_10049FD7C(v2, type metadata accessor for AccountService.State);

  return _swift_task_switch(sub_10049B0B0, v3, 0);
}

uint64_t sub_10049B0B0()
{
  v1 = [objc_opt_self() defaultStore];
  v0[64] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 48;
    v0[3] = sub_10049B300;
    v3 = swift_continuation_init();
    v0[17] = sub_10004B564(&qword_1005B5620, &qword_1004DCCA8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10049C18C;
    v0[13] = &unk_10059EC58;
    v0[14] = v3;
    [v2 aa_primaryAppleAccountWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v4 = v0[62];
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account!", v7, 2u);
    }

    sub_10049FA50();
    swift_allocError();
    *v8 = 6;
    swift_willThrow();
    v10 = v0[60];
    v9 = v0[61];
    v11 = v0[59];
    v13 = v0[55];
    v12 = v0[56];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10049B300()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 520) = v3;
  v4 = *(v1 + 416);
  if (v3)
  {
    v5 = sub_10049BF3C;
  }

  else
  {
    v5 = sub_10049B420;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10049B420()
{
  v113 = v0;
  v1 = *(v0 + 384);
  if (!v1)
  {

    goto LABEL_5;
  }

  if (static SystemInfo.underTest.getter())
  {
    v2 = *(v0 + 512);

LABEL_5:
    v3 = *(v0 + 496);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Missing primary account!", v6, 2u);
    }

    sub_10049FA50();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
    goto LABEL_16;
  }

  v8 = [v1 aa_personID];
  if (!v8)
  {
LABEL_13:
    v12 = *(v0 + 496);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing credentials!", v15, 2u);
    }

    v16 = *(v0 + 512);

    sub_10049FA50();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();

    goto LABEL_16;
  }

  v9 = v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [v1 username];
  if (!v10)
  {
LABEL_12:

    goto LABEL_13;
  }

  v11 = v10;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (static SystemInfo.underTest.getter())
  {

    goto LABEL_12;
  }

  v25 = [v1 dataclassProperties];
  if (!v25)
  {
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
LABEL_32:
    sub_100002CE0(v0 + 144, &qword_1005A9680, &qword_1004C32A0);
    goto LABEL_33;
  }

  v26 = v25;
  *(v0 + 352) = 0xD000000000000020;
  *(v0 + 360) = 0x80000001004E4E80;
  v27 = [v25 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  if (v27)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
  }

  v28 = v112;
  *(v0 + 144) = v111;
  *(v0 + 160) = v28;
  if (!*(v0 + 168))
  {
    goto LABEL_32;
  }

  sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
  if (swift_dynamicCast())
  {
    v29 = *(v0 + 400);
    if (*(v29 + 16) && (v30 = sub_1000110D8(0x755F656C706F6570, 0xEA00000000006C72), (v31 & 1) != 0))
    {
      sub_10000709C(*(v29 + 56) + 32 * v30, v0 + 272);

      v32 = swift_dynamicCast();
      v33 = *(v0 + 368);
      if (v32)
      {
        v34 = *(v0 + 368);
        v35 = *(v0 + 376);
      }
    }

    else
    {
    }
  }

LABEL_33:
  v36 = [v1 dataclassProperties];
  if (!v36)
  {

    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
LABEL_43:
    sub_100002CE0(v0 + 176, &qword_1005A9680, &qword_1004C32A0);
LABEL_45:
    v44 = *(v0 + 512);
    sub_10049FA50();
    swift_allocError();
    *v45 = 4;
    swift_willThrow();

LABEL_16:
    v19 = *(v0 + 480);
    v18 = *(v0 + 488);
    v20 = *(v0 + 472);
    v22 = *(v0 + 440);
    v21 = *(v0 + 448);

    v23 = *(v0 + 8);
    goto LABEL_17;
  }

  v37 = v36;
  *(v0 + 304) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 312) = v38;
  v39 = [v37 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  if (v39)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
  }

  v40 = v112;
  *(v0 + 176) = v111;
  *(v0 + 192) = v40;
  if (!*(v0 + 200))
  {

    goto LABEL_43;
  }

  sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_45;
  }

  v41 = *(v0 + 392);
  v42 = [v1 aa_authToken];
  if (v42)
  {

    v43 = &enum case for Account.TokenStatus.success(_:);
  }

  else
  {
    v43 = &enum case for Account.TokenStatus.notAccessible(_:);
  }

  (*(*(v0 + 464) + 104))(*(v0 + 480), *v43, *(v0 + 456));
  if (*(v41 + 16) && (v46 = sub_1000110D8(0x766E45737061, 0xE600000000000000), (v47 & 1) != 0))
  {
    sub_10000709C(*(v41 + 56) + 32 * v46, v0 + 208);
    v48 = swift_dynamicCast();
    v49 = *(v0 + 336);
    if (!v48)
    {
      v49 = 0;
    }

    v106 = v49;
    if (v48)
    {
      v50 = *(v0 + 344);
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v106 = 0;
    v50 = 0;
  }

  if (*(v41 + 16) && (v51 = sub_1000110D8(0x6E74736F48707061, 0xEB00000000656D61), (v52 & 1) != 0))
  {
    sub_10000709C(*(v41 + 56) + 32 * v51, v0 + 240);

    if (swift_dynamicCast())
    {
      v53 = *(v0 + 320);
      v54 = *(v0 + 328);
    }
  }

  else
  {
  }

  v55 = [v1 aa_fmfAccount];
  if (!v55)
  {
    goto LABEL_70;
  }

  v56 = v55;
  v57 = [*(v0 + 512) credentialForAccount:v55];
  if (!v57)
  {
    v58 = v56;
LABEL_69:

LABEL_70:

    v65 = *(v0 + 512);
    v66 = *(v0 + 480);
    v67 = *(v0 + 456);
    v68 = *(v0 + 464);

    sub_10049FA50();
    swift_allocError();
    *v69 = 5;
    swift_willThrow();

    (*(v68 + 8))(v66, v67);
    goto LABEL_16;
  }

  v58 = v57;
  v59 = [v57 credentialItemForKey:ACFindMyFriendsAppTokenKey];
  if (!v59)
  {

    goto LABEL_69;
  }

  v103 = v58;
  v104 = v56;
  v60 = *(v0 + 472);
  v61 = *(v0 + 464);
  v99 = *(v0 + 456);
  v101 = *(v0 + 480);
  v62 = v59;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v61 + 16))(v60, v101, v99);
  sub_10049FAA4(v106, v50);

  v63 = [v1 aa_authToken];
  if (v63)
  {
    v64 = v63;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v70 = *(v0 + 472);
  v71 = *(v0 + 448);
  v72 = *(v0 + 432);
  v98 = *(v0 + 424);
  v100 = *(v0 + 496);
  v73 = *(v0 + 408);
  Account.init(icloudIdentifier:dsid:authTokenStatus:appToken:appHostName:apsEnvironment:peopleURL:authToken:)();
  v74 = *(v72 + 16);
  v74(v71, v73, v98);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  v77 = os_log_type_enabled(v75, v76);
  v78 = *(v0 + 480);
  v80 = *(v0 + 456);
  v79 = *(v0 + 464);
  v81 = *(v0 + 448);
  if (v77)
  {
    v110 = *(v0 + 456);
    v109 = *(v0 + 464);
    v82 = *(v0 + 432);
    v83 = *(v0 + 440);
    v105 = v76;
    v84 = *(v0 + 424);
    v107 = *(v0 + 512);
    v108 = *(v0 + 480);
    v85 = swift_slowAlloc();
    log = v75;
    v86 = swift_slowAlloc();
    *&v111 = v86;
    *v85 = 136315138;
    v74(v83, v81, v84);
    v87 = String.init<A>(describing:)();
    v89 = v88;
    (*(v82 + 8))(v81, v84);
    v90 = sub_10000D01C(v87, v89, &v111);

    *(v85 + 4) = v90;
    _os_log_impl(&_mh_execute_header, log, v105, "Retrieved account: %s", v85, 0xCu);
    sub_100004984(v86);

    (*(v109 + 8))(v108, v110);
  }

  else
  {
    v91 = *(v0 + 424);
    v92 = *(v0 + 432);

    (*(v92 + 8))(v81, v91);
    (*(v79 + 8))(v78, v80);
  }

  v94 = *(v0 + 480);
  v93 = *(v0 + 488);
  v95 = *(v0 + 472);
  v97 = *(v0 + 440);
  v96 = *(v0 + 448);

  v23 = *(v0 + 8);
LABEL_17:

  return v23();
}

uint64_t sub_10049BF3C()
{
  v1 = v0[65];
  v2 = v0[64];
  swift_willThrow();

  v3 = v0[65];
  v5 = v0[60];
  v4 = v0[61];
  v6 = v0[59];
  v8 = v0[55];
  v7 = v0[56];

  v9 = v0[1];

  return v9();
}

void sub_10049C008()
{
  if (!qword_1005B53A8)
  {
    type metadata accessor for Account();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B53A8);
    }
  }
}

void sub_10049C060()
{
  if (!qword_1005B3558)
  {
    sub_10004B610(&qword_1005B3560, &qword_1004D82E8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B3558);
    }
  }
}

uint64_t sub_10049C0EC()
{
  sub_10049C144();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10049C144()
{
  if (!qword_1005B55D8)
  {
    v0 = type metadata accessor for Account();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B55D8);
    }
  }
}

uint64_t sub_10049C18C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100011AEC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
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

uint64_t sub_10049C25C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccountService(0);
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10049C308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AccountService(0);
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10049C3D0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccountService(0);
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10049C47C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1004942F8();
}

uint64_t sub_10049C508()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_10049442C();
}

uint64_t sub_10049C594()
{
  v1 = *v0;
  type metadata accessor for AccountService(0);
  sub_10000EE98(&qword_1005A9118, type metadata accessor for AccountService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10049C690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v8 = type metadata accessor for DarwinNotification();
  v5[5] = v8;
  v9 = *(v8 - 8);
  v5[6] = v9;
  v10 = *(v9 + 64) + 15;
  v5[7] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005AACD0, &unk_1004C4750) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v5[9] = v12;
  v13 = *(v12 - 8);
  v5[10] = v13;
  v14 = *(v13 + 64) + 15;
  v5[11] = swift_task_alloc();
  v15 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v5[12] = v15;
  v16 = *(v15 - 8);
  v5[13] = v16;
  v17 = *(v16 + 64) + 15;
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10049C888, a4, 0);
}

uint64_t sub_10049C888()
{
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 120) = sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering listener for Darwin notification: SPAccountRemovedNotification", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_10049C9D8;

  return daemon.getter();
}

uint64_t sub_10049C9D8(uint64_t a1)
{
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = a1;

  type metadata accessor for Daemon();
  sub_10000EE98(&qword_1005AB4E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10049CB30, v5, v4);
}

uint64_t sub_10049CB30()
{
  v1 = *(v0 + 136);
  *(v0 + 144) = Daemon.darwinNotificationHandler.getter();

  type metadata accessor for DarwinNotificationHandler();
  sub_10000EE98(&qword_1005AACE8, &type metadata accessor for DarwinNotificationHandler);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10049CC08, v3, v2);
}

uint64_t sub_10049CC08()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[2];
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_10049CC98, v3, 0);
}

uint64_t sub_10049CC98()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_10000EE98(&qword_1005B5608, type metadata accessor for AccountService);
  v0[19] = v5;
  v6 = v0[2];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_10049CDB4;
  v9 = v0[14];
  v10 = v0[12];
  v11 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v11, v6, v5, v10);
}

uint64_t sub_10049CDB4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10049CEC4, v2, 0);
}

uint64_t sub_10049CEC4()
{
  v33 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[11];
    v5 = v0[7];
    v6 = v0[4];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[15];
    (*(v3 + 32))(v0[7], v1, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      sub_10000EE98(&qword_1005B3240, &type metadata accessor for DarwinNotification);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_10000D01C(v18, v20, &v32);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Darwin SPAccountRemovedNotification: %s. Reset LocalDB and UserDefaults.", v16, 0xCu);
      sub_100004984(v17);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v22 = v0[4];
    type metadata accessor for WorkItemQueue.WorkItem();
    v23 = swift_allocObject();
    v24 = *(v0[2] + 128);
    *(v23 + 16) = *(v0 + 1);

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v25 = v0[19];
    v26 = v0[2];
    v27 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v28 = swift_task_alloc();
    v0[20] = v28;
    *v28 = v0;
    v28[1] = sub_10049CDB4;
    v29 = v0[14];
    v30 = v0[12];
    v31 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v31, v26, v25, v30);
  }
}

uint64_t sub_10049D24C(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for Account();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(type metadata accessor for AccountService.State(0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10049D370, 0, 0);
}

uint64_t sub_10049D370()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = *(v3 + 56);
  v0[14] = v5;
  v0[15] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v2);

  return _swift_task_switch(sub_10049D400, v4, 0);
}

uint64_t sub_10049D400()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  v0[16] = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  swift_beginAccess();
  sub_1004A0068(v1, v2 + v3);
  swift_endAccess();
  sub_100002CE0(v1, &qword_1005A9110, &qword_1004C25F8);

  return _swift_task_switch(sub_10049D4BC, 0, 0);
}

uint64_t sub_10049D4BC()
{
  v1 = v0[12];
  v2 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v0[17] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[18] = v4;
  v0[19] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 3, 3, v2);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_10049D5B8;
  v6 = v0[12];
  v7 = v0[8];

  return sub_100496084(v6, 0);
}

uint64_t sub_10049D5B8()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 96);
  v4 = *v0;

  sub_10049FD7C(v3, type metadata accessor for AccountService.State);
  v5 = swift_task_alloc();
  v1[21] = v5;
  *v5 = v4;
  v5[1] = sub_10049D740;
  v6 = v1[11];
  v7 = v1[8];

  return sub_10049AC64(v6);
}

uint64_t sub_10049D740()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_10049DD24;
  }

  else
  {
    v3 = sub_10049D854;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10049D854()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = *(v5 + 16);
  v0[23] = v8;
  v0[24] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v4, v6);
  v2(v3, 0, 1, v6);

  return _swift_task_switch(sub_10049D90C, v7, 0);
}

uint64_t sub_10049D90C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[8];
  swift_beginAccess();
  sub_1004A0068(v2, v3 + v1);
  swift_endAccess();
  sub_100002CE0(v2, &qword_1005A9110, &qword_1004C25F8);

  return _swift_task_switch(sub_10049D9C0, 0, 0);
}

uint64_t sub_10049D9C0()
{
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Account is available after receiving SPAccountRemovedNotification. Sending .available to subscribers.", v4, 2u);
  }

  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[9];

  v6(v10, v11, v12);
  v8(v10, 0, 3, v9);
  v13 = swift_task_alloc();
  v0[25] = v13;
  *v13 = v0;
  v13[1] = sub_10049DB68;
  v14 = v0[12];
  v15 = v0[8];

  return sub_100496084(v14, 0);
}

uint64_t sub_10049DB68()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 96);
  v4 = *v0;

  sub_10049FD7C(v2, type metadata accessor for AccountService.State);

  return _swift_task_switch(sub_10049DC94, 0, 0);
}

uint64_t sub_10049DC94()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10049DD24()
{
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[22];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Account is unavailable after receiving SPAccountRemovedNotification as expected!", v6, 2u);
  }

  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10049DE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 128);
    v8 = result;
    type metadata accessor for WorkItemQueue.WorkItem();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = a3;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10049DFAC(uint64_t a1)
{
  v1[8] = a1;
  v2 = *(*(type metadata accessor for AccountService.State(0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for Account();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10049E0DC, 0, 0);
}

uint64_t sub_10049E0DC()
{
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 120) = sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Account store did change", v4, 2u);
  }

  v5 = *(v0 + 64);

  return _swift_task_switch(sub_10049E200, v5, 0);
}

uint64_t sub_10049E200()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  v0[16] = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005A9110, &qword_1004C25F8);

  return _swift_task_switch(sub_10049E2AC, 0, 0);
}

uint64_t sub_10049E2AC()
{
  v1 = v0[14];
  v2 = (*(v0[11] + 48))(v1, 1, v0[10]);
  sub_100002CE0(v1, &qword_1005A9110, &qword_1004C25F8);
  if (v2 == 1)
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_10049E46C;
    v4 = v0[12];
    v5 = v0[8];

    return sub_10049AC64(v4);
  }

  else
  {
    v7 = v0[15];
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Account info has already been fetched.", v10, 2u);
    }

    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_10049E9B8;
    v12 = v0[8];

    return sub_1004997A8();
  }
}

uint64_t sub_10049E46C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10049EB28;
  }

  else
  {
    v3 = sub_10049E580;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10049E580()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = *(v4 + 16);
  v0[19] = v6;
  v0[20] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v3);
  (*(v4 + 56))(v2, 0, 1, v3);

  return _swift_task_switch(sub_10049E63C, v5, 0);
}

uint64_t sub_10049E63C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[8];
  swift_beginAccess();
  sub_1004A0068(v2, v3 + v1);
  swift_endAccess();
  sub_100002CE0(v2, &qword_1005A9110, &qword_1004C25F8);

  return _swift_task_switch(sub_10049E6F0, 0, 0);
}

uint64_t sub_10049E6F0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 72);
  (*(v0 + 152))(v2, *(v0 + 96), *(v0 + 80));
  v3 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  (*(*(v3 - 8) + 56))(v2, 0, 3, v3);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_10049E7E8;
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  return sub_100496084(v5, 0);
}

uint64_t sub_10049E7E8()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 72);
  v4 = *v0;

  sub_10049FD7C(v2, type metadata accessor for AccountService.State);

  return _swift_task_switch(sub_10049E914, 0, 0);
}

uint64_t sub_10049E914()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10049E9B8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v9 = *v0;

  v3 = v1[14];
  v4 = v1[13];
  v5 = v1[12];
  v6 = v1[9];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_10049EB28()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_10049EBB4(uint64_t a1)
{
  v1[8] = a1;
  v2 = *(*(type metadata accessor for AccountService.State(0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for Account();
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10049ECE4, 0, 0);
}

uint64_t sub_10049ECE4()
{
  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 120) = sub_10000A6F0(v1, qword_1005E0D48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "CK account is available", v4, 2u);
  }

  v5 = *(v0 + 64);

  return _swift_task_switch(sub_10049EE08, v5, 0);
}

uint64_t sub_10049EE08()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  v0[16] = OBJC_IVAR____TtC13findmylocated14AccountService__account;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005A9110, &qword_1004C25F8);

  return _swift_task_switch(sub_10049EEB4, 0, 0);
}

uint64_t sub_10049EEB4()
{
  v1 = v0[14];
  v2 = (*(v0[11] + 48))(v1, 1, v0[10]);
  sub_100002CE0(v1, &qword_1005A9110, &qword_1004C25F8);
  if (v2 == 1)
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_10049F074;
    v4 = v0[12];
    v5 = v0[8];

    return sub_10049AC64(v4);
  }

  else
  {
    v7 = v0[15];
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Account info has already been fetched.", v10, 2u);
    }

    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_1004A072C;
    v12 = v0[8];

    return sub_1004997A8();
  }
}

uint64_t sub_10049F074()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1004A0728;
  }

  else
  {
    v3 = sub_10049F188;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10049F188()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = *(v4 + 16);
  v0[19] = v6;
  v0[20] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v3);
  (*(v4 + 56))(v2, 0, 1, v3);

  return _swift_task_switch(sub_10049F244, v5, 0);
}

uint64_t sub_10049F244()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[8];
  swift_beginAccess();
  sub_1004A0068(v2, v3 + v1);
  swift_endAccess();
  sub_100002CE0(v2, &qword_1005A9110, &qword_1004C25F8);

  return _swift_task_switch(sub_10049F2F8, 0, 0);
}

uint64_t sub_10049F2F8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 72);
  (*(v0 + 152))(v2, *(v0 + 96), *(v0 + 80));
  v3 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  (*(*(v3 - 8) + 56))(v2, 0, 3, v3);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_10049F3F0;
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  return sub_100496084(v5, 0);
}

uint64_t sub_10049F3F0()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 72);
  v4 = *v0;

  sub_10049FD7C(v2, type metadata accessor for AccountService.State);

  return _swift_task_switch(sub_1004A0724, 0, 0);
}

uint64_t sub_10049F51C(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_10049F540, 0, 0);
}

uint64_t sub_10049F540()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    if (qword_1005A85C8 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0D48);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    sub_1002BC5B4(v1, 1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to update account info. Error %{public}@", v5, 0xCu);
      sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

LABEL_10:
    }
  }

  else
  {
    if (qword_1005A85C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0D48);
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, v9, "Successfully updated account info", v10, 2u);
      goto LABEL_10;
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10049F780(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1004A0730, 0, 0);
}

uint64_t sub_10049F7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountService.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005B5610, &qword_1004DCC98);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v22 - v11;
  v13 = *(v10 + 56);
  sub_1003F4254(a1, &v22 - v11, type metadata accessor for AccountService.State);
  sub_1003F4254(a2, &v12[v13], type metadata accessor for AccountService.State);
  v14 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v12, 3, v14);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      if (v15(&v12[v13], 3, v14) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v15(&v12[v13], 3, v14) != 3)
    {
      goto LABEL_11;
    }
  }

  else if (v16)
  {
    if (v15(&v12[v13], 3, v14) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1003F4254(v12, v7, type metadata accessor for AccountService.State);
    v17 = v15(&v12[v13], 3, v14);
    v18 = type metadata accessor for Account();
    v19 = *(*(v18 - 8) + 8);
    if (v17)
    {
      v19(v7, v18);
LABEL_11:
      sub_100002CE0(v12, &qword_1005B5610, &qword_1004DCC98);
      return 0;
    }

    v21 = v18;
    (v19)(&v12[v13]);
    v19(v7, v21);
  }

  sub_10049FD7C(v12, type metadata accessor for AccountService.State);
  return 1;
}

unint64_t sub_10049FA50()
{
  result = qword_1005B5618;
  if (!qword_1005B5618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5618);
  }

  return result;
}

uint64_t sub_10049FAA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000246F4();
    if (StringProtocol.caseInsensitiveCompare<A>(_:)())
    {
      if (!StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        v2 = &APSEnvironmentDevelopment;
        goto LABEL_15;
      }

      if (!StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        v2 = &APSEnvironmentDemo;
        goto LABEL_15;
      }
    }

    v2 = &APSEnvironmentProduction;
LABEL_15:
    v8 = *v2;
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (qword_1005A85C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0D48);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Invalid APS Env value returned from iCloud Setup. Falling back to production.", v6, 2u);
  }

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10049FCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountService.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049FD18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountService.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049FD7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10049FDDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100496E78();
}

uint64_t sub_10049FE78(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_1004981E8(a1, v1);
}

uint64_t sub_10049FF14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1004983FC();
}

uint64_t sub_10049FFB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10049FFD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100003690;

  return sub_10049DFAC(v2);
}

uint64_t sub_1004A0068(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004A00D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_10049C690(a1, v4, v5, v7, v6);
}

uint64_t sub_1004A0198()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_10049D24C(v2);
}

uint64_t sub_1004A0230()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_10049EBB4(v2);
}

uint64_t sub_1004A02C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1004940D8();
}

uint64_t sub_1004A037C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100498B14(a1, v4, v5);
}

uint64_t sub_1004A03F0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005AC688, &unk_1004C6F30) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000368C;

  return sub_100499110(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1004A055C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100498CF4(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1004A0668()
{
  result = qword_1005B5630;
  if (!qword_1005B5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5630);
  }

  return result;
}

unint64_t sub_1004A06BC()
{
  result = qword_1005B5638;
  if (!qword_1005B5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5638);
  }

  return result;
}

uint64_t sub_1004A0710(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_1004A0758(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for MigrationService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1004A0800()
{
  *(v1 + 16) = v0;
  v2 = sub_1004A0CB8(&qword_1005B5708);
  v3 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1004A08F4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, &type metadata for () + 8, &type metadata for () + 8, v0, v2, &unk_1004DCFA0, 0, &type metadata for () + 8);
}

uint64_t sub_1004A08F4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000161BC, v2, 0);
}

uint64_t sub_1004A0A04(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for MigrationService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1004A0AAC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for MigrationService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1004A0B54(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for MigrationService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1004A0BFC()
{
  v1 = *v0;
  type metadata accessor for MigrationService();
  sub_1004A0CB8(&qword_1005AD508);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1004A0CB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MigrationService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004A0CF8()
{
  v0 = type metadata accessor for URL();
  sub_10004F154(v0, qword_1005E0D68);
  sub_10000A6F0(v0, qword_1005E0D68);
  return sub_1004A0D44();
}

uint64_t sub_1004A0D44()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 URLsForDirectory:5 inDomains:1];

  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v10 + 16))
  {
    (*(v1 + 16))(v5, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 32))(v7, v5, v0);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v1 + 8))(v7, v0);
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A0F70()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B5710);
  v1 = sub_10000A6F0(v0, qword_1005B5710);
  if (qword_1005A85E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0D80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1004A1140(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

id sub_1004A11BC()
{
  if (qword_1005A85D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005B5710);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AppDeletionService startup", v4, 2u);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v6 = result;
    v7 = *(v0 + 16);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v6 applicationIsInstalled:v8];

    *(v7 + 137) = v9;
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A1348()
{
  v1 = *v0;
  v2 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v9 = sub_1004A4EA8(&qword_1005B5880, v8, type metadata accessor for AppDeletionService);
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = v9;
  v10[4] = v0;
  v10[5] = v1;
  swift_retain_n();
  sub_1001D7F30(0, 0, v5, &unk_1004DD140, v10);

  v7(v5, 1, 1, v6);
  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v9;
  v11[4] = v0;
  v11[5] = v1;
  swift_retain_n();
  sub_1001D7F30(0, 0, v5, &unk_1004DD150, v11);
}

uint64_t sub_1004A1558()
{
  if (qword_1005A85D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005B5710);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "initialLaunchProcessing", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004A166C(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_1004A1738, v2, 0);
}

uint64_t sub_1004A1738()
{
  v33 = v0;
  if (qword_1005A85D8 != -1)
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
  sub_10000A6F0(v7, qword_1005B5710);
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
    sub_1004A4EA8(&qword_1005B02E0, 255, &type metadata accessor for SystemVersionNumber);
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
    _os_log_impl(&_mh_execute_header, v9, v31, "Migrate from %s to %s", v16, 0x16u);
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

uint64_t sub_1004A1A24(uint64_t a1)
{
  v39 = a1;
  v38 = sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  v35 = *(v38 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v38);
  v3 = &v27 - v2;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
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

    sub_1001D7F30(0, 0, v37, &unk_1004DD190, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_1004A1E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
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

  sub_1001D7F30(0, 0, v11, &unk_1004DD1A0, v14);
}

uint64_t sub_1004A2008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1004A2028, a4, 0);
}

uint64_t sub_1004A2028()
{
  v1 = v0[2];
  sub_1004A2B2C(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1004A2088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_10004B564(&qword_1005B58B0, &qword_1004DD180);
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004A215C, a4, 0);
}

uint64_t sub_1004A215C()
{
  v1 = *(v0 + 16);
  sub_1004A275C(*(v0 + 24), *(v0 + 32));
  *(v0 + 65) = *(v1 + 136);

  return _swift_task_switch(sub_1004A21D0, 0, 0);
}

uint64_t sub_1004A21D0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *(v0 + 64) = *(v0 + 65);
  sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004A2294(uint64_t a1)
{
  v2 = v1;
  v39 = sub_10004B564(&qword_1005B58B0, &qword_1004DD180);
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v38 = v34 - v6;
  v37 = sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  v40 = *(v37 - 8);
  v7 = *(v40 + 64);
  result = __chkstk_darwin(v37);
  v36 = v34 - v9;
  v10 = *(v1 + 136);
  if (v10 == 2)
  {
    if (a1 == 2)
    {
      return result;
    }
  }

  else if (v10 == 3)
  {
    if (a1 == 3)
    {
      return result;
    }
  }

  else if ((a1 & 0xFE) != 2 && ((v10 ^ a1) & 1) == 0)
  {
    return result;
  }

  if (qword_1005A85D8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005B5710);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_1004A1038(*(v2 + 136));
    v17 = sub_10000D01C(v15, v16, v42);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = sub_1004A1038(a1);
    v20 = sub_10000D01C(v18, v19, v42);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "State: %s -> %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v35 = a1;
  *(v2 + 136) = a1;
  swift_beginAccess();
  a1 = *(*(v2 + 128) + 16);
  if (a1)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v21, v22, "Publishing State change event to %ld subscribers", v23, 0xCu);
    }
  }

  v2 = *(v2 + 128);
  v24 = 1 << *(v2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v2 + 64);
  v27 = (v24 + 63) >> 6;
  v28 = (v4 + 8);
  v34[0] = v40 + 8;
  v34[1] = v40 + 16;

  v4 = 0;
  v29 = v37;
  if (v26)
  {
    while (1)
    {
      v30 = v4;
LABEL_24:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      a1 = v40;
      v32 = v36;
      (*(v40 + 16))(v36, *(v2 + 56) + *(v40 + 72) * (v31 | (v30 << 6)), v29);
      v41 = v35;
      v33 = v38;
      AsyncStream.Continuation.yield(_:)();
      (*v28)(v33, v39);
      (*(a1 + 8))(v32, v29);
      if (!v26)
      {
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
LABEL_20:
    v30 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v30 >= v27)
    {
    }

    v26 = *(v2 + 64 + 8 * v30);
    ++v4;
    if (v26)
    {
      v4 = v30;
      goto LABEL_24;
    }
  }
}

uint64_t sub_1004A275C(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_10004B564(&qword_1005AC660, &unk_1004DD170);
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
  if (qword_1005A85D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005B5710);
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
    sub_1004A4EA8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a2;
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_10000D01C(v19, v21, &v34);
    a2 = v29;

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Storing stateContinuation for %{public}s", v18, 0xCu);
    sub_100004984(v28);

    v6 = v30;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v23 = v32;
  v31(v32, a2, v7);
  v24 = sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  v25 = *(v24 - 8);
  (*(v25 + 16))(v6, v33, v24);
  (*(v25 + 56))(v6, 0, 1, v24);
  swift_beginAccess();
  sub_100146ADC(v6, v23);
  return swift_endAccess();
}

uint64_t sub_1004A2B2C(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005AC660, &unk_1004DD170);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v32 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  if (qword_1005A85D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005B5710);
  v31 = *(v8 + 16);
  v31(v13, a1, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v1;
    v28 = v19;
    v33 = v19;
    *v18 = 136446210;
    sub_1004A4EA8(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v6;
    v23 = v22;
    (*(v8 + 8))(v13, v7);
    v24 = sub_10000D01C(v20, v23, &v33);
    v6 = v21;

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Removing stateContinuation for %{public}s", v18, 0xCu);
    sub_100004984(v28);

    a1 = v29;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v25 = v32;
  v31(v32, a1, v7);
  v26 = sub_10004B564(&qword_1005AC668, &qword_1004C6F10);
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  swift_beginAccess();
  sub_100146ADC(v6, v25);
  return swift_endAccess();
}

uint64_t getEnumTagSinglePayload for LocationMonitor.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for LocationMonitor.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1004A3054(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1004A3070(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1004A3098()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1004A153C();
}

uint64_t sub_1004A3124(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1004A166C(a1, a2);
}

uint64_t sub_1004A31C8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AppDeletionService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1004A3270()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1004A119C();
}

uint64_t sub_1004A331C()
{
  v1 = *(v0 + 16);
  sub_1004A1348();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004A3380()
{
  v1 = *v0;
  type metadata accessor for AppDeletionService();
  sub_1004A4EA8(&qword_1005AD540, v2, type metadata accessor for AppDeletionService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1004A3478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for DistributedNotification();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005B5888, &qword_1004DD158) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005B5890, &qword_1004DD160);
  v4[7] = v10;
  v11 = *(v10 - 8);
  v4[8] = v11;
  v12 = *(v11 + 64) + 15;
  v4[9] = swift_task_alloc();
  v13 = sub_10004B564(&qword_1005B5898, &qword_1004DD168);
  v4[10] = v13;
  v14 = *(v13 - 8);
  v4[11] = v14;
  v15 = *(v14 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004A3644, a4, 0);
}

uint64_t sub_1004A3644()
{
  if (qword_1005A85D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 104) = sub_10000A6F0(v1, qword_1005B5710);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering listener for Distributed notification: com.apple.LaunchServices.applicationRegistered", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1004A3794;

  return daemon.getter();
}

uint64_t sub_1004A3794(uint64_t a1)
{
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = a1;

  type metadata accessor for Daemon();
  sub_1004A4EA8(&qword_1005AB4E0, 255, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A38F0, v5, v4);
}

uint64_t sub_1004A38F0()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = Daemon.distributedNotificationHandler.getter();

  type metadata accessor for DistributedNotificationHandler();
  sub_1004A4EA8(&qword_1005B58A0, 255, &type metadata accessor for DistributedNotificationHandler);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A39CC, v3, v2);
}

uint64_t sub_1004A39CC()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[2];
  dispatch thunk of DistributedNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1004A3A5C, v3, 0);
}

uint64_t sub_1004A3A5C()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_1004A4EA8(&qword_1005B5880, v5, type metadata accessor for AppDeletionService);
  v0[17] = v6;
  v7 = v0[2];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1004A3B78;
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v12, v7, v6, v11);
}

uint64_t sub_1004A3B78()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1004A3C88, v2, 0);
}

uint64_t sub_1004A3C88()
{
  v30 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v5 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[13];
    (*(v3 + 32))(v0[5], v1, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      sub_1004A4EA8(&qword_1005B58A8, 255, &type metadata accessor for DistributedNotification);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_10000D01C(v17, v19, &v29);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Process application registered: %s", v15, 0xCu);
      sub_100004984(v16);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v21 = v0[2];
    sub_1004A403C();
    v22 = v0[17];
    v23 = v0[2];
    v24 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v25 = swift_task_alloc();
    v0[18] = v25;
    *v25 = v0;
    v25[1] = sub_1004A3B78;
    v26 = v0[12];
    v27 = v0[10];
    v28 = v0[6];

    return AsyncStream.Iterator.next(isolation:)(v28, v23, v22, v27);
  }
}

uint64_t sub_1004A3F7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1004A3478(a1, v4, v5, v7);
}

id sub_1004A403C()
{
  v1 = v0;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v3 = result;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 applicationIsInstalled:v4];

    if (qword_1005A85D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005B5710);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 136446466;
      *(v9 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004EB4D0, &v13);
      *(v9 + 12) = 2080;
      if (v5)
      {
        v10 = 7562585;
      }

      else
      {
        v10 = 28494;
      }

      if (v5)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE200000000000000;
      }

      v12 = sub_10000D01C(v10, v11, &v13);

      *(v9 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s isFindMyAppInstalled: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    *(v1 + 137) = v5;

    return sub_1004A2294(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A4264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for DistributedNotification();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005B5888, &qword_1004DD158) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005B5890, &qword_1004DD160);
  v4[7] = v10;
  v11 = *(v10 - 8);
  v4[8] = v11;
  v12 = *(v11 + 64) + 15;
  v4[9] = swift_task_alloc();
  v13 = sub_10004B564(&qword_1005B5898, &qword_1004DD168);
  v4[10] = v13;
  v14 = *(v13 - 8);
  v4[11] = v14;
  v15 = *(v14 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004A4430, a4, 0);
}

uint64_t sub_1004A4430()
{
  if (qword_1005A85D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 104) = sub_10000A6F0(v1, qword_1005B5710);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering listener for Distributed notification: com.apple.LaunchServices.applicationUnregistered", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1004A4580;

  return daemon.getter();
}

uint64_t sub_1004A4580(uint64_t a1)
{
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = a1;

  type metadata accessor for Daemon();
  sub_1004A4EA8(&qword_1005AB4E0, 255, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A46DC, v5, v4);
}

uint64_t sub_1004A46DC()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = Daemon.distributedNotificationHandler.getter();

  type metadata accessor for DistributedNotificationHandler();
  sub_1004A4EA8(&qword_1005B58A0, 255, &type metadata accessor for DistributedNotificationHandler);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A47B8, v3, v2);
}

uint64_t sub_1004A47B8()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[2];
  dispatch thunk of DistributedNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1004A4848, v3, 0);
}

uint64_t sub_1004A4848()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_1004A4EA8(&qword_1005B5880, v5, type metadata accessor for AppDeletionService);
  v0[17] = v6;
  v7 = v0[2];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1004A4964;
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v12, v7, v6, v11);
}

uint64_t sub_1004A4964()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1004A4A74, v2, 0);
}

uint64_t sub_1004A4A74()
{
  v30 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v5 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[13];
    (*(v3 + 32))(v0[5], v1, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      sub_1004A4EA8(&qword_1005B58A8, 255, &type metadata accessor for DistributedNotification);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_10000D01C(v17, v19, &v29);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Process application unregistered: %s", v15, 0xCu);
      sub_100004984(v16);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v21 = v0[2];
    sub_1004A403C();
    v22 = v0[17];
    v23 = v0[2];
    v24 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v25 = swift_task_alloc();
    v0[18] = v25;
    *v25 = v0;
    v25[1] = sub_1004A4964;
    v26 = v0[12];
    v27 = v0[10];
    v28 = v0[6];

    return AsyncStream.Iterator.next(isolation:)(v28, v23, v22, v27);
  }
}

uint64_t sub_1004A4D68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_1004A4264(a1, v4, v5, v7);
}

uint64_t sub_1004A4E28()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0D80);
  sub_10000A6F0(v0, qword_1005E0D80);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004A4EA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1004A4EF0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1004A1E28(a1, v4, v5);
}

uint64_t sub_1004A4F64(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005AC668, &qword_1004C6F10) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000368C;

  return sub_1004A2088(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1004A50D0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1004A2008(a1, v6, v7, v8, v1 + v5);
}

uint64_t DatabaseBackupUtility.init(sourceURL:destinationFolderURL:encryptionKeyProvider:logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for URL();
  v13 = *(*(v12 - 8) + 32);
  v13(a6, a1, v12);
  v14 = type metadata accessor for DatabaseBackupUtility();
  v13(a6 + v14[5], a2, v12);
  v15 = (a6 + v14[6]);
  *v15 = a3;
  v15[1] = a4;
  v16 = v14[7];
  v17 = type metadata accessor for Logger();
  v18 = *(*(v17 - 8) + 32);

  return v18(a6 + v16, a5, v17);
}

uint64_t type metadata accessor for DatabaseBackupUtility()
{
  result = qword_1005B5918;
  if (!qword_1005B5918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DatabaseBackupUtility.backup(withCompletionMarkerFileURL:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1004A5458, 0, 0);
}

uint64_t sub_1004A5458()
{
  v1 = *(v0 + 40);
  sub_1004A601C(*(v0 + 80));
  v2 = *(v0 + 40);
  *(v0 + 16) = 0;
  URL.path.getter();
  v3 = String.utf8CString.getter();

  v4 = sqlite3_open_v2((v3 + 32), (v0 + 16), 65537, 0);

  if (v4)
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    sub_1004A6530();
    swift_allocError();
    *v8 = v4;
    *(v8 + 4) = 0;
    swift_willThrow();
    (*(v7 + 8))(v5, v6);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 48);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 88) = v14;
    *v14 = v0;
    v14[1] = sub_1004A5648;
    v15 = *(v0 + 40);

    return sub_1004A6584();
  }
}

uint64_t sub_1004A5648(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v8 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v6 = sub_1004A5F48;
  }

  else
  {
    v6 = sub_1004A578C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004A578C()
{
  v1 = *(v0 + 104);
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_28:
      *(v0 + 162) = 0;
      *(v0 + 168) = 0;
      v21 = *(v0 + 16);
      goto LABEL_32;
    }

    v4 = *(v0 + 96);
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = __DataStorage._bytes.getter();
    if (v7)
    {
      v8 = __DataStorage._offset.getter();
      if (__OFSUB__(v5, v8))
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v7 += v5 - v8;
    }

    v9 = __OFSUB__(v6, v5);
    v10 = v6 - v5;
    if (v9)
    {
      goto LABEL_87;
    }

    v11 = __DataStorage._length.getter();
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    if (v7)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < 0xFFFFFFFF80000000)
    {
      goto LABEL_88;
    }

    if (v13 <= 0x7FFFFFFF)
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_18:
    v14 = *(v0 + 96);
    v15 = v14;
    v14 >>= 32;
    v16 = v14 - v15;
    if (v14 >= v15)
    {
      v17 = __DataStorage._bytes.getter();
      if (!v17)
      {
LABEL_22:
        v19 = __DataStorage._length.getter();
        if (v19 >= v16)
        {
          v20 = v16;
        }

        else
        {
          v20 = v19;
        }

        if (!v17)
        {
          goto LABEL_31;
        }

        if (v20 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v20 <= 0x7FFFFFFF)
        {
LABEL_31:
          v22 = *(v0 + 16);
          goto LABEL_32;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v18 = __DataStorage._offset.getter();
      if (!__OFSUB__(v15, v18))
      {
        v17 += v15 - v18;
        goto LABEL_22;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v2)
  {
    goto LABEL_18;
  }

  *(v0 + 148) = *(v0 + 96);
  *(v0 + 156) = v1;
  *(v0 + 158) = BYTE2(v1);
  *(v0 + 159) = BYTE3(v1);
  *(v0 + 160) = BYTE4(v1);
  *(v0 + 161) = BYTE5(v1);
  v3 = *(v0 + 16);
LABEL_32:
  v23 = sqlite3_key_v2();
  if (v23 || (v24 = *(v0 + 80), *(v0 + 24) = 0, URL.path.getter(), v25 = String.utf8CString.getter(), , v23 = sqlite3_open_v2((v25 + 32), (v0 + 24), 65542, 0), , v23))
  {
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v30 = *(v0 + 64);
    sub_1004A6530();
    swift_allocError();
    *v31 = v23;
    *(v31 + 4) = 0;
    swift_willThrow();
LABEL_35:
    sub_1000049D0(v27, v26);
    sqlite3_close_v2(*(v0 + 16));
    (*(v30 + 8))(v28, v29);
LABEL_36:
    v33 = *(v0 + 72);
    v32 = *(v0 + 80);
    v34 = *(v0 + 48);

    v35 = *(v0 + 8);
    goto LABEL_37;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
LABEL_67:
      *(v0 + 140) = 0;
      *(v0 + 134) = 0;
      v57 = *(v0 + 24);
      goto LABEL_69;
    }

    v39 = *(v0 + 96);
    v40 = *(v0 + 104);
    v41 = *(v39 + 16);
    v42 = *(v39 + 24);
    v43 = __DataStorage._bytes.getter();
    if (v43)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v41, v44))
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v43 += v41 - v44;
    }

    v9 = __OFSUB__(v42, v41);
    v45 = v42 - v41;
    if (v9)
    {
      goto LABEL_93;
    }

    v46 = __DataStorage._length.getter();
    if (v46 >= v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = v46;
    }

    if (v43)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    if (v48 < 0xFFFFFFFF80000000)
    {
      goto LABEL_94;
    }

    if (v48 <= 0x7FFFFFFF)
    {
      goto LABEL_68;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v37 = *(v0 + 104);
    *(v0 + 120) = *(v0 + 96);
    *(v0 + 128) = v37;
    *(v0 + 130) = BYTE2(v37);
    *(v0 + 131) = BYTE3(v37);
    *(v0 + 132) = BYTE4(v37);
    *(v0 + 133) = BYTE5(v37);
    v38 = *(v0 + 24);
    goto LABEL_69;
  }

  v49 = *(v0 + 96);
  v50 = v49;
  v49 >>= 32;
  v51 = v49 - v50;
  if (v49 < v50)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v52 = *(v0 + 104);
  v53 = __DataStorage._bytes.getter();
  if (!v53)
  {
    goto LABEL_61;
  }

  v54 = __DataStorage._offset.getter();
  if (__OFSUB__(v50, v54))
  {
LABEL_96:
    __break(1u);
  }

  v53 += v50 - v54;
LABEL_61:
  v55 = __DataStorage._length.getter();
  if (v55 >= v51)
  {
    v56 = v51;
  }

  else
  {
    v56 = v55;
  }

  if (v53)
  {
    if (v56 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v56 > 0x7FFFFFFF)
    {
      __break(1u);
      goto LABEL_80;
    }
  }

LABEL_68:
  v58 = *(v0 + 24);
LABEL_69:
  v59 = sqlite3_key_v2();
  if (v59)
  {
    goto LABEL_70;
  }

  v62 = sqlite3_backup_init(*(v0 + 24), "main", *(v0 + 16), "main");
  if (!v62)
  {
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v30 = *(v0 + 64);
    v66 = *(v0 + 40);
    sub_1004A6530();
    swift_allocError();
    *v67 = 2;
    *(v67 + 4) = 1;
    goto LABEL_72;
  }

  v63 = v62;
  v59 = sqlite3_backup_step(v62, -1);
  v64 = sqlite3_backup_finish(v63);
  if (v59 != 101)
  {
LABEL_70:
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v30 = *(v0 + 64);
    v60 = *(v0 + 40);
LABEL_71:
    sub_1004A6530();
    swift_allocError();
    *v61 = v59;
    *(v61 + 4) = 0;
LABEL_72:
    swift_willThrow();
    sub_1004A69AC(v28, *(v0 + 24));
    goto LABEL_35;
  }

  if (v64)
  {
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v30 = *(v0 + 64);
    v65 = *(v0 + 40);
    v59 = v64;
    goto LABEL_71;
  }

LABEL_80:
  v68 = *(v0 + 56);
  v69 = *(v0 + 64);
  v70 = *(v0 + 48);
  sub_1001866B0(*(v0 + 32), v70);
  if ((*(v69 + 48))(v70, 1, v68) == 1)
  {
    sub_100002CE0(*(v0 + 48), &qword_1005A9DB8, &unk_1004CC1D0);
  }

  else
  {
    v71 = *(v0 + 112);
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
    Data.write(to:options:)();
    if (v71)
    {
      v73 = *(v0 + 96);
      v72 = *(v0 + 104);
      v74 = *(v0 + 80);
      v87 = *(v0 + 72);
      v76 = *(v0 + 56);
      v75 = *(v0 + 64);
      v77 = *(v0 + 40);
      sub_1004A6530();
      swift_allocError();
      *v78 = 6;
      *(v78 + 4) = 1;
      swift_willThrow();
      sub_1004A69AC(v74, *(v0 + 24));
      sub_1000049D0(v73, v72);

      v79 = *(v75 + 8);
      v79(v87, v76);
      sqlite3_close_v2(*(v0 + 16));
      v79(v74, v76);
      goto LABEL_36;
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  v80 = *(v0 + 96);
  v81 = *(v0 + 104);
  v83 = *(v0 + 72);
  v82 = *(v0 + 80);
  v84 = *(v0 + 56);
  v85 = *(v0 + 64);
  v86 = *(v0 + 48);
  sqlite3_close_v2(*(v0 + 24));
  sub_1000049D0(v80, v81);
  sqlite3_close_v2(*(v0 + 16));
  (*(v85 + 8))(v82, v84);

  v35 = *(v0 + 8);
LABEL_37:

  return v35();
}

uint64_t sub_1004A5F48()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sqlite3_close_v2(*(v0 + 16));
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 112);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 48);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004A601C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL.DirectoryHint();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLResourceValues();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    sub_1004A6530();
    swift_allocError();
    v28 = 5;
LABEL_11:
    *v27 = v28;
    *(v27 + 4) = 1;
    return swift_willThrow();
  }

  v38 = *(type metadata accessor for DatabaseBackupUtility() + 20);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    sub_1004A6530();
    swift_allocError();
    v28 = 3;
    goto LABEL_11;
  }

  v34 = v6;
  v35 = a1;
  v36 = v3;
  sub_10004B564(&qword_1005B5960, &qword_1004DD238);
  inited = swift_initStackObject();
  v37 = xmmword_1004C1900;
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = NSURLIsRegularFileKey;
  v15 = NSURLIsRegularFileKey;
  sub_1002601D0(inited);
  swift_setDeallocating();
  sub_1004A6F50(inited + 32);
  URL.resourceValues(forKeys:)();

  if (v1)
  {
LABEL_13:
    sub_1004A6530();
    swift_allocError();
    *v30 = 7;
    *(v30 + 4) = 1;
    swift_willThrow();
  }

  v16 = URLResourceValues.isRegularFile.getter();
  if (v16 == 2 || (v16 & 1) == 0)
  {
    sub_1004A6530();
    swift_allocError();
    *v29 = 7;
    *(v29 + 4) = 1;
    swift_willThrow();
    (*(v42 + 8))(v13, v7);
    goto LABEL_13;
  }

  v17 = *(v42 + 8);
  v42 += 8;
  v33 = v17;
  v17(v13, v7);
  v18 = swift_initStackObject();
  *(v18 + 16) = v37;
  *(v18 + 32) = NSURLIsDirectoryKey;
  v19 = NSURLIsDirectoryKey;
  sub_1002601D0(v18);
  swift_setDeallocating();
  sub_1004A6F50(v18 + 32);
  URL.resourceValues(forKeys:)();

  v20 = v33;
  v21 = URLResourceValues.isDirectory.getter();
  if (v21 == 2 || (v21 & 1) == 0)
  {
    sub_1004A6530();
    swift_allocError();
    *v31 = 1;
    *(v31 + 4) = 1;
    swift_willThrow();
    v20(v11, v7);
    sub_1004A6530();
    swift_allocError();
    *v32 = 1;
    *(v32 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    v20(v11, v7);
    v40 = URL.lastPathComponent.getter();
    v41 = v22;
    v23 = v39;
    v24 = v34;
    v25 = v36;
    (*(v39 + 104))(v34, enum case for URL.DirectoryHint.notDirectory(_:), v36);
    sub_1000246F4();
    URL.appending<A>(path:directoryHint:)();
    (*(v23 + 8))(v24, v25);
  }
}

unint64_t sub_1004A6530()
{
  result = qword_1005B58B8;
  if (!qword_1005B58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B58B8);
  }

  return result;
}

uint64_t sub_1004A65A4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for DatabaseBackupUtility() + 24));
  v3 = v2[1];
  v7 = (*v2 + **v2);
  v4 = (*v2)[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1004A66A0;

  return v7();
}

uint64_t sub_1004A66A0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 24);
  v8 = *v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = v2;

  if (v2)
  {
    v6 = sub_1004A6904;
  }

  else
  {
    v6 = sub_1004A67B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004A67B8()
{
  v1 = v0[5];
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      v3 = v0[4];
      if (*(v3 + 16) == *(v3 + 24))
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    v3 = v0[4];
LABEL_13:
    sub_1004A6530();
    swift_allocError();
    *v7 = 4;
    *(v7 + 4) = 1;
    swift_willThrow();
    sub_1000049D0(v3, v1);
    v8 = v0[1];

    return v8();
  }

  if (v2)
  {
    v3 = v0[4];
    if (v3 != v3 >> 32)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v3 = v0[4];
  if ((v1 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v4 = v0[1];
  v5 = v0[5];

  return v4(v3, v5);
}

uint64_t sub_1004A6904()
{
  v1 = *(v0 + 48);
  sub_1004A6530();
  swift_allocError();
  *v2 = 4;
  *(v2 + 4) = 1;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

void sub_1004A69AC(uint64_t a1, sqlite3 *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v31 - v10;
  if (a2)
  {
    sqlite3_close_v2(a2);
  }

  v12 = [objc_opt_self() defaultManager];
  sub_1004A601C(v11);
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v5 + 8))(v11, v4);
  v32 = 0;
  v16 = [v12 removeItemAtURL:v15 error:&v32];

  v17 = v32;
  if (v16)
  {

    v18 = v17;
  }

  else
  {
    v31[0] = v32;
    v19 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    LODWORD(v19) = *(type metadata accessor for DatabaseBackupUtility() + 28);
    (*(v5 + 16))(v9, a1, v4);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v22 = 136315394;
      sub_100197D68();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v9;
      v28 = v27;
      (*(v5 + 8))(v26, v4);
      v29 = sub_10000D01C(v25, v28, &v32);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v30;
      *v23 = v30;
      _os_log_impl(&_mh_execute_header, v20, v21, "DatabaseBackupUtility error when removing failed backup database at %s: %@", v22, 0x16u);
      sub_100002CE0(v23, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v24);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }
}

unint64_t sub_1004A6DB8()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_1004A6E54();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1004A6E54()
{
  result = qword_1005B5928;
  if (!qword_1005B5928)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1005B5928);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DatabaseBackupUtility.Error(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseBackupUtility.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DatabaseBackupUtility.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1004A6F04(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004A6F20(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1004A6F50(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004A6FAC()
{
  v0 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  sub_10004F154(v0, qword_1005B5968);
  v1 = sub_10000A6F0(v0, qword_1005B5968);
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static Date.testSetNow(date:)(uint64_t a1)
{
  if (static SystemInfo.underTest.getter())
  {
    if (qword_1005A85E8 != -1)
    {
      swift_once();
    }

    v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
    v3 = sub_10000A6F0(v2, qword_1005B5968);
    swift_beginAccess();
    sub_1004A71B0(a1, v3);
    return swift_endAccess();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004A7140()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0D98);
  sub_10000A6F0(v0, qword_1005E0D98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004A71B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004A7220()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0DB0);
  v1 = sub_10000A6F0(v0, qword_1005E0DB0);
  if (qword_1005A8600 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0DC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004A740C()
{
  if (qword_1005A85F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0DB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocationMonitor: initialLaunchProcessing", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004A7520(uint64_t a1, uint64_t a2)
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

  return _swift_task_switch(sub_1004A75EC, v2, 0);
}

uint64_t sub_1004A75EC()
{
  v33 = v0;
  if (qword_1005A85F8 != -1)
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
  sub_10000A6F0(v7, qword_1005E0DB0);
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
    sub_1004AA090(&qword_1005B02E0, 255, &type metadata accessor for SystemVersionNumber);
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
    _os_log_impl(&_mh_execute_header, v9, v31, "LocationMonitor: migrate from %s to %s", v16, 0x16u);
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

uint64_t sub_1004A78D8(uint64_t a1)
{
  v39 = a1;
  v38 = sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  v35 = *(v38 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v38);
  v3 = &v27 - v2;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
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

    sub_1001D7F30(0, 0, v37, &unk_1004DD3D8, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_1004A7CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
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

  sub_1001D7F30(0, 0, v11, &unk_1004DD3E8, v14);
}

uint64_t sub_1004A7EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1004A7EDC, a4, 0);
}

uint64_t sub_1004A7EDC()
{
  v1 = v0[2];
  sub_1004A89E0(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1004A7F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_10004B564(&qword_1005B5AB0, &qword_1004DD3C8);
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004A8010, a4, 0);
}

uint64_t sub_1004A8010()
{
  v1 = *(v0 + 16);
  sub_1004A8610(*(v0 + 24), *(v0 + 32));
  *(v0 + 65) = *(v1 + 136);

  return _swift_task_switch(sub_1004A8084, 0, 0);
}

uint64_t sub_1004A8084()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *(v0 + 64) = *(v0 + 65);
  sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004A8148(uint64_t a1)
{
  v2 = v1;
  v39 = sub_10004B564(&qword_1005B5AB0, &qword_1004DD3C8);
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v39);
  v38 = v34 - v6;
  v37 = sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  v40 = *(v37 - 8);
  v7 = *(v40 + 64);
  result = __chkstk_darwin(v37);
  v36 = v34 - v9;
  v10 = *(v1 + 136);
  if (v10 == 2)
  {
    if (a1 == 2)
    {
      return result;
    }
  }

  else if (v10 == 3)
  {
    if (a1 == 3)
    {
      return result;
    }
  }

  else if ((a1 & 0xFE) != 2 && ((v10 ^ a1) & 1) == 0)
  {
    return result;
  }

  if (qword_1005A85F8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0DB0);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_1004A72E8(*(v2 + 136));
    v17 = sub_10000D01C(v15, v16, v42);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = sub_1004A72E8(a1);
    v20 = sub_10000D01C(v18, v19, v42);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "State: %s -> %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v35 = a1;
  *(v2 + 136) = a1;
  swift_beginAccess();
  a1 = *(*(v2 + 128) + 16);
  if (a1)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v21, v22, "Publishing State change event to %ld subscribers", v23, 0xCu);
    }
  }

  v2 = *(v2 + 128);
  v24 = 1 << *(v2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v2 + 64);
  v27 = (v24 + 63) >> 6;
  v28 = (v4 + 8);
  v34[0] = v40 + 8;
  v34[1] = v40 + 16;

  v4 = 0;
  v29 = v37;
  if (v26)
  {
    while (1)
    {
      v30 = v4;
LABEL_24:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      a1 = v40;
      v32 = v36;
      (*(v40 + 16))(v36, *(v2 + 56) + *(v40 + 72) * (v31 | (v30 << 6)), v29);
      v41 = v35;
      v33 = v38;
      AsyncStream.Continuation.yield(_:)();
      (*v28)(v33, v39);
      (*(a1 + 8))(v32, v29);
      if (!v26)
      {
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
LABEL_20:
    v30 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v30 >= v27)
    {
    }

    v26 = *(v2 + 64 + 8 * v30);
    ++v4;
    if (v26)
    {
      v4 = v30;
      goto LABEL_24;
    }
  }
}

uint64_t sub_1004A8610(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_10004B564(&qword_1005AC650, &qword_1004C6EF8);
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
  if (qword_1005A85F8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005E0DB0);
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
    sub_1004AA090(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a2;
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_10000D01C(v19, v21, &v34);
    a2 = v29;

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Storing stateContinuation for %{public}s", v18, 0xCu);
    sub_100004984(v28);

    v6 = v30;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v23 = v32;
  v31(v32, a2, v7);
  v24 = sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  v25 = *(v24 - 8);
  (*(v25 + 16))(v6, v33, v24);
  (*(v25 + 56))(v6, 0, 1, v24);
  swift_beginAccess();
  sub_100146D10(v6, v23);
  return swift_endAccess();
}

uint64_t sub_1004A89E0(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005AC650, &qword_1004C6EF8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v32 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  if (qword_1005A85F8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005E0DB0);
  v31 = *(v8 + 16);
  v31(v13, a1, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v1;
    v28 = v19;
    v33 = v19;
    *v18 = 136446210;
    sub_1004AA090(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v6;
    v23 = v22;
    (*(v8 + 8))(v13, v7);
    v24 = sub_10000D01C(v20, v23, &v33);
    v6 = v21;

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Removing stateContinuation for %{public}s", v18, 0xCu);
    sub_100004984(v28);

    a1 = v29;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v25 = v32;
  v31(v32, a1, v7);
  v26 = sub_10004B564(&qword_1005AC658, &unk_1004C6F00);
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  swift_beginAccess();
  sub_100146D10(v6, v25);
  return swift_endAccess();
}

uint64_t sub_1004A8DAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1004A73F0();
}

uint64_t sub_1004A8E38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1004A7520(a1, a2);
}

uint64_t sub_1004A8EDC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocationMonitor();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1004A8F84(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocationMonitor();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1004A902C()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1004A90F0, v0, 0);
}

uint64_t sub_1004A90F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v6 = sub_1004AA090(&qword_1005B5AA8, v5, type metadata accessor for LocationMonitor);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v3;
  v7[5] = v2;
  swift_retain_n();
  sub_1001D7F30(0, 0, v1, &unk_1004DD3C0, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004A923C()
{
  v1 = *v0;
  type metadata accessor for LocationMonitor();
  sub_1004AA090(&qword_1005AD538, v2, type metadata accessor for LocationMonitor);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1004A9334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for DarwinNotification();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005AACD0, &unk_1004C4750) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v4[7] = v10;
  v11 = *(v10 - 8);
  v4[8] = v11;
  v12 = *(v11 + 64) + 15;
  v4[9] = swift_task_alloc();
  v13 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v4[10] = v13;
  v14 = *(v13 - 8);
  v4[11] = v14;
  v15 = *(v14 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004A9500, a4, 0);
}

uint64_t sub_1004A9500()
{
  if (qword_1005A85F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 104) = sub_10000A6F0(v1, qword_1005E0DB0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering listener for Darwin notification: com.apple.locationd.authorization", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1004A9650;

  return daemon.getter();
}

uint64_t sub_1004A9650(uint64_t a1)
{
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = a1;

  type metadata accessor for Daemon();
  sub_1004AA090(&qword_1005AB4E0, 255, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A97AC, v5, v4);
}

uint64_t sub_1004A97AC()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = Daemon.darwinNotificationHandler.getter();

  type metadata accessor for DarwinNotificationHandler();
  sub_1004AA090(&qword_1005AACE8, 255, &type metadata accessor for DarwinNotificationHandler);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A9888, v3, v2);
}

uint64_t sub_1004A9888()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[2];
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1004A9918, v3, 0);
}

uint64_t sub_1004A9918()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_1004AA090(&qword_1005B5AA8, v5, type metadata accessor for LocationMonitor);
  v0[17] = v6;
  v7 = v0[2];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1004A9A34;
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[6];

  return AsyncStream.Iterator.next(isolation:)(v12, v7, v6, v11);
}

uint64_t sub_1004A9A34()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1004A9B44, v2, 0);
}

uint64_t sub_1004A9B44()
{
  v39 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v5 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[13];
    (*(v3 + 32))(v0[5], v1, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38 = v16;
      *v15 = 136315138;
      sub_1004AA090(&qword_1005B3240, 255, &type metadata accessor for DarwinNotification);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_10000D01C(v17, v19, &v38);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Process location authorization change: %s", v15, 0xCu);
      sub_100004984(v16);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v21 = v0[13];
    v22 = [objc_opt_self() locationServicesEnabled];
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      if (v22)
      {
        v27 = 0x44454C42414E45;
      }

      else
      {
        v27 = 0x44454C4241534944;
      }

      if (v22)
      {
        v28 = 0xE700000000000000;
      }

      else
      {
        v28 = 0xE800000000000000;
      }

      v29 = sub_10000D01C(v27, v28, &v38);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "*** Location Authorization Event *** %s", v25, 0xCu);
      sub_100004984(v26);
    }

    v30 = v0[2];
    sub_1004A8148(v22);
    v31 = v0[17];
    v32 = v0[2];
    v33 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v34 = swift_task_alloc();
    v0[18] = v34;
    *v34 = v0;
    v34[1] = sub_1004A9A34;
    v35 = v0[12];
    v36 = v0[10];
    v37 = v0[6];

    return AsyncStream.Iterator.next(isolation:)(v37, v32, v31, v36);
  }
}

uint64_t sub_1004A9F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_1004A9334(a1, v4, v5, v7);
}

uint64_t sub_1004AA00C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0DC8);
  sub_10000A6F0(v0, qword_1005E0DC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004AA090(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1004AA0D8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1004A7CDC(a1, v4, v5);
}

uint64_t sub_1004AA14C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005AC658, &unk_1004C6F00) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000368C;

  return sub_1004A7F3C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1004AA2B8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1004A7EBC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004AA3B0()
{
  v1 = v0[4];

  v2 = v0[6];
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B10);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "RunningBoardProcess threw an error: %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1004AA55C(char a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 292) = a1;

  return _swift_task_switch(sub_1004AA65C, 0, 0);
}

uint64_t sub_1004AA65C()
{
  v1 = *(v0 + 292);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 272);
    v7 = *(v0 + 240);

    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    goto LABEL_5;
  }

  v2 = *(v0 + 240);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v3 = *(v0 + 240);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = *(v0 + 272);
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    *(v0 + 224) = *(v0 + 56);
LABEL_5:
    *(v0 + 232) = v4;
    v8 = *(v0 + 200);
    if (v8 < 0)
    {
      break;
    }

    v9 = v5;
    v10 = v6;
    if (v5)
    {
LABEL_11:
      v12 = (v9 - 1) & v9;
      v13 = *(*(v8 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));

      goto LABEL_14;
    }

    v11 = v6;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= ((*(v0 + 216) + 64) >> 6))
      {
        goto LABEL_18;
      }

      v9 = *(*(v0 + 208) + 8 * v10);
      ++v11;
      if (v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v15 = __CocoaSet.Iterator.next()();
  if (!v15)
  {
    goto LABEL_18;
  }

  *(v0 + 72) = v15;
  type metadata accessor for LocationServiceClient();
  swift_dynamicCast();
  v14 = *(v0 + 64);
  v10 = v6;
  v12 = v5;
LABEL_14:
  *(v0 + 248) = v10;
  *(v0 + 256) = v12;
  *(v0 + 240) = v14;
  if (v14)
  {
    v16 = *(v14 + 112);
    v17 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
    v32 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
    v18 = swift_task_alloc();
    *(v0 + 264) = v18;
    *v18 = v0;
    v18[1] = sub_10002E68C;
    v19 = *(v0 + 192);

    return v32(v19);
  }

LABEL_18:
  v21 = *(v0 + 208);
  v22 = *(v0 + 216);
  v24 = *(v0 + 192);
  v23 = *(v0 + 200);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v28 = *(v0 + 128);
  v27 = *(v0 + 136);
  v29 = *(v0 + 120);
  sub_10000E3F8();

  v30 = *(v0 + 8);
  v31 = *(v0 + 224);

  return v30(v31);
}

uint64_t sub_1004AA928(char a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1004AAA28, 0, 0);
}

uint64_t sub_1004AAA28()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 104) + 8;
  (*(v0 + 192))(*(v0 + 120), *(v0 + 96));
  v3 = *(v0 + 160);
  if (v1)
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v4 = *(v0 + 160);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = *(v0 + 168);
      v5 = *(v0 + 176);
      *(v0 + 152) = *(v0 + 56);
      v7 = *(v0 + 128);
      if (v7 < 0)
      {
        break;
      }

LABEL_7:
      v12 = v5;
      v10 = v6;
      if (v5)
      {
LABEL_12:
        v11 = (v12 - 1) & v12;
        v14 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v12)))));

        goto LABEL_13;
      }

      v13 = v6;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= ((*(v0 + 144) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v12 = *(*(v0 + 136) + 8 * v10);
        ++v13;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  else
  {

    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 128);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = __CocoaSet.Iterator.next()();
  if (!v8)
  {
    goto LABEL_17;
  }

  *(v0 + 72) = v8;
  type metadata accessor for LocationServiceClient();
  swift_dynamicCast();
  v9 = *(v0 + 64);
  v10 = v6;
  v11 = v5;
LABEL_13:
  *(v0 + 168) = v10;
  *(v0 + 176) = v11;
  *(v0 + 160) = v9;
  if (v9)
  {
    v15 = *(v9 + 112);
    v16 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
    v27 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
    v17 = swift_task_alloc();
    *(v0 + 184) = v17;
    *v17 = v0;
    v17[1] = sub_100025FA4;
    v18 = *(v0 + 120);

    return v27(v18);
  }

  else
  {
LABEL_17:
    v20 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v24 = *(v0 + 112);
    sub_10000E3F8();

    v25 = *(v0 + 8);
    v26 = *(v0 + 152);

    return v25(v26);
  }
}

unint64_t sub_1004AACAC()
{
  result = qword_1005B5AB8;
  if (!qword_1005B5AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B5AB8);
  }

  return result;
}

uint64_t sub_1004AACF8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1004AAD20, v3, 0);
}

uint64_t sub_1004AAD20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
  v5 = *(v2 + 192);
  v6 = swift_allocObject();
  *(v0 + 40) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  sub_100005F6C(v4, v1);
  v7 = sub_1000097A0(&qword_1005AAB90, type metadata accessor for LocalStorageService);

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  v8[2] = &unk_1004DD658;
  v8[3] = v6;
  v8[4] = v5;
  v9 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_1004AAEB0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v2, v7, 0xD00000000000001DLL, 0x80000001004E0910, sub_1004B8834, v8, &type metadata for () + 8);
}

uint64_t sub_1004AAEB0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = sub_100390028;
  }

  else
  {
    v6 = v2[5];
    v7 = v2[6];
    v8 = v2[4];

    v5 = sub_10004B074;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004AAFE0(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_1004AB004, v2, 0);
}

uint64_t sub_1004AB004()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v2 + 192);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  v6 = sub_1000097A0(&qword_1005AAB90, type metadata accessor for LocalStorageService);

  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v7[2] = &unk_1004DD690;
  v7[3] = v5;
  v7[4] = v4;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_1004AB188;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v2, v6, 0xD00000000000001DLL, 0x80000001004E0910, sub_1004B8834, v7, &type metadata for () + 8);
}

uint64_t sub_1004AB188()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_1004AB2B8;
  }

  else
  {
    v6 = v2[4];
    v7 = v2[5];
    v8 = v2[3];

    v5 = sub_1002BCFE4;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004AB2B8()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_1004AB324(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(type metadata accessor for SecureLocationsConfig() - 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 + 64);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1004AB3EC, v2, 0);
}

uint64_t sub_1004AB3EC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = *(v3 + 192);
  sub_10002159C(*(v0 + 16), v1, type metadata accessor for SecureLocationsConfig);
  v7 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 56) = v9;
  *(v9 + 16) = v5;
  sub_1004B85EC(v1, v9 + v7, type metadata accessor for SecureLocationsConfig);
  *(v9 + v8) = v3;
  v10 = sub_1000097A0(&qword_1005AAB90, type metadata accessor for LocalStorageService);

  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  v11[2] = &unk_1004DD638;
  v11[3] = v9;
  v11[4] = v6;
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_100314684;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, v3, v10, 0xD00000000000001DLL, 0x80000001004E0910, sub_1000F4C9C, v11, &type metadata for () + 8);
}

id static SystemInfo.shouldUseWLANInsteadOfWiFi.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    return wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004AB610(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 32) = a3;
  *(v5 + 96) = a2;
  return _swift_task_switch(sub_1004AB638, a5, 0);
}

uint64_t sub_1004AB638()
{
  v1 = 0xD000000000000014;
  v2 = "aredKeysImported";
  if (*(v0 + 96) != 1)
  {
    v1 = 0xD000000000000020;
    v2 = "readServerSettings()";
  }

  if (*(v0 + 96))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*(v0 + 96))
  {
    v4 = v2;
  }

  else
  {
    v4 = "secureLocationLabels";
  }

  *(v0 + 56) = v4;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  v7 = type metadata accessor for PropertyListEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_100005F6C(v6, v5);
  PropertyListEncoder.init()();
  sub_10010670C();
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 64) = v10;
  *(v0 + 72) = v11;
  v12 = v10;
  v13 = v11;
  v14 = *(v0 + 48);

  sub_1000049D0(*(v0 + 16), *(v0 + 24));
  v15 = *(v14 + 128);
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_1004AB818;

  return sub_10032CC54(v3, v4 | 0x8000000000000000, v12, v13);
}

uint64_t sub_1004AB818()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1004AB9BC;
  }

  else
  {
    v6 = sub_1004AB944;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004AB944()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  sub_1000049D0(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1004AB9BC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  sub_1000049D0(v1, v2);
  v4 = v0[11];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1004ABA34(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 80) = a2;
  return _swift_task_switch(sub_1004ABA58, a4, 0);
}

uint64_t sub_1004ABA58()
{
  v1 = 0xD000000000000014;
  v2 = "aredKeysImported";
  if (*(v0 + 80) != 1)
  {
    v1 = 0xD000000000000020;
    v2 = "readServerSettings()";
  }

  if (*(v0 + 80))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*(v0 + 80))
  {
    v4 = v2;
  }

  else
  {
    v4 = "secureLocationLabels";
  }

  *(v0 + 40) = v4;
  *(v0 + 16) = *(v0 + 24);
  v5 = type metadata accessor for PropertyListEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  PropertyListEncoder.init()();
  sub_10004B564(&qword_1005AABB8, &qword_1004C4610);
  sub_1004B7E94();
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  *(v0 + 48) = v8;
  *(v0 + 56) = v9;
  v10 = v8;
  v11 = v9;
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);

  v14 = *(v13 + 128);
  v15 = swift_task_alloc();
  *(v0 + 64) = v15;
  *v15 = v0;
  v15[1] = sub_1004ABC44;

  return sub_10032CC54(v3, v4 | 0x8000000000000000, v10, v11);
}

uint64_t sub_1004ABC44()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1004ABDE8;
  }

  else
  {
    v6 = sub_1004ABD70;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004ABD70()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  sub_1000049D0(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1004ABDE8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  sub_1000049D0(v1, v2);
  v4 = v0[9];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1004ABE60(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 88) = a2;
  v6 = type metadata accessor for SecureLocationsConfig();
  *(v4 + 32) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_1004ABEFC, a4, 0);
}

uint64_t sub_1004ABEFC()
{
  v1 = 0xD000000000000014;
  v2 = "aredKeysImported";
  if (*(v0 + 88) != 1)
  {
    v1 = 0xD000000000000020;
    v2 = "readServerSettings()";
  }

  if (*(v0 + 88))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*(v0 + 88))
  {
    v4 = v2;
  }

  else
  {
    v4 = "secureLocationLabels";
  }

  *(v0 + 48) = v4;
  v5 = *(v0 + 40);
  sub_10002159C(*(v0 + 16), v5, type metadata accessor for SecureLocationsConfig);
  v6 = type metadata accessor for PropertyListEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1000097A0(&qword_1005B24D8, type metadata accessor for SecureLocationsConfig);
  v9 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v11 = v10;
  *(v0 + 56) = v9;
  *(v0 + 64) = v10;
  sub_1000217EC(v5, type metadata accessor for SecureLocationsConfig);
  v12 = *(v0 + 24);

  v13 = *(v12 + 128);
  v14 = swift_task_alloc();
  *(v0 + 72) = v14;
  *v14 = v0;
  v14[1] = sub_1004AC134;

  return sub_10032CC54(v3, v4 | 0x8000000000000000, v9, v11);
}

uint64_t sub_1004AC134()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1004AC2E8;
  }

  else
  {
    v6 = sub_1004AC260;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004AC260()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  sub_1000049D0(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004AC2E8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  sub_1000049D0(v1, v2);
  v4 = v0[10];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004AC3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1004AC448;

  return daemon.getter();
}

uint64_t sub_1004AC448(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004AC624;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004AC624(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CE9BC, 0, 0);
  }

  else
  {
    v7 = v4[6];

    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_1004AC7B4;
    v9 = v4[4];
    v10 = v4[3];

    return sub_100314D44(v10, v9);
  }
}

uint64_t sub_1004AC7B4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1004B8828;
  }

  else
  {
    *(v4 + 96) = a1 & 1;
    v7 = sub_1004AC8E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004AC8E0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);

  *v3 = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004AC950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[0] = a3;
  v5 = type metadata accessor for SecureLocation();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v31 - v11;
  v13 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v31 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  unsafeFromAsyncTask<A>(_:)();

  sub_1004B857C(v19, v17);
  if ((*(v6 + 48))(v17, 1, v5) == 1)
  {
    sub_100002CE0(v19, &unk_1005AB3F0, &qword_1004C4BF0);
    v21 = type metadata accessor for SecureLocationsCachedPayload();
    return (*(*(v21 - 8) + 56))(v31[0], 1, 1, v21);
  }

  else
  {
    sub_1004B85EC(v17, v12, type metadata accessor for SecureLocation);
    sub_10002159C(v12, v10, type metadata accessor for SecureLocation);
    v23 = type metadata accessor for SecureLocationsCachedPayload();
    v24 = v31[0];
    v25 = (v31[0] + *(v23 + 20));
    sub_10002159C(v10, v25, type metadata accessor for SecureLocation);
    v26 = *v25;
    v27 = v25[1];
    v28 = String.utf8Data.getter();
    v30 = v29;
    v31[1] = v28;
    v31[2] = v29;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_1000217EC(v10, type metadata accessor for SecureLocation);
    sub_1000217EC(v12, type metadata accessor for SecureLocation);
    sub_100002CE0(v19, &unk_1005AB3F0, &qword_1004C4BF0);
    sub_1000049D0(v28, v30);
    return (*(*(v23 - 8) + 56))(v24, 0, 1, v23);
  }
}

uint64_t sub_1004ACE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1004ACED8;

  return daemon.getter();
}

uint64_t sub_1004ACED8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004AD0B4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004AD0B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CE9BC, 0, 0);
  }

  else
  {
    v7 = v4[6];

    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_1004AD244;
    v9 = v4[3];
    v10 = v4[4];
    v11 = v4[2];

    return sub_100313B94(v11, v9, v10);
  }
}

uint64_t sub_1004AD244()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1002BE408;
  }

  else
  {
    v3 = sub_100253E7C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004AD358(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  unsafeFromAsyncTask<A>(_:)();
}

uint64_t sub_1004AD600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1004AD698;

  return daemon.getter();
}

uint64_t sub_1004AD698(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004AD874;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004AD874(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CE9BC, 0, 0);
  }

  else
  {
    v7 = v4[6];

    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_1004ADA04;
    v9 = v4[3];
    v10 = v4[4];
    v11 = v4[2];

    return sub_100315570(v11, v9, v10);
  }
}

uint64_t sub_1004ADA04()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1004B8828;
  }

  else
  {
    v3 = sub_1004B8858;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004ADB18(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1004ADBAC;

  return daemon.getter();
}

uint64_t sub_1004ADBAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004ADD88;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004ADD88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CE9C0, 0, 0);
  }

  else
  {
    v7 = v4[4];

    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_1004ADF10;

    return sub_1003051F4();
  }
}

uint64_t sub_1004ADF10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1002CE9BC;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_1004AE038;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004AE038()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[2];

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1004AE0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1004AE140;

  return daemon.getter();
}

uint64_t sub_1004AE140(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004AE31C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004AE31C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CE9BC, 0, 0);
  }

  else
  {
    v7 = v4[6];

    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_1004AE4AC;
    v9 = v4[4];
    v10 = v4[3];

    return sub_100316174(v10, v9);
  }
}

uint64_t sub_1004AE4AC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1004B8828;
  }

  else
  {
    *(v4 + 96) = a1 & 1;
    v7 = sub_1004B8824;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004AE5D8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005B5D10, &qword_1004DD708);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v40 - v10;
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[6];
  v15 = v1[7];
  v16 = v1[8];
  v39 = v1[9];
  static Keychain.item(account:service:nonDestructive:accessGroup:syncViewHint:)();
  v46 = v7;
  v47 = v3;
  v17 = a1;
  v18 = type metadata accessor for Keychain.Item();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_100002CE0(v11, &qword_1005B5D10, &qword_1004DD708);
    v45 = 0;
    v20 = 0xF000000000000000;
  }

  else
  {
    v44 = v1;
    v21 = Keychain.Item.data.getter();
    v23 = v22;
    (*(v19 + 8))(v11, v18);
    if (v23 >> 60 != 15)
    {
      sub_100005F6C(v21, v23);
      v41 = 0;
      v42 = 0xF000000000000000;
      v45 = v21;
      v43 = v23;
      v24 = v17;
      v30 = v21;
      goto LABEL_9;
    }

    v45 = v21;
    v20 = v23;
    v1 = v44;
  }

  v24 = v17;
  v25 = v1[4];
  v26 = v1[5];
  v27 = static Keychain.data(account:service:)();
  v23 = v28;
  if (v28 >> 60 == 15)
  {
    sub_10001A794(v45, v20);
    v29 = 1;
    return (*(v4 + 56))(v24, v29, 1, v47);
  }

  v43 = v20;
  v44 = v1;
  v30 = v27;
  sub_100005F6C(v27, v28);
  v41 = v30;
  v42 = v23;
LABEL_9:
  v31 = type metadata accessor for PropertyListDecoder();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000097A0(&qword_1005B5D18, type metadata accessor for SecureLocationsCachedSharingKey);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v35 = v42;
  if (v42 >> 60 == 15)
  {

    sub_1000049D0(v30, v23);
    sub_10001A794(v45, v43);
  }

  else
  {
    v36 = v44;
    sub_1004B28FC(v46, DarwinNotification.init(name:value:), 0);
    v37 = v36[4];
    v38 = v36[5];
    static Keychain.deleteData(account:service:)();
    sub_10001A794(v45, v43);
    sub_10001A794(v41, v35);

    sub_1000049D0(v30, v23);
  }

  sub_1004B85EC(v46, v24, type metadata accessor for SecureLocationsCachedSharingKey);
  v29 = 0;
  return (*(v4 + 56))(v24, v29, 1, v47);
}

uint64_t sub_1004AEBA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1004AEC3C;

  return daemon.getter();
}

uint64_t sub_1004AEC3C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004AEE18;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004AEE18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CE9C0, 0, 0);
  }

  else
  {
    v7 = v4[4];

    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_1004AEFC8;
    v9 = v4[2];

    return (sub_1004AAFE0)(v9, 1);
  }
}

uint64_t sub_1004AEFC8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1002CE9BC;
  }

  else
  {
    v3 = sub_1002CE9C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004AF0DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1004AF170;

  return daemon.getter();
}

uint64_t sub_1004AF170(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004AF34C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004AF34C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002CE9C0, 0, 0);
  }

  else
  {
    v7 = v4[4];

    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_1004AF4F4;

    return sub_1000E5F7C(1);
  }
}

uint64_t sub_1004AF4F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_1001BED38;
  }

  else
  {
    v5 = sub_1004AF608;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004AF608()
{
  v12 = v0;
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    if (qword_1005A8618 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005B5AC8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD000000000000016, 0x80000001004EB7D0, &v11);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s, labels are nil returning empty array", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = *(v0 + 48);

    v1 = _swiftEmptyArrayStorage;
  }

  **(v0 + 16) = v1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004AF7AC()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1004AF83C;

  return daemon.getter();
}

uint64_t sub_1004AF83C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v12 = *v1;
  *(v3 + 24) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004AFA18;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004AFA18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  v4[5] = a1;
  v4[6] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004B882C, 0, 0);
  }

  else
  {
    v7 = v4[3];

    v8 = swift_task_alloc();
    v4[7] = v8;
    *v8 = v6;
    v8[1] = sub_1004AFBA4;

    return sub_100312D68(1);
  }
}

uint64_t sub_1004AFBA4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1004B8830;
  }

  else
  {
    v3 = sub_1003966C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004AFF2C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1004AFFC0;

  return daemon.getter();
}

uint64_t sub_1004AFFC0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004B019C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004B019C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10013A3F0, 0, 0);
  }

  else
  {
    v7 = v4[4];

    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_10013A2DC;
    v9 = v4[2];

    return sub_1000E6418(v9, 0);
  }
}

uint64_t sub_1004B0348()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1004B03D8;

  return daemon.getter();
}

uint64_t sub_1004B03D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v12 = *v1;
  *(v3 + 24) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004B05B4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004B05B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  v4[5] = a1;
  v4[6] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004B0854, 0, 0);
  }

  else
  {
    v7 = v4[3];

    v8 = swift_task_alloc();
    v4[7] = v8;
    *v8 = v6;
    v8[1] = sub_1004B0740;

    return sub_100312D68(0);
  }
}

uint64_t sub_1004B0740()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1000E9F80;
  }

  else
  {
    v3 = sub_100207260;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B0854()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004B08B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v9 = *(v8 + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();
  v13 = type metadata accessor for SecureLocationsCachedPayload();
  v6[25] = v13;
  v14 = *(v13 - 8);
  v6[26] = v14;
  v6[27] = *(v14 + 64);
  v6[28] = swift_task_alloc();
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v6[29] = v15;
  v16 = *(v15 - 8);
  v6[30] = v16;
  v17 = *(v16 + 64) + 15;
  v6[31] = swift_task_alloc();
  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v6[32] = v19;
  *v19 = v6;
  v19[1] = sub_1004B0AC8;

  return daemon.getter();
}

uint64_t sub_1004B0AC8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 256);
  v12 = *v1;
  *(v3 + 264) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 272) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004B0CA4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004B0CA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004B127C, 0, 0);
  }

  else
  {
    v7 = v4[33];
    v8 = v4[25];
    v9 = v4[16];

    v10 = *(v8 + 20);
    v11 = swift_task_alloc();
    v4[37] = v11;
    *v11 = v6;
    v11[1] = sub_1004B0E48;

    return sub_1003143FC(v9 + v10);
  }
}

uint64_t sub_1004B0E48()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1004B1548;
  }

  else
  {
    v3 = sub_1004B0F5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B0F5C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v19 = v0[27];
  v20 = v0[24];
  v25 = v0[35];
  v26 = v0[23];
  v27 = v0[22];
  v24 = v0[20];
  v22 = v0[21];
  v23 = v0[19];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v1, v4);
  sub_10002159C(v8, v3, type metadata accessor for SecureLocationsCachedPayload);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  sub_1004B85EC(v3, v10 + v9, type metadata accessor for SecureLocationsCachedPayload);
  v0[12] = sub_1004B8744;
  v0[13] = v10;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10059F5E8;
  v11 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_1000097A0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v24 + 8))(v22, v23);
  (*(v26 + 8))(v20, v27);
  v12 = v0[13];

  v13 = v0[31];
  v14 = v0[28];
  v15 = v0[24];
  v16 = v0[21];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004B127C()
{
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v18 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v6 = v0[19];
  v20 = v0[21];
  v21 = v0[20];
  v7 = v0[17];
  v8 = v0[18];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v3, v5);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v1;
  v0[6] = sub_1004B8714;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10059F598;
  v10 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1000097A0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v21 + 8))(v20, v6);
  (*(v22 + 8))(v18, v23);
  v11 = v0[7];

  v12 = v0[31];
  v13 = v0[28];
  v14 = v0[24];
  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004B1548()
{
  v1 = v0[38];
  v2 = v0[35];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v18 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v6 = v0[19];
  v20 = v0[21];
  v21 = v0[20];
  v7 = v0[17];
  v8 = v0[18];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v3, v5);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v1;
  v0[6] = sub_1004B8714;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10059F598;
  v10 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1000097A0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v21 + 8))(v20, v6);
  (*(v22 + 8))(v18, v23);
  v11 = v0[7];

  v12 = v0[31];
  v13 = v0[28];
  v14 = v0[24];
  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004B1814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v9 = *(v8 + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();
  v13 = *(type metadata accessor for SecureLocationsCachedSharedKey(0) - 8);
  v6[25] = v13;
  v6[26] = *(v13 + 64);
  v6[27] = swift_task_alloc();
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v6[28] = v14;
  v15 = *(v14 - 8);
  v6[29] = v15;
  v16 = *(v15 + 64) + 15;
  v6[30] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v6[31] = v18;
  *v18 = v6;
  v18[1] = sub_1004B1A20;

  return daemon.getter();
}

uint64_t sub_1004B1A20(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  *(v3 + 256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 264) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004B1BFC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004B1BFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004B21C0, 0, 0);
  }

  else
  {
    v7 = v4[32];

    v8 = swift_task_alloc();
    v4[36] = v8;
    *v8 = v6;
    v8[1] = sub_1004B1D8C;
    v9 = v4[16];

    return sub_10030585C(v9);
  }
}

uint64_t sub_1004B1D8C()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1004B248C;
  }

  else
  {
    v3 = sub_1004B1EA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B1EA0()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[25];
  v19 = v0[26];
  v20 = v0[24];
  v25 = v0[34];
  v26 = v0[23];
  v27 = v0[22];
  v24 = v0[20];
  v22 = v0[21];
  v23 = v0[19];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v1, v4);
  sub_10002159C(v8, v3, type metadata accessor for SecureLocationsCachedSharedKey);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  sub_1004B85EC(v3, v10 + v9, type metadata accessor for SecureLocationsCachedSharedKey);
  v0[12] = sub_1004B7F9C;
  v0[13] = v10;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10059F408;
  v11 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_1000097A0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v24 + 8))(v22, v23);
  (*(v26 + 8))(v20, v27);
  v12 = v0[13];

  v13 = v0[30];
  v14 = v0[27];
  v15 = v0[24];
  v16 = v0[21];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004B21C0()
{
  v1 = v0[35];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v18 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v6 = v0[19];
  v20 = v0[21];
  v21 = v0[20];
  v7 = v0[17];
  v8 = v0[18];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v3, v5);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v1;
  v0[6] = sub_1004B7F6C;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10059F3B8;
  v10 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1000097A0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v21 + 8))(v20, v6);
  (*(v22 + 8))(v18, v23);
  v11 = v0[7];

  v12 = v0[30];
  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004B248C()
{
  v1 = v0[37];
  v2 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v18 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v6 = v0[19];
  v20 = v0[21];
  v21 = v0[20];
  v7 = v0[17];
  v8 = v0[18];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v3, v5);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v1;
  v0[6] = sub_1004B7F6C;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10059F3B8;
  v10 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1000097A0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v21 + 8))(v20, v6);
  (*(v22 + 8))(v18, v23);
  v11 = v0[7];

  v12 = v0[30];
  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004B2758(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = sub_10004B564(a4, a5);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  sub_10002159C(a3, &v16 - v13, a6);
  swift_storeEnumTagMultiPayload();
  a1(v14);
  return sub_100002CE0(v14, a4, a5);
}

uint64_t sub_1004B2834(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_10004B564(a4, a5);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  *(&v14 - v11) = a3;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a1(v12);
  return sub_100002CE0(v12, a4, a5);
}

uint64_t sub_1004B28FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v68 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  __chkstk_darwin(v4);
  v70 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v71 = *(v7 - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin(v7);
  v69 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  __chkstk_darwin(v12);
  v64 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Keychain.DataProtectionClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PropertyListEncoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = PropertyListEncoder.init()();
  sub_1000097A0(&qword_1005B5D08, type metadata accessor for SecureLocationsCachedSharingKey);
  v24 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v55 = v11;
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v23;
  v57 = a1;
  v61 = v7;
  aBlock = v24;
  v76 = v25;
  v26 = v63;
  v27 = v63[2];
  v28 = v63[3];
  v30 = v63[6];
  v29 = v63[7];
  v59 = v25;
  v31 = *(v16 + 104);
  v58 = v24;
  v31(v19, enum case for Keychain.DataProtectionClass.c(_:), v15);
  v33 = v26[8];
  v32 = v26[9];
  sub_1000CA210();
  static Keychain.set<A>(data:account:service:dataProtectionClass:accessGroup:syncViewHint:)();
  (*(v16 + 8))(v19, v15);
  if (qword_1005A8618 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000A6F0(v35, qword_1005B5AC8);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v40 = v72;
  v39 = v73;
  v41 = v61;
  v42 = v56;
  if (v38)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004EB850, &aBlock);
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s sharing key updated", v43, 0xCu);
    sub_100004984(v44);
  }

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v46 = v64;
  v45 = v65;
  v47 = v66;
  (*(v65 + 104))(v64, enum case for DispatchQoS.QoSClass.default(_:), v66);
  v48 = static OS_dispatch_queue.global(qos:)();
  (*(v45 + 8))(v46, v47);
  sub_10002159C(v57, v42, type metadata accessor for SecureLocationsCachedSharingKey);
  v49 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v50 = swift_allocObject();
  v51 = v68;
  *(v50 + 16) = v67;
  *(v50 + 24) = v51;
  sub_1004B85EC(v42, v50 + v49, type metadata accessor for SecureLocationsCachedSharingKey);
  v79 = sub_1004B83E8;
  v80 = v50;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100020828;
  v78 = &unk_10059F4F8;
  v52 = _Block_copy(&aBlock);

  v53 = v69;
  static DispatchQoS.unspecified.getter();
  v74 = _swiftEmptyArrayStorage;
  sub_1000097A0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  v54 = v70;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v52);

  sub_1000049D0(v58, v59);

  (*(v40 + 8))(v54, v39);
  (*(v71 + 8))(v53, v41);
}

uint64_t sub_1004B3420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v9 = *(v8 + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();
  v13 = *(type metadata accessor for SecureLocationsConfig() - 8);
  v6[25] = v13;
  v6[26] = *(v13 + 64);
  v6[27] = swift_task_alloc();
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v6[28] = v14;
  v15 = *(v14 - 8);
  v6[29] = v15;
  v16 = *(v15 + 64) + 15;
  v6[30] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v6[31] = v18;
  *v18 = v6;
  v18[1] = sub_1004B362C;

  return daemon.getter();
}

uint64_t sub_1004B362C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  *(v3 + 256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 264) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004B3808;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004B3808(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004B3DEC, 0, 0);
  }

  else
  {
    v7 = v4[32];

    v8 = swift_task_alloc();
    v4[36] = v8;
    *v8 = v6;
    v8[1] = sub_1004B39B8;
    v9 = v4[16];

    return (sub_1004AB324)(v9, 0);
  }
}

uint64_t sub_1004B39B8()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1004B40B8;
  }

  else
  {
    v3 = sub_1004B3ACC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B3ACC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[25];
  v19 = v0[26];
  v20 = v0[24];
  v25 = v0[34];
  v26 = v0[23];
  v27 = v0[22];
  v24 = v0[20];
  v22 = v0[21];
  v23 = v0[19];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v1, v4);
  sub_10002159C(v8, v3, type metadata accessor for SecureLocationsConfig);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  sub_1004B85EC(v3, v10 + v9, type metadata accessor for SecureLocationsConfig);
  v0[12] = sub_1004B7BAC;
  v0[13] = v10;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10059F2F0;
  v11 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_1000097A0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v24 + 8))(v22, v23);
  (*(v26 + 8))(v20, v27);
  v12 = v0[13];

  v13 = v0[30];
  v14 = v0[27];
  v15 = v0[24];
  v16 = v0[21];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004B3DEC()
{
  v1 = v0[35];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v18 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v6 = v0[19];
  v20 = v0[21];
  v21 = v0[20];
  v7 = v0[17];
  v8 = v0[18];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v3, v5);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v1;
  v0[6] = sub_1004B7B7C;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10059F2A0;
  v10 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1000097A0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v21 + 8))(v20, v6);
  (*(v22 + 8))(v18, v23);
  v11 = v0[7];

  v12 = v0[30];
  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004B40B8()
{
  v1 = v0[37];
  v2 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v18 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v6 = v0[19];
  v20 = v0[21];
  v21 = v0[20];
  v7 = v0[17];
  v8 = v0[18];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v3, v5);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v1;
  v0[6] = sub_1004B7B7C;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10059F2A0;
  v10 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_1000097A0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v21 + 8))(v20, v6);
  (*(v22 + 8))(v18, v23);
  v11 = v0[7];

  v12 = v0[30];
  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004B4384(uint64_t a1)
{
  v1[4] = a1;
  v2 = *(type metadata accessor for SecureLocation() - 8);
  v1[5] = v2;
  v3 = *(v2 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v4 = type metadata accessor for SecureLocationsCachedPayload();
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_1004B44D8;

  return daemon.getter();
}

uint64_t sub_1004B44D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1004B46B4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004B46B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[14] = a1;
  v4[15] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004B4BB8, 0, 0);
  }

  else
  {
    v7 = v4[12];

    v8 = swift_task_alloc();
    v4[16] = v8;
    *v8 = v6;
    v8[1] = sub_1004B483C;

    return sub_1003133B0();
  }
}

uint64_t sub_1004B483C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_1004B4DDC;
  }

  else
  {
    v5 = sub_1004B4950;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004B4950()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = *(v0 + 64);
    v28 = *(v0 + 72);
    v3 = *(v0 + 40);
    sub_100239848(0, v2, 0);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v26 = *(v3 + 72);
    do
    {
      v5 = *(v0 + 80);
      v7 = *(v0 + 48);
      v6 = *(v0 + 56);
      sub_10002159C(v4, v6, type metadata accessor for SecureLocation);
      sub_10002159C(v6, v7, type metadata accessor for SecureLocation);
      v8 = (v5 + *(v27 + 20));
      sub_10002159C(v7, v8, type metadata accessor for SecureLocation);
      v9 = *v8;
      v10 = v8[1];
      v11 = String.utf8Data.getter();
      v13 = v12;
      *(v0 + 16) = v11;
      *(v0 + 24) = v12;
      sub_1000CA210();
      DataProtocol.stableUUID.getter();
      sub_1000217EC(v7, type metadata accessor for SecureLocation);
      sub_1000217EC(v6, type metadata accessor for SecureLocation);
      sub_1000049D0(v11, v13);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_100239848(v14 > 1, v15 + 1, 1);
      }

      v16 = *(v0 + 80);
      _swiftEmptyArrayStorage[2] = v15 + 1;
      sub_1004B85EC(v16, _swiftEmptyArrayStorage + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v15, type metadata accessor for SecureLocationsCachedPayload);
      v4 += v26;
      --v2;
    }

    while (v2);
    v17 = *(v0 + 136);
    v18 = *(v0 + 112);
  }

  else
  {
    v19 = *(v0 + 112);
    v20 = *(v0 + 136);
  }

  v21 = *(v0 + 80);
  v22 = *(v0 + 48);
  v23 = *(v0 + 56);
  **(v0 + 32) = _swiftEmptyArrayStorage;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1004B4BB8()
{
  v16 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  if (qword_1005A8618 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005B5AC8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004EB760, &v15);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  **(v0 + 32) = _swiftEmptyArrayStorage;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1004B4DDC()
{
  v16 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);

  if (qword_1005A8618 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005B5AC8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004EB760, &v15);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  **(v0 + 32) = _swiftEmptyArrayStorage;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1004B5000()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocClassInstance();
}

Swift::Int sub_1004B5084()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1004B50F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1004B51EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1004B5280;

  return daemon.getter();
}

uint64_t sub_1004B5280(uint64_t a1)
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
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_1004B545C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004B545C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004B8854, 0, 0);
  }

  else
  {
    v7 = v4[4];

    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_1004B55E4;

    return sub_10001CC28();
  }
}

uint64_t sub_1004B55E4(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1004B56E4, 0, 0);
}

uint64_t sub_1004B56E4()
{
  v1 = *(v0[9] + 120);
  sub_10004B0C8(v1);

  if (v1)
  {
    v1(v0[2]);
    sub_100037FC8(v1);
  }

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004B5788()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1004B589C;
  }

  else
  {
    v3 = sub_1002CE9C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004B589C()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB98);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  v7 = v0[6];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "notifyOfStewieStateChange: %@", v8, 0xCu);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
    v11 = v0[6];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004B5A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1004B5AEC;

  return daemon.getter();
}

uint64_t sub_1004B5AEC(uint64_t a1)
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
  v9 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000097A0(&qword_1005A9308, type metadata accessor for LocationService);
  *v6 = v12;
  v6[1] = sub_1004B5CC8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004B5CC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004B5FF4, 0, 0);
  }

  else
  {
    v7 = v4[4];

    v8 = swift_task_alloc();
    v4[8] = v8;
    *v8 = v6;
    v8[1] = sub_1004B5E50;

    return sub_10001CC28();
  }
}

uint64_t sub_1004B5E50(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1004B5F50, 0, 0);
}

uint64_t sub_1004B5F50()
{
  v1 = *(v0[9] + 104);
  sub_10004B0C8(v1);

  if (v1)
  {
    v1(v0[2]);
    sub_100037FC8(v1);
  }

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004B5FF4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

unint64_t sub_1004B609C()
{
  result = qword_1005B5CE8;
  if (!qword_1005B5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5CE8);
  }

  return result;
}

void sub_1004B60F0(uint64_t *a1@<X4>, uint64_t *a2@<X8>)
{
  type metadata accessor for CFString(0);
  v4 = v3;
  v47 = v3;
  error[0] = kSecAttrKeyTypeEC;
  sub_10004B064(error, v45);
  v5 = kSecAttrKeyType;
  v6 = kSecAttrKeyTypeEC;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100455454(v45, v5, isUniquelyReferenced_nonNull_native);

  v47 = v4;
  error[0] = kSecAttrKeyClassPublic;
  sub_10004B064(error, v45);
  v8 = kSecAttrKeyClass;
  v9 = kSecAttrKeyClassPublic;
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v44 = &_swiftEmptyDictionarySingleton;
  sub_100455454(v45, v8, v10);

  error[0] = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
  sub_1004B8654();
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = SecKeyCreateWithData(isa, v12, error);

  if (!v13)
  {
    if (qword_1005A8610 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005E0DF8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "CryptoUtil: SecKeyCreateWithData could not be created for the public key", v30, 2u);
    }

    v31 = type metadata accessor for CryptoError();
    sub_1000097A0(&qword_1005B5D28, &type metadata accessor for CryptoError);
    v17 = swift_allocError();
    (*(*(v31 - 8) + 104))(v32, enum case for CryptoError.encodeError(_:), v31);
    swift_willThrow();
    goto LABEL_14;
  }

  v45[0] = 0;
  v14 = Data._bridgeToObjectiveC()().super.isa;
  EncryptedData = SecKeyCreateEncryptedData(v13, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v14, v45);

  v16 = v45[0];
  if (v45[0])
  {
    type metadata accessor for CFError(0);
    sub_1000097A0(&qword_1005B5D30, type metadata accessor for CFError);
    v17 = swift_allocError();
    *v18 = v16;
    if (qword_1005A8610 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0DF8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136446210;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v24 = String.init<A>(describing:)();
      v26 = sub_10000D01C(v24, v25, &v44);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "CryptoUtil: Encryption: Could not encrypt the data. Error - %{public}s", v22, 0xCu);
      sub_100004984(v23);
    }

    swift_willThrow();
LABEL_8:

LABEL_14:
    *a1 = v17;
    return;
  }

  if (!EncryptedData)
  {
    if (qword_1005A8610 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000A6F0(v37, qword_1005E0DF8);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "CryptoUtil: Encryption did not fail, but encrypted data is nil.", v40, 2u);
    }

    v41 = type metadata accessor for CryptoError();
    sub_1000097A0(&qword_1005B5D28, &type metadata accessor for CryptoError);
    v17 = swift_allocError();
    (*(*(v41 - 8) + 104))(v42, enum case for CryptoError.encodeError(_:), v41);
    swift_willThrow();
    goto LABEL_8;
  }

  v33 = EncryptedData;
  v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *a2 = v34;
  a2[1] = v36;
}

void sub_1004B679C(uint64_t *a1@<X4>, uint64_t *a2@<X8>)
{
  type metadata accessor for CFString(0);
  v4 = v3;
  v51 = v3;
  v50[0] = kSecAttrKeyTypeEC;
  sub_10004B064(v50, error);
  v5 = kSecAttrKeyType;
  v6 = kSecAttrKeyTypeEC;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100455454(error, v5, isUniquelyReferenced_nonNull_native);

  v51 = v4;
  v50[0] = kSecAttrKeyClassPrivate;
  sub_10004B064(v50, error);
  v8 = kSecAttrKeyClass;
  v9 = kSecAttrKeyClassPrivate;
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v48 = &_swiftEmptyDictionarySingleton;
  sub_100455454(error, v8, v10);

  error[0] = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
  sub_1004B8654();
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = SecKeyCreateWithData(isa, v12, error);

  if (!v13)
  {
    goto LABEL_4;
  }

  if (error[0])
  {

LABEL_4:
    if (qword_1005A8610 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0DF8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v48 = v18;
      *v17 = 136446210;
      swift_beginAccess();
      sub_10004B564(&qword_1005B5D38, &qword_1004DD750);
      v19 = String.init<A>(describing:)();
      v21 = sub_10000D01C(v19, v20, &v48);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "CryptoUtil: decryption: could not create SecKey for private key: %{public}s", v17, 0xCu);
      sub_100004984(v18);
    }

    v22 = type metadata accessor for CryptoError();
    sub_1000097A0(&qword_1005B5D28, &type metadata accessor for CryptoError);
    v23 = swift_allocError();
    (*(*(v22 - 8) + 104))(v24, enum case for CryptoError.decodeError(_:), v22);
    swift_willThrow();
LABEL_9:
    *a1 = v23;
    return;
  }

  v50[0] = 0;
  v25 = Data._bridgeToObjectiveC()().super.isa;
  DecryptedData = SecKeyCreateDecryptedData(v13, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v25, v50);

  v27 = v50[0];
  if (v50[0])
  {
    type metadata accessor for CFError(0);
    sub_1000097A0(&qword_1005B5D30, type metadata accessor for CFError);
    v23 = swift_allocError();
    *v28 = v27;
    if (qword_1005A8610 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000A6F0(v29, qword_1005E0DF8);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48 = v33;
      *v32 = 136446210;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v34 = String.init<A>(describing:)();
      v36 = sub_10000D01C(v34, v35, &v48);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "CryptoUtil: Decryption: Could not decrypt the data. Error - %{public}s", v32, 0xCu);
      sub_100004984(v33);
    }

    swift_willThrow();
    goto LABEL_9;
  }

  if (!DecryptedData)
  {
    if (qword_1005A8610 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000A6F0(v41, qword_1005E0DF8);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "CryptoUtil: Decryption did not fail, but decrypted data is nil.", v44, 2u);
    }

    v45 = type metadata accessor for CryptoError();
    sub_1000097A0(&qword_1005B5D28, &type metadata accessor for CryptoError);
    v23 = swift_allocError();
    (*(*(v45 - 8) + 104))(v46, enum case for CryptoError.decodeError(_:), v45);
    swift_willThrow();

    goto LABEL_9;
  }

  v37 = DecryptedData;
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  *a2 = v38;
  a2[1] = v40;
}

uint64_t sub_1004B6EE4()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B5AC8);
  v1 = sub_10000A6F0(v0, qword_1005B5AC8);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFB98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B6FAC(uint64_t a1, char a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003690;

  return sub_1004AB610(a1, a2, v8, v9, a4);
}

uint64_t sub_1004B7070(uint64_t a1, char a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000368C;

  return sub_1004ABA34(a1, a2, v8, a4);
}

uint64_t sub_1004B7128()
{
  sub_10004B564(&qword_1005AABB8, &qword_1004C4610);
  unsafeFromAsyncTask<A>(_:)();
  return v1;
}

uint64_t sub_1004B7328()
{
  sub_10004B564(&qword_1005B24F0, &qword_1004DBFF0);
  unsafeFromAsyncTask<A>(_:)();
  return v1;
}

uint64_t sub_1004B7528(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  unsafeFromAsyncTask<A>(_:)();

  return v6;
}

uint64_t sub_1004B7BE8(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsConfig() - 8);
  v5 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1004ABE60(a1, v7, v1 + v5, v6);
}

uint64_t sub_1004B7D04(uint64_t a1)
{
  v4 = *(v1 + 40);
  v5 = *(v1 + 16);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1004B6FAC(a1, v5, (v1 + 24), v4);
}

uint64_t sub_1004B7DCC(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1004B7070(a1, v5, (v1 + 24), v4);
}

unint64_t sub_1004B7E94()
{
  result = qword_1005B5CF0;
  if (!qword_1005B5CF0)
  {
    sub_10004B610(&qword_1005AABB8, &qword_1004C4610);
    sub_1004B7F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5CF0);
  }

  return result;
}

unint64_t sub_1004B7F18()
{
  result = qword_1005B5CF8;
  if (!qword_1005B5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5CF8);
  }

  return result;
}

uint64_t sub_1004B7FD8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  unsafeFromAsyncTask<A>(_:)();

  return v6;
}

uint64_t sub_1004B820C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1004AC3B0(a1, v5, v4);
}

uint64_t sub_1004B82B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1004AE0A8(a1, v5, v4);
}

unint64_t sub_1004B8364()
{
  result = qword_1005B5D00;
  if (!qword_1005B5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5D00);
  }

  return result;
}

uint64_t sub_1004B8424(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1004AD600(a1, v5, v4);
}

uint64_t sub_1004B84D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003690;

  return sub_1004ACE40(a1, v5, v4);
}

uint64_t sub_1004B857C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B85EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1004B8654()
{
  result = qword_1005B5D20;
  if (!qword_1005B5D20)
  {
    sub_1000545A4(255, &qword_1005B3440, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B5D20);
  }

  return result;
}

uint64_t sub_1004B86BC(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_1004B885C(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      v10 = [objc_opt_self() mainBundle];
      v11 = String._bridgeToObjectiveC()();
      v12 = [v10 objectForInfoDictionaryKey:v11];

      if (v12)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
      }

      v25 = v23;
      v26 = v24;
      if (*(&v24 + 1))
      {
        if (swift_dynamicCast())
        {
          return v22;
        }
      }

      else
      {
        sub_1004B92C4(&v25);
      }

      if (qword_1005A7F90 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000A6F0(v21, qword_1005DFC40);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_49;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Bundle identifier not found in info.plist";
      goto LABEL_48;
    }

    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 objectForInfoDictionaryKey:v5];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      if (swift_dynamicCast())
      {
        return v22;
      }
    }

    else
    {
      sub_1004B92C4(&v25);
    }

    if (qword_1005A7F90 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFC40);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_49;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Bundle version not found in info.plist";
    goto LABEL_48;
  }

  if (a1)
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForInfoDictionaryKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25 = v23;
    v26 = v24;
    if (*(&v24 + 1))
    {
      if (swift_dynamicCast())
      {
        return v22;
      }
    }

    else
    {
      sub_1004B92C4(&v25);
    }

    if (qword_1005A7F90 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFC40);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_49;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "App version not found in info.plist";
    goto LABEL_48;
  }

  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForInfoDictionaryKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (*(&v24 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_29;
    }

    return v22;
  }

  sub_1004B92C4(&v25);
LABEL_29:
  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFC40);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v15, v16))
  {
    goto LABEL_49;
  }

  v17 = swift_slowAlloc();
  *v17 = 0;
  v18 = "App name not found in info.plist";
LABEL_48:
  _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

LABEL_49:

  return 0;
}

double sub_1004B8E70@<D0>(uint64_t a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = MGCopyAnswerWithError();

  if (v3)
  {
    *(a1 + 24) = swift_getObjectType();
    *a1 = v3;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1004B906C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TimeZone();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  static TimeZone.current.getter();
  Date.init()();
  v10 = TimeZone.abbreviation(for:)();
  v12 = v11;
  v13 = *(v1 + 8);
  v13(v4, v0);
  v14 = *(v6 + 8);
  v14(v9, v5);
  if (v12)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  if (!v12)
  {
    v12 = 0xE000000000000000;
  }

  v20._countAndFlagsBits = v15;
  v20._object = v12;

  v16._countAndFlagsBits = 8236;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);

  String.append(_:)(v20);

  static TimeZone.current.getter();
  Date.init()();
  v17 = TimeZone.secondsFromGMT(for:)();
  v13(v4, v0);
  v14(v9, v5);
  v20._countAndFlagsBits = v17;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  return v21;
}

uint64_t sub_1004B92C4(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9680, &qword_1004C32A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004B932C()
{
  v0 = objc_autoreleasePoolPush();
  sub_1004B8E70(v5);
  objc_autoreleasePoolPop(v0);
  if (!v6)
  {
    sub_1004B92C4(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  v1 = 0;
  v2 = v4;
  return v2 | (v1 << 32);
}

uint64_t sub_1004B93E4()
{
  v0 = objc_autoreleasePoolPush();
  sub_1004B8E70(v7);
  objc_autoreleasePoolPop(v0);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_1004B92C4(v7);
  }

  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFC40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not get serial number", v5, 2u);
  }

  return 0;
}

uint64_t sub_1004B9544(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1004B9844(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned __int8 *sub_1004B9844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1004B9DD0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1004B9DD0()
{
  v0 = String.subscript.getter();
  v4 = sub_1004B9E50(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1004B9E50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100016C74(v9, 0);
  v12 = sub_1004B9FA8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1004B9FA8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1004BA1C8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1004BA1C8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1004BA1C8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_1004BA244()
{
  if (static SystemInfo.isInternalBuild.getter())
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 stringForKey:v1];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      v6 = HIBYTE(v5) & 0xF;
      v7 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v8 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v35 = 0;
          sub_1004B9844(v3, v5, 10);
          goto LABEL_65;
        }

        if ((v5 & 0x2000000000000000) != 0)
        {
          v34[0] = v3;
          v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v6)
            {
              if (--v6)
              {
                v23 = 0;
                v24 = v34 + 1;
                while (1)
                {
                  v25 = *v24 - 48;
                  if (v25 > 9)
                  {
                    break;
                  }

                  v26 = 10 * v23;
                  if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                  {
                    break;
                  }

                  v23 = v26 + v25;
                  if (__OFADD__(v26, v25))
                  {
                    break;
                  }

                  ++v24;
                  if (!--v6)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

            goto LABEL_73;
          }

          if (v3 != 45)
          {
            if (v6)
            {
              v30 = 0;
              v31 = v34;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                v33 = 10 * v30;
                if ((v30 * 10) >> 64 != (10 * v30) >> 63)
                {
                  break;
                }

                v30 = v33 + v32;
                if (__OFADD__(v33, v32))
                {
                  break;
                }

                ++v31;
                if (!--v6)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v6)
          {
            if (--v6)
            {
              v15 = 0;
              v16 = v34 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  break;
                }

                v15 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v6)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v9 = _StringObject.sharedUTF8.getter();
          }

          v10 = *v9;
          if (v10 == 43)
          {
            if (v7 >= 1)
            {
              v6 = v7 - 1;
              if (v7 != 1)
              {
                v19 = 0;
                if (v9)
                {
                  v20 = v9 + 1;
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      goto LABEL_63;
                    }

                    v22 = 10 * v19;
                    if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v19 = v22 + v21;
                    if (__OFADD__(v22, v21))
                    {
                      goto LABEL_63;
                    }

                    ++v20;
                    if (!--v6)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_72;
          }

          if (v10 != 45)
          {
            if (v7)
            {
              v27 = 0;
              if (v9)
              {
                while (1)
                {
                  v28 = *v9 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_63;
                  }

                  v29 = 10 * v27;
                  if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v27 = v29 + v28;
                  if (__OFADD__(v29, v28))
                  {
                    goto LABEL_63;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            LOBYTE(v6) = 1;
            goto LABEL_64;
          }

          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              v11 = 0;
              if (v9)
              {
                v12 = v9 + 1;
                while (1)
                {
                  v13 = *v12 - 48;
                  if (v13 > 9)
                  {
                    goto LABEL_63;
                  }

                  v14 = 10 * v11;
                  if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v11 = v14 - v13;
                  if (__OFSUB__(v14, v13))
                  {
                    goto LABEL_63;
                  }

                  ++v12;
                  if (!--v6)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v6) = 0;
LABEL_64:
              v35 = v6;
LABEL_65:

              return;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        return;
      }
    }
  }
}

uint64_t static Transaction.named<A>(_:with:)()
{
  return static Transaction.named<A>(_:with:)();
}

{
  return static Transaction.named<A>(_:with:)();
}

uint64_t WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)()
{
  return WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
}

{
  return WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
}

uint64_t dispatch thunk of WorkItemQueue.enqueue(_:)()
{
  return dispatch thunk of WorkItemQueue.enqueue(_:)();
}

{
  return dispatch thunk of WorkItemQueue.enqueue(_:)();
}

{
  return dispatch thunk of WorkItemQueue.enqueue(_:)();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Location.timestamp.getter()
{
  return Location.timestamp.getter();
}

{
  return Location.timestamp.getter();
}

uint64_t type metadata accessor for Location()
{
  return type metadata accessor for Location();
}

{
  return type metadata accessor for Location();
}

uint64_t Connection.run(_:)()
{
  return Connection.run(_:)();
}

{
  return Connection.run(_:)();
}

uint64_t TableBuilder.column<A>(_:unique:check:defaultValue:)()
{
  return TableBuilder.column<A>(_:unique:check:defaultValue:)();
}

{
  return TableBuilder.column<A>(_:unique:check:defaultValue:)();
}

uint64_t <- infix<A>(_:_:)()
{
  return <- infix<A>(_:_:)();
}

{
  return <- infix<A>(_:_:)();
}

uint64_t Row.subscript.getter()
{
  return Row.subscript.getter();
}

{
  return Row.subscript.getter();
}

uint64_t SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)()
{
  return SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)();
}

{
  return SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)();
}

uint64_t type metadata accessor for Device()
{
  return type metadata accessor for Device();
}

{
  return type metadata accessor for Device();
}

Swift::String __swiftcall Account.dsidBase64EncodedString()()
{
  v0 = Account.dsidBase64EncodedString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t type metadata accessor for Account()
{
  return type metadata accessor for Account();
}

{
  return type metadata accessor for Account();
}

uint64_t unsafeFromAsyncTask<A>(_:)()
{
  return unsafeFromAsyncTask<A>(_:)();
}

{
  return unsafeFromAsyncTask<A>(_:)();
}

Swift::String __swiftcall String.deletingPrefix(_:)(Swift::String a1)
{
  v1 = String.deletingPrefix(_:)(a1._countAndFlagsBits, a1._object);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = Substring.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t dispatch thunk of SingleValueEncodingContainer.encode(_:)()
{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}