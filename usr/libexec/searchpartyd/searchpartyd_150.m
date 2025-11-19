uint64_t sub_100FAA544()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return _swift_task_switch(sub_100FAA670, v3, 0);
}

uint64_t sub_100FAA670()
{
  v1 = v0[15];
  v2 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = 0;
  }

  else
  {
    v4 = sub_100D60CD0();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v0[15];

    sub_100FC47E0(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[20];
  v14 = v0[16];
  v15 = v0[17];
  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[8];
  (*(v15 + 56))(v16, 1, 1, v14);
  v12(v13, v18, v14);
  sub_1000D2A70(v16, v17, &qword_1016980D0, &unk_10138F3B0);
  v19 = *(v15 + 48);
  if (v19(v17, 1, v14) == 1)
  {
    v20 = v0[19];
    v21 = v0[16];
    v23 = v0[10];
    v22 = v0[11];
    UUID.init()();
    sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
    if (v19(v23, 1, v21) != 1)
    {
      sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v25 = v0[32];
    v24 = v0[33];
    v26 = v0[19];
    v27 = v0[16];
    v28 = v0[10];
    sub_10000B3A8(v0[11], &qword_1016980D0, &unk_10138F3B0);
    v25(v26, v28, v27);
  }

  v30 = v0[32];
  v29 = v0[33];
  v31 = v0[20];
  v32 = v0[16];
  v34 = v0[12];
  v33 = v0[13];
  v30(v33, v0[19], v32);
  v30(v33 + v34[5], v31, v32);
  v35 = v33 + v34[6];
  *v35 = 120;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = xmmword_1013AAD80;
  *(v33 + v34[7]) = v3 & 1;
  *(v33 + v34[8]) = 1;
  v36 = swift_task_alloc();
  v0[35] = v36;
  *v36 = v0;
  v36[1] = sub_100FAA9B0;
  v37 = v0[28];
  v38 = v0[13];

  return sub_10121B780((v0 + 2), v38, 0);
}

uint64_t sub_100FAA9B0()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_100FAACA0;
  }

  else
  {
    v6 = *(v2 + 72);
    sub_10000B3A8(v2 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v5 = sub_100FAAAE8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100FAAAE8()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[15];
  v7 = v0[13];
  v9 = v0[10];
  v8 = v0[11];

  sub_100FC47E0(v7, type metadata accessor for AccessoryCommand);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100FAABD4()
{
  v1 = v0[26];

  v2 = v0[29];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[15];
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100FAACA0()
{
  v1 = v0[28];
  v2 = v0[13];

  sub_100FC47E0(v2, type metadata accessor for AccessoryCommand);
  v3 = v0[36];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[15];
  v9 = v0[13];
  v11 = v0[10];
  v10 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100FAAD8C(uint64_t a1)
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
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100FAAF34, v1, 0);
}

uint64_t sub_100FAAF34()
{
  v23 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[24] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[25] = v6;
  v0[26] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[16];
  v12 = v0[17];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD000000000000026, 0x80000001013757F0, &v22);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[27] = v17;
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[28] = v20;
  *v20 = v0;
  v20[1] = sub_100FAB208;

  return daemon.getter();
}

uint64_t sub_100FAB208(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v12 = *v1;
  *(v3 + 232) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 240) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100FC4DB8(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_100FAB3EC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100FAB3EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v10 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v5 = v3[9];
    v6 = sub_100FABEF4;
  }

  else
  {
    v7 = v3[29];
    v8 = v3[9];

    v6 = sub_100FAB514;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FAB514()
{
  v1 = *(*(v0 + 72) + 128);
  *(v0 + 264) = v1;
  return _swift_task_switch(sub_100FAB538, v1, 0);
}

uint64_t sub_100FAB538()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);
  v3 = *(v0 + 176);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  (*(v0 + 200))(v3, *(v0 + 64), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 272) = v8;
  *(v8 + 16) = v1;
  v9 = *(v5 + 32);
  *(v0 + 280) = v9;
  *(v0 + 288) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v3, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 296) = v11;
  *v11 = v0;
  v11[1] = sub_100FAB69C;
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100FAC6A0, v8, v13);
}

uint64_t sub_100FAB69C()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return _swift_task_switch(sub_100FAB7C8, v3, 0);
}

uint64_t sub_100FAB7C8()
{
  v1 = v0[15];
  v2 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    v3 = 0;
  }

  else
  {
    v4 = sub_100D60CD0();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v10 = v0[15];

    sub_100FC47E0(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[21];
  v14 = v0[16];
  v15 = v0[17];
  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[8];
  (*(v15 + 56))(v16, 1, 1, v14);
  v12(v13, v18, v14);
  sub_1000D2A70(v16, v17, &qword_1016980D0, &unk_10138F3B0);
  v19 = *(v15 + 48);
  if (v19(v17, 1, v14) == 1)
  {
    v20 = v0[20];
    v21 = v0[16];
    v23 = v0[10];
    v22 = v0[11];
    UUID.init()();
    sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
    if (v19(v23, 1, v21) != 1)
    {
      sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v25 = v0[35];
    v24 = v0[36];
    v26 = v0[20];
    v27 = v0[16];
    v28 = v0[10];
    sub_10000B3A8(v0[11], &qword_1016980D0, &unk_10138F3B0);
    v25(v26, v28, v27);
  }

  v30 = v0[35];
  v29 = v0[36];
  v31 = v0[21];
  v32 = v0[16];
  v34 = v0[12];
  v33 = v0[13];
  v30(v33, v0[20], v32);
  v30(v33 + v34[5], v31, v32);
  v35 = v33 + v34[6];
  *v35 = xmmword_1013AAD90;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = xmmword_10139BF70;
  *(v33 + v34[7]) = v3 & 1;
  *(v33 + v34[8]) = 1;
  v36 = swift_task_alloc();
  v0[38] = v36;
  *v36 = v0;
  v36[1] = sub_100FABB0C;
  v37 = v0[31];
  v38 = v0[13];

  return sub_10121B780((v0 + 2), v38, 0);
}

uint64_t sub_100FABB0C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v8 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_100FABFD4;
  }

  else
  {
    v6 = *(v2 + 72);
    sub_10000B3A8(v2 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v5 = sub_100FABC44;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100FABC44()
{
  v35 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  (*(v0 + 200))(*(v0 + 152), *(v0 + 64), *(v0 + 128));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 104);
  if (v5)
  {
    v33 = *(v0 + 248);
    v31 = *(v0 + 216);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v11;
    v16 = v15;
    v31(v8, v10);
    v17 = sub_1000136BC(v14, v16, &v34);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully stopped fast advertising for %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);

    v18 = v32;
  }

  else
  {
    v19 = *(v0 + 248);

    v7(v8, v10);
    v18 = v11;
  }

  sub_100FC47E0(v18, type metadata accessor for AccessoryCommand);
  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v23 = *(v0 + 160);
  v22 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = *(v0 + 120);
  v26 = *(v0 + 104);
  v28 = *(v0 + 80);
  v27 = *(v0 + 88);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_100FABEF4()
{
  v1 = v0[29];

  v2 = v0[32];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v0[15];
  v9 = v0[13];
  v11 = v0[10];
  v10 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100FABFD4()
{
  v1 = v0[31];
  v2 = v0[13];

  sub_100FC47E0(v2, type metadata accessor for AccessoryCommand);
  v3 = v0[39];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[15];
  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100FAC0D4()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  v5 = *(v0 + 160);

  v6 = *(v0 + 168);

  v7 = *(v0 + 176);

  v8 = *(v0 + 192);

  v9 = *(v0 + 200);

  v10 = *(v0 + 208);

  v11 = *(v0 + 216);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100FAC154()
{
  sub_100FAC0D4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100FAC1A4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100FAC200(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100FAC260(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BTFindingService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100FAC308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for BTFindingService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100FAC3CC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BTFindingService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100FAC474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100F9F0B8();
}

uint64_t sub_100FAC500(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BTFindingService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100FAC5A8()
{
  v1 = *v0;
  type metadata accessor for BTFindingService();
  sub_100FC4DB8(&qword_1016C2130, v2, type metadata accessor for BTFindingService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100FAC6A4()
{
  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  result = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  qword_1016C1CD0 = result;
  return result;
}

uint64_t sub_100FAC6E8()
{
  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  result = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  qword_1016C1CD8 = result;
  return result;
}

uint64_t sub_100FAC72C()
{
  result = sub_100FAC74C();
  qword_1016C1CE0 = result;
  return result;
}

uint64_t sub_100FAC74C()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074E98(v8);
  v2 = v1;

  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C468);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "Throttling every %f seconds for .detectedNearby", v6, 0xCu);
  }

  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  return AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
}

uint64_t sub_100FAC8DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v2[5] = v3;
  v2[6] = *(v3 + 64);
  v2[7] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v2[11] = *(v6 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100FACA88, v1, 0);
}

uint64_t sub_100FACA88()
{
  v67 = v0;
  v1 = *(v0[10] + 16);
  v1(v0[15], v0[2], v0[9]);
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  v1(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v11 = v0[9];
  v10 = v0[10];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101375B50, v66);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = v1;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    log = v6;
    v17 = *(v10 + 8);
    v17(v9, v11);
    v18 = v14;
    v1 = v13;
    v19 = sub_1000136BC(v18, v16, v66);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, log, v7, "%{public}s for %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v10 + 8);
    v17(v9, v11);
  }

  v65 = v17;
  v20 = v0[3];
  v21 = v0[15];
  if (*(v20 + 176))
  {
    v1(v0[12], v0[15], v0[9]);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[10];
    if (v24)
    {
      v28 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v28 = 136446723;
      *(v28 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101375B50, v66);
      *(v28 + 12) = 2160;
      *(v28 + 14) = 1752392040;
      *(v28 + 22) = 2081;
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v65(v25, v26);
      v32 = sub_1000136BC(v29, v31, v66);

      *(v28 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Found existing scan task for %{private,mask.hash}s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v65(v25, v26);
    }

    v45 = v0[14];
    v46 = v0[15];
    v48 = v0[12];
    v47 = v0[13];
    v50 = v0[8];
    v49 = v0[9];
    v64 = v0[7];
    sub_100FC449C();
    swift_allocError();
    *v51 = 0x800000000000000DLL;
    swift_willThrow();
    v65(v46, v49);

    v44 = v0[1];
  }

  else
  {
    v33 = v0[13];
    loga = v0[14];
    v62 = v0[12];
    v35 = v0[9];
    v34 = v0[10];
    v37 = v0[7];
    v36 = v0[8];
    v57 = v0[11];
    v58 = v36;
    v63 = v37;
    v55 = v33;
    v56 = v0[6];
    v59 = v0[4];
    v53 = v0[2];
    v54 = v0[5];
    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
    sub_100FC4840(v53, v37, type metadata accessor for LocalFindableAccessoryRecord);
    v1(v33, v21, v35);
    v39 = (*(v54 + 80) + 40) & ~*(v54 + 80);
    v40 = (v56 + *(v34 + 80) + v39) & ~*(v34 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = 0;
    *(v41 + 3) = 0;
    *(v41 + 4) = v20;
    sub_100FC4778(v63, &v41[v39], type metadata accessor for LocalFindableAccessoryRecord);
    (*(v34 + 32))(&v41[v40], v55, v35);
    *&v41[(v57 + v40 + 7) & 0xFFFFFFFFFFFFFFF8] = v59;

    v42 = sub_100BB9ADC(0, 0, v36, &unk_1013F6258, v41);
    sub_10000B3A8(v58, &qword_101698C00, &qword_10138B570);
    v65(v21, v35);
    v43 = *(v20 + 176);
    *(v20 + 176) = v42;

    v44 = v0[1];
  }

  return v44();
}

uint64_t sub_100FAD1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[179] = a6;
  v6[173] = a5;
  v6[167] = a4;
  v7 = type metadata accessor for UUID();
  v6[185] = v7;
  v8 = *(v7 - 8);
  v6[191] = v8;
  v6[197] = *(v8 + 64);
  v6[198] = swift_task_alloc();
  v9 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v6[199] = v9;
  v6[200] = *(v9 + 64);
  v6[201] = swift_task_alloc();

  return _swift_task_switch(sub_100FAD2EC, 0, 0);
}

uint64_t sub_100FAD2EC()
{
  v1 = v0[201];
  v2 = v0[200];
  v3 = v0[199];
  v4 = v0[198];
  v15 = v0[197];
  v5 = v0[191];
  v6 = v0[185];
  v7 = v0[179];
  v8 = v0[167];
  sub_100FC4840(v0[173], v1, type metadata accessor for LocalFindableAccessoryRecord);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v0[202] = v10;
  *(v10 + 16) = v8;
  sub_100FC4778(v1, v10 + v9, type metadata accessor for LocalFindableAccessoryRecord);

  swift_asyncLet_begin();
  (*(v5 + 16))(v4, v7, v6);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[203] = v12;
  *(v12 + 16) = v8;
  (*(v5 + 32))(v12 + v11, v4, v6);

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v13, sub_100FAD4C8, v0 + 162);
}

uint64_t sub_100FAD4C8(uint64_t a1, uint64_t a2)
{
  *(v3 + 1632) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_100FAD5FC, v3 + 1344);
  }

  else
  {
    return _swift_asyncLet_get(v3 + 656);
  }
}

uint64_t sub_100FAD578()
{
  v1 = v0[203];
  v2 = v0[202];

  v3 = v0[201];
  v4 = v0[198];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100FAD650()
{
  v18 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[204];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016C1CB0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[204];
  v7 = v0[203];
  v8 = v0[202];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1000136BC(0xD000000000000017, 0x8000000101375B50, &v17);
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s scanTask error: %{public}@", v9, 0x16u);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v11);
  }

  else
  {
  }

  v13 = v0[201];
  v14 = v0[198];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100FAD88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100014650;

  return sub_100FAD928(a3);
}

uint64_t sub_100FAD928(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v2[11] = v6;
  v2[12] = *(v6 + 64);
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for Device();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v2[16] = *(v8 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v9 = type metadata accessor for DeviceChange();
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_1016A06D8, &unk_1013A37C0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720);
  v2[24] = v13;
  v14 = *(v13 - 8);
  v2[25] = v14;
  v15 = *(v14 + 64) + 15;
  v2[26] = swift_task_alloc();
  v16 = sub_1000BC4D4(&unk_1016B7C80, &unk_1013A37D0);
  v2[27] = v16;
  v17 = *(v16 - 8);
  v2[28] = v17;
  v18 = *(v17 + 64) + 15;
  v2[29] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v2[30] = v19;
  v20 = *(v19 - 8);
  v2[31] = v20;
  v2[32] = *(v20 + 64);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_100FADCF0, v1, 0);
}

uint64_t sub_100FADCF0()
{
  v26 = v0;
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[3];
  v5 = *(v3 + 16);
  v0[36] = v5;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v6 = v0[34];
  v7 = v0[35];
  v8 = v0[30];
  v9 = type metadata accessor for Logger();
  v0[38] = sub_1000076D4(v9, qword_1016C1CB0);
  v5(v6, v7, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[34];
  v14 = v0[30];
  v15 = v0[31];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v16 = 136446723;
    *(v16 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101375BD0, &v25);
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v13, v14);
    v21 = sub_1000136BC(v17, v19, &v25);

    *(v16 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s for %{private,mask.hash}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v20 = *(v15 + 8);
    v20(v13, v14);
  }

  v0[39] = v20;
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v0[40] = v23;
  *v23 = v0;
  v23[1] = sub_100FADFD8;

  return daemon.getter();
}

uint64_t sub_100FADFD8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v12 = *v1;
  *(v3 + 328) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 336) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100FC4DB8(&unk_1016B10E0, 255, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_100FAE1BC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100FAE1BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  v4[43] = a1;
  v4[44] = v1;

  v7 = v4[41];
  if (v1)
  {
    v8 = v4[4];

    return _swift_task_switch(sub_100FAF6CC, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[45] = v9;
    *v9 = v6;
    v9[1] = sub_100FAE36C;
    v10 = v4[26];
    v11 = v4[3];

    return sub_101219720(v10, v11);
  }
}

uint64_t sub_100FAE36C()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_100FAF808;
  }

  else
  {
    v6 = sub_100FAE498;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FAE498()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_100FC4DB8(&qword_1016C2128, v5, type metadata accessor for BTFindingService);
  v0[47] = v6;
  v7 = v0[4];
  v8 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v9 = swift_task_alloc();
  v0[48] = v9;
  *v9 = v0;
  v9[1] = sub_100FAE5B8;
  v10 = v0[29];
  v11 = v0[27];
  v12 = v0[23];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v12, v7, v6, v11, v0 + 2);
}

uint64_t sub_100FAE5B8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_100FAF954;
  }

  else
  {
    v5 = sub_100FAE6D0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100FAE6D0()
{
  v102 = v0;
  v1 = *(v0 + 184);
  if ((*(*(v0 + 160) + 48))(v1, 1, *(v0 + 152)) == 1)
  {
    v2 = *(v0 + 344);
    v3 = *(v0 + 312);
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);
    v83 = *(v0 + 264);
    v84 = *(v0 + 208);
    v85 = *(v0 + 176);
    v86 = *(v0 + 168);
    v87 = *(v0 + 144);
    v88 = *(v0 + 136);
    v90 = *(v0 + 104);
    v92 = *(v0 + 80);
    v95 = *(v0 + 72);
    v98 = *(v0 + 64);

    (*(v9 + 8))(v8, v10);
    v3(v4, v6);

    v11 = *(v0 + 8);
LABEL_5:

    return v11();
  }

  v12 = *(v0 + 392);
  sub_100FC4778(v1, *(v0 + 176), &type metadata accessor for DeviceChange);
  static Task<>.checkCancellation()();
  *(v0 + 400) = v12;
  if (v12)
  {
    v13 = *(v0 + 344);
    v14 = *(v0 + 312);
    v15 = *(v0 + 280);
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v20 = *(v0 + 216);
    v21 = *(v0 + 176);

    sub_100FC47E0(v21, &type metadata accessor for DeviceChange);
    (*(v19 + 8))(v18, v20);
    v14(v15, v16);
    v23 = *(v0 + 272);
    v22 = *(v0 + 280);
    v24 = *(v0 + 264);
    v25 = *(v0 + 232);
    v26 = *(v0 + 208);
    v28 = *(v0 + 176);
    v27 = *(v0 + 184);
    v29 = *(v0 + 168);
    v30 = *(v0 + 144);
    v89 = *(v0 + 136);
    v91 = *(v0 + 104);
    v93 = *(v0 + 80);
    v96 = *(v0 + 72);
    v99 = *(v0 + 64);

    v11 = *(v0 + 8);
    goto LABEL_5;
  }

  v32 = *(v0 + 152);
  sub_100FC4840(*(v0 + 176), *(v0 + 168), &type metadata accessor for DeviceChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *(v0 + 168);
      v35 = *(v0 + 144);
      v36 = *(v0 + 112);
      v37 = *(v0 + 120);
      v38 = *(v0 + 32);
      v39 = *(v37 + 32);
      *(v0 + 408) = v39;
      *(v0 + 416) = (v37 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v39(v35, v34, v36);
      *(v38 + 186) = 1;
      if (qword_101695130 != -1)
      {
        swift_once();
      }

      v40 = *(v0 + 288);
      v41 = *(v0 + 296);
      v42 = *(v0 + 280);
      v44 = *(v0 + 256);
      v43 = *(v0 + 264);
      v45 = *(v0 + 240);
      v46 = *(v0 + 248);
      v47 = *(v0 + 32);
      v97 = *(v0 + 40);
      *(v0 + 424) = qword_1016C1CE0;
      v48 = swift_allocObject();
      *(v0 + 432) = v48;
      swift_weakInit();
      v40(v43, v42, v45);
      v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      *(v0 + 520) = *(v46 + 80);
      v50 = swift_allocObject();
      *(v0 + 440) = v50;
      *(v50 + 16) = v48;
      v51 = *(v46 + 32);
      *(v0 + 448) = v51;
      *(v0 + 456) = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v51(v50 + v49, v43, v45);
      *(v50 + ((v44 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v97;

      *(v0 + 464) = sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
      *(v0 + 472) = sub_1000041A4(&unk_1016C2150, &qword_1016A4720, &qword_1013B1060);
      v53 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100FAEEAC, v53, v52);
    }

    v55 = *(v0 + 304);
    v57 = *(v0 + 64);
    v56 = *(v0 + 72);
    v58 = *(v0 + 48);
    v59 = *(v0 + 56);
    (*(v59 + 32))(v56, *(v0 + 168), v58);
    (*(v59 + 16))(v57, v56, v58);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 176);
    v64 = *(v0 + 64);
    v65 = *(v0 + 72);
    v67 = *(v0 + 48);
    v66 = *(v0 + 56);
    if (v62)
    {
      v100 = *(v0 + 176);
      v68 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v101 = v94;
      *v68 = 141558275;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2081;
      sub_1000041A4(&unk_1016C21E0, &unk_1016B7C30, &qword_1013DBFD0);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      v72 = *(v66 + 8);
      v72(v64, v67);
      v73 = sub_1000136BC(v69, v71, &v101);

      *(v68 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v60, v61, "Lost %{private,mask.hash}s", v68, 0x16u);
      sub_100007BAC(v94);

      v72(v65, v67);
      v74 = v100;
    }

    else
    {

      v75 = *(v66 + 8);
      v75(v64, v67);
      v75(v65, v67);
      v74 = v63;
    }

    sub_100FC47E0(v74, &type metadata accessor for DeviceChange);
    *(*(v0 + 32) + 184) = 1;
  }

  else
  {
    v54 = *(v0 + 168);
    sub_100FC47E0(*(v0 + 176), &type metadata accessor for DeviceChange);
    sub_100FC47E0(v54, &type metadata accessor for DeviceChange);
  }

  v76 = *(v0 + 376);
  v77 = *(v0 + 32);
  v78 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v79 = swift_task_alloc();
  *(v0 + 384) = v79;
  *v79 = v0;
  v79[1] = sub_100FAE5B8;
  v80 = *(v0 + 232);
  v81 = *(v0 + 216);
  v82 = *(v0 + 184);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v82, v77, v76, v81, v0 + 16);
}

uint64_t sub_100FAEEAC()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[35];
  v5 = v0[4];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  return _swift_task_switch(sub_100FAEF50, v5, 0);
}

uint64_t sub_100FAEF50()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 144);
  v3 = sub_10124BC00();
  if (v1)
  {
    v4 = *(v0 + 304);
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
      _os_log_impl(&_mh_execute_header, v5, v6, "Fast advertising check error %{public}@", v7, 0xCu);
      sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
    }

    goto LABEL_5;
  }

  if (v3)
  {
    if (qword_101695120 != -1)
    {
      swift_once();
    }

    v57 = *(v0 + 464);
    v59 = *(v0 + 472);
    v53 = *(v0 + 408);
    v55 = *(v0 + 416);
    v18 = *(v0 + 264);
    v19 = *(v0 + 144);
    v20 = *(v0 + 120);
    v48 = *(v0 + 136);
    v50 = *(v0 + 128);
    v21 = *(v0 + 112);
    v22 = *(v0 + 80);
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    v52 = *(v0 + 40);
    *(v0 + 504) = qword_1016C1CD0;
    Device.id.getter();
    Identifier.id.getter();
    (*(v23 + 8))(v22, v24);
    (*(v20 + 16))(v48, v19, v21);
    v25 = (*(v20 + 80) + 17) & ~*(v20 + 80);
    v26 = swift_allocObject();
    *(v0 + 512) = v26;
    *(v26 + 16) = 1;
    v53(v26 + v25, v48, v21);
    *(v26 + ((v50 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v52;
    v27 = dispatch thunk of Actor.unownedExecutor.getter();
    v29 = v28;
    v30 = sub_100FAF600;
  }

  else
  {
    if (*(*(v0 + 32) + 185) != 1)
    {
LABEL_5:
      v10 = *(v0 + 176);
      (*(*(v0 + 120) + 8))(*(v0 + 144), *(v0 + 112));
      sub_100FC47E0(v10, &type metadata accessor for DeviceChange);
      v11 = *(v0 + 376);
      v12 = *(v0 + 32);
      v13 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
      v14 = swift_task_alloc();
      *(v0 + 384) = v14;
      *v14 = v0;
      v14[1] = sub_100FAE5B8;
      v15 = *(v0 + 232);
      v16 = *(v0 + 216);
      v17 = *(v0 + 184);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v17, v12, v11, v16, v0 + 16);
    }

    if (qword_101695128 != -1)
    {
      swift_once();
      v43 = *(v0 + 32);
    }

    v58 = *(v0 + 464);
    v60 = *(v0 + 472);
    v54 = *(v0 + 448);
    v56 = *(v0 + 456);
    v31 = *(v0 + 520);
    v46 = *(v0 + 288);
    v47 = *(v0 + 296);
    v32 = *(v0 + 280);
    v33 = *(v0 + 264);
    v34 = *(v0 + 240);
    v35 = *(v0 + 104);
    v45 = *(v0 + 96);
    v36 = *(v0 + 88);
    v49 = *(v0 + 256);
    v51 = *(v0 + 40);
    v37 = *(v0 + 24);
    *(v0 + 480) = qword_1016C1CD8;
    v38 = swift_allocObject();
    *(v0 + 488) = v38;
    swift_weakInit();
    sub_100FC4840(v37, v35, type metadata accessor for LocalFindableAccessoryRecord);
    v46(v33, v32, v34);
    v39 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v40 = (v45 + v31 + v39) & ~v31;
    v41 = swift_allocObject();
    *(v0 + 496) = v41;
    *(v41 + 16) = v38;
    sub_100FC4778(v35, v41 + v39, type metadata accessor for LocalFindableAccessoryRecord);
    v54(v41 + v40, v33, v34);
    *(v41 + ((v49 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) = v51;

    v27 = dispatch thunk of Actor.unownedExecutor.getter();
    v29 = v42;
    v30 = sub_100FAF468;
  }

  return _swift_task_switch(v30, v27, v29);
}

uint64_t sub_100FAF468()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v4 = v0[35];
  v5 = v0[4];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  return _swift_task_switch(sub_100FAF50C, v5, 0);
}

uint64_t sub_100FAF50C()
{
  v1 = v0[22];
  (*(v0[15] + 8))(v0[18], v0[14]);
  sub_100FC47E0(v1, &type metadata accessor for DeviceChange);
  v2 = v0[47];
  v3 = v0[4];
  v4 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v5 = swift_task_alloc();
  v0[48] = v5;
  *v5 = v0;
  v5[1] = sub_100FAE5B8;
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[23];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v8, v3, v2, v7, v0 + 2);
}

uint64_t sub_100FAF600()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[39];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[4];
  v7 = v0[31] + 8;
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v3(v4, v5);

  return _swift_task_switch(sub_100FC4FBC, v6, 0);
}

uint64_t sub_100FAF6CC()
{
  v1 = *(v0 + 248) + 8;
  (*(v0 + 312))(*(v0 + 280), *(v0 + 240));
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 232);
  v6 = *(v0 + 208);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v9 = *(v0 + 168);
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v14 = *(v0 + 104);
  v15 = *(v0 + 80);
  v16 = *(v0 + 72);
  v17 = *(v0 + 64);
  v18 = *(v0 + 352);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100FAF808()
{
  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[30];
  v5 = v0[31];

  v2(v3, v4);
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v9 = v0[29];
  v10 = v0[26];
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[21];
  v14 = v0[17];
  v15 = v0[18];
  v18 = v0[13];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[8];
  v22 = v0[46];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100FAF954()
{
  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];

  (*(v7 + 8))(v6, v8);
  v2(v3, v4);
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v12 = v0[29];
  v13 = v0[26];
  v15 = v0[22];
  v14 = v0[23];
  v16 = v0[21];
  v17 = v0[17];
  v18 = v0[18];
  v21 = v0[13];
  v22 = v0[10];
  v23 = v0[9];
  v24 = v0[8];
  v25 = v0[2];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100FAFAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10003633C;

  return sub_100FAFB5C(a3);
}

uint64_t sub_100FAFB5C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = *(*(type metadata accessor for CentralManager.ConnectedState() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&unk_1016C21B0, &unk_101395B20) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_10169BCE8, &unk_1013E8AA0);
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016C21C0, &unk_101395B30);
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100FAFD84, v1, 0);
}

uint64_t sub_100FAFD84()
{
  v31 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  v0[18] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[19] = v6;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD000000000000021, 0x8000000101375BA0, &v30);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v12 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v30);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v0[21] = *(v0[4] + 136);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v18 = type metadata accessor for CentralManager.State();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v0[22] = v22;
  *(v22 + 16) = xmmword_10138BBE0;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, enum case for CentralManager.State.poweredOn(_:), v18);
  v24(v23 + v20, enum case for CentralManager.State.restricted(_:), v18);
  v25 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v26 = swift_task_alloc();
  v0[23] = v26;
  v27 = type metadata accessor for CentralManager();
  v0[24] = v27;
  v28 = sub_100FC4DB8(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v26 = v0;
  v26[1] = sub_100FB0198;

  return CentralManagerProtocol.await(states:)(v22, v27, v28);
}

uint64_t sub_100FB0198()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_100FB0DB4;
  }

  else
  {
    v6 = *(v2 + 176);
    v7 = *(v2 + 32);

    v5 = sub_100FB02C0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100FB02C0()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[3];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v8 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v0[26] = v11;
  *(v11 + 16) = xmmword_101385D80;
  v4(v5, v7, v6);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  sub_100FC4DB8(&unk_1016C21D0, 255, &type metadata accessor for CentralManager);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FB0468, v13, v12);
}

uint64_t sub_100FB0468()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[21];
  v4 = v0[13];
  dispatch thunk of CentralManager.connectionEvents(peripheralIdentifiers:)();
  v0[27] = v2;
  if (v2)
  {
    v5 = v0[4];
    v6 = sub_100FB0F54;
  }

  else
  {
    v7 = v0[26];
    v8 = v0[4];

    v6 = sub_100FB050C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FB050C()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  AsyncStream.makeAsyncIterator()();
  v5 = sub_100FC4DB8(&qword_1016C2128, v4, type metadata accessor for BTFindingService);
  v6 = v0[27];
  v0[28] = v5;
  v0[29] = v6;
  v7 = v0[4];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_100FB0608;
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v11, v7, v5, v12);
}

uint64_t sub_100FB0608()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100FB0718, v2, 0);
}

uint64_t sub_100FB0718()
{
  v1 = v0[7];
  v2 = sub_1000BC4D4(&qword_10169BCF8, &unk_101395B40);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[18];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "centralManager.connectionEvents() terminated", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_12;
  }

  v11 = v0[29];
  v12 = v0[6];
  v13 = *v1;
  v0[31] = *v1;
  sub_100FC4778(v1 + *(v2 + 48), v12, &type metadata accessor for CentralManager.ConnectedState);
  static Task<>.checkCancellation()();
  if (v11)
  {
    v15 = v0[12];
    v14 = v0[13];
    v17 = v0[10];
    v16 = v0[11];
    v18 = v0[8];
    v19 = v0[9];
    v20 = v0[6];

    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    sub_100FC47E0(v20, &type metadata accessor for CentralManager.ConnectedState);
    v21 = v0[18];
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v24, 0xCu);
      sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_12:
    v36 = v0[16];
    v35 = v0[17];
    v37 = v0[13];
    v38 = v0[10];
    v40 = v0[6];
    v39 = v0[7];

    v41 = v0[1];

    return v41();
  }

  v27 = v0[28];
  v29 = v0[5];
  v28 = v0[6];
  v31 = v0[3];
  v30 = v0[4];
  type metadata accessor for Transaction();
  v0[32] = static Transaction.$current.getter();
  v0[2] = v13;
  v32 = swift_task_alloc();
  v0[33] = v32;
  v32[2] = v28;
  v32[3] = v30;
  v32[4] = v31;
  v32[5] = v29;
  v33 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v34 = swift_task_alloc();
  v0[34] = v34;
  *v34 = v0;
  v34[1] = sub_100FB0B78;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_100FB0B78()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v13 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v5 = v2[32];
    v4 = v2[33];
    v6 = v2[31];
    v7 = v2[4];

    v8 = sub_100FB10F4;
  }

  else
  {
    v10 = v2[32];
    v9 = v2[33];
    v11 = v2[31];
    v7 = v2[4];

    v8 = sub_100FB0CD4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100FB0CD4()
{
  v1 = v0[31];

  v2 = v0[35];
  sub_100FC47E0(v0[6], &type metadata accessor for CentralManager.ConnectedState);
  v0[29] = v2;
  v3 = v0[28];
  v4 = v0[4];
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_100FB0608;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v8, v4, v3, v9);
}

uint64_t sub_100FB0DB4()
{
  v1 = v0[22];

  v2 = v0[25];
  v3 = v0[18];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[13];
  v12 = v0[10];
  v14 = v0[6];
  v13 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100FB0F54()
{
  v1 = v0[26];

  v2 = v0[27];
  v3 = v0[18];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in connectionEvents(serviceIdentifiers:): %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[13];
  v12 = v0[10];
  v14 = v0[6];
  v13 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100FB10F4()
{
  v1 = v0[35];
  v2 = v0[18];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[35];
  v7 = v0[31];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error processing monitorBluetoothConnections event: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    v11 = v0[31];
  }

  sub_100FC47E0(v0[6], &type metadata accessor for CentralManager.ConnectedState);
  v0[29] = 0;
  v12 = v0[28];
  v13 = v0[4];
  v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_100FB0608;
  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v17, v13, v12, v18);
}

uint64_t sub_100FB12DC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for UUID();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100FB13A8, v1, 0);
}

uint64_t sub_100FB13A8()
{
  v43 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  if (v9)
  {
    v40 = v8;
    v13 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101375A40, &v42);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v41 = *(v11 + 8);
    v41(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v42);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v7, v40, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = *(v11 + 8);
    v41(v10, v12);
  }

  v18 = v0[9];
  swift_beginAccess();
  if (!*(*(v18 + 216) + 16) || (v19 = v0[8], v20 = *(v18 + 216), , sub_1000210EC(v19), LOBYTE(v19) = v21, , (v19 & 1) == 0))
  {
    v6(v0[12], v0[8], v0[10]);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[11];
    v25 = v0[12];
    v27 = v0[10];
    if (v24)
    {
      v28 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v28 = 136446723;
      *(v28 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101375A40, &v42);
      *(v28 + 12) = 2160;
      *(v28 + 14) = 1752392040;
      *(v28 + 22) = 2081;
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v41(v25, v27);
      v32 = sub_1000136BC(v29, v31, &v42);

      *(v28 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Adding new tracker %{private,mask.hash}s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v41(v25, v27);
    }

    v33 = v0[8];
    swift_beginAccess();
    v34 = *(v18 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v18 + 216);
    *(v18 + 216) = 0x8000000000000000;
    sub_101001EEC(0, 0, v33, isUniquelyReferenced_nonNull_native);
    *(v18 + 216) = v42;
    swift_endAccess();
  }

  *(v0[9] + 185) = 1;
  v36 = swift_task_alloc();
  v0[14] = v36;
  *v36 = v0;
  v36[1] = sub_100FB1910;
  v37 = v0[8];
  v38 = v0[9];

  return sub_100FB1A44(v37);
}

uint64_t sub_100FB1910()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100FB1A44(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100FB1B1C, v1, 0);
}

uint64_t sub_100FB1B1C()
{
  v24 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[4];
  v12 = v0[5];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x8000000101375A60, &v23);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v23);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for %{private,mask.hash}s", v13, 0x20u);
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
  v19[1] = sub_100FB1DF4;
  v20 = v0[2];
  v21 = v0[3];

  return sub_100FA9C48(v20);
}

uint64_t sub_100FB1DF4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100FB22E0;
  }

  else
  {
    v6 = sub_100FB1F20;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FB1F20()
{
  v20 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 32));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  v7 = *(v0 + 56);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  if (v5)
  {
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136446723;
    *(v10 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x8000000101375A60, &v19);
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v6(v7, v9);
    v14 = sub_1000136BC(v11, v13, &v19);

    *(v10 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Successfully started FAM for %{private,mask.hash}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v6(v7, v9);
  }

  v15 = swift_task_alloc();
  *(v0 + 120) = v15;
  *v15 = v0;
  v15[1] = sub_100FB218C;
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);

  return sub_100FB4D18(v16);
}

uint64_t sub_100FB218C()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100FB22E0()
{
  v26 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 48), *(v0 + 16), *(v0 + 32));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  if (v6)
  {
    v24 = *(v0 + 112);
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v12 = 136446979;
    *(v12 + 4) = sub_1000136BC(0xD00000000000001FLL, 0x8000000101375A60, &v25);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v8(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v25);

    *(v12 + 24) = v16;
    *(v12 + 32) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 34) = v17;
    *v23 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Failed to start FAM for %{private,mask.hash}s %{public}@", v12, 0x2Au);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v18 = *(v0 + 112);

    v8(v9, v11);
  }

  v19 = swift_task_alloc();
  *(v0 + 120) = v19;
  *v19 = v0;
  v19[1] = sub_100FB218C;
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);

  return sub_100FB4D18(v20);
}

uint64_t sub_100FB25D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100FB2698, v1, 0);
}

uint64_t sub_100FB2698()
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
    *(v12 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101375960, &v20);
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

  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_100FB2958;
  v18 = v0[3];

  return sub_100FA4648();
}

uint64_t sub_100FB2958()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v3;
  v4[1] = sub_100FB2AB0;
  v5 = v1[3];
  v6 = v1[2];

  return sub_100FA5EC8(v6);
}

uint64_t sub_100FB2AB0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 72) = v4;
  *v4 = v3;
  v4[1] = sub_100FB2BF0;
  v5 = *(v1 + 24);

  return sub_100FA6AC8();
}

uint64_t sub_100FB2BF0()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100FB2D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v9 = type metadata accessor for CentralManager.ConnectedState();
  v4[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100FB2E28, a3, 0);
}

uint64_t sub_100FB2E28()
{
  v63 = v0;
  v1 = v0[11];
  v2 = v0[6];
  sub_100FC4840(v0[2], v0[12], &type metadata accessor for CentralManager.ConnectedState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v2 + 32);
  v5 = v0[12];
  v6 = v0[5];
  if (EnumCaseMultiPayload == 1)
  {
    v4(v0[8], v5, v6);
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v7 = v0[7];
    v8 = v0[8];
    v10 = v0[5];
    v9 = v0[6];
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_1016C1CB0);
    (*(v9 + 16))(v7, v8, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v62 = v59;
      *v18 = 141558275;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v58 = v13;
      v22 = *(v16 + 8);
      v22(v15, v17);
      v23 = sub_1000136BC(v19, v21, &v62);

      *(v18 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v12, v58, "Connected to %{private,mask.hash}s", v18, 0x16u);
      sub_100007BAC(v59);
    }

    else
    {

      v22 = *(v16 + 8);
      v22(v15, v17);
    }

    v0[13] = v22;
    v42 = v0[3];
    if (*(v42 + 184) == 1)
    {
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Restarting FAM uppon reconnection", v45, 2u);
      }

      *(v42 + 184) = 0;
      v46 = swift_task_alloc();
      v0[14] = v46;
      *v46 = v0;
      v46[1] = sub_100FB3438;
      v48 = v0[3];
      v47 = v0[4];

      return sub_100FA9C48(v47);
    }

    v51 = v0[6] + 8;
    v22(v0[8], v0[5]);
  }

  else
  {
    v4(v0[10], v5, v6);
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v24 = v0[9];
    v25 = v0[10];
    v26 = v0[5];
    v27 = v0[6];
    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_1016C1CB0);
    (*(v27 + 16))(v24, v25, v26);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[9];
    v33 = v0[10];
    v35 = v0[5];
    v34 = v0[6];
    if (v31)
    {
      v61 = v0[10];
      v36 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v62 = v60;
      *v36 = 141558275;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = *(v34 + 8);
      v40(v32, v35);
      v41 = sub_1000136BC(v37, v39, &v62);

      *(v36 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v29, v30, "Disconnected from %{private,mask.hash}s", v36, 0x16u);
      sub_100007BAC(v60);

      v40(v61, v35);
    }

    else
    {

      v50 = *(v34 + 8);
      v50(v32, v35);
      v50(v33, v35);
    }

    *(v0[3] + 184) = 1;
  }

  v52 = v0[12];
  v53 = v0[9];
  v54 = v0[10];
  v56 = v0[7];
  v55 = v0[8];

  v57 = v0[1];

  return v57();
}

uint64_t sub_100FB3438()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100FB3614;
  }

  else
  {
    v6 = sub_100FB3564;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100FB3564()
{
  v1 = *(v0 + 48) + 8;
  (*(v0 + 104))(*(v0 + 64), *(v0 + 40));
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100FB3614()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 48) + 8;
  (*(v0 + 104))(*(v0 + 64), *(v0 + 40));

  v6 = *(v0 + 8);
  v7 = *(v0 + 120);

  return v6();
}

uint64_t sub_100FB36CC(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 48) = a1;
  v3 = type metadata accessor for Device();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100FB3790, 0, 0);
}

uint64_t sub_100FB3790()
{
  v23 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  v11 = *(v0 + 24);
  if (v8)
  {
    v12 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 67109378;
    *(v13 + 4) = v12;
    *(v13 + 8) = 2080;
    sub_100FC4DB8(&unk_1016B7C90, 255, &type metadata accessor for Device);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_1000136BC(v15, v17, &v22);

    *(v13 + 10) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Throttled every 2 seconds] isFastAdvertising:%{BOOL}d device:%s", v13, 0x12u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 40);

  v20 = *(v0 + 8);

  return v20(1);
}

uint64_t sub_100FB39E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(*(type metadata accessor for LocalFindableAccessoryRecord() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100FB3A80, 0, 0);
}

uint64_t sub_100FB3A80()
{
  v24 = v0;
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v3 = v0[9];
    v4 = v0[6];
    v5 = type metadata accessor for Logger();
    v0[11] = sub_1000076D4(v5, qword_1016C1CB0);
    sub_100FC4840(v4, v3, type metadata accessor for LocalFindableAccessoryRecord);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[9];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      sub_100FC47E0(v9, type metadata accessor for LocalFindableAccessoryRecord);
      v15 = sub_1000136BC(v12, v14, &v23);

      *(v10 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "Putting beacon %{private,mask.hash}s back into FAM", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100FC47E0(v9, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v21 = swift_task_alloc();
    v0[12] = v21;
    *v21 = v0;
    v21[1] = sub_100FB3DA8;
    v22 = v0[7];

    return sub_100FA9C48(v22);
  }

  else
  {
    v17 = v0[8];
    v16 = v0[9];

    v18 = v0[1];
    v19 = v0[10] != 0;

    return v18(v19);
  }
}

uint64_t sub_100FB3DA8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100FB3F38;
  }

  else
  {
    v3 = sub_100FB3EBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100FB3EBC()
{
  v1 = v0[10];

  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];
  v5 = v0[10] != 0;

  return v4(v5);
}

uint64_t sub_100FB3F38()
{
  v25 = v0;
  v1 = v0[13];
  v2 = v0[11];
  sub_100FC4840(v0[6], v0[8], type metadata accessor for LocalFindableAccessoryRecord);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[8];
  if (v5)
  {
    v23 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100FC47E0(v8, type metadata accessor for LocalFindableAccessoryRecord);
    v15 = sub_1000136BC(v12, v14, &v24);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to put beacon %{private,mask.hash}s back into FAM %{public}@", v9, 0x20u);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v11);
  }

  else
  {
    v17 = v0[10];

    sub_100FC47E0(v8, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v19 = v0[8];
  v18 = v0[9];

  v20 = v0[1];
  v21 = v0[10] != 0;

  return v20(v21);
}

uint64_t sub_100FB41F8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100FB4358, 0, 0);
}

uint64_t sub_100FB4358()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[15] = sub_1000076D4(v3, qword_1016C1CB0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Saving detected-nearby event with throttle", v6, 2u);
    }

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_100FB4530;

    return daemon.getter();
  }

  else
  {
    v9 = v0[13];
    v10 = v0[10];
    v11 = v0[7];

    v12 = v0[1];
    v13 = v0[14] != 0;

    return v12(v13);
  }
}

uint64_t sub_100FB4530(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v12 = *v1;
  *(v3 + 136) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 144) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100FC4DB8(&qword_10169A090, 255, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_100FB4714;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100FB4714(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_100FB4B70;
  }

  else
  {
    v8 = *(v4 + 136);

    *(v4 + 160) = a1;
    v7 = sub_100FB4844;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100FB4844()
{
  v1 = v0[13];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  (*(v2 + 16))(v0[10], v0[6], v3);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  (*(v2 + 56))(v4, 1, 1, v3);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_100FB4954;
  v6 = v0[20];
  v7 = v0[13];
  v8 = v0[7];

  return sub_100D7219C(v7, v8);
}

uint64_t sub_100FB4954()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 56);
  v7 = *v0;

  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100FB4AD8, 0, 0);
}

uint64_t sub_100FB4AD8()
{
  v1 = v0[20];
  v2 = v0[14];

  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];
  v7 = v0[14] != 0;

  return v6(v7);
}

uint64_t sub_100FB4B70()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  v8 = v0[14];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save detected-nearby event %{public}@", v9, 0xCu);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
    v12 = v0[14];
  }

  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[7];

  v16 = v0[1];
  v17 = v0[14] != 0;

  return v16(v17);
}

uint64_t sub_100FB4D18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v2[8] = *(v5 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100FB4E4C, v1, 0);
}

uint64_t sub_100FB4E4C()
{
  v36 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C1CB0);
  v34 = *(v3 + 16);
  v34(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v11 = v0[6];
  v10 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101375A80, &v35);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v35);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s for %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[9];
  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[5];
  v21 = v0[6];
  v22 = v0[3];
  v32 = v0[4];
  v33 = v0[10];
  v23 = v0[2];
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v34(v17, v23, v21);
  v26 = sub_100FC4DB8(&qword_1016C2128, v25, type metadata accessor for BTFindingService);
  v27 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = v22;
  *(v29 + 3) = v26;
  *(v29 + 4) = v22;
  (*(v19 + 32))(&v29[v27], v17, v21);
  *&v29[v28] = v32;
  swift_retain_n();
  sub_10025EDD4(0, 0, v20, &unk_1013F61E0, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100FB5234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for UUID();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v6[7] = *(v9 + 64);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[11] = v10;
  *v10 = v6;
  v10[1] = sub_100FB5358;

  return sub_100FB593C(a5);
}

uint64_t sub_100FB5358(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100FB5470, v3, 0);
}

uint64_t sub_100FB5470()
{
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 56);
    v24 = *(v0 + 64);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v25 = v4;
    v26 = *(v0 + 72);
    v5 = *(v0 + 24);
    v27 = *(v0 + 32);
    v28 = v5;
    v6 = *(v0 + 16);
    v22 = v6;
    type metadata accessor for WorkItemQueue.WorkItem();
    v29 = *(v3 + 16);
    v29(v1, v5, v4);
    v7 = *(v3 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v9 = *(v3 + 32);
    v9(v8 + ((v7 + 24) & ~v7), v1, v4);
    v23 = v9;
    *(v8 + ((((v7 + 24) & ~v7) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v29(v26, v5, v4);
    v10 = (v7 + 16) & ~v7;
    v11 = swift_allocObject();
    v9(v11 + v10, v26, v4);
    *(v11 + ((v10 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;

    UUID.init()();
    v12 = WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    v29(v1, v28, v25);
    v13 = swift_allocObject();
    *(v13 + 16) = v22;
    v23(v13 + ((v7 + 24) & ~v7), v1, v25);
    *(v13 + ((((v7 + 24) & ~v7) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    v14 = *(v22 + 168);
    dispatch thunk of WorkItemQueue.enqueue(_:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 96) = v20;
    *v20 = v0;
    v20[1] = sub_100FB57EC;
    v21 = *(v0 + 16);

    return sub_100FA74A0();
  }
}

uint64_t sub_100FB57EC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v8 = *v0;

  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[8];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100FB593C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100FB5A08, v1, 0);
}

uint64_t sub_100FB5A08()
{
  v35 = v0;
  v1 = v0[7];
  if (sub_100F9E19C())
  {
    v2 = v0[7];
    swift_beginAccess();
    v3 = *(v2 + 216);
    if (*(v3 + 16))
    {
      v4 = v0[6];

      v5 = sub_1000210EC(v4);
      if (v6)
      {
        v7 = (*(v3 + 56) + 16 * v5);
        v0[12] = *v7;
        v0[13] = v7[1];

        return _swift_task_switch(sub_100FB5E34, 0, 0);
      }
    }

    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    v16 = v0[6];
    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_1016C1CB0);
    (*(v14 + 16))(v13, v16, v15);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[9];
    v21 = v0[10];
    v23 = v0[8];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v22 + 8))(v21, v23);
      v29 = sub_1000136BC(v26, v28, &v34);

      *(v24 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Missing tracker for %{private,mask.hash}s. Not extending FAM", v24, 0x16u);
      sub_100007BAC(v25);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }
  }

  else
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016C1CB0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000136BC(0xD000000000000023, 0x8000000101375AE0, &v34);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s No active client. Not extending FAM", v11, 0xCu);
      sub_100007BAC(v12);
    }
  }

  v31 = v0[10];
  v30 = v0[11];

  v32 = v0[1];

  return v32(0);
}

uint64_t sub_100FB5E34()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 112) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_100FB5F34;

  return unsafeBlocking<A>(_:)(v0 + 40, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_100FB5F34()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100FB604C, 0, 0);
}

uint64_t sub_100FB604C()
{
  v1 = v0[7];
  v0[16] = v0[5];
  return _swift_task_switch(sub_100FB6070, v1, 0);
}

uint64_t sub_100FB6070()
{
  v39 = v0;
  v1 = v0[13];
  v2 = sub_101074E70(v0[16]);

  if (v1 >= v2)
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v19 = v0[12];
    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_1016C1CB0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[12];
      v24 = v0[13];
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = v2;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v24;

      _os_log_impl(&_mh_execute_header, v21, v22, "Exceeded max number of extensions allowed! Limit: %ld Current: %ld.", v25, 0x16u);

      goto LABEL_19;
    }

    v26 = v0[12];

LABEL_18:

    goto LABEL_19;
  }

  v3 = qword_101695110;
  if (v0[12])
  {
    v4 = v0[12];

    if (v3 != -1)
    {
      swift_once();
      v37 = v0[12];
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016C1CB0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[12];
    if (v8)
    {
      v10 = v0[11];
      v12 = v0[8];
      v11 = v0[9];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136446210;
      v38 = v14;
      WorkItemQueue.WorkItem.id.getter();
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_1000136BC(v15, v17, &v38);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "Found existing task %{public}s. Not scheduling extension.", v13, 0xCu);
      sub_100007BAC(v14);

LABEL_19:
      v32 = 0;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_1016C1CB0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v0[13];
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v28, v29, "Extending FAM with current counter: %ld", v31, 0xCu);
  }

  v32 = 1;
LABEL_20:
  v34 = v0[10];
  v33 = v0[11];

  v35 = v0[1];

  return v35(v32);
}

uint64_t sub_100FB64B4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100FB65DC, 0, 0);
}

uint64_t sub_100FB65DC()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 96) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_100FB66DC;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v1, &type metadata for Configuration);
}

uint64_t sub_100FB66DC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100FB67F4, 0, 0);
}

uint64_t sub_100FB67F4()
{
  v1 = v0[3];
  v0[14] = v0[2];
  return _swift_task_switch(sub_100FB6814, v1, 0);
}

uint64_t sub_100FB6814()
{
  sub_101074E8C(v0[14]);

  v0[15] = static Duration.seconds(_:)();
  v0[16] = v1;

  return _swift_task_switch(sub_100FB6898, 0, 0);
}

uint64_t sub_100FB6898()
{
  v33 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[17] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[18] = v6;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v30 = v0[15];
    v31 = v0[16];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_1000136BC(v13, v15, &v32);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2080;
    v18 = Duration.description.getter();
    v20 = sub_1000136BC(v18, v19, &v32);

    *(v12 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Will extend FAM for %{private,mask.hash}s after %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = v0[11];
    v22 = v0[8];
    v23 = v0[9];

    v16 = *(v23 + 8);
    v16(v21, v22);
  }

  v0[20] = v16;
  v24 = v0[7];
  static Clock<>.continuous.getter();
  v25 = swift_task_alloc();
  v0[21] = v25;
  *v25 = v0;
  v25[1] = sub_100FB6BAC;
  v27 = v0[15];
  v26 = v0[16];
  v28 = v0[7];

  return sub_100D24214(v27, v26, 0, 0, 1);
}

uint64_t sub_100FB6BAC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 176) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_100FB6FCC;
    v8 = 0;
  }

  else
  {
    v8 = *(v2 + 24);
    v7 = sub_100FB6D2C;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100FB6D2C()
{
  v1 = *(v0 + 24);
  sub_100FB719C(*(v0 + 32));

  return _swift_task_switch(sub_100FB6D94, 0, 0);
}

uint64_t sub_100FB6D94()
{
  v22 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  (*(v0 + 144))(*(v0 + 80), *(v0 + 32), *(v0 + 64));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);
  if (v5)
  {
    v20 = *(v0 + 160);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v20(v7, v9);
    v15 = sub_1000136BC(v12, v14, &v21);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Extending FAM for %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    v6(v7, v9);
  }

  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_100FB704C;
  v18 = *(v0 + 24);
  v17 = *(v0 + 32);

  return sub_100FB1A44(v17);
}

uint64_t sub_100FB6FCC()
{
  v1 = v0[22];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100FB704C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v8 = *v0;

  v3 = v1[11];
  v4 = v1[10];
  v5 = v1[7];

  v6 = *(v8 + 8);

  return v6();
}

void sub_100FB719C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C1CB0);
  v44 = v5[2];
  v44(v10, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v43 = v5;
    v15 = v14;
    v41 = swift_slowAlloc();
    v42 = a1;
    v48[0] = v41;
    *v15 = 136446723;
    *(v15 + 4) = sub_1000136BC(0xD000000000000012, 0x8000000101375AC0, v48);
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = v10;
    v20 = v43[1];
    v20(v19, v4);
    v21 = sub_1000136BC(v16, v18, v48);

    *(v15 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s for %{private,mask.hash}s", v15, 0x20u);
    swift_arrayDestroy();
    a1 = v42;
  }

  else
  {

    v22 = v10;
    v20 = v5[1];
    v20(v22, v4);
  }

  swift_beginAccess();
  v23 = *(v2 + 216);
  v24 = v45;
  if (*(v23 + 16))
  {
    v25 = *(v2 + 216);

    v26 = sub_1000210EC(a1);
    if (v27)
    {
      v28 = *(*(v23 + 56) + 16 * v26 + 8);

      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        v31 = *(v2 + 216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = *(v2 + 216);
        *(v2 + 216) = 0x8000000000000000;
        sub_101001EEC(0, v30, a1, isUniquelyReferenced_nonNull_native);
        *(v2 + 216) = v46;
        swift_endAccess();
      }

      return;
    }
  }

  v44(v24, a1, v4);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47 = v36;
    *v35 = 141558275;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v20(v24, v4);
    v40 = sub_1000136BC(v37, v39, &v47);

    *(v35 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "clearTracker: no tracker for %{private,mask.hash}s", v35, 0x16u);
    sub_100007BAC(v36);
  }

  else
  {

    v20(v24, v4);
  }
}

uint64_t sub_100FB76F0(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 104) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  v4 = type metadata accessor for CancellationError();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100FB7828, 0, 0);
}

uint64_t sub_100FB7828()
{
  v58 = v0;
  if ((*(v0 + 104) & 1) == 0)
  {
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 96);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);
    v24 = *(v0 + 32);
    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_1016C1CB0);
    (*(v23 + 16))(v21, v24, v22);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 96);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    if (v26)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v57 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v13 + 8))(v11, v12);
      v30 = sub_1000136BC(v27, v29, &v57);

      *(v14 + 14) = v30;
      v20 = "FAM extension succeeded for %{private,mask.hash}s.";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 24);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    if (qword_101695110 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 32);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016C1CB0);
    (*(v5 + 16))(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v57 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v57);

      *(v14 + 14) = v19;
      v20 = "FAM extension cancelled for %{private,mask.hash}s.";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, v9, v20, v14, 0x16u);
      sub_100007BAC(v15);

      goto LABEL_18;
    }

LABEL_12:

    (*(v13 + 8))(v11, v12);
    goto LABEL_18;
  }

  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 72);
  v31 = *(v0 + 80);
  v33 = *(v0 + 64);
  v35 = *(v0 + 24);
  v34 = *(v0 + 32);
  v36 = type metadata accessor for Logger();
  sub_1000076D4(v36, qword_1016C1CB0);
  (*(v32 + 16))(v31, v34, v33);
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  sub_1000BB584(v35, 1);
  v39 = os_log_type_enabled(v37, v38);
  v41 = *(v0 + 72);
  v40 = *(v0 + 80);
  v42 = *(v0 + 64);
  if (v39)
  {
    v43 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v56;
    *v43 = 141558531;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    (*(v41 + 8))(v40, v42);
    v47 = sub_1000136BC(v44, v46, &v57);

    *(v43 + 14) = v47;
    *(v43 + 22) = 2114;
    swift_errorRetain();
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 24) = v48;
    *v55 = v48;
    _os_log_impl(&_mh_execute_header, v37, v38, "FAM extension failed for %{private,mask.hash}s. Error %{public}@", v43, 0x20u);
    sub_10000B3A8(v55, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v56);
  }

  else
  {

    (*(v41 + 8))(v40, v42);
  }

LABEL_18:
  v50 = *(v0 + 88);
  v49 = *(v0 + 96);
  v51 = *(v0 + 80);
  v52 = *(v0 + 56);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_100FB7EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100FB7EEC, a1, 0);
}

uint64_t sub_100FB7EEC()
{
  v1 = v0[2];
  sub_100FB7F54(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

void sub_100FB7F54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_1016C1CB0);
  v49 = v7[2];
  v50 = v7 + 2;
  v49(v13, a1, v6);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v51 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v48 = v11;
    v19 = v18;
    v47 = swift_slowAlloc();
    v54[0] = v47;
    *v19 = 136446723;
    *(v19 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101375AA0, v54);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v46 = v16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = a2;
    v22 = v3;
    v23 = a1;
    v25 = v24;
    v45 = v15;
    v26 = v51[1];
    v26(v13, v6);
    v27 = sub_1000136BC(v20, v25, v54);
    a1 = v23;
    v3 = v22;
    a2 = v21;

    *(v19 + 24) = v27;
    v28 = v45;
    _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s for %{private,mask.hash}s", v19, 0x20u);
    swift_arrayDestroy();

    v11 = v48;
  }

  else
  {

    v26 = v7[1];
    v26(v13, v6);
  }

  swift_beginAccess();
  v29 = *(v3 + 216);
  if (*(v29 + 16))
  {
    v30 = *(v3 + 216);

    v31 = sub_1000210EC(a1);
    if (v32)
    {
      v33 = *(*(v29 + 56) + 16 * v31 + 8);

      swift_beginAccess();

      v34 = *(v3 + 216);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v3 + 216);
      *(v3 + 216) = 0x8000000000000000;
      sub_101001EEC(a2, v33, a1, isUniquelyReferenced_nonNull_native);
      *(v3 + 216) = v52;
      swift_endAccess();
      return;
    }
  }

  v49(v11, a1, v6);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53 = v39;
    *v38 = 141558275;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v11;
    v43 = v42;
    v26(v41, v6);
    v44 = sub_1000136BC(v40, v43, &v53);

    *(v38 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "addTracker: missing tracker for %{private,mask.hash}s!", v38, 0x16u);
    sub_100007BAC(v39);
  }

  else
  {

    v26(v11, v6);
  }
}

uint64_t sub_100FB84BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v7 = type metadata accessor for UUID();
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v9 = *(v8 + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100FB8588, a1, 0);
}

uint64_t sub_100FB8588()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  XPCSession.identifier.getter();
  swift_beginAccess();
  v7 = v5;
  v8 = *(v6 + 208);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v6 + 208);
  *(v6 + 208) = 0x8000000000000000;
  sub_101001EC4(v7, v1, isUniquelyReferenced_nonNull_native);
  (*(v2 + 8))(v1, v3);
  *(v6 + 208) = v11;
  swift_endAccess();

  return _swift_task_switch(sub_100FB8688, 0, 0);
}

uint64_t sub_100FB8688()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  (*(v0 + 64))(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100FB86FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v37 = *v3;
  v38 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v36 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v32[-v9];
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C1CB0);
  v12 = *(v6 + 16);
  v12(v10, a1, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a1;
    v16 = v15;
    v34 = swift_slowAlloc();
    v41 = v34;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v14;
    v18 = v7;
    v19 = v12;
    v21 = v20;
    (*(v6 + 8))(v10, v5);
    v22 = sub_1000136BC(v17, v21, &v41);
    v12 = v19;
    v7 = v18;

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v33, "Start BT Finding for beacon %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v34);

    a1 = v35;
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  type metadata accessor for Transaction();
  v23 = v36;
  v12(v36, a1, v5);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v24, v23, v5);
  v28 = v38;
  *(v27 + v25) = v39;
  v29 = (v27 + v26);
  v30 = v40;
  *v29 = v28;
  v29[1] = v30;
  *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100FB8ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for LocalFindableAccessoryRecord();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v4[14] = *(v11 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v4[19] = v13;
  *v13 = v4;
  v13[1] = sub_100FB8CA0;

  return daemon.getter();
}

uint64_t sub_100FB8CA0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  *(v3 + 160) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100FC4DB8(&unk_1016AA520, 255, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100FB8E84;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100FB8E84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = a1;

  v7 = v3[20];
  if (v1)
  {

    v8 = swift_task_alloc();
    v4[32] = v8;
    *v8 = v6;
    v8[1] = sub_100FB9960;
    v9 = v4[3];
    v10 = v4[2];

    return sub_100F9FD08(v10);
  }

  else
  {

    return _swift_task_switch(sub_100FB9034, 0, 0);
  }
}

uint64_t sub_100FB9034()
{
  v37 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[23] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[24] = v6;
  v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    log = v7;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v33 = v8;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = v15;
    v6 = v14;
    v20 = sub_1000136BC(v19, v17, &v36);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, log, v33, "Checking if we have LocalFindableRecord for beacon: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v35);
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  v0[26] = v18;
  v21 = v0[22];
  v22 = v0[17];
  v24 = v0[13];
  v23 = v0[14];
  v25 = v0[12];
  v6(v22, v0[2], v25);
  v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v27 = swift_allocObject();
  v0[27] = v27;
  *(v27 + 16) = v21;
  (*(v24 + 32))(v27 + v26, v22, v25);
  v28 = async function pointer to withTimeout<A>(_:block:)[1];

  v29 = swift_task_alloc();
  v0[28] = v29;
  *v29 = v0;
  v29[1] = sub_100FB9390;
  v31 = v0[6];
  v30 = v0[7];

  return withTimeout<A>(_:block:)(v30, 0x8AC7230489E80000, 0, &unk_1013F6240, v27, v31);
}

uint64_t sub_100FB9390()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_100FB9F04;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_100FB94AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100FB94AC()
{
  v24 = v0;
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    v2 = v0[22];

    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v3 = swift_task_alloc();
    v0[32] = v3;
    *v3 = v0;
    v3[1] = sub_100FB9960;
    v4 = v0[2];
    v5 = v0[3];

    return sub_100F9FD08(v4);
  }

  else
  {
    v7 = v0[23];
    v9 = v0[10];
    v8 = v0[11];
    sub_100FC4778(v1, v8, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100FC4840(v8, v9, type metadata accessor for LocalFindableAccessoryRecord);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[10];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = sub_100158AA8(v15);
      v18 = v17;
      sub_100FC47E0(v13, type metadata accessor for LocalFindableAccessoryRecord);
      v19 = sub_1000136BC(v16, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Found LocalFindableRecord: %s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {

      sub_100FC47E0(v13, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v20 = swift_task_alloc();
    v0[30] = v20;
    *v20 = v0;
    v20[1] = sub_100FB9768;
    v21 = v0[11];
    v22 = v0[3];

    return sub_100FAC8DC(v21);
  }
}

uint64_t sub_100FB9768()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100FBA180;
  }

  else
  {
    v3 = sub_100FB987C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100FB987C()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 176);
  v3 = *(v0 + 88);

  sub_100FC47E0(v3, type metadata accessor for LocalFindableAccessoryRecord);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100FB9960()
{
  v2 = *(*v1 + 256);
  v3 = *v1;
  v3[33] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100FBA4D4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[34] = v4;
    *v4 = v3;
    v4[1] = sub_100FB9AD0;
    v5 = v3[3];
    v6 = v3[2];

    return sub_100FA9C48(v6);
  }
}

uint64_t sub_100FB9AD0()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_100FBA5AC;
  }

  else
  {
    v3 = sub_100FB9BE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100FB9BE4()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully started aggressive advertising.", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_100FB9D34;
  v6 = v0[2];
  v7 = v0[3];

  return sub_100FA0E84(v6);
}

uint64_t sub_100FB9D34()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_100FBA684;
  }

  else
  {
    v3 = sub_100FB9E48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100FB9E48()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100FB9F04()
{
  v31 = v0;
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[16];
  v6 = v0[12];
  v7 = v0[2];

  v3(v5, v7, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[29];
  v12 = v0[26];
  v13 = v0[22];
  v14 = v0[16];
  v16 = v0[12];
  v15 = v0[13];
  if (v10)
  {
    v29 = v0[22];
    v28 = v0[26];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v28(v14, v16);
    v22 = sub_1000136BC(v19, v21, &v30);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Timed out looking up LocalFindableRecord for beacon: %{private,mask.hash}s", v17, 0x16u);
    sub_100007BAC(v18);
  }

  else
  {
    v23 = v0[22];

    v12(v14, v16);
  }

  v24 = swift_task_alloc();
  v0[32] = v24;
  *v24 = v0;
  v24[1] = sub_100FB9960;
  v25 = v0[2];
  v26 = v0[3];

  return sub_100F9FD08(v25);
}

uint64_t sub_100FBA180()
{
  v37 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  (*(v0 + 192))(*(v0 + 120), *(v0 + 16), *(v0 + 96));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v34 = *(v0 + 208);
    v35 = *(v0 + 248);
    v6 = *(v0 + 120);
    v7 = *(v0 + 96);
    v33 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v8 = 136446979;
    *(v8 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101375B30, &v36);
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v34(v6, v7);
    v13 = sub_1000136BC(v10, v12, &v36);

    *(v8 + 24) = v13;
    *(v8 + 32) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 34) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed for beacon: %{private,mask.hash}s Error: %{public}@", v8, 0x2Au);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 208);
    v16 = *(v0 + 120);
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);

    v15(v16, v17);
  }

  v19 = *(v0 + 248);
  v21 = *(v0 + 32);
  v20 = *(v0 + 40);
  swift_errorRetain();
  v21(v19);

  v22 = *(v0 + 176);
  v23 = *(v0 + 88);

  sub_100FC47E0(v23, type metadata accessor for LocalFindableAccessoryRecord);
  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  v27 = *(v0 + 120);
  v26 = *(v0 + 128);
  v29 = *(v0 + 80);
  v28 = *(v0 + 88);
  v30 = *(v0 + 56);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100FBA4D4()
{
  v1 = v0[33];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100FBA5AC()
{
  v1 = v0[35];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100FBA684()
{
  v1 = v0[37];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100FBA75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100FBA77C, a2, 0);
}

uint64_t sub_100FBA77C()
{
  v1 = *(v0[3] + 128);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100FC4FB0;
  v3 = v0[4];
  v4 = v0[2];

  return sub_100C57B00(v4, v3);
}

uint64_t sub_100FBA81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v37 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v31[-v11];
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C1CB0);
  v36 = *(v8 + 16);
  v36(v12, a1, v7);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v9;
    v17 = v16;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136446723;
    *(v17 + 4) = sub_1000136BC(0xD000000000000028, 0x8000000101375A10, &v39);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v33 = v14;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v15;
    v19 = a1;
    v20 = v4;
    v21 = a3;
    v23 = v22;
    (*(v8 + 8))(v12, v7);
    v24 = sub_1000136BC(v18, v23, &v39);
    a3 = v21;
    v4 = v20;
    a1 = v19;

    *(v17 + 24) = v24;
    v25 = v33;
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s %{private,mask.hash}s", v17, 0x20u);
    swift_arrayDestroy();

    v9 = v35;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  type metadata accessor for Transaction();
  v26 = v37;
  v36(v37, a1, v7);
  v27 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v4;
  (*(v8 + 32))(v28 + v27, v26, v7);
  v29 = (v28 + ((v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v38;
  v29[1] = a3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100FBAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100FBACB4;

  return sub_100FB12DC(a2);
}

uint64_t sub_100FBACB4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100FC4FB4;
  }

  else
  {
    v3 = sub_100FC4FC0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100FBADC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v37 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v31[-v11];
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C1CB0);
  v36 = *(v8 + 16);
  v36(v12, a1, v7);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v9;
    v17 = v16;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136446723;
    *(v17 + 4) = sub_1000136BC(0xD000000000000027, 0x80000001013759B0, &v39);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v33 = v14;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v15;
    v19 = a1;
    v20 = v4;
    v21 = a3;
    v23 = v22;
    (*(v8 + 8))(v12, v7);
    v24 = sub_1000136BC(v18, v23, &v39);
    a3 = v21;
    v4 = v20;
    a1 = v19;

    *(v17 + 24) = v24;
    v25 = v33;
    _os_log_impl(&_mh_execute_header, v33, v32, "%{public}s %{private,mask.hash}s", v17, 0x20u);
    swift_arrayDestroy();

    v9 = v35;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  type metadata accessor for Transaction();
  v26 = v37;
  v36(v37, a1, v7);
  v27 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v4;
  (*(v8 + 32))(v28 + v27, v26, v7);
  v29 = (v28 + ((v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v38;
  v29[1] = a3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100FBB1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100FBB260;

  return sub_100FA58D8(a2);
}

uint64_t sub_100FBB260()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100FBB3DC;
  }

  else
  {
    v3 = sub_100FBB374;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100FBB374()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100FBB3DC()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100FBB468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v37 = *v3;
  v38 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v36 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v32[-v9];
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C1CB0);
  v12 = *(v6 + 16);
  v12(v10, a1, v5);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = a1;
    v16 = v15;
    v34 = swift_slowAlloc();
    v41 = v34;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v14;
    v18 = v7;
    v19 = v12;
    v21 = v20;
    (*(v6 + 8))(v10, v5);
    v22 = sub_1000136BC(v17, v21, &v41);
    v12 = v19;
    v7 = v18;

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v33, "Stop BT Finding for beacon %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v34);

    a1 = v35;
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  type metadata accessor for Transaction();
  v23 = v36;
  v12(v36, a1, v5);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v6 + 32))(v27 + v24, v23, v5);
  v28 = v38;
  *(v27 + v25) = v39;
  v29 = (v27 + v26);
  v30 = v40;
  *v29 = v28;
  v29[1] = v30;
  *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100FBB848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for LocalFindableAccessoryRecord();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v4[14] = *(v11 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v4[18] = v13;
  *v13 = v4;
  v13[1] = sub_100FBBA00;

  return daemon.getter();
}

uint64_t sub_100FBBA00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v12 = *v1;
  *(v3 + 152) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100FC4DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100FC4DB8(&unk_1016AA520, 255, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100FBBBE4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100FBBBE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = a1;

  v7 = v3[19];
  if (v1)
  {

    v8 = swift_task_alloc();
    v4[30] = v8;
    *v8 = v6;
    v8[1] = sub_100FBC6A0;
    v9 = v4[3];
    v10 = v4[2];

    return sub_100FAAD8C(v10);
  }

  else
  {

    return _swift_task_switch(sub_100FBBD94, 0, 0);
  }
}

uint64_t sub_100FBBD94()
{
  v37 = v0;
  if (qword_101695110 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[22] = sub_1000076D4(v5, qword_1016C1CB0);
  v6 = *(v3 + 16);
  v0[23] = v6;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    log = v7;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v33 = v8;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = v15;
    v6 = v14;
    v20 = sub_1000136BC(v19, v17, &v36);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, log, v33, "Checking if we have LocalFindableRecord for beacon: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v35);
  }

  else
  {

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  v0[25] = v18;
  v21 = v0[21];
  v22 = v0[16];
  v24 = v0[13];
  v23 = v0[14];
  v25 = v0[12];
  v6(v22, v0[2], v25);
  v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v27 = swift_allocObject();
  v0[26] = v27;
  *(v27 + 16) = v21;
  (*(v24 + 32))(v27 + v26, v22, v25);
  v28 = async function pointer to withTimeout<A>(_:block:)[1];

  v29 = swift_task_alloc();
  v0[27] = v29;
  *v29 = v0;
  v29[1] = sub_100FBC0F0;
  v31 = v0[6];
  v30 = v0[7];

  return withTimeout<A>(_:block:)(v30, 0x8AC7230489E80000, 0, &unk_1013F6190, v27, v31);
}

uint64_t sub_100FBC0F0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_100FBCACC;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_100FBC20C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100FBC20C()
{
  v24 = v0;
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    v2 = v0[21];

    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    v3 = swift_task_alloc();
    v0[30] = v3;
    *v3 = v0;
    v3[1] = sub_100FBC6A0;
    v4 = v0[2];
    v5 = v0[3];

    return sub_100FAAD8C(v4);
  }

  else
  {
    v7 = v0[22];
    v9 = v0[10];
    v8 = v0[11];
    sub_100FC4778(v1, v8, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100FC4840(v8, v9, type metadata accessor for LocalFindableAccessoryRecord);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[10];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = sub_100158AA8(v15);
      v18 = v17;
      sub_100FC47E0(v13, type metadata accessor for LocalFindableAccessoryRecord);
      v19 = sub_1000136BC(v16, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Found LocalFindableRecord: %s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    else
    {

      sub_100FC47E0(v13, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v20 = swift_task_alloc();
    v0[29] = v20;
    *v20 = v0;
    v20[1] = sub_100FBC4C4;
    v21 = v0[2];
    v22 = v0[3];

    return sub_100FB25D8(v21);
  }
}

uint64_t sub_100FBC4C4()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_100FBC5C0, 0, 0);
}

uint64_t sub_100FBC5C0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  (*(v0 + 32))(0);

  sub_100FC47E0(v2, type metadata accessor for LocalFindableAccessoryRecord);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 56);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100FBC6A0()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100FBCD48;
  }

  else
  {
    v3 = sub_100FBC7B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100FBC7B4()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully stopped aggressive advertising.", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_100FBC904;
  v6 = v0[2];
  v7 = v0[3];

  return sub_100FA4284(v6);
}

uint64_t sub_100FBC904()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_100FBCE18;
  }

  else
  {
    v3 = sub_100FBCA18;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100FBCA18()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 56);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100FBCACC()
{
  v31 = v0;
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[2];

  v3(v5, v7, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[28];
  v12 = v0[25];
  v13 = v0[21];
  v14 = v0[15];
  v16 = v0[12];
  v15 = v0[13];
  if (v10)
  {
    v29 = v0[21];
    v28 = v0[25];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_100FC4DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v28(v14, v16);
    v22 = sub_1000136BC(v19, v21, &v30);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Timed out looking up LocalFindableRecord for beacon: %{private,mask.hash}s", v17, 0x16u);
    sub_100007BAC(v18);
  }

  else
  {
    v23 = v0[21];

    v12(v14, v16);
  }

  v24 = swift_task_alloc();
  v0[30] = v24;
  *v24 = v0;
  v24[1] = sub_100FBC6A0;
  v25 = v0[2];
  v26 = v0[3];

  return sub_100FAAD8C(v25);
}

uint64_t sub_100FBCD48()
{
  v1 = v0[31];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100FBCE18()
{
  v1 = v0[33];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100FBCEE8(void *a1, int64_t a2)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    v4 = v3;
    v3 = swift_allocObject();
    v3[2] = v4;
    v78 = sub_100FC4FB8;
  }

  else
  {
    v78 = 0;
  }

  v76 = v3;
  swift_beginAccess();
  v77 = a2;
  v5 = *(a2 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
    sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
    Set.Iterator.init(_cocoa:)();
    v7 = v92;
    v6 = v93;
    v8 = v94;
    v9 = v95;
    v10 = v96;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
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

    v10 = v13 & *(v5 + 56);
    v7 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (!v10)
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_22;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_33:
    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177C668);
    swift_retain_n();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v97 = v51;
      *v50 = 136446722;
      aBlock = 60;
      v86 = 0xE100000000000000;
      v91 = v17;
      v83 = v14;
      sub_1000BC4D4(&qword_1016BC548, &qword_1013F6320);
      sub_1000041A4(&unk_1016BC550, &qword_1016BC548, &qword_1013F6320);
      v52._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v52);

      v53._countAndFlagsBits = 8250;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v17 = v77;
      v54._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v54);

      v55._countAndFlagsBits = 62;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
      v56 = sub_1000136BC(aBlock, v86, &v97);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v83;
      *(v50 + 22) = 2048;
      v57 = *(v77 + 32);
      if ((v57 & 0xC000000000000001) != 0)
      {
        if (v57 < 0)
        {
          v58 = *(v77 + 32);
        }

        v59 = *(v77 + 32);

        v60 = __CocoaSet.count.getter();
      }

      else
      {
        v60 = *(v57 + 16);
      }

      *(v50 + 24) = v60;

      _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s: Session count: %ld -> %ld", v50, 0x20u);
      sub_100007BAC(v51);
    }

    else
    {
    }

    v72 = *(v17 + 32);
    if ((v72 & 0xC000000000000001) != 0)
    {
      if (v72 < 0)
      {
        v73 = *(v17 + 32);
      }

      v74 = *(v17 + 32);

      __CocoaSet.count.getter();
    }

    sub_1000BB27C(v78);
    return v10;
  }

LABEL_15:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

  if (v19)
  {
    while (1)
    {
      sub_1000128AC();
      v21 = v19;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v20 = __CocoaSet.Iterator.next()();
      if (v20)
      {
        v97 = v20;
        sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
        swift_dynamicCast();
        v19 = aBlock;
        v17 = v9;
        v18 = v10;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8();

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177C668);
    v62 = a1;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v97 = v84;
      *v65 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&qword_1016BC548, &qword_1013F6320);
      sub_1000041A4(&unk_1016BC550, &qword_1016BC548, &qword_1013F6320);
      v66._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v66);

      v67._countAndFlagsBits = 8250;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);
      v68._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v68);

      v69._countAndFlagsBits = 62;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);

      v70 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2112;
      *(v65 + 14) = v62;
      *v80 = v62;
      v71 = v62;
      _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s: Already have a session for %@", v65, 0x16u);
      sub_10000B3A8(v80, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v84);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return v21;
  }

  else
  {
LABEL_22:
    sub_1000128F8();

    v24 = sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = a1;
    v28 = XPCSession.init(connection:)();
    v17 = v77;
    if (v28)
    {
      v10 = v28;
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = v27;
      v30[4] = v78;
      v30[5] = v76;
      v89 = sub_100FC4CDC;
      v90 = v30;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v87 = sub_100006684;
      v88 = &unk_10165E320;
      v31 = _Block_copy(&aBlock);
      v32 = v27;
      sub_100012908(v78);

      [v32 setInvalidationHandler:v31];
      _Block_release(v31);
      v33 = *(v77 + 32);
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 < 0)
        {
          v34 = *(v77 + 32);
        }

        v35 = *(v77 + 32);

        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *(v33 + 16);
      }

      swift_beginAccess();

      sub_100DE8EAC(&v97, v10);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_56;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C668);
    v37 = v27;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v97 = v82;
      *v40 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&qword_1016BC548, &qword_1013F6320);
      sub_1000041A4(&unk_1016BC550, &qword_1016BC548, &qword_1013F6320);
      v41._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 8250;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v43._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 62;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);

      v45 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v79 = v37;
      v46 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s: Failed to make XPCSession from %@", v40, 0x16u);
      sub_10000B3A8(v79, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v82);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return 0;
  }
}

uint64_t sub_100FBDAFC(void *a1, int64_t a2)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    v4 = v3;
    v3 = swift_allocObject();
    v3[2] = v4;
    v78 = sub_100FC4FB8;
  }

  else
  {
    v78 = 0;
  }

  v76 = v3;
  swift_beginAccess();
  v77 = a2;
  v5 = *(a2 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
    sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
    Set.Iterator.init(_cocoa:)();
    v7 = v92;
    v6 = v93;
    v8 = v94;
    v9 = v95;
    v10 = v96;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
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

    v10 = v13 & *(v5 + 56);
    v7 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (!v10)
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_22;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_33:
    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177C668);
    swift_retain_n();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v97 = v51;
      *v50 = 136446722;
      aBlock = 60;
      v86 = 0xE100000000000000;
      v91 = v17;
      v83 = v14;
      sub_1000BC4D4(&qword_1016BC578, &unk_1013EA760);
      sub_1000041A4(&qword_1016BC580, &qword_1016BC578, &unk_1013EA760);
      v52._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v52);

      v53._countAndFlagsBits = 8250;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v17 = v77;
      v54._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v54);

      v55._countAndFlagsBits = 62;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
      v56 = sub_1000136BC(aBlock, v86, &v97);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v83;
      *(v50 + 22) = 2048;
      v57 = *(v77 + 32);
      if ((v57 & 0xC000000000000001) != 0)
      {
        if (v57 < 0)
        {
          v58 = *(v77 + 32);
        }

        v59 = *(v77 + 32);

        v60 = __CocoaSet.count.getter();
      }

      else
      {
        v60 = *(v57 + 16);
      }

      *(v50 + 24) = v60;

      _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s: Session count: %ld -> %ld", v50, 0x20u);
      sub_100007BAC(v51);
    }

    else
    {
    }

    v72 = *(v17 + 32);
    if ((v72 & 0xC000000000000001) != 0)
    {
      if (v72 < 0)
      {
        v73 = *(v17 + 32);
      }

      v74 = *(v17 + 32);

      __CocoaSet.count.getter();
    }

    sub_1000BB27C(v78);
    return v10;
  }

LABEL_15:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

  if (v19)
  {
    while (1)
    {
      sub_1000128AC();
      v21 = v19;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v20 = __CocoaSet.Iterator.next()();
      if (v20)
      {
        v97 = v20;
        sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
        swift_dynamicCast();
        v19 = aBlock;
        v17 = v9;
        v18 = v10;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8();

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177C668);
    v62 = a1;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v97 = v84;
      *v65 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&qword_1016BC578, &unk_1013EA760);
      sub_1000041A4(&qword_1016BC580, &qword_1016BC578, &unk_1013EA760);
      v66._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v66);

      v67._countAndFlagsBits = 8250;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);
      v68._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v68);

      v69._countAndFlagsBits = 62;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);

      v70 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2112;
      *(v65 + 14) = v62;
      *v80 = v62;
      v71 = v62;
      _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s: Already have a session for %@", v65, 0x16u);
      sub_10000B3A8(v80, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v84);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return v21;
  }

  else
  {
LABEL_22:
    sub_1000128F8();

    v24 = sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = a1;
    v28 = XPCSession.init(connection:)();
    v17 = v77;
    if (v28)
    {
      v10 = v28;
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = v27;
      v30[4] = v78;
      v30[5] = v76;
      v89 = sub_100FC4DAC;
      v90 = v30;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v87 = sub_100006684;
      v88 = &unk_10165E550;
      v31 = _Block_copy(&aBlock);
      v32 = v27;
      sub_100012908(v78);

      [v32 setInvalidationHandler:v31];
      _Block_release(v31);
      v33 = *(v77 + 32);
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 < 0)
        {
          v34 = *(v77 + 32);
        }

        v35 = *(v77 + 32);

        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *(v33 + 16);
      }

      swift_beginAccess();

      sub_100DEAA7C(&v97, v10);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_56;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C668);
    v37 = v27;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v97 = v82;
      *v40 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&qword_1016BC578, &unk_1013EA760);
      sub_1000041A4(&qword_1016BC580, &qword_1016BC578, &unk_1013EA760);
      v41._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 8250;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v43._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 62;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);

      v45 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v79 = v37;
      v46 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s: Failed to make XPCSession from %@", v40, 0x16u);
      sub_10000B3A8(v79, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v82);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return 0;
  }
}

uint64_t sub_100FBE710(void *a1, int64_t a2)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    v4 = v3;
    v3 = swift_allocObject();
    v3[2] = v4;
    v78 = sub_100FC4FB8;
  }

  else
  {
    v78 = 0;
  }

  v76 = v3;
  swift_beginAccess();
  v77 = a2;
  v5 = *(a2 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
    sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
    Set.Iterator.init(_cocoa:)();
    v7 = v92;
    v6 = v93;
    v8 = v94;
    v9 = v95;
    v10 = v96;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
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

    v10 = v13 & *(v5 + 56);
    v7 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (!v10)
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_22;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_33:
    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177C668);
    swift_retain_n();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v97 = v51;
      *v50 = 136446722;
      aBlock = 60;
      v86 = 0xE100000000000000;
      v91 = v17;
      v83 = v14;
      sub_1000BC4D4(&unk_1016C2200, &unk_1013EA6C0);
      sub_1000041A4(&unk_1016BC530, &unk_1016C2200, &unk_1013EA6C0);
      v52._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v52);

      v53._countAndFlagsBits = 8250;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v17 = v77;
      v54._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v54);

      v55._countAndFlagsBits = 62;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
      v56 = sub_1000136BC(aBlock, v86, &v97);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v83;
      *(v50 + 22) = 2048;
      v57 = *(v77 + 32);
      if ((v57 & 0xC000000000000001) != 0)
      {
        if (v57 < 0)
        {
          v58 = *(v77 + 32);
        }

        v59 = *(v77 + 32);

        v60 = __CocoaSet.count.getter();
      }

      else
      {
        v60 = *(v57 + 16);
      }

      *(v50 + 24) = v60;

      _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s: Session count: %ld -> %ld", v50, 0x20u);
      sub_100007BAC(v51);
    }

    else
    {
    }

    v72 = *(v17 + 32);
    if ((v72 & 0xC000000000000001) != 0)
    {
      if (v72 < 0)
      {
        v73 = *(v17 + 32);
      }

      v74 = *(v17 + 32);

      __CocoaSet.count.getter();
    }

    sub_1000BB27C(v78);
    return v10;
  }

LABEL_15:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

  if (v19)
  {
    while (1)
    {
      sub_1000128AC();
      v21 = v19;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v20 = __CocoaSet.Iterator.next()();
      if (v20)
      {
        v97 = v20;
        sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
        swift_dynamicCast();
        v19 = aBlock;
        v17 = v9;
        v18 = v10;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8();

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177C668);
    v62 = a1;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v97 = v84;
      *v65 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&unk_1016C2200, &unk_1013EA6C0);
      sub_1000041A4(&unk_1016BC530, &unk_1016C2200, &unk_1013EA6C0);
      v66._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v66);

      v67._countAndFlagsBits = 8250;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);
      v68._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v68);

      v69._countAndFlagsBits = 62;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);

      v70 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2112;
      *(v65 + 14) = v62;
      *v80 = v62;
      v71 = v62;
      _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s: Already have a session for %@", v65, 0x16u);
      sub_10000B3A8(v80, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v84);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return v21;
  }

  else
  {
LABEL_22:
    sub_1000128F8();

    v24 = sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = a1;
    v28 = XPCSession.init(connection:)();
    v17 = v77;
    if (v28)
    {
      v10 = v28;
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = v27;
      v30[4] = v78;
      v30[5] = v76;
      v89 = sub_100FC4C9C;
      v90 = v30;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v87 = sub_100006684;
      v88 = &unk_10165E208;
      v31 = _Block_copy(&aBlock);
      v32 = v27;
      sub_100012908(v78);

      [v32 setInvalidationHandler:v31];
      _Block_release(v31);
      v33 = *(v77 + 32);
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 < 0)
        {
          v34 = *(v77 + 32);
        }

        v35 = *(v77 + 32);

        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *(v33 + 16);
      }

      swift_beginAccess();

      sub_100DEE2AC(&v97, v10);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_56;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C668);
    v37 = v27;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v97 = v82;
      *v40 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&unk_1016C2200, &unk_1013EA6C0);
      sub_1000041A4(&unk_1016BC530, &unk_1016C2200, &unk_1013EA6C0);
      v41._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 8250;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v43._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 62;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);

      v45 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v79 = v37;
      v46 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s: Failed to make XPCSession from %@", v40, 0x16u);
      sub_10000B3A8(v79, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v82);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return 0;
  }
}

uint64_t sub_100FBF324(void *a1, int64_t a2)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    v4 = v3;
    v3 = swift_allocObject();
    v3[2] = v4;
    v78 = sub_100FC4FB8;
  }

  else
  {
    v78 = 0;
  }

  v76 = v3;
  swift_beginAccess();
  v77 = a2;
  v5 = *(a2 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
    sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
    Set.Iterator.init(_cocoa:)();
    v7 = v92;
    v6 = v93;
    v8 = v94;
    v9 = v95;
    v10 = v96;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
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

    v10 = v13 & *(v5 + 56);
    v7 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (!v10)
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_22;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_33:
    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177C668);
    swift_retain_n();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v97 = v51;
      *v50 = 136446722;
      aBlock = 60;
      v86 = 0xE100000000000000;
      v91 = v17;
      v83 = v14;
      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690);
      v52._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v52);

      v53._countAndFlagsBits = 8250;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v17 = v77;
      v54._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v54);

      v55._countAndFlagsBits = 62;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
      v56 = sub_1000136BC(aBlock, v86, &v97);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v83;
      *(v50 + 22) = 2048;
      v57 = *(v77 + 32);
      if ((v57 & 0xC000000000000001) != 0)
      {
        if (v57 < 0)
        {
          v58 = *(v77 + 32);
        }

        v59 = *(v77 + 32);

        v60 = __CocoaSet.count.getter();
      }

      else
      {
        v60 = *(v57 + 16);
      }

      *(v50 + 24) = v60;

      _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s: Session count: %ld -> %ld", v50, 0x20u);
      sub_100007BAC(v51);
    }

    else
    {
    }

    v72 = *(v17 + 32);
    if ((v72 & 0xC000000000000001) != 0)
    {
      if (v72 < 0)
      {
        v73 = *(v17 + 32);
      }

      v74 = *(v17 + 32);

      __CocoaSet.count.getter();
    }

    sub_1000BB27C(v78);
    return v10;
  }

LABEL_15:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

  if (v19)
  {
    while (1)
    {
      sub_1000128AC();
      v21 = v19;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v20 = __CocoaSet.Iterator.next()();
      if (v20)
      {
        v97 = v20;
        sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
        swift_dynamicCast();
        v19 = aBlock;
        v17 = v9;
        v18 = v10;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8();

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177C668);
    v62 = a1;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v97 = v84;
      *v65 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690);
      v66._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v66);

      v67._countAndFlagsBits = 8250;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);
      v68._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v68);

      v69._countAndFlagsBits = 62;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);

      v70 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2112;
      *(v65 + 14) = v62;
      *v80 = v62;
      v71 = v62;
      _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s: Already have a session for %@", v65, 0x16u);
      sub_10000B3A8(v80, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v84);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return v21;
  }

  else
  {
LABEL_22:
    sub_1000128F8();

    v24 = sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = a1;
    v28 = XPCSession.init(connection:)();
    v17 = v77;
    if (v28)
    {
      v10 = v28;
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = v27;
      v30[4] = v78;
      v30[5] = v76;
      v89 = sub_100FC4C50;
      v90 = v30;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v87 = sub_100006684;
      v88 = &unk_10165DFD8;
      v31 = _Block_copy(&aBlock);
      v32 = v27;
      sub_100012908(v78);

      [v32 setInvalidationHandler:v31];
      _Block_release(v31);
      v33 = *(v77 + 32);
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 < 0)
        {
          v34 = *(v77 + 32);
        }

        v35 = *(v77 + 32);

        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *(v33 + 16);
      }

      swift_beginAccess();

      sub_100DF1258(&v97, v10);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_56;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C668);
    v37 = v27;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v97 = v82;
      *v40 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690);
      v41._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 8250;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v43._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 62;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);

      v45 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v79 = v37;
      v46 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s: Failed to make XPCSession from %@", v40, 0x16u);
      sub_10000B3A8(v79, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v82);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return 0;
  }
}

uint64_t sub_100FBFF38(void *a1, int64_t a2)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    v4 = v3;
    v3 = swift_allocObject();
    v3[2] = v4;
    v78 = sub_100FC4FB8;
  }

  else
  {
    v78 = 0;
  }

  v76 = v3;
  swift_beginAccess();
  v77 = a2;
  v5 = *(a2 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420);
    Set.Iterator.init(_cocoa:)();
    v7 = v92;
    v6 = v93;
    v8 = v94;
    v9 = v95;
    v10 = v96;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
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

    v10 = v13 & *(v5 + 56);
    v7 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (!v10)
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_22;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_33:
    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177C668);
    swift_retain_n();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v97 = v51;
      *v50 = 136446722;
      aBlock = 60;
      v86 = 0xE100000000000000;
      v91 = v17;
      v83 = v14;
      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670);
      v52._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v52);

      v53._countAndFlagsBits = 8250;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v17 = v77;
      v54._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v54);

      v55._countAndFlagsBits = 62;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
      v56 = sub_1000136BC(aBlock, v86, &v97);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v83;
      *(v50 + 22) = 2048;
      v57 = *(v77 + 32);
      if ((v57 & 0xC000000000000001) != 0)
      {
        if (v57 < 0)
        {
          v58 = *(v77 + 32);
        }

        v59 = *(v77 + 32);

        v60 = __CocoaSet.count.getter();
      }

      else
      {
        v60 = *(v57 + 16);
      }

      *(v50 + 24) = v60;

      _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s: Session count: %ld -> %ld", v50, 0x20u);
      sub_100007BAC(v51);
    }

    else
    {
    }

    v72 = *(v17 + 32);
    if ((v72 & 0xC000000000000001) != 0)
    {
      if (v72 < 0)
      {
        v73 = *(v17 + 32);
      }

      v74 = *(v17 + 32);

      __CocoaSet.count.getter();
    }

    sub_1000BB27C(v78);
    return v10;
  }

LABEL_15:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

  if (v19)
  {
    while (1)
    {
      sub_1000128AC();
      v21 = v19;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v20 = __CocoaSet.Iterator.next()();
      if (v20)
      {
        v97 = v20;
        sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
        swift_dynamicCast();
        v19 = aBlock;
        v17 = v9;
        v18 = v10;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8();

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177C668);
    v62 = a1;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v97 = v84;
      *v65 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670);
      v66._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v66);

      v67._countAndFlagsBits = 8250;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);
      v68._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v68);

      v69._countAndFlagsBits = 62;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);

      v70 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2112;
      *(v65 + 14) = v62;
      *v80 = v62;
      v71 = v62;
      _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s: Already have a session for %@", v65, 0x16u);
      sub_10000B3A8(v80, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v84);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return v21;
  }

  else
  {
LABEL_22:
    sub_1000128F8();

    v24 = sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = a1;
    v28 = XPCSession.init(connection:)();
    v17 = v77;
    if (v28)
    {
      v10 = v28;
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = v27;
      v30[4] = v78;
      v30[5] = v76;
      v89 = sub_100FC4D1C;
      v90 = v30;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v87 = sub_100006684;
      v88 = &unk_10165E438;
      v31 = _Block_copy(&aBlock);
      v32 = v27;
      sub_100012908(v78);

      [v32 setInvalidationHandler:v31];
      _Block_release(v31);
      v33 = *(v77 + 32);
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 < 0)
        {
          v34 = *(v77 + 32);
        }

        v35 = *(v77 + 32);

        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *(v33 + 16);
      }

      swift_beginAccess();

      sub_100DF1848(&v97, v10);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_56;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C668);
    v37 = v27;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v97 = v82;
      *v40 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670);
      v41._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 8250;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v43._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 62;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);

      v45 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v79 = v37;
      v46 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s: Failed to make XPCSession from %@", v40, 0x16u);
      sub_10000B3A8(v79, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v82);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return 0;
  }
}

uint64_t sub_100FC0B4C(void *a1, int64_t a2)
{
  v3 = [a1 invalidationHandler];
  if (v3)
  {
    v4 = v3;
    v3 = swift_allocObject();
    v3[2] = v4;
    v78 = sub_100FC377C;
  }

  else
  {
    v78 = 0;
  }

  v76 = v3;
  swift_beginAccess();
  v77 = a2;
  v5 = *(a2 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
    sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
    Set.Iterator.init(_cocoa:)();
    v7 = v92;
    v6 = v93;
    v8 = v94;
    v9 = v95;
    v10 = v96;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
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

    v10 = v13 & *(v5 + 56);
    v7 = *(a2 + 32);
    swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (!v10)
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_22;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_33:
    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177C668);
    swift_retain_n();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v97 = v51;
      *v50 = 136446722;
      aBlock = 60;
      v86 = 0xE100000000000000;
      v91 = v17;
      v83 = v14;
      sub_1000BC4D4(&qword_1016BC4C8, &qword_1013F6160);
      sub_1000041A4(&unk_1016BC4D0, &qword_1016BC4C8, &qword_1013F6160);
      v52._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v52);

      v53._countAndFlagsBits = 8250;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      v17 = v77;
      v54._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v54);

      v55._countAndFlagsBits = 62;
      v55._object = 0xE100000000000000;
      String.append(_:)(v55);
      v56 = sub_1000136BC(aBlock, v86, &v97);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v83;
      *(v50 + 22) = 2048;
      v57 = *(v77 + 32);
      if ((v57 & 0xC000000000000001) != 0)
      {
        if (v57 < 0)
        {
          v58 = *(v77 + 32);
        }

        v59 = *(v77 + 32);

        v60 = __CocoaSet.count.getter();
      }

      else
      {
        v60 = *(v57 + 16);
      }

      *(v50 + 24) = v60;

      _os_log_impl(&_mh_execute_header, v48, v49, "%{public}s: Session count: %ld -> %ld", v50, 0x20u);
      sub_100007BAC(v51);
    }

    else
    {
    }

    v72 = *(v17 + 32);
    if ((v72 & 0xC000000000000001) != 0)
    {
      if (v72 < 0)
      {
        v73 = *(v17 + 32);
      }

      v74 = *(v17 + 32);

      __CocoaSet.count.getter();
    }

    sub_1000BB27C(v78);
    return v10;
  }

LABEL_15:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

  if (v19)
  {
    while (1)
    {
      sub_1000128AC();
      v21 = v19;
      v22 = XPCSession.connection.getter();
      v23 = static NSObject.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v20 = __CocoaSet.Iterator.next()();
      if (v20)
      {
        v97 = v20;
        sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
        swift_dynamicCast();
        v19 = aBlock;
        v17 = v9;
        v18 = v10;
        if (aBlock)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    sub_1000128F8();

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177C668);
    v62 = a1;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v97 = v84;
      *v65 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&qword_1016BC4C8, &qword_1013F6160);
      sub_1000041A4(&unk_1016BC4D0, &qword_1016BC4C8, &qword_1013F6160);
      v66._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v66);

      v67._countAndFlagsBits = 8250;
      v67._object = 0xE200000000000000;
      String.append(_:)(v67);
      v68._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v68);

      v69._countAndFlagsBits = 62;
      v69._object = 0xE100000000000000;
      String.append(_:)(v69);

      v70 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2112;
      *(v65 + 14) = v62;
      *v80 = v62;
      v71 = v62;
      _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s: Already have a session for %@", v65, 0x16u);
      sub_10000B3A8(v80, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v84);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return v21;
  }

  else
  {
LABEL_22:
    sub_1000128F8();

    v24 = sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v27 = a1;
    v28 = XPCSession.init(connection:)();
    v17 = v77;
    if (v28)
    {
      v10 = v28;
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = v27;
      v30[4] = v78;
      v30[5] = v76;
      v89 = sub_100FC3770;
      v90 = v30;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v87 = sub_100006684;
      v88 = &unk_10165DB78;
      v31 = _Block_copy(&aBlock);
      v32 = v27;
      sub_100012908(v78);

      [v32 setInvalidationHandler:v31];
      _Block_release(v31);
      v33 = *(v77 + 32);
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 < 0)
        {
          v34 = *(v77 + 32);
        }

        v35 = *(v77 + 32);

        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *(v33 + 16);
      }

      swift_beginAccess();

      sub_100DF1EF0(&v97, v10);
      swift_endAccess();

      if (qword_101695258 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_56;
    }

    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C668);
    v37 = v27;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v97 = v82;
      *v40 = 136446466;
      v91 = v77;
      sub_1000BC4D4(&qword_1016BC4C8, &qword_1013F6160);
      sub_1000041A4(&unk_1016BC4D0, &qword_1016BC4C8, &qword_1013F6160);
      v41._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 8250;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v43._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 62;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);

      v45 = sub_1000136BC(60, 0xE100000000000000, &v97);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v79 = v37;
      v46 = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s: Failed to make XPCSession from %@", v40, 0x16u);
      sub_10000B3A8(v79, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v82);

      sub_1000BB27C(v78);
    }

    else
    {
      sub_1000BB27C(v78);
    }

    return 0;
  }
}

uint64_t sub_100FC1760(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&qword_1016BC548, &qword_1013F6320);
      sub_1000041A4(&unk_1016BC550, &qword_1016BC548, &qword_1013F6320);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100FC4CE8;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E3C0;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC1B1C(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&qword_1016BC578, &unk_1013EA760);
      sub_1000041A4(&qword_1016BC580, &qword_1016BC578, &unk_1013EA760);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1001BCDB8;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E5F0;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC1ED8(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&unk_1016C2200, &unk_1013EA6C0);
      sub_1000041A4(&unk_1016BC530, &unk_1016C2200, &unk_1013EA6C0);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100FC4CA8;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E2A8;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC2294(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&qword_1016BC508, &qword_1013F62F0);
      sub_1000041A4(&unk_1016BC510, &qword_1016BC508, &qword_1013F62F0);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100FC4C68;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E190;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC2650(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&qword_1016C05A0, &unk_1013EA690);
      sub_1000041A4(&unk_1016BC4F0, &qword_1016C05A0, &unk_1013EA690);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100F04BC8;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E078;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC2A0C(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&unk_1016C2220, &unk_1013EA670);
      sub_1000041A4(&unk_1016BC4B0, &unk_1016C2220, &unk_1013EA670);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100FC4D28;
    *(v18 + 24) = v17;
    v27 = sub_10040B9F8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165E4D8;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC2DC8(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101695258 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C668);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136446210;
      v22 = v21;
      aBlock = 60;
      v24 = 0xE100000000000000;

      sub_1000BC4D4(&qword_1016BC4C8, &qword_1013F6160);
      sub_1000041A4(&unk_1016BC4D0, &qword_1016BC4C8, &qword_1013F6160);
      v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v15 = sub_1000136BC(60, 0xE100000000000000, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: Invalidation handler fired.", v10, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    v16 = *(v6 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100FC378C;
    *(v18 + 24) = v17;
    v27 = sub_1000D2FB0;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10013FE14;
    v26 = &unk_10165DC18;
    v19 = _Block_copy(&aBlock);

    v20 = a2;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        a3(result);
      }
    }
  }

  return result;
}

uint64_t sub_100FC319C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100FA1424(a1, v4, v5, v6);
}

uint64_t sub_100FC3254(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_opt_self();
  _Block_copy(a3);
  v8 = [v7 currentConnection];
  if (v8)
  {
    v9 = v8;
    v10 = *(a2 + 160);
    v11 = sub_100F9D6A4(v8);
    if (v11)
    {
      v12 = v11;
      type metadata accessor for Transaction();
      v13 = swift_allocObject();
      v13[2] = a2;
      v13[3] = a1;
      v13[4] = v12;
      v13[5] = sub_10001E370;
      v13[6] = v6;

      v14 = a1;

      static Transaction.asyncTask(name:block:)();
    }
  }

  if (qword_101695108 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C468);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unable to add current XPC connection to the pool!", v19, 2u);
  }

  type metadata accessor for SPBTFindingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100FC4DB8(&unk_1016C2170, 255, type metadata accessor for SPBTFindingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v20 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v20);
}

uint64_t sub_100FC352C()
{
  sub_100FC3634();
  v0 = NSXPCConnection.hasEntitlement<A>(_:)();
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
    *v4 = 67109120;
    *(v4 + 4) = v0 & 1;
    _os_log_impl(&_mh_execute_header, v2, v3, "BTFindingService: Received new XPC connection (has entitlement: %{BOOL}d).", v4, 8u);
  }

  return v0 & 1;
}

unint64_t sub_100FC3634()
{
  result = qword_1016C2190;
  if (!qword_1016C2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C2190);
  }

  return result;
}

uint64_t sub_100FC3688()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_100FB84BC(v2, v3, v4, v5, v6);
}

uint64_t sub_100FC3794()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + v5 + 8);
  v9 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100FBB848(v0 + v3, v6, v7, v8);
}

uint64_t sub_100FC38C8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1006A86FC(a1, v6, v1 + v5);
}

uint64_t sub_100FC39AC()
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

  return sub_100FBB1C0(v4, v0 + v3, v6, v7);
}

uint64_t sub_100FC3AC4()
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

  return sub_100FBAC14(v4, v0 + v3, v6, v7);
}

uint64_t sub_100FC3BDC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100FB5234(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100FC3D0C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100FB64B4(v4, v0 + v3);
}

uint64_t sub_100FC3E14(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014744;

  return sub_100FB76F0(a1, a2 & 1, v2 + v7);
}

uint64_t sub_100FC3F2C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100FB7EC4(v4, v0 + v3, v5);
}

uint64_t sub_100FC4034()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100FC40F4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + v5 + 8);
  v9 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_100FB8ADC(v0 + v3, v6, v7, v8);
}

uint64_t sub_100FC4228(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100FBA75C(a1, v6, v1 + v5);
}

uint64_t sub_100FC430C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100014650;

  return sub_100FAD1BC(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_100FC449C()
{
  result = qword_1016C21A8;
  if (!qword_1016C21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C21A8);
  }

  return result;
}

uint64_t sub_100FC44F0(uint64_t a1)
{
  v4 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100FAD88C(a1, v6, v1 + v5);
}

uint64_t sub_100FC45D4(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100FAFAC0(a1, v6, v1 + v5);
}

uint64_t sub_100FC46B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100FB2D00(a1, v4, v5, v7);
}

uint64_t sub_100FC4778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100FC47E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100FC4840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100FC48A8()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10073ACF0;

  return sub_100FB41F8(v4, v0 + v3);
}

uint64_t sub_100FC49B0()
{
  v2 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1001BBA4C;

  return sub_100FB39E0(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100FC4B1C()
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10073ACF0;

  return sub_100FB36CC(v4, v0 + v3);
}

uint64_t sub_100FC4D5C()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100FC4DB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100FC4E08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100F9F028();
}

unint64_t sub_100FC4E98(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

unint64_t sub_100FC4ED4()
{
  result = qword_1016C2270;
  if (!qword_1016C2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C2270);
  }

  return result;
}

unint64_t sub_100FC4F2C()
{
  result = qword_1016C2278;
  if (!qword_1016C2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C2278);
  }

  return result;
}

uint64_t type metadata accessor for RoleCategoriesEndpoint()
{
  result = qword_1016C22D8;
  if (!qword_1016C22D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100FC506C()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0x73656C6F722FLL;
  v3._object = 0xE600000000000000;
  String.append(_:)(v3);
  return v2(&v5, 0);
}

uint64_t type metadata accessor for AirPodsPairingLockCheckResponse()
{
  result = qword_1016C2368;
  if (!qword_1016C2368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100FC51E4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1003955F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100FC5294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for UUID();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016C23C0, &qword_1013F65E8);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  __chkstk_darwin(v8);
  v11 = v29 - v10;
  v12 = type metadata accessor for AirPodsPairingLockCheckResponse();
  v13 = *(*(v12 - 1) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16[*(v14 + 48)] = 0;
  v17 = a1[3];
  v18 = a1[4];
  v36 = a1;
  sub_1000035D0(a1, v17);
  sub_100FC5BC4();
  v35 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v36);
  }

  v19 = v7;
  v20 = v33;
  v21 = v16;
  v38 = 0;
  v22 = sub_1000E307C();
  v23 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = *(&v37 + 1);
  v29[2] = *(&v37 + 1);
  v30 = v37;
  *v21 = v37;
  *(v21 + 8) = v24;
  v38 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v21 + 16) = v37;
  v38 = 2;
  v29[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v21 + 32) = v37;
  v38 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v21 + 48) = v37;
  v38 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v22;
  *(v21 + 64) = v37;
  LOBYTE(v37) = 5;
  sub_100395BEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v32 + 32))(v21 + v12[9], v19, v4);
  LOBYTE(v37) = 6;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = (v21 + v12[10]);
  *v26 = v25;
  v26[1] = v27;
  v38 = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v20 + 8))(v35, v23);
  *(v21 + v12[11]) = v37;
  sub_100FC5C18(v21, v31);
  sub_100007BAC(v36);
  return sub_100FC5C7C(v21);
}