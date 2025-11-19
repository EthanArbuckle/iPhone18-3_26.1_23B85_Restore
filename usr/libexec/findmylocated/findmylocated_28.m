uint64_t sub_1002CA2EC()
{
  v1 = v0[34];

  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[16];
  v11 = v0[13];
  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[8];
  v17 = v0[7];
  v18 = v0[39];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002CA40C()
{
  v1 = v0[40];
  v2 = v0[38];

  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[16];
  v12 = v0[13];
  v15 = v0[12];
  v16 = v0[9];
  v17 = v0[8];
  v18 = v0[7];
  v19 = v0[42];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002CA538()
{
  v1 = v0[44];
  v2 = v0[38];

  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[16];
  v12 = v0[13];
  v15 = v0[12];
  v16 = v0[9];
  v17 = v0[8];
  v18 = v0[7];
  v19 = v0[47];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002CA664(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002CA724, 0, 0);
}

uint64_t sub_1002CA724()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Waiting for CloudKit to be available", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_1002CA8C8, v6, 0);
}

uint64_t sub_1002CA8C8()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + 1);
  v6 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1002CA978;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1002CA978()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_1002CABE8;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_1002CAAAC;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002CAAAC()
{
  v10 = v0;
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s CloudKit is available.", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002CABE8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return _swift_task_switch(sub_1002CAC60, 0, 0);
}

uint64_t sub_1002CAC60()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1002CACC4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to CloudKitChangeSet.Adaptor.delete<A>(record:)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FriendSharedSecretsRecord();
  v7 = sub_100009560(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord);
  *v5 = v2;
  v5[1] = sub_10000368C;

  return CloudKitChangeSet.Adaptor.delete<A>(record:)(a2, v6, v7);
}

uint64_t sub_1002CADB8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  return _swift_task_switch(sub_1002CADDC, v1, 0);
}

uint64_t sub_1002CADDC()
{
  v11 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 72);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E6C50, &v10);
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s force? %{BOOL}d", v5, 0x12u);
    sub_100004984(v6);
  }

  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_1002CAF98;

  return daemon.getter();
}

uint64_t sub_1002CAF98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for NITokenService_LocalMessaging();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009560(&qword_1005AD550, type metadata accessor for NITokenService_LocalMessaging);
  *v6 = v12;
  v6[1] = sub_1002CB174;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002CB174(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = *(v4 + 16);

    return _swift_task_switch(sub_1002CB418, v7, 0);
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 56) = a1;
    v9 = swift_task_alloc();
    *(v4 + 64) = v9;
    *v9 = v6;
    v9[1] = sub_1002CB308;
    v10 = *(v4 + 72);

    return sub_1003F54F4(v10);
  }
}

uint64_t sub_1002CB308()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1000E9F1C, v2, 0);
}

uint64_t sub_1002CB418()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1002CB47C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for Friend();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002CB6B0, v1, 0);
}

uint64_t sub_1002CB6B0()
{
  v23 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[22] = sub_10000A6F0(v5, qword_1005E0000);
  v6 = *(v3 + 16);
  v0[23] = v6;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v12 = v0[16];
  v11 = v0[17];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_10000D01C(0x656B6F5472656570, 0xEF293A726F66286ELL, &v22);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v14 = Handle.identifier.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v22);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for handle: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[25] = v17;
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[26] = v20;
  *v20 = v0;
  v20[1] = sub_1002CB94C;

  return daemon.getter();
}

uint64_t sub_1002CB94C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v12 = *v1;
  v3[27] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[28] = v6;
  v7 = type metadata accessor for Daemon();
  v3[29] = v7;
  v8 = type metadata accessor for NITokenService();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[30] = v9;
  v10 = sub_100009560(&qword_1005AD548, type metadata accessor for NITokenService);
  *v6 = v12;
  v6[1] = sub_1002CBB2C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002CBB2C(uint64_t a1)
{
  v3 = *(*v2 + 224);
  v4 = *v2;
  v4[31] = a1;
  v4[32] = v1;

  if (v1)
  {
    v5 = v4[3];

    return _swift_task_switch(sub_1002CCC40, v5, 0);
  }

  else
  {
    v6 = v4[27];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[33] = v8;
    *v8 = v4;
    v8[1] = sub_1002CBCA0;

    return daemon.getter();
  }
}

uint64_t sub_1002CBCA0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v5 = *v1;
  v3[34] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[35] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager);
  *v7 = v5;
  v7[1] = sub_1002CBE54;
  v10 = v3[30];
  v11 = v3[29];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1002CBE54(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1002CCD3C;
  }

  else
  {
    v9 = v4[34];

    v8 = sub_1002CBF8C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002CBF8C()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[38] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_1002CC0F0;
  v7 = v0[36];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1002CC0F0(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_1002CC224, v4, 0);
}

uint64_t sub_1002CC224()
{
  v49 = v0;
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[2];
  *(swift_task_alloc() + 16) = v6;
  sub_10044FE2C(sub_1002CE9A0, v1, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    v10 = v0[18];
    v11 = v0[16];
    v12 = v0[2];
    sub_100002CE0(v0[12], &qword_1005A9188, &unk_1004D80D0);
    v8(v10, v12, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[25];
    v18 = v0[17];
    v17 = v0[18];
    v19 = v0[16];
    if (v15)
    {
      v20 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v20 = 136446723;
      *(v20 + 4) = sub_10000D01C(0x656B6F5472656570, 0xEF293A726F66286ELL, v48);
      *(v20 + 12) = 2160;
      *(v20 + 14) = 1752392040;
      *(v20 + 22) = 2081;
      v21 = Handle.identifier.getter();
      v23 = v22;
      v16(v17, v19);
      v24 = sub_10000D01C(v21, v23, v48);

      *(v20 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s missing following serverID for %{private,mask.hash}s!", v20, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v16(v17, v19);
    }

    v33 = v0[36];
    v34 = v0[31];
    sub_10006DC90();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();

    v37 = v0[20];
    v36 = v0[21];
    v39 = v0[18];
    v38 = v0[19];
    v40 = v0[15];
    v42 = v0[11];
    v41 = v0[12];
    v44 = v0[9];
    v43 = v0[10];
    v45 = v0[8];
    v47 = v0[6];

    v46 = v0[1];

    return v46();
  }

  else
  {
    v25 = v0[20];
    v26 = v0[6];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    Friend.handle.getter();
    static ReferenceClock.now.getter();
    v27 = swift_task_alloc();
    v0[41] = v27;
    *v27 = v0;
    v27[1] = sub_1002CC63C;
    v28 = v0[31];
    v29 = v0[20];
    v30 = v0[11];
    v31 = v0[6];

    return sub_100403E38(v30, v29, v31);
  }
}

uint64_t sub_1002CC63C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 328);
  v15 = *(*v1 + 200);
  v14 = *(*v1 + 160);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 32);
  v10 = *v1;
  *(v3 + 336) = v0;

  (*(v8 + 8))(v7, v9);
  *(v3 + 344) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v14, v6);
  v11 = *(v2 + 24);
  if (v0)
  {
    v12 = sub_1002CCE44;
  }

  else
  {
    v12 = sub_1002CC854;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_1002CC854()
{
  v52 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  (*(v0 + 184))(*(v0 + 152), *(v0 + 16), *(v0 + 128));
  sub_1002CE7AC(v3, v4);
  v5 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v5, v47);
  v7 = *(v0 + 344);
  v49 = *(v0 + 288);
  v8 = *(v0 + 200);
  v9 = *(v0 + 152);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 80);
  if (v6)
  {
    v41 = *(v0 + 72);
    v42 = *(v0 + 56);
    v45 = *(v0 + 248);
    v46 = *(v0 + 120);
    v15 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    log = v5;
    v16 = Handle.identifier.getter();
    v44 = v13;
    v18 = v17;
    v8(v9, v10);
    v19 = sub_10000D01C(v16, v18, &v51);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    sub_1002CE7AC(v14, v41);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    sub_100002CE0(v14, &qword_1005B0F30, &qword_1004D3308);
    v23 = sub_10000D01C(v20, v22, &v51);

    *(v15 + 34) = v23;
    _os_log_impl(&_mh_execute_header, log, v47, "%{private,mask.hash}s token: %{private,mask.hash}s", v15, 0x2Au);
    swift_arrayDestroy();

    (*(v12 + 8))(v46, v44);
  }

  else
  {
    v24 = *(v0 + 248);

    sub_100002CE0(v14, &qword_1005B0F30, &qword_1004D3308);
    v8(v9, v10);
    (*(v12 + 8))(v11, v13);
  }

  v25 = *(v0 + 64);
  sub_1002CE81C(*(v0 + 88), v25);
  v26 = type metadata accessor for DiscoveryToken(0);
  v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
  v28 = *(v0 + 64);
  if (v27 == 1)
  {
    sub_100002CE0(*(v0 + 64), &qword_1005B0F30, &qword_1004D3308);
    v50 = 0;
  }

  else
  {
    v50 = *v28;
    sub_1002CE88C(v28, type metadata accessor for DiscoveryToken);
  }

  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v32 = *(v0 + 144);
  v31 = *(v0 + 152);
  v33 = *(v0 + 120);
  v35 = *(v0 + 88);
  v34 = *(v0 + 96);
  v37 = *(v0 + 72);
  v36 = *(v0 + 80);
  v38 = *(v0 + 64);
  v48 = *(v0 + 48);

  v39 = *(v0 + 8);

  return v39(v50);
}

uint64_t sub_1002CCC40()
{
  v1 = v0[27];

  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v14 = v0[6];
  v15 = v0[32];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002CCD3C()
{
  v1 = v0[34];
  v2 = v0[31];

  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[15];
  v9 = v0[11];
  v8 = v0[12];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  v15 = v0[6];
  v16 = v0[37];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002CCE44()
{
  v1 = v0[36];
  v2 = v0[31];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  (*(v4 + 8))(v3, v5);
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[15];
  v12 = v0[11];
  v11 = v0[12];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];
  v18 = v0[6];
  v19 = v0[42];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002CCF6C()
{
  v0 = type metadata accessor for Handle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v5 = static Handle.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1002CD058()
{
  v1[3] = v0;
  v2 = type metadata accessor for Date();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1002CD118, v0, 0);
}

uint64_t sub_1002CD118()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1002CD2CC;

  return daemon.getter();
}

uint64_t sub_1002CD2CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for NITokenService();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009560(&qword_1005AD548, type metadata accessor for NITokenService);
  *v6 = v12;
  v6[1] = sub_1002CD4A8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002CD4A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v10 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_1002CD9B0;
  }

  else
  {
    v7 = v3[9];
    v8 = v3[3];

    v6 = sub_1002CD5D0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002CD5D0()
{
  v1 = v0[6];
  static ReferenceClock.now.getter();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1002CD670;
  v3 = v0[11];
  v4 = v0[6];

  return sub_100403F98();
}

uint64_t sub_1002CD670(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  (*(v7 + 8))(v6, v8);
  v10 = *(v3 + 24);
  if (v1)
  {
    v11 = sub_1002CDA20;
  }

  else
  {
    v11 = sub_1002CD800;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_1002CD800()
{
  v19 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 112);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v0 + 16) = v5;
    v9 = v2;
    sub_10004B564(&qword_1005B0F28, &qword_1004D32F8);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D01C(v10, v11, &v18);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Owner token: %{private,mask.hash}s", v7, 0x16u);
    sub_100004984(v8);
  }

  else
  {
    v13 = *(v0 + 88);
  }

  v14 = *(v0 + 48);

  v15 = *(v0 + 8);
  v16 = *(v0 + 112);

  return v15(v16);
}

uint64_t sub_1002CD9B0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002CDA20()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002CDA90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002C3B8C(a1, a2);
}

uint64_t sub_1002CDB38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002BE46C(a1);
}

uint64_t sub_1002CDBD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000552EC;

  return sub_1002BD010(a1);
}

uint64_t sub_1002CDC64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002BF404(a1, a2);
}

uint64_t sub_1002CDD2C()
{
  v1 = *(v0 + 16);
  static Date.now.getter();
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002CDDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000368C;

  return sub_1002C103C(a1, a2, a3, a4);
}

uint64_t sub_1002CDE94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002C1E7C(a1, a2);
}

uint64_t sub_1002CDF3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1002C3168(a1, a2);
}

uint64_t sub_1002CDFE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_1002BDDA4(a1, a2);
}

uint64_t sub_1002CE08C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000552EC;

  return sub_1002CB47C(a1);
}

uint64_t sub_1002CE120()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100054E60;

  return sub_1002CD058();
}

uint64_t sub_1002CE1AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002C49EC(a1);
}

uint64_t sub_1002CE240()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002C5E3C();
}

uint64_t sub_1002CE2CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002BD740();
}

uint64_t sub_1002CE358()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002C662C();
}

uint64_t sub_1002CE3E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002C7934(a1);
}

uint64_t sub_1002CE478(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1002CADB8(a1);
}

uint64_t sub_1002CE50C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002C6498();
}

uint64_t sub_1002CE598(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1002CA664(a1, v5);
}

uint64_t sub_1002CE644(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_1002CACC4(a1, v4);
}

uint64_t sub_1002CE6E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1002C7338(a1, v5);
}

uint64_t sub_1002CE7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CE81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CE88C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002CE8EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003690;

  return sub_1002C30D8();
}

uint64_t sub_1002CE9CC()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1002CEA90, v0, 0);
}

uint64_t sub_1002CEA90()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 40) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6E20, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1002CEC40;

  return daemon.getter();
}

uint64_t sub_1002CEC40(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = a1;

  type metadata accessor for Daemon();
  sub_1002D3A88(&qword_1005AB4E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002CED98, v5, v4);
}

uint64_t sub_1002CED98()
{
  v1 = v0[7];
  v2 = v0[2];
  v0[8] = Daemon.xpcAlarmEventHandler.getter();

  return _swift_task_switch(sub_1002CEE10, v2, 0);
}

uint64_t sub_1002CEE10()
{
  v1 = v0[8];
  v2 = v0[5];
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

    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = sub_1002D3A88(&qword_1005B0EA8, type metadata accessor for FriendshipService);
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v10;
    v11[4] = v1;
    v11[5] = v8;
    v11[6] = v7;
    swift_retain_n();

    sub_1001D7F30(0, 0, v6, &unk_1004D3390, v11);

    v12 = *(&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + 1);
    v19 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:));
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_1002CF0D8;

    return v19(&off_10058BC80);
  }

  else
  {
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v3, v15, "Daemon not registered XPC Alarm event handler", v16, 2u);
    }

    v17 = v0[4];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1002CF0D8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1002CF1E8, v2, 0);
}

uint64_t sub_1002CF1E8()
{
  v1 = v0[8];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002CF250()
{
  v1[3] = v0;
  v2 = type metadata accessor for XPCAlarm.Criteria.Options();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(type metadata accessor for XPCAlarm.Criteria() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = type metadata accessor for XPCAlarm();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v1[12] = v10;
  v11 = *(v10 - 8);
  v1[13] = v11;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_1002CF444, v0, 0);
}

uint64_t sub_1002CF444()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[17] = sub_10000A6F0(v1, qword_1005E0000);
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
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1002CF614;
  v7 = v0[3];

  return sub_1002D0374();
}

uint64_t sub_1002CF614(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1002CF72C, v3, 0);
}

uint64_t sub_1002CF72C()
{
  v55 = v0;
  if (*(v0 + 176) == 1)
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 104);
    v3 = *(v0 + 88);
    v4 = *(v0 + 24);
    sub_1002D1938(v3);
    v5 = *(v2 + 48);
    if (v5(v3, 1, v1) == 1)
    {
      v6 = *(v0 + 88);
      v7 = *(v0 + 96);
      static Date.trustedNow.getter(*(v0 + 128));
      if (v5(v6, 1, v7) != 1)
      {
        sub_100002CE0(*(v0 + 88), &unk_1005AE5B0, &qword_1004C32F0);
      }
    }

    else
    {
      (*(*(v0 + 104) + 32))(*(v0 + 128), *(v0 + 88), *(v0 + 96));
    }

    v22 = *(v0 + 136);
    v23 = *(*(v0 + 104) + 16);
    v23(*(v0 + 120), *(v0 + 128), *(v0 + 96));
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 120);
    v29 = *(v0 + 96);
    v28 = *(v0 + 104);
    if (v26)
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004DE4E0, &v54);
      *(v30 + 12) = 2080;
      sub_1002D3A88(&qword_1005A9800, &type metadata accessor for Date);
      log = v24;
      v31 = v23;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v52 = v25;
      v37 = *(v28 + 8);
      v36 = v28 + 8;
      v35 = v37;
      v37(v27, v29);
      v38 = v32;
      v23 = v31;
      v39 = sub_10000D01C(v38, v34, &v54);

      *(v30 + 14) = v39;
      _os_log_impl(&_mh_execute_header, log, v52, "Registering %{public}s for date: %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v40 = *(v28 + 8);
      v36 = v28 + 8;
      v35 = v40;
      v40(v27, v29);
    }

    *(v0 + 152) = v36;
    *(v0 + 160) = v35;
    v41 = *(v0 + 48);
    v42 = *(v0 + 56);
    v43 = *(v0 + 32);
    v44 = *(v0 + 40);
    v23(*(v0 + 112), *(v0 + 128), *(v0 + 96));
    sub_10004B564(&qword_1005B0BD0, &qword_1004D28B0);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1004C1900;
    static XPCAlarm.Criteria.Options.userVisible.getter();
    *(v0 + 16) = v47;
    sub_1002D3A88(&qword_1005B0BD8, &type metadata accessor for XPCAlarm.Criteria.Options);
    sub_10004B564(&qword_1005B0BE0, &qword_1004D28B8);
    sub_1002D395C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCAlarm.Criteria.init(date:options:)();
    v48 = async function pointer to XPCAlarm.init(identifier:criteria:)[1];
    v49 = swift_task_alloc();
    *(v0 + 168) = v49;
    *v49 = v0;
    v49[1] = sub_1002CFCBC;
    v50 = *(v0 + 80);
    v51 = *(v0 + 56);

    return XPCAlarm.init(identifier:criteria:)(v50, 0xD000000000000035, 0x80000001004DE4E0, v51);
  }

  else
  {
    v8 = *(v0 + 136);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v54 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E6D90, &v54);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s not eligible.", v11, 0xCu);
      sub_100004984(v12);
    }

    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 112);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1002CFCBC()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002CFE28, v5, 0);
}

uint64_t sub_1002CFE28()
{
  v1 = *(v0 + 152);
  (*(v0 + 160))(*(v0 + 128), *(v0 + 96));
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1002CFEEC()
{
  v1[2] = v0;
  v2 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002CFFF0, v0, 0);
}

uint64_t sub_1002CFFF0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  static Date.trustedNow.getter(v0[7]);
  sub_1002D3678(v4);
  v5 = *(v2 + 48);
  v6 = v5(v4, 1, v1);
  v8 = v0[3];
  v7 = v0[4];
  if (v6 == 1)
  {
    v9 = v0[6];
    v10 = v0[7];
    Date.addingTimeInterval(_:)();
    if (v5(v8, 1, v7) != 1)
    {
      sub_100002CE0(v0[3], &unk_1005AE5B0, &qword_1004C32F0);
    }
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  }

  v11 = v0[6];
  v12 = [objc_opt_self() standardUserDefaults];
  Date.timeIntervalSince1970.getter();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  [v12 setDouble:v15 forKey:v14];

  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_1002D01AC;
  v17 = v0[2];

  return sub_1002CF250();
}

uint64_t sub_1002D01AC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1002D02BC, v2, 0);
}

uint64_t sub_1002D02BC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[3];
  v4 = *(v0[5] + 8);
  v4(v0[6], v2);
  v4(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D0374()
{
  *(v1 + 56) = v0;
  v2 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1002D0410, v0, 0);
}

uint64_t sub_1002D0410()
{
  v14 = v0;
  v1 = type metadata accessor for KoreaFeatureFlag();
  v0[5] = v1;
  v0[6] = sub_1002D3A88(&qword_1005AB4D8, &type metadata accessor for KoreaFeatureFlag);
  v2 = sub_10000331C(v0 + 2);
  (*(*(v1 - 8) + 104))(v2, enum case for KoreaFeatureFlag.ArcticPlum(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (v1)
  {
    if (static SystemInfo.isKoreaSKU.getter())
    {
      v3 = async function pointer to daemon.getter[1];
      v4 = swift_task_alloc();
      v0[9] = v4;
      *v4 = v0;
      v4[1] = sub_1002D06A8;

      return daemon.getter();
    }

    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005E0000);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v13);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s Not Korea SKU, skipping", v8, 0xCu);
      sub_100004984(v9);
    }
  }

  v10 = v0[8];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1002D06A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1002D3A88(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1002D3A88(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002D0884;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002D0884(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  if (v1)
  {
    v7 = v4[7];

    return _swift_task_switch(sub_1002D1720, v7, 0);
  }

  else
  {
    v8 = v4[10];

    v9 = swift_task_alloc();
    v4[14] = v9;
    *v9 = v6;
    v9[1] = sub_1002D0A10;
    v10 = v4[8];

    return sub_1001DB14C(v10);
  }
}

uint64_t sub_1002D0A10()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1002D0B20, v2, 0);
}

uint64_t sub_1002D0B20()
{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 56);
  if (v4 == 1)
  {
    sub_100002CE0(v1, &qword_1005AA718, &qword_1004C4370);
    v6 = sub_1002D0E58;
  }

  else
  {
    *(v0 + 152) = Device.isThisDevice.getter() & 1;
    (*(v3 + 8))(v1, v2);
    v6 = sub_1002D0C50;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002D0C50()
{
  v14 = v0;
  if (*(v0 + 152) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = sub_1002D0FE4;
    v2 = *(v0 + 96);

    return sub_1001DBB70();
  }

  else
  {
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0000);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 96);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s not the me device.", v9, 0xCu);
      sub_100004984(v10);
    }

    v11 = *(v0 + 64);

    v12 = *(v0 + 8);

    return v12(0);
  }
}

uint64_t sub_1002D0E58()
{
  v12 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s not the me device.", v6, 0xCu);
    sub_100004984(v7);
  }

  v8 = v0[8];

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1002D0FE4(char a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 153) = a1;

  return _swift_task_switch(sub_1002D10FC, v3, 0);
}

uint64_t sub_1002D10FC()
{
  v13 = v0;
  if (*(v0 + 153) == 1)
  {
    v1 = *(v0 + 96);

    return _swift_task_switch(sub_1002D12D4, v1, 0);
  }

  else
  {
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0000);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 96);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v12);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s my location not enabled.", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = *(v0 + 64);

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_1002D12D4()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.follower(_:), v1);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1002D1438;
  v7 = v0[12];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1002D1438(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_1002D156C, v4, 0);
}

uint64_t sub_1002D156C()
{
  v14 = v0;
  v1 = *(v0[18] + 16);

  if (v1)
  {
    v2 = v0[12];
  }

  else
  {
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0000);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[12];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v13);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s not sharing my location to anyone.", v8, 0xCu);
      sub_100004984(v9);
    }
  }

  v10 = v0[8];

  v11 = v0[1];

  return v11(v1 != 0);
}

uint64_t sub_1002D1720()
{
  v16 = v0;
  v1 = v0[10];

  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0000);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E6DB0, &v15);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}@", v8, 0x16u);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v10);
  }

  else
  {
  }

  v12 = v0[8];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1002D1938@<X0>(const char *a1@<X8>)
{
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v47 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v47 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v47 - v16;
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  sub_1002D3678(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002CE0(v5, &unk_1005AE5B0, &qword_1004C32F0);
    static Date.trustedNow.getter(v17);
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    v22 = String._bridgeToObjectiveC()();
    [v21 doubleForKey:v22];
    v24 = v23;

    if (v24 == 0.0)
    {
      if (qword_1005A8100 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000A6F0(v25, qword_1005E0000);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v49 = a1;
        v50 = v29;
        v30 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_10000D01C(0x6D72616C41746567, 0xEE00292865746144, &v50);
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s cached alarm time interval is zero, writing next date and returning", v28, 0xCu);
        sub_100004984(v30);
        a1 = v49;
      }

      Date.addingTimeInterval(_:)();
      v31 = [v20 standardUserDefaults];
      Date.timeIntervalSince1970.getter();
      v33 = v32;
      v34 = String._bridgeToObjectiveC()();
      [v31 setDouble:v34 forKey:v33];

      (*(v7 + 8))(v17, v6);
    }

    else
    {
      Date.init(timeIntervalSince1970:)();
      if ((static Date.< infix(_:_:)() & 1) == 0)
      {
        (*(v7 + 8))(v17, v6);
        (*(v7 + 32))(a1, v11, v6);
        return (*(v7 + 56))(a1, 0, 1, v6);
      }

      if (qword_1005A8100 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000A6F0(v36, qword_1005E0000);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v49 = "v16@?0@NSError8";
        v40 = v39;
        v48 = swift_slowAlloc();
        v50 = v48;
        *v40 = 136446210;
        *(v40 + 4) = sub_10000D01C(0x6D72616C41746567, 0xEE00292865746144, &v50);
        _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s cached alarm time interval is before now, writing next date and returning", v40, 0xCu);
        sub_100004984(v48);
      }

      Date.addingTimeInterval(_:)();
      v41 = [v20 standardUserDefaults];
      Date.timeIntervalSince1970.getter();
      v43 = v42;
      v44 = String._bridgeToObjectiveC()();
      [v41 setDouble:v44 forKey:v43];

      v45 = *(v7 + 8);
      v45(v11, v6);
      v45(v17, v6);
    }

    (*(v7 + 32))(a1, v14, v6);
  }

  else
  {
    v35 = *(v7 + 32);
    v35(v19, v5, v6);
    v35(a1, v19, v6);
  }

  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t sub_1002D1FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v14[1] = sub_1002D2158;

  return v16(v9, 0xD000000000000035, 0x80000001004DE4E0);
}

uint64_t sub_1002D2158()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1002D2268, v2, 0);
}

uint64_t sub_1002D2268()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_1002D3A88(&qword_1005B0EA8, type metadata accessor for FriendshipService);
  v0[12] = v5;
  v6 = v0[4];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_1002D2384;
  v9 = v0[10];
  v10 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v6, v5, v10);
}

uint64_t sub_1002D2384()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1002D2494, v2, 0);
}

uint64_t sub_1002D2494()
{
  v15 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0000);

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
      _os_log_impl(&_mh_execute_header, v4, v5, "XPC alarm fired for %{public}s", v6, 0xCu);
      sub_100004984(v7);
    }

    else
    {
    }

    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_1002D26D8;
    v13 = v0[4];

    return sub_1002D2870();
  }

  else
  {
    v9 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1002D26D8()
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
  v7[1] = sub_1002D2384;
  v8 = v1[10];
  v9 = v1[8];

  return AsyncStream.Iterator.next(isolation:)(v1 + 2, v5, v4, v9);
}

uint64_t sub_1002D2870()
{
  v1[2] = v0;
  v2 = type metadata accessor for LocationSharingReminderNotification();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_1002D2948;

  return sub_1002D0374();
}

uint64_t sub_1002D2948(char a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_1002D2A60, v3, 0);
}

uint64_t sub_1002D2A60()
{
  v19 = v0;
  if (*(v0 + 120) == 1)
  {
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 64) = sub_10000A6F0(v1, qword_1005E0000);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v18 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E6E40, &v18);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
      sub_100004984(v5);
    }

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v7[1] = sub_1002D2D74;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0000);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E6E40, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s, timer fired but device is no longer eligible", v11, 0xCu);
      sub_100004984(v12);
    }

    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = *(v0 + 32);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1002D2D74(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for UserNotificationService();
  v9 = sub_1002D3A88(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1002D3A88(&qword_1005AD530, type metadata accessor for UserNotificationService);
  *v6 = v12;
  v6[1] = sub_1002D2F50;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002D2F50(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v10 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[2];
    v6 = sub_1002D3518;
  }

  else
  {
    v7 = v3[10];
    v8 = v3[2];

    v6 = sub_1002D3078;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002D3078()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[3];
  *v2 = 3;
  v4 = v3[5];
  v5 = enum case for LocalUserNotificationCategory.locationSharingReminderNotification(_:);
  v6 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v6 - 8) + 104))(&v2[v4], v5, v6);
  v7 = &v2[v3[6]];
  UUID.init()();
  v8 = v3[7];
  *&v2[v8] = sub_100207B7C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_1002D3168, v1, 0);
}

uint64_t sub_1002D3168()
{
  sub_1002D3AD0(v0[6], v0[5]);
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_1002D3AD0(v2, v3);
  v5 = *v3;
  v6 = objc_allocWithZone(UNUserNotificationCenter);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithBundleIdentifier:v7];

  v9 = sub_100292884(v3);
  v10 = &v3[*(v4 + 24)];
  UUID.uuidString.getter();
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() requestWithIdentifier:v12 content:v11 trigger:0 destinations:7];

  [v8 addNotificationRequest:v13 withCompletionHandler:0];
  sub_1002D3B34(v3);
  sub_1002D3B34(v2);
  sub_1002D3B34(v1);
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_1002D338C;
  v15 = v0[2];

  return sub_1002CFEEC();
}

uint64_t sub_1002D338C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_1002D349C, v2, 0);
}

uint64_t sub_1002D349C()
{
  v1 = v0[12];

  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D3518()
{
  v15 = v0;
  v1 = v0[10];
  v2 = v0[8];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E6E40, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s, could not post notification", v7, 0xCu);
    sub_100004984(v8);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002D3678@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v6);
  sub_1004BA244();
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = v7;
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005E0000);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6E00, &v22);
      *(v14 + 12) = 2048;
      *(v14 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s internal override of share location reminder! Scheduling for %ld mins", v14, 0x16u);
      sub_100004984(v15);
    }

    Date.addingTimeInterval(_:)();
    v16 = [objc_opt_self() standardUserDefaults];
    Date.timeIntervalSince1970.getter();
    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    [v16 setDouble:v19 forKey:v18];

    v9 = 0;
  }

  (*(v3 + 8))(v6, v2);
  return (*(v3 + 56))(a1, v9, 1, v2);
}

unint64_t sub_1002D395C()
{
  result = qword_1005B0BE8;
  if (!qword_1005B0BE8)
  {
    sub_10004B610(&qword_1005B0BE0, &qword_1004D28B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0BE8);
  }

  return result;
}

uint64_t sub_1002D39C0(uint64_t a1)
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

  return sub_1002D1FB4(a1, v4, v5, v6, v7);
}

uint64_t sub_1002D3A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002D3AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationSharingReminderNotification();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D3B34(uint64_t a1)
{
  v2 = type metadata accessor for LocationSharingReminderNotification();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002D3B90()
{
  v1[3] = v0;
  v2 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002D3C38, v0, 0);
}

uint64_t sub_1002D3C38()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SwitchMeDeviceAlert: Checking if user should be prompted.", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1002D3D90;
  v6 = v0[5];
  v7 = v0[3];

  return sub_1002D45BC(v6);
}

uint64_t sub_1002D3D90()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1002D427C;
  }

  else
  {
    v6 = sub_1002D3EBC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002D3EBC()
{
  v1 = v0[4];
  sub_100192CC0(v0[5], v1);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100192D30(v0[4]);
LABEL_3:
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1002D40E0;
    v5 = v0[5];
    v6 = v0[3];

    return sub_1002D5050(v5);
  }

  v8 = v0[4];
  v9 = Device.isThisDevice.getter();
  v10 = v0[4];
  if (v9)
  {
    (*(v3 + 8))(v0[4], v2);
  }

  else
  {
    v11 = Device.isCompanion.getter();
    (*(v3 + 8))(v10, v2);
    if ((v11 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v12 = v0[6];
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[5];
  if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "SwitchMeDeviceAlert: This device is already used to share location.", v17, 2u);
  }

  sub_100192D30(v16);
  v19 = v0[4];
  v18 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002D40E0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1002D4418;
  }

  else
  {
    v6 = sub_1002D420C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002D420C()
{
  sub_100192D30(v0[5]);
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002D427C()
{
  v15 = v0;
  v1 = v0[8];
  v2 = v0[6];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "SwitchMeDeviceAlert: error occurred while getting the current device: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v11 = v0[4];
  v10 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002D4418()
{
  v15 = v0;
  sub_100192D30(v0[5]);
  v1 = v0[10];
  v2 = v0[6];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "SwitchMeDeviceAlert: error occurred while getting the current device: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v11 = v0[4];
  v10 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002D45BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for Device();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v2[8] = v8;
  *v8 = v2;
  v8[1] = sub_1002D46E4;

  return daemon.getter();
}

uint64_t sub_1002D46E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for SettingsService();
  v9 = sub_100009098(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009098(&qword_1005AA6E8, type metadata accessor for SettingsService);
  *v6 = v12;
  v6[1] = sub_1002D48C0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002D48C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {
    v7 = v4[3];

    return _swift_task_switch(sub_1002D4EC4, v7, 0);
  }

  else
  {
    v8 = v4[9];

    v9 = swift_task_alloc();
    v4[13] = v9;
    *v9 = v6;
    v9[1] = sub_1002D4A50;
    v11 = v4[3];
    v10 = v4[4];

    return sub_1002D6698(v10, 1, a1, v11);
  }
}

uint64_t sub_1002D4A50()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1002D4F48;
  }

  else
  {
    v4 = sub_1002D4B78;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D4B78()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100192D30(v3);
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_1002D4D20;
    v5 = v0[11];
    v6 = v0[2];
    v7 = v0[3];

    return sub_1002D6698(v6, 0, v5, v7);
  }

  else
  {
    v9 = v0[11];
    v10 = v0[7];
    v11 = v0[2];

    v12 = *(v2 + 32);
    v12(v10, v3, v1);
    v12(v11, v10, v1);
    (*(v2 + 56))(v11, 0, 1, v1);
    v13 = v0[7];
    v14 = v0[4];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1002D4D20()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1002D4FCC;
  }

  else
  {
    v6 = sub_1002D4E4C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002D4E4C()
{
  v1 = v0[11];

  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002D4EC4()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D4F48()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D4FCC()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002D5050(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1002D5118, v1, 0);
}

uint64_t sub_1002D5118()
{
  v1 = v0[6];
  sub_100192CC0(v0[4], v1);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_100192D30(v0[6]);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v0[6];
    v9 = Device.deviceName.getter();
    v7 = v10;
    (*(v3 + 8))(v5, v2);
    v6 = v9;
  }

  v11 = sub_1002D6B90(v6, v7);
  v0[7] = v11;

  if (!v11)
  {
LABEL_16:
    v24 = v0[6];

    v25 = v0[1];

    return v25();
  }

  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v0[8] = sub_10000A6F0(v12, qword_1005E0000);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "SwitchMeDeviceAlert: Waiting for user response", v15, 2u);
  }

  v0[2] = 0;
  v16 = CFUserNotificationReceiveResponse(v11, 0.0, v0 + 2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "SwitchMeDeviceAlert: User result received: %{public}d", v19, 8u);
  }

  if (v16)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v21))
    {
LABEL_15:

      goto LABEL_16;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "SwitchMeDeviceAlert: Unexpected result";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v20, v21, v23, v22, 2u);

    goto LABEL_15;
  }

  v27 = v0[2];
  if (v27 == 2)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_15;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "SwitchMeDeviceAlert: User chose not to switch my device";
    goto LABEL_14;
  }

  if (v27)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_15;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "SwitchMeDeviceAlert: Unexpected response";
    goto LABEL_14;
  }

  v28 = swift_task_alloc();
  v0[9] = v28;
  *v28 = v0;
  v28[1] = sub_1002D5574;
  v29 = v0[5];

  return sub_1002D59D4();
}

uint64_t sub_1002D5574()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1002D57F0;
  }

  else
  {
    v6 = sub_1002D56CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002D56CC()
{
  v1 = v0[8];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SwitchMeDeviceAlert: Switched me device to this device", v6, 2u);
  }

  else
  {

    v2 = v5;
  }

  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002D57F0()
{
  v18 = v0;
  v1 = v0[10];
  v2 = v0[8];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "SwitchMeDeviceAlert: Failed to change me device: %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
    v12 = v0[10];
    v13 = v0[7];
  }

  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1002D59D4()
{
  v1[2] = v0;
  v2 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for DeviceWithCompanion();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for Device();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v1[10] = v10;
  *v10 = v1;
  v10[1] = sub_1002D5B58;

  return daemon.getter();
}

uint64_t sub_1002D5B58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for SettingsService();
  v9 = sub_100009098(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009098(&qword_1005AA6E8, type metadata accessor for SettingsService);
  *v6 = v12;
  v6[1] = sub_1002D5D34;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002D5D34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_1002D64D4, v7, 0);
  }

  else
  {
    v8 = v4[11];

    v9 = swift_task_alloc();
    v4[15] = v9;
    *v9 = v6;
    v9[1] = sub_1002D5EC0;
    v10 = v4[6];

    return sub_1004856D4(v10);
  }
}

uint64_t sub_1002D5EC0()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1002D6560;
  }

  else
  {
    v4 = sub_1002D5FE8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D5FE8()
{
  v25 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  DeviceWithCompanion.thisDevice.getter();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v7 = v0[13];
    sub_100192D30(v0[3]);
    sub_10006D30C();
    swift_allocError();
    *v8 = 9;
    swift_willThrow();

    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[3];

    v12 = v0[1];

    return v12();
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v0[3], v0[7]);
    v14 = Device.identifier.getter();
    v16 = v15;
    v0[17] = v15;
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A6F0(v17, qword_1005E0000);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      *(v20 + 14) = sub_10000D01C(v14, v16, &v24);
      _os_log_impl(&_mh_execute_header, v18, v19, "Set activeLocationSharingDevice to: %{private,mask.hash}s", v20, 0x16u);
      sub_100004984(v21);
    }

    v22 = swift_task_alloc();
    v0[18] = v22;
    *v22 = v0;
    v22[1] = sub_1002D62DC;
    v23 = v0[13];

    return sub_100485D1C(v14, v16);
  }
}

uint64_t sub_1002D62DC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 152) = v0;

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1002D65EC;
  }

  else
  {
    v7 = sub_1002D6424;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1002D6424()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[3];

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002D64D4()
{
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002D6560()
{
  v1 = v0[13];

  v2 = v0[16];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002D65EC()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  (*(v3 + 8))(v2, v4);
  v5 = v0[19];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[3];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002D6698(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v6[3] = a1;
  v6[4] = a4;
  v8 = type metadata accessor for PreferenceError();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[10] = v11;
  *v11 = v6;
  v11[1] = sub_1002D67C0;

  return sub_100484570(a1, a2);
}

uint64_t sub_1002D67C0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1002D69A4;
  }

  else
  {
    v4 = sub_1002D68E8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D68E8()
{
  v1 = v0[3];
  v2 = type metadata accessor for Device();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002D69A4()
{
  v0[2] = v0[11];
  v1 = v0[9];
  v2 = v0[5];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v3 = v0[8];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  (*(v5 + 32))(v3, v0[9], v6);
  (*(v5 + 104))(v4, enum case for PreferenceError.missingMeDevice(_:), v6);
  v7 = static PreferenceError.== infix(_:_:)();
  v8 = *(v5 + 8);
  v8(v4, v6);
  v8(v3, v6);
  if (v7)
  {
    v9 = v0[11];
    v10 = v0[3];

    v11 = type metadata accessor for Device();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = v0[2];

    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];

    v16 = v0[1];
  }

  else
  {
LABEL_4:
    v17 = v0[8];
    v18 = v0[9];
    v19 = v0[7];
    v20 = v0[2];

    v16 = v0[1];
    v21 = v0[11];
  }

  return v16();
}

CFUserNotificationRef sub_1002D6B90(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for LocalizationUtility.Table();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000A6F0(v9, qword_1005E0000);

  v46[1] = v10;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  v13 = os_log_type_enabled(v11, v12);
  v48 = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v52 = v15;
    *v14 = 136446210;
    if (a2)
    {
      v16 = a1;
    }

    else
    {
      v16 = 0x3E6C696E3CLL;
    }

    v17 = v5;
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_10000D01C(v16, v18, &v52);
    v5 = v17;

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Create User Notification to switch me-device (%{public}s)", v14, 0xCu);
    sub_100004984(v15);
  }

  v20 = enum case for LocalizationUtility.Table.default(_:);
  v21 = v5[13];
  v21(v8, enum case for LocalizationUtility.Table.default(_:), v4);
  v50 = static LocalizationUtility.localizedString(key:table:)();
  v49 = v22;
  v23 = v5[1];
  v23(v8, v4);
  if (a2)
  {
    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1004C1900;
    *(v24 + 32) = v48;
    *(v24 + 40) = a2;
    v21(v8, v20, v4);

    v48 = static LocalizationUtility.localizedString(key:table:_:)();
    v47 = v25;
  }

  else
  {
    v21(v8, v20, v4);
    v48 = static LocalizationUtility.localizedString(key:table:)();
    v47 = v26;
  }

  v23(v8, v4);
  v21(v8, v20, v4);
  v27 = static LocalizationUtility.localizedString(key:table:)();
  v29 = v28;
  v23(v8, v4);
  v21(v8, v20, v4);
  v30 = static LocalizationUtility.localizedString(key:table:)();
  v32 = v31;
  v23(v8, v4);
  error = 0;
  sub_10004B564(&qword_1005AE108, &unk_1004CE490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BB0;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v34;
  v35 = v49;
  *(inited + 48) = v50;
  *(inited + 56) = v35;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v36;
  v37 = v47;
  *(inited + 80) = v48;
  *(inited + 88) = v37;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v38;
  *(inited + 112) = v27;
  *(inited + 120) = v29;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
    goto LABEL_26;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v39;
  *(inited + 144) = v30;
  *(inited + 152) = v32;
  sub_100208D38(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005AE110, &qword_1004CE7D0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v41 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &error, isa);

  if (!v41)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 67109120;
      swift_beginAccess();
      *(v44 + 4) = error;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to create CFUserNotification. Error code: %d", v44, 8u);
    }

    return 0;
  }

  return v41;
}

uint64_t sub_1002D7200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for ClientSessionError();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002D7324, a1, 0);
}

uint64_t sub_1002D7324()
{
  v1 = v0[3];
  if (swift_weakLoadStrong())
  {

    v2 = sub_1002E267C;
  }

  else
  {
    v3 = v0[11];
    v4 = v0[9];
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v6 = swift_allocError();
    v0[12] = v6;
    (*(*(v5 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();
    v0[2] = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    if (swift_dynamicCast())
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      swift_errorRetain();
    }

    else
    {
      v8 = v0[9];
      (*(v0[7] + 104))(v0[8], enum case for ClientSessionError.Category.friendshipService(_:), v0[6]);
      sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
      v6 = swift_allocError();
      ClientSessionError.init(type:)();
    }

    v0[13] = v6;
    v2 = sub_1002D7540;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D7540()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[4];
  v3 = v0[5];
  swift_errorRetain();
  v4(v1);

  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002D76D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1002D76FC, 0, 0);
}

uint64_t sub_1002D76FC()
{
  objc_allocWithZone(type metadata accessor for ResultObject());
  v1 = async function pointer to ResultObject.init(_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1002D77B4;
  v3 = *(v0 + 16);

  return ResultObject.init(_:)(&unk_1004D3538, v3);
}

uint64_t sub_1002D77B4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1002D78B4, 0, 0);
}

uint64_t sub_1002D78B4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*(v0 + 24))(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002D7924(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for FriendContainer();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002D79E4, 0, 0);
}

uint64_t sub_1002D79E4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 48) = JSONEncoder.init()();

  return _swift_task_switch(sub_1002D7A68, v1, 0);
}

uint64_t sub_1002D7A68()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1002D7BFC;
    v4 = v0[5];

    return sub_1002BE46C(v4);
  }

  else
  {
    v6 = v0[6];

    v7 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[10] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_1002D7D40, 0, 0);
  }
}

uint64_t sub_1002D7BFC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  v2[9] = v0;

  v5 = v2[7];
  if (v0)
  {
    v6 = v2[6];

    v7 = sub_1002D7F0C;
  }

  else
  {

    v7 = sub_1002D7DA4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002D7D40()
{
  v1 = v0[10];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002D7DA4()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  sub_100017B04(&qword_1005B0FB0, &type metadata accessor for FriendContainer);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  if (v1)
  {
    (*(v10 + 8))(v0[5], v0[3]);

    v11 = v0[5];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v5;
    v15 = v6;
    (*(v10 + 8))(v0[5], v0[3]);

    v16 = v0[1];

    return v16(v14, v15);
  }
}

uint64_t sub_1002D7F0C()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002D8060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1002D8184, 0, 0);
}

uint64_t sub_1002D8184()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = type metadata accessor for PropertyListDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10004B564(&qword_1005B0F98, &qword_1004D3518);
  sub_1002E21D0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v0[16] = v0[2];

  return _swift_task_switch(sub_1002D8288, v1, 0);
}

uint64_t sub_1002D8288()
{
  v1 = v0[7];
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[18] = v3;
    *v3 = v0;
    v3[1] = sub_1002D8420;
    v4 = v0[16];

    return sub_1002BD010(v4);
  }

  else
  {
    v6 = v0[16];

    v7 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v8 = swift_allocError();
    (*(*(v7 - 8) + 104))(v9, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();
    v0[21] = v8;
    v10 = v0[7];

    return _swift_task_switch(sub_1002D86D8, v10, 0);
  }
}

uint64_t sub_1002D8420(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v9 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = sub_1002D88E8;
  }

  else
  {
    v6 = v3[16];
    v7 = v3[17];

    v5 = sub_1002D8544;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002D8544()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[4] = v2;
  sub_10004B564(&qword_1005B0578, &qword_1004D5CA0);
  sub_1002E2284();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[19];
  if (v1)
  {

    v0[21] = v1;
    v9 = v0[7];

    return _swift_task_switch(sub_1002D86D8, v9, 0);
  }

  else
  {
    v11 = v0[8];
    v10 = v0[9];
    v12 = v6;
    v13 = v7;

    sub_100005F6C(v12, v13);
    v11(v12, v13, 0);
    sub_1000049D0(v12, v13);
    sub_1000049D0(v12, v13);
    v14 = v0[15];
    v15 = v0[12];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1002D86D8()
{
  v0[3] = v0[21];
  v1 = v0[15];
  v2 = v0[13];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[21];
    (*(v0[14] + 8))(v0[15], v0[13]);
    swift_errorRetain();
    v4 = v0[21];
  }

  else
  {
    v5 = v0[13];
    (*(v0[11] + 104))(v0[12], enum case for ClientSessionError.Category.friendshipService(_:), v0[10]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[22] = v4;

  return _swift_task_switch(sub_1002D8838, 0, 0);
}

uint64_t sub_1002D8838()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[8];
  v3 = v0[9];
  swift_errorRetain();
  v4(0, 0xF000000000000000, v1);

  v5 = v0[15];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002D88E8()
{
  v2 = v0[16];
  v1 = v0[17];

  v0[21] = v0[20];
  v3 = v0[7];

  return _swift_task_switch(sub_1002D86D8, v3, 0);
}

uint64_t sub_1002D8A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for FriendshipState();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  CanShareLocationRequest = type metadata accessor for FriendshipCanShareLocationRequest();
  v5[17] = CanShareLocationRequest;
  v16 = *(CanShareLocationRequest - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002D8C74, 0, 0);
}

uint64_t sub_1002D8C74()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005B0F88, &type metadata accessor for FriendshipCanShareLocationRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  return _swift_task_switch(sub_1002D8D94, v8, 0);
}

uint64_t sub_1002D8D94()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_1002D8F20;
    v4 = v0[19];
    v5 = v0[16];

    return sub_1002BF404(v5, v4);
  }

  else
  {
    v7 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_1002D9054, 0, 0);
  }
}

uint64_t sub_1002D8F20()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);

  if (v0)
  {
    v6 = sub_1002D9464;
  }

  else
  {
    v6 = sub_1002D90D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002D9054()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[5];
  v0[24] = v0[23];

  return _swift_task_switch(sub_1002D9304, v1, 0);
}

uint64_t sub_1002D90D4()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[14];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B04(&qword_1005B0F90, &type metadata accessor for FriendshipState);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[15];
  if (v1)
  {

    (*(v14 + 8))(v11, v13);
    (*(v10 + 8))(v9, v12);
    v15 = v0[5];
    v0[24] = v1;

    return _swift_task_switch(sub_1002D9304, v15, 0);
  }

  else
  {
    v16 = v0[7];
    v25 = v0[6];
    v17 = v7;
    v18 = v8;

    sub_100005F6C(v17, v18);
    v25(v17, v18, 0);
    sub_1000049D0(v17, v18);
    sub_1000049D0(v17, v18);
    (*(v14 + 8))(v11, v13);
    (*(v10 + 8))(v9, v12);
    v19 = v0[19];
    v20 = v0[16];
    v21 = v0[13];
    v22 = v0[10];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1002D9304()
{
  v0[2] = v0[24];
  v1 = v0[13];
  v2 = v0[11];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[24];
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_errorRetain();
    v4 = v0[24];
  }

  else
  {
    v5 = v0[11];
    (*(v0[9] + 104))(v0[10], enum case for ClientSessionError.Category.friendshipService(_:), v0[8]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[25] = v4;

  return _swift_task_switch(sub_1002E2680, 0, 0);
}

uint64_t sub_1002D9464()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[5];
  v0[24] = v0[22];

  return _swift_task_switch(sub_1002D9304, v1, 0);
}

uint64_t sub_1002D961C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = type metadata accessor for ClientSessionError.Category();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = type metadata accessor for ClientSessionError();
  v7[13] = v11;
  v12 = *(v11 - 8);
  v7[14] = v12;
  v13 = *(v12 + 64) + 15;
  v7[15] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v15 = type metadata accessor for Handle();
  v7[18] = v15;
  v16 = *(v15 - 8);
  v7[19] = v16;
  v17 = *(v16 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002D97F0, 0, 0);
}

uint64_t sub_1002D97F0()
{
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005AE888, &type metadata accessor for Handle);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[20];
  v9 = v0[18];
  v11 = v0[5];
  v10 = v0[6];

  v12 = *(v5 + 48);
  v13 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v14 = v0[7];

  return _swift_task_switch(sub_1002D9994, v14, 0);
}

uint64_t sub_1002D9994()
{
  v1 = v0[7];
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1002D9AC0;
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();
    v4 = sub_1002D9C70;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002D9AC0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  static Date.now.getter();

  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  return _swift_task_switch(sub_1002D9B78, 0, 0);
}

uint64_t sub_1002D9B78()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  v6 = *(v0 + 72);
  (*(v0 + 64))(v5, 0);
  sub_1000CF9E4(v5);
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 120);
  v13 = *(v0 + 96);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1002D9C70()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = *(v0[19] + 8);
  v3(v0[20], v2);
  v3(v1, v2);
  v0[24] = v0[23];
  v4 = v0[7];

  return _swift_task_switch(sub_1002D9D10, v4, 0);
}

uint64_t sub_1002D9D10()
{
  v0[2] = v0[24];
  v1 = v0[15];
  v2 = v0[13];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[24];
    (*(v0[14] + 8))(v0[15], v0[13]);
    swift_errorRetain();
    v4 = v0[24];
  }

  else
  {
    v5 = v0[13];
    (*(v0[11] + 104))(v0[12], enum case for ClientSessionError.Category.friendshipService(_:), v0[10]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[25] = v4;

  return _swift_task_switch(sub_1002D9E70, 0, 0);
}

uint64_t sub_1002D9E70()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[16];
  v5 = v0[8];
  v4 = v0[9];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  swift_errorRetain();
  v5(v3, v1);

  sub_1000CF9E4(v3);
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  v12 = v0[12];

  v13 = v0[1];

  return v13();
}

void sub_1002DA114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  sub_1000CF974(a1, &v14 - v8);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = _convertErrorToNSError(_:)();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, isa, v13);
}

uint64_t sub_1002DA260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = type metadata accessor for ClientSessionError.Category();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = type metadata accessor for ClientSessionError();
  v7[13] = v11;
  v12 = *(v11 - 8);
  v7[14] = v12;
  v13 = *(v12 + 64) + 15;
  v7[15] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v15 = type metadata accessor for Handle();
  v7[18] = v15;
  v16 = *(v15 - 8);
  v7[19] = v16;
  v17 = *(v16 + 64) + 15;
  v7[20] = swift_task_alloc();

  return _swift_task_switch(sub_1002DA428, 0, 0);
}

uint64_t sub_1002DA428()
{
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005AE888, &type metadata accessor for Handle);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  return _swift_task_switch(sub_1002DA548, v8, 0);
}

uint64_t sub_1002DA548()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_1002DA6D8;
    v4 = v0[20];
    v5 = v0[17];
    v6 = v0[6];
    v7 = v0[7];

    return sub_1002C103C(v5, v4, v6, v7);
  }

  else
  {
    v9 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[24] = swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for CommunicationError.missingTrampoline(_:), v9);
    swift_willThrow();

    return _swift_task_switch(sub_1002DA80C, 0, 0);
  }
}

uint64_t sub_1002DA6D8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);

  if (v0)
  {
    v6 = sub_1002DABE4;
  }

  else
  {
    v6 = sub_1002DA88C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002DA80C()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[5];
  v0[25] = v0[24];

  return _swift_task_switch(sub_1002DA964, v1, 0);
}

uint64_t sub_1002DA88C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 72);
  (*(v0 + 64))(v4, 0);
  sub_1000CF9E4(v4);
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 160);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = *(v0 + 96);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002DA964()
{
  v0[2] = v0[25];
  v1 = v0[15];
  v2 = v0[13];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[25];
    (*(v0[14] + 8))(v0[15], v0[13]);
    swift_errorRetain();
    v4 = v0[25];
  }

  else
  {
    v5 = v0[13];
    (*(v0[11] + 104))(v0[12], enum case for ClientSessionError.Category.friendshipService(_:), v0[10]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[26] = v4;

  return _swift_task_switch(sub_1002DAAC4, 0, 0);
}

uint64_t sub_1002DAAC4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[16];
  v5 = v0[8];
  v4 = v0[9];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  swift_errorRetain();
  v5(v3, v1);

  sub_1000CF9E4(v3);
  v7 = v0[20];
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[15];
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002DABE4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = v0[5];
  v0[25] = v0[23];

  return _swift_task_switch(sub_1002DA964, v1, 0);
}

uint64_t sub_1002DADD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for FriendshipRequestResult();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = type metadata accessor for FriendshipRequest();
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002DAFB4, 0, 0);
}

uint64_t sub_1002DAFB4()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005B0F78, &type metadata accessor for FriendshipRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  return _swift_task_switch(sub_1002DB0D4, v8, 0);
}

uint64_t sub_1002DB0D4()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_1002DB260;
    v4 = v0[19];
    v5 = v0[16];

    return sub_1002C1E7C(v5, v4);
  }

  else
  {
    v7 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_1002DB394, 0, 0);
  }
}

uint64_t sub_1002DB260()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);

  if (v0)
  {
    v6 = sub_1002DB92C;
  }

  else
  {
    v6 = sub_1002DB414;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002DB394()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[5];
  v0[24] = v0[23];

  return _swift_task_switch(sub_1002DB704, v1, 0);
}

uint64_t sub_1002DB414()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[14];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B04(&qword_1005B0F80, &type metadata accessor for FriendshipRequestResult);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
    v10 = v0[18];
    v9 = v0[19];
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[14];
    v14 = v0[15];

    (*(v14 + 8))(v12, v13);
    (*(v10 + 8))(v9, v11);
    v15 = v0[5];
    v0[24] = v1;

    return _swift_task_switch(sub_1002DB704, v15, 0);
  }

  else
  {
    v35 = v8;
    v16 = v7;

    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A6F0(v17, qword_1005E0000);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FriendshipService+Trampoline sendFriendshipOffer result back to framework", v20, 2u);
    }

    v21 = v0[18];
    v34 = v0[19];
    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[14];
    v25 = v0[15];
    v26 = v0[6];
    v27 = v0[7];

    sub_100005F6C(v16, v35);
    v26(v16, v35, 0);
    sub_1000049D0(v16, v35);
    sub_1000049D0(v16, v35);
    (*(v25 + 8))(v23, v24);
    (*(v21 + 8))(v34, v22);
    v28 = v0[19];
    v29 = v0[16];
    v30 = v0[13];
    v31 = v0[10];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_1002DB704()
{
  v0[2] = v0[24];
  v1 = v0[13];
  v2 = v0[11];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[24];
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_errorRetain();
    v4 = v0[24];
  }

  else
  {
    v5 = v0[11];
    (*(v0[9] + 104))(v0[10], enum case for ClientSessionError.Category.friendshipService(_:), v0[8]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[25] = v4;

  return _swift_task_switch(sub_1002DB864, 0, 0);
}

uint64_t sub_1002DB864()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[6];
  v3 = v0[7];
  swift_errorRetain();
  v4(0, 0xF000000000000000, v1);

  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002DB92C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[5];
  v0[24] = v0[22];

  return _swift_task_switch(sub_1002DB704, v1, 0);
}

uint64_t sub_1002DBAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for FriendshipRequestResult();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = type metadata accessor for FriendshipRequest();
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002DBCC0, 0, 0);
}

uint64_t sub_1002DBCC0()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005B0F78, &type metadata accessor for FriendshipRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  return _swift_task_switch(sub_1002DBDE0, v8, 0);
}

uint64_t sub_1002DBDE0()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_1002DBF6C;
    v4 = v0[19];
    v5 = v0[16];

    return sub_1002C3168(v5, v4);
  }

  else
  {
    v7 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_1002D9054, 0, 0);
  }
}

uint64_t sub_1002DBF6C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);

  if (v0)
  {
    v6 = sub_1002D9464;
  }

  else
  {
    v6 = sub_1002DC0A0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002DC0A0()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[14];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B04(&qword_1005B0F80, &type metadata accessor for FriendshipRequestResult);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
    v10 = v0[18];
    v9 = v0[19];
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[14];
    v14 = v0[15];

    (*(v14 + 8))(v12, v13);
    (*(v10 + 8))(v9, v11);
    v15 = v0[5];
    v0[24] = v1;

    return _swift_task_switch(sub_1002D9304, v15, 0);
  }

  else
  {
    v35 = v8;
    v16 = v7;

    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A6F0(v17, qword_1005E0000);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FriendshipService+Trampoline sendFriendshipInvite result back to framework", v20, 2u);
    }

    v21 = v0[18];
    v34 = v0[19];
    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[14];
    v25 = v0[15];
    v26 = v0[6];
    v27 = v0[7];

    sub_100005F6C(v16, v35);
    v26(v16, v35, 0);
    sub_1000049D0(v16, v35);
    sub_1000049D0(v16, v35);
    (*(v25 + 8))(v23, v24);
    (*(v21 + 8))(v34, v22);
    v28 = v0[19];
    v29 = v0[16];
    v30 = v0[13];
    v31 = v0[10];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_1002DC4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for FriendshipRequestResult();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = type metadata accessor for FriendshipRequest();
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002DC6A4, 0, 0);
}

uint64_t sub_1002DC6A4()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005B0F78, &type metadata accessor for FriendshipRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  return _swift_task_switch(sub_1002DC7C4, v8, 0);
}

uint64_t sub_1002DC7C4()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_1002DC950;
    v4 = v0[19];
    v5 = v0[16];

    return sub_1002C3B8C(v5, v4);
  }

  else
  {
    v7 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_1002D9054, 0, 0);
  }
}

uint64_t sub_1002DC950()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);

  if (v0)
  {
    v6 = sub_1002D9464;
  }

  else
  {
    v6 = sub_1002DCA84;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002DCA84()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[14];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B04(&qword_1005B0F80, &type metadata accessor for FriendshipRequestResult);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[15];
  if (v1)
  {

    (*(v14 + 8))(v11, v13);
    (*(v10 + 8))(v9, v12);
    v15 = v0[5];
    v0[24] = v1;

    return _swift_task_switch(sub_1002D9304, v15, 0);
  }

  else
  {
    v16 = v0[7];
    v25 = v0[6];
    v17 = v7;
    v18 = v8;

    sub_100005F6C(v17, v18);
    v25(v17, v18, 0);
    sub_1000049D0(v17, v18);
    sub_1000049D0(v17, v18);
    (*(v14 + 8))(v11, v13);
    (*(v10 + 8))(v9, v12);
    v19 = v0[19];
    v20 = v0[16];
    v21 = v0[13];
    v22 = v0[10];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1002DCDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for FriendshipRequestResult();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = type metadata accessor for FriendshipRequest();
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002DCFC8, 0, 0);
}

uint64_t sub_1002DCFC8()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005B0F78, &type metadata accessor for FriendshipRequest);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  return _swift_task_switch(sub_1002DD0E8, v8, 0);
}

uint64_t sub_1002DD0E8()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_1002DC950;
    v4 = v0[19];
    v5 = v0[16];

    return sub_1002BDDA4(v5, v4);
  }

  else
  {
    v7 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_1002D9054, 0, 0);
  }
}

uint64_t sub_1002DD3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1002DD52C, 0, 0);
}

uint64_t sub_1002DD52C()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005AE888, &type metadata accessor for Handle);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  return _swift_task_switch(sub_1002DD64C, v8, 0);
}

uint64_t sub_1002DD64C()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[18] = v3;
    *v3 = v0;
    v3[1] = sub_1002DD7D4;
    v4 = v0[16];

    return sub_1002CB47C(v4);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[21] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1002DD910, 0, 0);
  }
}

uint64_t sub_1002DD7D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v7 = *(v3 + 136);

  if (v1)
  {
    v8 = sub_1002DDD60;
  }

  else
  {
    v8 = sub_1002DD990;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002DD910()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[5];
  v0[22] = v0[21];

  return _swift_task_switch(sub_1002DDB44, v1, 0);
}

uint64_t sub_1002DD990()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[20];
    v3 = v0[19];
    v4 = NIDiscoveryToken.dataRepresentation.getter();
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    if (v2)
    {
      (*(v7 + 8))(v0[16], v0[14]);

      v9 = v0[5];
      v0[22] = v2;

      return _swift_task_switch(sub_1002DDB44, v9, 0);
    }

    v15 = v0[6];
    v14 = v0[7];
    v16 = v4;
    v17 = v5;
    sub_100005F6C(v4, v5);
    v15(v16, v17, 0);
    sub_1000049D0(v16, v17);

    sub_1000049D0(v16, v17);
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    v13 = v0[7];
    (v0[6])(0, 0xF000000000000000, 0);
    (*(v11 + 8))(v10, v12);
  }

  v18 = v0[16];
  v19 = v0[13];
  v20 = v0[10];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002DDB44()
{
  v0[2] = v0[22];
  v1 = v0[13];
  v2 = v0[11];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[22];
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_errorRetain();
    v4 = v0[22];
  }

  else
  {
    v5 = v0[11];
    (*(v0[9] + 104))(v0[10], enum case for ClientSessionError.Category.friendshipService(_:), v0[8]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[23] = v4;

  return _swift_task_switch(sub_1002DDCA4, 0, 0);
}

uint64_t sub_1002DDCA4()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[6];
  v3 = v0[7];
  swift_errorRetain();
  v4(0, 0xF000000000000000, v1);

  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002DDD60()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[5];
  v0[22] = v0[20];

  return _swift_task_switch(sub_1002DDB44, v1, 0);
}

uint64_t sub_1002DDF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Handle();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002DDFE0, 0, 0);
}

uint64_t sub_1002DDFE0()
{
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005AE888, &type metadata accessor for Handle);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v8 = v0[4];

  return _swift_task_switch(sub_1002DE144, v8, 0);
}

uint64_t sub_1002DE144()
{
  v1 = v0[4];
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1002DE2CC;
    v4 = v0[9];

    return sub_1002C7934(v4);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[13] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1002DE3FC, 0, 0);
  }
}

uint64_t sub_1002DE2CC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1002DE540;
  }

  else
  {
    v4 = sub_1002DE4A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002DE3FC()
{
  v1 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(v1);

  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002DE4A8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  (*(v0 + 40))(0);
  (*(v2 + 8))(v1, v4);
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002DE540()
{
  v1 = v0[12];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(v1);

  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002DE724(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1002DE750, a1, 0);
}

uint64_t sub_1002DE750()
{
  v1 = *(v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_1002DE8D8;
    v4 = *(v0 + 72);

    return sub_1002CADB8(v4);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    *(v0 + 64) = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1002DE9F4, 0, 0);
  }
}

uint64_t sub_1002DE8D8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1002DEAE8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1002DEA80;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002DE9F4()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002DEA80()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002DEAE8()
{
  v1 = v0[5];

  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  swift_errorRetain();
  v4(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002DEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientSessionError.Category();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for ClientSessionError();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1002DEE00, 0, 0);
}

uint64_t sub_1002DEE00()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B04(&qword_1005AE888, &type metadata accessor for Handle);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  return _swift_task_switch(sub_1002DEF20, v8, 0);
}

uint64_t sub_1002DEF20()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[18] = v3;
    *v3 = v0;
    v3[1] = sub_1002DF0A8;
    v4 = v0[16];

    return sub_1002C49EC(v4);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[20] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1002DF1DC, 0, 0);
  }
}

uint64_t sub_1002DF0A8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);

  if (v0)
  {
    v6 = sub_1002DF520;
  }

  else
  {
    v6 = sub_1002DF25C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002DF1DC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[5];
  v0[21] = v0[20];

  return _swift_task_switch(sub_1002DF30C, v1, 0);
}

uint64_t sub_1002DF25C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 56);
  (*(v0 + 48))(0);
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002DF30C()
{
  v0[2] = v0[21];
  v1 = v0[13];
  v2 = v0[11];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[21];
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_errorRetain();
    v4 = v0[21];
  }

  else
  {
    v5 = v0[11];
    (*(v0[9] + 104))(v0[10], enum case for ClientSessionError.Category.friendshipService(_:), v0[8]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[22] = v4;

  return _swift_task_switch(sub_1002DF46C, 0, 0);
}

uint64_t sub_1002DF46C()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[6];
  v3 = v0[7];
  swift_errorRetain();
  v4(v1);

  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002DF520()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[5];
  v0[21] = v0[19];

  return _swift_task_switch(sub_1002DF30C, v1, 0);
}

uint64_t sub_1002DF6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for ClientSessionError();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002DF7FC, a1, 0);
}

uint64_t sub_1002DF7FC()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1002DF980;

    return sub_1002BD740();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();
    v0[15] = v6;
    v8 = v0[3];

    return _swift_task_switch(sub_1002DFB18, v8, 0);
  }
}

uint64_t sub_1002DF980()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1002DFD20;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1002DFA9C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002DFA9C()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002DFB18()
{
  v0[2] = v0[15];
  v1 = v0[11];
  v2 = v0[9];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[15];
    (*(v0[10] + 8))(v0[11], v0[9]);
    swift_errorRetain();
    v4 = v0[15];
  }

  else
  {
    v5 = v0[9];
    (*(v0[7] + 104))(v0[8], enum case for ClientSessionError.Category.friendshipService(_:), v0[6]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[16] = v4;

  return _swift_task_switch(sub_1002DFC78, 0, 0);
}

uint64_t sub_1002DFC78()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[4];
  v3 = v0[5];
  swift_errorRetain();
  v4(v1);

  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002DFD20()
{
  v1 = v0[12];

  v0[15] = v0[14];
  v2 = v0[3];

  return _swift_task_switch(sub_1002DFB18, v2, 0);
}

uint64_t sub_1002DFE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1002DFEA8, a1, 0);
}

uint64_t sub_1002DFEA8()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1002E0028;

    return sub_1002C6498();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[8] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1002E268C, 0, 0);
  }
}

uint64_t sub_1002E0028()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1002E2694;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1002E2690;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002E0234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for ClientSessionError();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002E0358, a1, 0);
}

uint64_t sub_1002E0358()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1002E04DC;

    return sub_1002C662C();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();
    v0[15] = v6;
    v8 = v0[3];

    return _swift_task_switch(sub_1002E05F8, v8, 0);
  }
}

uint64_t sub_1002E04DC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1002E0758;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1002E267C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002E05F8()
{
  v0[2] = v0[15];
  v1 = v0[11];
  v2 = v0[9];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[15];
    (*(v0[10] + 8))(v0[11], v0[9]);
    swift_errorRetain();
    v4 = v0[15];
  }

  else
  {
    v5 = v0[9];
    (*(v0[7] + 104))(v0[8], enum case for ClientSessionError.Category.friendshipService(_:), v0[6]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[16] = v4;

  return _swift_task_switch(sub_1002E2678, 0, 0);
}

uint64_t sub_1002E0758()
{
  v1 = v0[12];

  v0[15] = v0[14];
  v2 = v0[3];

  return _swift_task_switch(sub_1002E05F8, v2, 0);
}

uint64_t sub_1002E08B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for ClientSessionError();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002E09DC, a1, 0);
}

uint64_t sub_1002E09DC()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1002E0B60;

    return sub_1002CD058();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();
    v0[16] = v6;
    v8 = v0[3];

    return _swift_task_switch(sub_1002E0DB4, v8, 0);
  }
}

uint64_t sub_1002E0B60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_1002E0FC4;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_1002E0C7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002E0C7C()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[14];
    v4 = NIDiscoveryToken.dataRepresentation.getter();
    if (v2)
    {

      v0[16] = v2;
      v6 = v0[3];

      return _swift_task_switch(sub_1002E0DB4, v6, 0);
    }

    v9 = v0[4];
    v8 = v0[5];
    v10 = v4;
    v11 = v5;
    sub_100005F6C(v4, v5);
    v9(v10, v11, 0);
    sub_1000049D0(v10, v11);
    sub_1000049D0(v10, v11);
  }

  else
  {
    v7 = v0[5];
    (v0[4])(0, 0xF000000000000000, 0);
  }

  v12 = v0[11];
  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1002E0DB4()
{
  v0[2] = v0[16];
  v1 = v0[11];
  v2 = v0[9];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    v3 = v0[16];
    (*(v0[10] + 8))(v0[11], v0[9]);
    swift_errorRetain();
    v4 = v0[16];
  }

  else
  {
    v5 = v0[9];
    (*(v0[7] + 104))(v0[8], enum case for ClientSessionError.Category.friendshipService(_:), v0[6]);
    sub_100017B04(&qword_1005B0F70, &type metadata accessor for ClientSessionError);
    v4 = swift_allocError();
    ClientSessionError.init(type:)();
  }

  v0[17] = v4;

  return _swift_task_switch(sub_1002E0F14, 0, 0);
}

uint64_t sub_1002E0F14()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[4];
  v3 = v0[5];
  swift_errorRetain();
  v4(0, 0xF000000000000000, v1);

  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002E0FC4()
{
  v1 = v0[12];

  v0[16] = v0[15];
  v2 = v0[3];

  return _swift_task_switch(sub_1002E0DB4, v2, 0);
}

uint64_t sub_1002E1124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for ClientSessionError.Category();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for ClientSessionError();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002E1248, a1, 0);
}

uint64_t sub_1002E1248()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1002E04DC;

    return sub_1002C5E3C();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B04(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();
    v0[15] = v6;
    v8 = v0[3];

    return _swift_task_switch(sub_1002E05F8, v8, 0);
  }
}

uint64_t sub_1002E14F0()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002E154C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002E1124(v2, v3, v4);
}

uint64_t sub_1002E15F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002E08B8(v2, v3, v4);
}

uint64_t sub_1002E169C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002E0234(v2, v3, v4);
}

uint64_t sub_1002E1744()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002DFE80(v2, v3, v4);
}

uint64_t sub_1002E17EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002DF6D8(v2, v3, v4);
}

uint64_t sub_1002E1894()
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

  return sub_1002DEC80(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1950()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1002DE724(v2, v3, v5, v4);
}

uint64_t sub_1002E1A00()
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

  return sub_1002DDF18(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1ABC()
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

  return sub_1002DD3AC(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1B78()
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

  return sub_1002DCDEC(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1C34()
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

  return sub_1002DC4C8(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1CF0()
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

  return sub_1002DBAE4(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1DAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100003690;

  return sub_1002DADD8(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E1E70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10000368C;

  return sub_1002DA260(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002E1F40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10000368C;

  return sub_1002D961C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1002E2010()
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

  return sub_1002D8A98(v2, v3, v4, v5, v6);
}

uint64_t sub_1002E20CC()
{
  sub_1000049D0(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002E2114()
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

  return sub_1002D8060(v2, v3, v4, v5, v6);
}

unint64_t sub_1002E21D0()
{
  result = qword_1005B0FA0;
  if (!qword_1005B0FA0)
  {
    sub_10004B610(&qword_1005B0F98, &qword_1004D3518);
    sub_100017B04(&qword_1005AE868, &type metadata accessor for HandleType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FA0);
  }

  return result;
}

unint64_t sub_1002E2284()
{
  result = qword_1005B0FA8;
  if (!qword_1005B0FA8)
  {
    sub_10004B610(&qword_1005B0578, &qword_1004D5CA0);
    sub_100017B04(&qword_1005B0ED0, &type metadata accessor for Friend);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FA8);
  }

  return result;
}

uint64_t sub_1002E234C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002D76D8(v2, v3, v4);
}

uint64_t sub_1002E23F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1002E2484;

  return sub_1002D7924(v0);
}

uint64_t sub_1002E2484(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1002E2590()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002E25D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002D7200(v2, v3, v4);
}

uint64_t sub_1002E2698(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1000110D8(0xD000000000000015, 0x80000001004DDC10), (v3 & 1) != 0))
  {
    sub_10000709C(*(a1 + 56) + 32 * v2, v7);

    sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  sub_10005A48C();
  swift_allocError();
  *v5 = 5;
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for CompanionPeopleFindingCapabilityEnvelopeV1(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1002E2930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001004E7250 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1002E29C4(uint64_t a1)
{
  v2 = sub_1002E2F0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E2A00(uint64_t a1)
{
  v2 = sub_1002E2F0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E2A3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005B0FC8, &qword_1004D36D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1002E2F0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100004984(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_1002E2BA0(void *a1)
{
  v3 = sub_10004B564(&qword_1005B0FD8, &qword_1004D36D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1002E2F0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1002E2CEC(uint64_t a1)
{
  v2 = sub_1002E2EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E2D28(uint64_t a1)
{
  v2 = sub_1002E2EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E2D8C(void *a1)
{
  v2 = sub_10004B564(&qword_1005B0FB8, &qword_1004D36C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1002E2EB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1002E2EB8()
{
  result = qword_1005B0FC0;
  if (!qword_1005B0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FC0);
  }

  return result;
}

unint64_t sub_1002E2F0C()
{
  result = qword_1005B0FD0;
  if (!qword_1005B0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FD0);
  }

  return result;
}

unint64_t sub_1002E2F60()
{
  result = qword_1005B0FE0;
  if (!qword_1005B0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FE0);
  }

  return result;
}

unint64_t sub_1002E2FD8()
{
  result = qword_1005B0FE8;
  if (!qword_1005B0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FE8);
  }

  return result;
}

unint64_t sub_1002E3030()
{
  result = qword_1005B0FF0;
  if (!qword_1005B0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FF0);
  }

  return result;
}

unint64_t sub_1002E3088()
{
  result = qword_1005B0FF8;
  if (!qword_1005B0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0FF8);
  }

  return result;
}

unint64_t sub_1002E30E0()
{
  result = qword_1005B1000;
  if (!qword_1005B1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1000);
  }

  return result;
}

unint64_t sub_1002E3138()
{
  result = qword_1005B1008;
  if (!qword_1005B1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1008);
  }

  return result;
}

unint64_t sub_1002E3190()
{
  sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BD0;
  v2 = v0[1];
  v8 = *v0;
  *(inited + 48) = v8;
  *(inited + 32) = 0x444965636E6566;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001004DDC10;
  *(inited + 96) = v2;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x64726F6365526B63;
  *(inited + 136) = 0xEA00000000004449;
  v6 = v0[2];
  v7 = v2;
  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = v0[2];
  sub_10007C30C(&v8, v5);
  sub_10007C30C(&v7, v5);
  sub_1001066B0(&v6, v5);
  v3 = sub_100207B7C(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005B0088, &qword_1004D38F0);
  swift_arrayDestroy();
  return v3;
}

void sub_1002E32DC(uint64_t a1@<X8>)
{
  v3 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v30[-1] - v5;
  sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C1900;
  v8 = sub_1002E3F18();
  *(v7 + 56) = sub_10004B564(&qword_1005B1018, &qword_1004D38D8);
  *(v7 + 32) = v8;
  v9 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithArray:isa];

  v30[0] = 0;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v30[0])
  {
    goto LABEL_6;
  }

  v12 = objc_opt_self();
  v13 = Set._bridgeToObjectiveC()().super.isa;

  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = Data._bridgeToObjectiveC()().super.isa;
  v30[0] = 0;
  v17 = [v12 _strictlyUnarchivedObjectOfClasses:v13 fromData:v16 error:v30];

  if (!v17)
  {
    v28 = v30[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v18 = v30[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_10005CF04();
    swift_allocError();
    *v27 = 11;
    swift_willThrow();
    return;
  }

  v19 = v29;
  v20 = [v29 recordName];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  UUID.init(uuidString:)();
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v6, 1, v24) == 1)
  {
    sub_1002E3F64(v6);
    type metadata accessor for FenceServiceClient.Failure(0);
    sub_1002E3FCC();
    swift_allocError();
    *v26 = v21;
    v26[1] = v23;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {

    (*(v25 + 32))(a1, v6, v24);
  }
}

uint64_t sub_1002E3694(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B1030, &qword_1004D3A00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1002E4788();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 2);
    v19 = v18;
    v17[23] = 2;
    sub_1001066B0(&v19, v17);
    sub_10010670C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1002E388C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000001004DDC10;
  if (v2 == 1)
  {
    v5 = 0x80000001004DDC10;
  }

  else
  {
    v3 = 0x64726F6365526B63;
    v5 = 0xEA00000000004449;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x444965636E6566;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x64726F6365526B63;
    v4 = 0xEA00000000004449;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x444965636E6566;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1002E3990()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002E3A3C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002E3AD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002E3B7C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E44A8(*a1);
  *a2 = result;
  return result;
}

void sub_1002E3BAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000001004DDC10;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x64726F6365526B63;
    v4 = 0xEA00000000004449;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x444965636E6566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1002E3C14()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x64726F6365526B63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965636E6566;
  }
}

unint64_t sub_1002E3C78@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E44A8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002E3CA0(uint64_t a1)
{
  v2 = sub_1002E4788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E3CDC(uint64_t a1)
{
  v2 = sub_1002E4788();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1002E3D18@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1002E44F4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1002E3D74()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v14 = 0x3A444965636E6566;
  v15 = 0xE900000000000020;
  String.append(_:)(*v0);
  v6._countAndFlagsBits = 0x64616F6C7961700ALL;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  String.append(_:)(v0[1]);
  v7._object = 0x80000001004E7270;
  v7._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v7);
  sub_1002E32DC(v5);
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  return v14;
}

unint64_t sub_1002E3F18()
{
  result = qword_1005B1010;
  if (!qword_1005B1010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B1010);
  }

  return result;
}

uint64_t sub_1002E3F64(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002E3FCC()
{
  result = qword_1005A9140;
  if (!qword_1005A9140)
  {
    type metadata accessor for FenceServiceClient.Failure(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9140);
  }

  return result;
}

uint64_t sub_1002E4024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1000110D8(0x444965636E6566, 0xE700000000000000), (v5 & 1) != 0) && (sub_10000709C(*(a1 + 56) + 32 * v4, v12), sub_10004B564(&qword_1005A9268, &unk_1004D38E0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(a1 + 16) && (v6 = sub_1000110D8(0x64726F6365526B63, 0xEA00000000004449), (v7 & 1) != 0))
    {
      sub_10000709C(*(a1 + 56) + 32 * v6, v12);

      result = swift_dynamicCast();
      if (result)
      {
        *a2 = v11;
        *(a2 + 16) = 0xD000000000000017;
        *(a2 + 24) = 0x80000001004DDBF0;
        *(a2 + 32) = v11;
        return result;
      }
    }

    else
    {
    }

    v9 = 13;
  }

  else
  {

    v9 = 12;
  }

  sub_10005CF04();
  swift_allocError();
  *v10 = v9;
  return swift_willThrow();
}

uint64_t sub_1002E41B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  UUID.uuidString.getter();
  v8 = objc_allocWithZone(CKRecordID);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithRecordName:v9];

  v22 = 0;
  v11 = [objc_opt_self() archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v22];
  if (v11)
  {
    v12 = v11;
    v13 = v22;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a1;
    v17 = v16;

    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 8))(a3, v18);

    sub_100005F6C(v14, v17);

    result = sub_1000049D0(v14, v17);
    *a4 = v15;
    a4[1] = a2;
    a4[2] = 0xD000000000000017;
    a4[3] = 0x80000001004DDBF0;
    a4[4] = v14;
    a4[5] = v17;
  }

  else
  {
    v20 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 8))(a3, v21);
  }

  return result;
}

__n128 sub_1002E43F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1002E4404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002E444C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002E44A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BCE0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002E44F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005B1020, &qword_1004D39F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1002E4788();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v25) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v23 = a2;
  v24 = v11;
  LOBYTE(v25) = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v22 = v14;
  v27 = 2;
  sub_1000F4D64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v25;
  v18 = v26;

  sub_100005F6C(v17, v18);
  sub_100004984(a1);

  result = sub_1000049D0(v17, v18);
  v20 = v23;
  *v23 = v24;
  v20[1] = v13;
  v20[2] = v22;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  return result;
}

unint64_t sub_1002E4788()
{
  result = qword_1005B1028;
  if (!qword_1005B1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1028);
  }

  return result;
}

unint64_t sub_1002E47F0()
{
  result = qword_1005B1038;
  if (!qword_1005B1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1038);
  }

  return result;
}

unint64_t sub_1002E4848()
{
  result = qword_1005B1040;
  if (!qword_1005B1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1040);
  }

  return result;
}

unint64_t sub_1002E48A0()
{
  result = qword_1005B1048;
  if (!qword_1005B1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1048);
  }

  return result;
}

uint64_t sub_1002E48F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v14 = v11, v15 = sub_1000110D8(12400, 0xE200000000000000), (v16 & 1) == 0) || (sub_10000709C(*(a1 + 56) + 32 * v15, v49), sub_10004B564(&qword_1005A9268, &unk_1004D38E0), (swift_dynamicCast() & 1) == 0))
  {

    sub_10005CF04();
    swift_allocError();
    v21 = 14;
LABEL_10:
    *v20 = v21;
    return swift_willThrow();
  }

  v17 = v48;
  if (!*(a1 + 16) || (v50 = v47, v18 = sub_1000110D8(12656, 0xE200000000000000), (v19 & 1) == 0) || (sub_10000709C(*(a1 + 56) + 32 * v18, v49), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_12;
  }

  v46 = v17;
  URL.init(string:)();

  if ((*(v9 + 48))(v7, 1, v14) == 1)
  {

    sub_1001980FC(v7);
LABEL_12:
    sub_10005CF04();
    swift_allocError();
    v21 = 15;
    goto LABEL_10;
  }

  v45 = *(v9 + 32);
  v45(v13, v7, v14);
  if (*(a1 + 16) && (v23 = sub_1000110D8(0xD000000000000015, 0x80000001004DDC10), (v24 & 1) != 0) && (sub_10000709C(*(a1 + 56) + 32 * v23, v49), (swift_dynamicCast() & 1) != 0))
  {
    if (*(a1 + 16) && (v44 = v48, v25 = v47, v26 = sub_1000110D8(118, 0xE100000000000000), (v27 & 1) != 0) && (sub_10000709C(*(a1 + 56) + 32 * v26, v49), (swift_dynamicCast() & 1) != 0))
    {
      v43 = v48;
      if (*(a1 + 16) && (v42 = v47, v28 = sub_1000110D8(0x64726F6365526B63, 0xEC000000656D614ELL), (v29 & 1) != 0))
      {
        sub_10000709C(*(a1 + 56) + 32 * v28, v49);

        if (swift_dynamicCast())
        {
          v30 = v47;
          v31 = v48;
          v32 = v46;
          *a2 = v50;
          a2[1] = v32;
          v33 = type metadata accessor for FenceShareInviteEnvelopeV1();
          result = (v45)(a2 + v33[5], v13, v14);
          v34 = (a2 + v33[6]);
          v35 = v44;
          *v34 = v25;
          v34[1] = v35;
          v36 = (a2 + v33[7]);
          v37 = v43;
          *v36 = v42;
          v36[1] = v37;
          v38 = (a2 + v33[8]);
          *v38 = v30;
          v38[1] = v31;
          return result;
        }
      }

      else
      {
      }

      sub_10005CF04();
      swift_allocError();
      v40 = 18;
    }

    else
    {

      sub_10005CF04();
      swift_allocError();
      v40 = 17;
    }
  }

  else
  {

    sub_10005CF04();
    swift_allocError();
    v40 = 16;
  }

  *v39 = v40;
  swift_willThrow();
  return (*(v9 + 8))(v13, v14);
}

unint64_t sub_1002E4E34()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0BC0, &qword_1004D2868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C0BC0;
  *(inited + 32) = 12400;
  *(inited + 40) = 0xE200000000000000;
  v3 = *v0;
  v4 = v0[1];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 12656;
  *(inited + 88) = 0xE200000000000000;
  v5 = type metadata accessor for FenceShareInviteEnvelopeV1();
  v6 = v5[5];

  *(inited + 96) = URL.absoluteString.getter();
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000001004DDC10;
  v8 = (v1 + v5[6]);
  v9 = v8[1];
  *(inited + 144) = *v8;
  *(inited + 152) = v9;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 118;
  *(inited + 184) = 0xE100000000000000;
  v10 = (v1 + v5[7]);
  v11 = v10[1];
  *(inited + 192) = *v10;
  *(inited + 200) = v11;
  *(inited + 216) = &type metadata for String;
  strcpy((inited + 224), "ckRecordName");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v12 = (v1 + v5[8]);
  v13 = *v12;
  v14 = v12[1];
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v13;
  *(inited + 248) = v14;

  v15 = sub_100207B7C(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005B0088, &qword_1004D38F0);
  swift_arrayDestroy();
  return v15;
}

uint64_t sub_1002E4FCC(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B1100, &qword_1004D3C08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1002E5D10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v25[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for FenceShareInviteEnvelopeV1();
    v14 = v13[5];
    v25[14] = 1;
    type metadata accessor for URL();
    sub_10018696C(&qword_1005ADCF8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    v25[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    v25[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = (v3 + v13[8]);
    v22 = *v21;
    v23 = v21[1];
    v25[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1002E5204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for URL();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  __chkstk_darwin(v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10004B564(&qword_1005B10F0, &qword_1004D3C00);
  v33 = *(v35 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v35);
  v9 = v30 - v8;
  v10 = type metadata accessor for FenceShareInviteEnvelopeV1();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = (v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1002E5D10();
  v34 = v9;
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100004984(a1);
  }

  v16 = v32;
  v41 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v36 = v17;
  v40 = 1;
  sub_10018696C(&qword_1005ADCC0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 32))(v13 + v10[5], v6, v3);
  v39 = 2;
  v30[1] = 0;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = (v13 + v10[6]);
  *v19 = v18;
  v19[1] = v20;
  v38 = 3;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = (v13 + v10[7]);
  *v22 = v21;
  v22[1] = v23;
  v37 = 4;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v30[0] = v25;
  v26 = v24;
  (*(v33 + 8))(v34, v35);
  v27 = (v13 + v10[8]);
  v28 = v30[0];
  *v27 = v26;
  v27[1] = v28;
  sub_1002E5D64(v13, v31);
  sub_100004984(a1);
  return sub_1002E5DC8(v13);
}

Swift::Int sub_1002E5674()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002E5740()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002E57F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002E58C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E5F3C(*a1);
  *a2 = result;
  return result;
}

void sub_1002E58F0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 12400;
  v5 = 0x80000001004DDC10;
  v6 = 0xD000000000000015;
  v7 = 0xE100000000000000;
  v8 = 118;
  if (v2 != 3)
  {
    v8 = 0x64726F6365526B63;
    v7 = 0xEC000000656D614ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 12656;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1002E5978()
{
  v1 = *v0;
  v2 = 12400;
  v3 = 0xD000000000000015;
  v4 = 118;
  if (v1 != 3)
  {
    v4 = 0x64726F6365526B63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 12656;
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

unint64_t sub_1002E59FC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E5F3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002E5A24(uint64_t a1)
{
  v2 = sub_1002E5D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E5A60(uint64_t a1)
{
  v2 = sub_1002E5D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E5ACC()
{
  v1 = v0;
  _StringGuts.grow(_:)(62);
  v2._countAndFlagsBits = 540684400;
  v2._object = 0xE400000000000000;
  String.append(_:)(v2);
  String.append(_:)(*v0);
  v3._countAndFlagsBits = 0x203A31700ALL;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  v4 = type metadata accessor for FenceShareInviteEnvelopeV1();
  v5 = v0 + v4[5];
  v6._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v6);

  v7._object = 0x80000001004E7290;
  v7._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v7);
  String.append(_:)(*(v1 + v4[6]));
  v8._countAndFlagsBits = 0x726F6365526B630ALL;
  v8._object = 0xEF203A656D614E64;
  String.append(_:)(v8);
  String.append(_:)(*(v1 + v4[8]));
  v9._countAndFlagsBits = 540702218;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  String.append(_:)(*(v1 + v4[7]));
  return 0;
}

uint64_t type metadata accessor for FenceShareInviteEnvelopeV1()
{
  result = qword_1005B10A8;
  if (!qword_1005B10A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E5C90()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1002E5D10()
{
  result = qword_1005B10F8;
  if (!qword_1005B10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B10F8);
  }

  return result;
}

uint64_t sub_1002E5D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceShareInviteEnvelopeV1();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E5DC8(uint64_t a1)
{
  v2 = type metadata accessor for FenceShareInviteEnvelopeV1();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002E5E38()
{
  result = qword_1005B1108;
  if (!qword_1005B1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1108);
  }

  return result;
}

unint64_t sub_1002E5E90()
{
  result = qword_1005B1110;
  if (!qword_1005B1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1110);
  }

  return result;
}

unint64_t sub_1002E5EE8()
{
  result = qword_1005B1118;
  if (!qword_1005B1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B1118);
  }

  return result;
}

unint64_t sub_1002E5F3C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BD48, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002E5F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v120 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v122 = (&v118 - v7);
  v126 = type metadata accessor for UUID();
  v125 = *(v126 - 8);
  v8 = *(v125 + 64);
  v9 = __chkstk_darwin(v126);
  v119 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v121 = &v118 - v12;
  __chkstk_darwin(v11);
  v123 = &v118 - v13;
  v14 = (a1 + 64);
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
    v21 = v19;
    if (!v17)
    {
      break;
    }

LABEL_8:
    v22 = __clz(__rbit64(v17)) | (v19 << 6);
    v23 = *(a1 + 48) + 16 * v22;
    v24 = *v23;
    v25 = *(v23 + 8);
    sub_10000709C(*(a1 + 56) + 32 * v22, v135);
    v134[0] = v24;
    v134[1] = v25;
    swift_bridgeObjectRetain_n();
    v26._countAndFlagsBits = v24;
    v26._object = v25;
    v27 = _findStringSwitchCase(cases:string:)(&off_10058A818, v26);

    if (v27 > 6)
    {
      v133 = 0;
      v131 = 0u;
      v132 = 0u;
    }

    else
    {
      LOBYTE(v131) = v27;
      sub_10000709C(v135, &v131 + 8);
    }

    v17 &= v17 - 1;
    sub_100002CE0(v134, &qword_1005B1128, &qword_1004D3D68);
    if (v133)
    {
      v128 = v131;
      v129 = v132;
      v130 = v133;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1001FCBA8(0, v20[2] + 1, 1, v20);
      }

      v29 = v20[2];
      v28 = v20[3];
      if (v29 >= v28 >> 1)
      {
        v20 = sub_1001FCBA8((v28 > 1), v29 + 1, 1, v20);
      }

      v20[2] = v29 + 1;
      v30 = &v20[5 * v29];
      v31 = v128;
      v32 = v129;
      v30[8] = v130;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
    }

    else
    {
      sub_100002CE0(&v131, &qword_1005B1130, &unk_1004D3D70);
    }
  }

  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = v14[v19];
    ++v21;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  if (v20[2])
  {
    sub_10004B564(&qword_1005B00F8, &qword_1004D1688);
    v33 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v33 = &_swiftEmptyDictionarySingleton;
  }

  v134[0] = v33;
  v34 = v127;
  sub_1002E7DC8(v20, 1, v134);
  if (v34)
  {

    __break(1u);
    return result;
  }

  v14 = v134[0];
  if (!*(v134[0] + 2) || (v35 = sub_1001FDA10(2u), (v36 & 1) == 0) || (sub_10000709C(v14[7] + 32 * v35, v134), sub_10004B564(&qword_1005A9268, &unk_1004D38E0), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_28;
  }

  v37 = v122;
  UUID.init(uuidString:)();

  v38 = v125;
  v39 = *(v125 + 48);
  v40 = v126;
  if (v39(v37, 1, v126) == 1)
  {

    sub_100002CE0(v37, &qword_1005A96E0, &qword_1004C2A80);
LABEL_28:
    sub_10005CF04();
    swift_allocError();
    *v41 = 19;
    return swift_willThrow();
  }

  v43 = v37;
  v44 = v123;
  v127 = *(v38 + 32);
  v127(v123, v43, v40);
  v122 = *(v38 + 16);
  v122(v121, v44, v40);
  Fence.ID.init(id:)();
  if (!v14[2] || (v45 = sub_1001FDA10(1u), (v46 & 1) == 0) || (sub_10000709C(v14[7] + 32 * v45, v134), (swift_dynamicCast() & 1) == 0))
  {

LABEL_36:
    sub_10005CF04();
    swift_allocError();
    *v47 = 20;
    swift_willThrow();
    (*(v125 + 8))(v123, v126);
    v48 = 0;
    v49 = 0;
    goto LABEL_37;
  }

  v20 = v120;
  UUID.init(uuidString:)();

  v17 = v126;
  if (v39(v20, 1, v126) == 1)
  {

    sub_100002CE0(v20, &qword_1005A96E0, &qword_1004C2A80);
    goto LABEL_36;
  }

LABEL_43:
  v56 = v20;
  v57 = v119;
  v127(v119, v56, v17);
  v122(v121, v57, v17);
  v58 = type metadata accessor for FenceTriggerEnvelopeV1();
  v50 = v124;
  v59 = v124 + v58[5];
  Fence.TriggerID.init(id:)();
  if (!v14[2] || (v60 = sub_1001FDA10(5u), (v61 & 1) == 0) || (sub_10000709C(v14[7] + 32 * v60, v134), (swift_dynamicCast() & 1) == 0))
  {

    sub_10005CF04();
    swift_allocError();
    v49 = 0;
    *v69 = 21;
    goto LABEL_52;
  }

  v62 = v58[7];
  Date.init(timeIntervalSince1970:)();
  if (!v14[2] || (v63 = sub_1001FDA10(3u), (v64 & 1) == 0) || (sub_10000709C(v14[7] + 32 * v63, v134), (swift_dynamicCast() & 1) == 0))
  {

    sub_10005CF04();
    swift_allocError();
    *v73 = 22;
    v49 = 1;
    goto LABEL_52;
  }

  v65 = v131;

  v66 = sub_1002E804C(v65);
  v67 = v66;
  if (v66 == 5)
  {

    type metadata accessor for FenceServiceClient.Failure(0);
    sub_1002E8098(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure);
    swift_allocError();
    *v68 = v65;
    swift_storeEnumTagMultiPayload();
    v49 = 1;
    v50 = v124;
    v57 = v119;
LABEL_52:
    swift_willThrow();
    v70 = *(v125 + 8);
    v71 = v57;
    v72 = v126;
    v70(v71, v126);
    v70(v123, v72);
    v48 = 1;
    goto LABEL_38;
  }

  v74 = v66;

  *(v124 + v58[8]) = v74;
  if (v67 <= 1)
  {
    if (v67)
    {
      goto LABEL_67;
    }
  }

  else if (v67 != 2)
  {
    if (v67 != 3)
    {

      v75 = *(v125 + 8);
      v76 = v126;
      v75(v119, v126);
      v75(v123, v76);
      v77 = v58[6];
      v78 = type metadata accessor for Date();
      v79 = v124;
      (*(*(v78 - 8) + 16))(v124 + v77, v124 + v62, v78);
      v80 = &enum case for Fence.TriggerPosition.undetermined(_:);
LABEL_58:
      v81 = *v80;
      v82 = type metadata accessor for Fence.TriggerPosition();
      return (*(*(v82 - 8) + 104))(v79 + v77, v81, v82);
    }

LABEL_67:
    if (v14[2])
    {
      v100 = sub_1001FDA10(6u);
      if (v101)
      {
        sub_10000709C(v14[7] + 32 * v100, v134);

        if (swift_dynamicCast())
        {
          v85 = *(&v131 + 1);
          v86 = v131;
          sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
          v102 = swift_allocObject();
          *(v102 + 16) = xmmword_1004C1900;
          v103 = sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
          *(v102 + 56) = sub_10004B564(&qword_1005B1138, &unk_1004D3D80);
          *(v102 + 32) = v103;
          v104 = objc_allocWithZone(NSSet);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v106 = [v104 initWithArray:isa];

          v134[0] = 0;
          static Set._conditionallyBridgeFromObjectiveC(_:result:)();

          if (v134[0])
          {
            v107 = objc_opt_self();
            v108 = Set._bridgeToObjectiveC()().super.isa;

            v109 = Data._bridgeToObjectiveC()().super.isa;
            v134[0] = 0;
            v110 = [v107 _strictlyUnarchivedObjectOfClasses:v108 fromData:v109 error:v134];

            v96 = v134[0];
            if (v110)
            {
              v111 = v134[0];
              _bridgeAnyObjectToAny(_:)();
              sub_1000049D0(v86, v85);
              swift_unknownObjectRelease();
              if (swift_dynamicCast())
              {
                v112 = *(v125 + 8);
                v113 = v126;
                v112(v119, v126);
                v112(v123, v113);
                v77 = v58[6];
                v79 = v124;
                *(v124 + v77) = v131;
                v80 = &enum case for Fence.TriggerPosition.outside(_:);
                goto LABEL_58;
              }

              goto LABEL_75;
            }

LABEL_78:
            v117 = v96;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_1000049D0(v86, v85);
            goto LABEL_76;
          }

LABEL_77:
          sub_1000049D0(v86, v85);
          goto LABEL_75;
        }

        goto LABEL_75;
      }
    }

LABEL_74:

    goto LABEL_75;
  }

  if (!v14[2])
  {
    goto LABEL_74;
  }

  v83 = sub_1001FDA10(6u);
  if ((v84 & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_10000709C(v14[7] + 32 * v83, v134);

  if (swift_dynamicCast())
  {
    v85 = *(&v131 + 1);
    v86 = v131;
    sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1004C1900;
    v88 = sub_1000545A4(0, &unk_1005ABB70, CLLocation_ptr);
    *(v87 + 56) = sub_10004B564(&qword_1005B1138, &unk_1004D3D80);
    *(v87 + 32) = v88;
    v89 = objc_allocWithZone(NSSet);
    v90 = Array._bridgeToObjectiveC()().super.isa;

    v91 = [v89 initWithArray:v90];

    v134[0] = 0;
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v134[0])
    {
      v92 = objc_opt_self();
      v93 = Set._bridgeToObjectiveC()().super.isa;

      v94 = Data._bridgeToObjectiveC()().super.isa;
      v134[0] = 0;
      v95 = [v92 _strictlyUnarchivedObjectOfClasses:v93 fromData:v94 error:v134];

      v96 = v134[0];
      if (v95)
      {
        v97 = v134[0];
        _bridgeAnyObjectToAny(_:)();
        sub_1000049D0(v86, v85);
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v98 = *(v125 + 8);
          v99 = v126;
          v98(v119, v126);
          v98(v123, v99);
          v77 = v58[6];
          v79 = v124;
          *(v124 + v77) = v131;
          v80 = &enum case for Fence.TriggerPosition.inside(_:);
          goto LABEL_58;
        }

        goto LABEL_75;
      }

      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_75:
  sub_10005CF04();
  swift_allocError();
  *v114 = 23;
  swift_willThrow();
LABEL_76:
  v115 = *(v125 + 8);
  v116 = v126;
  v115(v119, v126);
  v115(v123, v116);
  v48 = 1;
  v49 = 1;
LABEL_37:
  v50 = v124;
LABEL_38:
  v51 = type metadata accessor for Fence.ID();
  result = (*(*(v51 - 8) + 8))(v50, v51);
  if (v48)
  {
    v52 = *(type metadata accessor for FenceTriggerEnvelopeV1() + 20);
    v53 = type metadata accessor for Fence.TriggerID();
    result = (*(*(v53 - 8) + 8))(v50 + v52, v53);
  }

  if (v49)
  {
    v54 = *(type metadata accessor for FenceTriggerEnvelopeV1() + 28);
    v55 = type metadata accessor for Date();
    return (*(*(v55 - 8) + 8))(v50 + v54, v55);
  }

  return result;
}

uint64_t sub_1002E7000()
{
  v1 = v0;
  v31 = type metadata accessor for Fence.TriggerPosition();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v31);
  v5 = (v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004B564(&qword_1005B1120, &qword_1004D3D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2300;
  *(inited + 32) = 0xD000000000000015;
  v30[1] = inited + 32;
  *(inited + 40) = 0x80000001004DDC10;
  strcpy((inited + 48), "fenceTrigger");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 118;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 49;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1684632949;
  v7 = 0xE400000000000000;
  *(inited + 136) = 0xE400000000000000;
  v8 = type metadata accessor for FenceTriggerEnvelopeV1();
  v9 = v0 + v8[5];
  *(inited + 144) = Fence.TriggerID.uuidString.getter();
  *(inited + 152) = v10;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x444965636E6566;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = Fence.ID.uuidString.getter();
  *(inited + 200) = v11;
  *(inited + 216) = &type metadata for String;
  strcpy((inited + 224), "triggerStatus");
  *(inited + 238) = -4864;
  v12 = *(v1 + v8[8]);
  if (v12 <= 1)
  {
    if (*(v1 + v8[8]))
    {
      v7 = 0xE300000000000000;
      v13 = 7632239;
    }

    else
    {
      v7 = 0xE200000000000000;
      v13 = 28265;
    }
  }

  else if (v12 == 2)
  {
    v7 = 0xE500000000000000;
    v13 = 0x7265746E65;
  }

  else if (v12 == 3)
  {
    v13 = 1953069157;
  }

  else
  {
    v7 = 0xEC00000064656E69;
    v13 = 0x6D72657465646E75;
  }

  *(inited + 240) = v13;
  *(inited + 248) = v7;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 1702125924;
  *(inited + 280) = 0xE400000000000000;
  v14 = v1 + v8[7];
  Date.timeIntervalSince1970.getter();
  v16 = [objc_allocWithZone(NSNumber) initWithDouble:v15];
  *(inited + 312) = sub_1000545A4(0, &qword_1005A8C80, NSNumber_ptr);
  *(inited + 288) = v16;
  v17 = sub_100207CD4(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A9E58, &qword_1004C33C0);
  swift_arrayDestroy();
  v18 = v31;
  (*(v2 + 16))(v5, v1 + v8[6], v31);
  v19 = (*(v2 + 88))(v5, v18);
  if (v19 == enum case for Fence.TriggerPosition.inside(_:) || v19 == enum case for Fence.TriggerPosition.outside(_:))
  {
    (*(v2 + 96))(v5, v18);
    v20 = *v5;
    v21 = objc_opt_self();
    *&v34 = 0;
    v22 = [v21 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v34];
    v23 = v34;
    if (v22)
    {
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v35 = &type metadata for Data;
      *&v34 = v24;
      *(&v34 + 1) = v26;
      sub_10004B064(&v34, v33);
      sub_100005F6C(v24, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v17;
      sub_1004528F8(v33, 0x6E6F697461636F6CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      sub_1000049D0(v24, v26);

      return v32;
    }

    else
    {
      v29 = v23;

      v17 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    return v17;
  }

  if (v19 == enum case for Fence.TriggerPosition.undetermined(_:))
  {
    (*(v2 + 8))(v5, v18);
    return v17;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FenceTriggerEnvelopeV1()
{
  result = qword_1005B1198;
  if (!qword_1005B1198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_1002E7590()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002E765C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002E7714()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002E77DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E804C(*a1);
  *a2 = result;
  return result;
}

void sub_1002E780C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 28265;
  v5 = 0xE500000000000000;
  v6 = 0x7265746E65;
  v7 = 0xE400000000000000;
  v8 = 1953069157;
  if (v2 != 3)
  {
    v8 = 0x6D72657465646E75;
    v7 = 0xEC00000064656E69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7632239;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1002E78A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002E7D7C(*a1);
  *a2 = result;
  return result;
}

void sub_1002E78D0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684632949;
  v5 = 0xE400000000000000;
  v6 = 1702125924;
  if (v2 != 5)
  {
    v6 = 0x6E6F697461636F6CLL;
    v5 = 0xE800000000000000;
  }

  v7 = 0xED00007375746174;
  v8 = 0x5372656767697274;
  if (v2 != 3)
  {
    v8 = 118;
    v7 = 0xE100000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x444965636E6566;
    v3 = 0xE700000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001004DDC10;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1002E79B0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

uint64_t sub_1002E7ABC()
{
  v1 = v0;
  BYTE8(v16) = 0;
  _StringGuts.grow(_:)(52);
  v2._countAndFlagsBits = 0x3A444965636E6566;
  v2._object = 0xE900000000000020;
  String.append(_:)(v2);
  type metadata accessor for Fence.ID();
  sub_1002E8098(&qword_1005AE800, &type metadata accessor for Fence.ID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x726567676972740ALL;
  v4._object = 0xEC000000203A4449;
  String.append(_:)(v4);
  v5 = type metadata accessor for FenceTriggerEnvelopeV1();
  v6 = v5[5];
  type metadata accessor for Fence.TriggerID();
  sub_1002E8098(&qword_1005AE808, &type metadata accessor for Fence.TriggerID);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x6F697469736F700ALL;
  v8._object = 0xEB00000000203A6ELL;
  String.append(_:)(v8);
  v9 = v5[6];
  type metadata accessor for Fence.TriggerPosition();
  sub_1002E8098(&qword_1005AE810, &type metadata accessor for Fence.TriggerPosition);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 10272;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  *&v16 = *(v1 + v5[8]);
  _print_unlocked<A, B>(_:_:)();
  v12._countAndFlagsBits = 0x203A657461640A29;
  v12._object = 0xE800000000000000;
  String.append(_:)(v12);
  v13 = v5[7];
  type metadata accessor for Date();
  sub_1002E8098(&qword_1005A9800, &type metadata accessor for Date);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  return *(&v16 + 1);
}

unint64_t sub_1002E7D7C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058A818, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002E7DC8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_1002E80E0(result + 32, v34);
  v7 = v34[0];
  sub_10004B064(v35, v33);
  v8 = *a3;
  result = sub_1001FDA10(v7);
  v10 = v8[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v9;
  if (v8[3] < v13)
  {
    sub_10022CD60(v13, v5 & 1);
    v15 = *a3;
    result = sub_1001FDA10(v7);
    if ((v14 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v17 = *a3;
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17[(result >> 6) + 8] |= 1 << result;
    *(v17[6] + result) = v7;
    result = sub_10004B064(v33, (v17[7] + 32 * result));
    v20 = v17[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v12)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v17[2] = v21;
    v5 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v19 = result;
  sub_100202EA8();
  result = v19;
  v17 = *a3;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = (v17[7] + 32 * result);
  sub_100004984(v18);
  result = sub_10004B064(v33, v18);
  v5 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v6 += 72;
    v3 = 1;
    while (1)
    {
      sub_1002E80E0(v6, v34);
      v7 = v34[0];
      sub_10004B064(v35, v33);
      v23 = *a3;
      result = sub_1001FDA10(v7);
      v25 = v23[2];
      v26 = (v24 & 1) == 0;
      v12 = __OFADD__(v25, v26);
      v27 = v25 + v26;
      if (v12)
      {
        goto LABEL_23;
      }

      v14 = v24;
      if (v23[3] < v27)
      {
        sub_10022CD60(v27, 1);
        v28 = *a3;
        result = sub_1001FDA10(v7);
        if ((v14 & 1) != (v29 & 1))
        {
          goto LABEL_5;
        }
      }

      v30 = *a3;
      if (v14)
      {
        v22 = (v30[7] + 32 * result);
        sub_100004984(v22);
        result = sub_10004B064(v33, v22);
      }

      else
      {
        v30[(result >> 6) + 8] |= 1 << result;
        *(v30[6] + result) = v7;
        result = sub_10004B064(v33, (v30[7] + 32 * result));
        v31 = v30[2];
        v12 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v12)
        {
          goto LABEL_24;
        }

        v30[2] = v32;
      }

      v6 += 40;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_1002E804C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058A8E0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002E8098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002E80E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0108, &qword_1004D1698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E8198()
{
  result = type metadata accessor for Fence.ID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Fence.TriggerID();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Fence.TriggerPosition();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1002E8258()
{
  result = qword_1005B11E0;
  if (!qword_1005B11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B11E0);
  }

  return result;
}

unint64_t sub_1002E82B0()
{
  result = qword_1005B11E8;
  if (!qword_1005B11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B11E8);
  }

  return result;
}

unint64_t sub_1002E8304()
{
  v1 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v16 = 0xD000000000000024;
  v17 = 0x80000001004E72B0;
  v5 = *v0;
  v6 = v0[1];
  v7._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x6B6F54726565700ALL;
  v8._object = 0xEC000000203A6E65;
  String.append(_:)(v8);
  v9 = v0[2];
  v10 = v0[3];
  v11._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6148796C7065720ALL;
  v12._object = 0xEE00203A656C646ELL;
  String.append(_:)(v12);
  v13 = type metadata accessor for FindingConfigEnvelopeV1(0);
  sub_1002E8494(v0 + *(v13 + 24), v4);
  v14._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v14);

  return v16;
}

uint64_t sub_1002E8494(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E8504(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005B1328, &qword_1004D4080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1002E9564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v16 = 0;
  sub_100005F6C(v17, v11);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v17, v18);
  if (!v2)
  {
    v12 = v3[3];
    v17 = v3[2];
    v18 = v12;
    v16 = 1;
    sub_100005F6C(v17, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000049D0(v17, v18);
    v13 = *(type metadata accessor for FindingConfigEnvelopeV1(0) + 24);
    LOBYTE(v17) = 2;
    type metadata accessor for Handle();
    sub_1002E9628(&qword_1005AE858);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1002E8718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v25 = sub_10004B564(&qword_1005B1318, &qword_1004D4078);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v25);
  v11 = &v23 - v10;
  v12 = type metadata accessor for FindingConfigEnvelopeV1(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v26 = a1;
  sub_100011AEC(a1, v16);
  sub_1002E9564();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(v26);
  }

  v18 = v15;
  v23 = v7;
  v28 = 0;
  sub_1000F4D64();
  v19 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v18;
  *v18 = v27;
  v28 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18[1] = v27;
  type metadata accessor for Handle();
  LOBYTE(v27) = 2;
  sub_1002E9628(&qword_1005AE888);
  v21 = v23;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v11, v19);
  sub_1002E95B8(v21, v20 + *(v12 + 24));
  sub_1002E96C0(v20, v24, type metadata accessor for FindingConfigEnvelopeV1);
  sub_100004984(v26);
  return sub_1002E9728(v20, type metadata accessor for FindingConfigEnvelopeV1);
}