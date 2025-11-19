uint64_t sub_10004B168()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  v8 = *(v0 + 240);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = *(v0 + 192);
  v14 = *(v0 + 81);

  v15 = *(v0 + 8);

  return v15(v7, v6, v14);
}

uint64_t sub_10004B25C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 488);
  v6 = *(v0 + 496);
  v7 = *(v0 + 240);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 192);
  v13 = *(v0 + 82);

  v14 = *(v0 + 8);

  return v14(v6, v5, v13);
}

uint64_t sub_10004B348()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 384);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 176);

  v2(v4, v6);
  v2(v5, v6);
  v7 = *(v0 + 504);
  v8 = *(v0 + 448);
  v9 = *(v0 + 240);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  v14 = *(v0 + 192);
  v15 = *(v0 + 83);

  v16 = *(v0 + 8);

  return v16(v8, v7, v15);
}

BOOL sub_10004B43C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for UUID() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_100052E88(&qword_100086A80, &type metadata accessor for UUID);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_10004B548(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 64) = a3;
  *(v4 + 56) = a4;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  v5 = type metadata accessor for ContinuousClock();
  *(v4 + 72) = v5;
  v6 = *(v5 - 8);
  *(v4 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  *(v4 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10004B66C, 0, 0);
}

uint64_t sub_10004B66C()
{
  v26 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[6];
  v5 = sub_10003E6D8();
  (*(v2 + 16))(v1, v5, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[7];
    v14 = v0[5];
    v13 = v0[6];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 134218242;
    *(v15 + 4) = v12;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10000728C(v14, v13, &v25);
    _os_log_impl(&_mh_execute_header, v6, v7, "⏱️ Waiting for %fs. %s...", v15, 0x16u);
    sub_100007F1C(v16);
  }

  (*(v10 + 8))(v9, v11);
  v17 = v0[11];
  v18 = v0[7];
  v19 = static Duration.seconds(_:)();
  v21 = v20;
  static Clock<>.continuous.getter();
  v22 = swift_task_alloc();
  v0[15] = v22;
  *v22 = v0;
  v22[1] = sub_10004B88C;
  v23 = v0[11];

  return sub_100048528(v19, v21, 0, 0, 1);
}

uint64_t sub_10004B88C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_100052EEC;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10004BA24;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10004BA24()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);
  swift_beginAccess();
  *v3 = v4 + *v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10004BAC4()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_100052890(&_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_10004BB0C()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_100052890(&_swiftEmptyArrayStorage);
  return v0;
}

void *sub_10004BB44(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  type metadata accessor for HandshakeManager.ServiceConstructor();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = sub_100052890(&_swiftEmptyArrayStorage);
  v4[3] = v5;
  v4[4] = a2;
  return v4;
}

void *sub_10004BBB8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  type metadata accessor for HandshakeManager.ServiceConstructor();
  v4 = swift_allocObject();

  swift_defaultActor_initialize();
  v5 = sub_100052890(&_swiftEmptyArrayStorage);

  *(v4 + 112) = v5;
  v2[3] = v4;
  v2[4] = a2;
  return v2;
}

uint64_t sub_10004BC38(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for HandshakeEvent();
  v2[14] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[17] = v5;
  v6 = *(v5 - 8);
  v2[18] = v6;
  v7 = *(v6 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10004BD34, 0, 0);
}

uint64_t sub_10004BD34()
{
  v28 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[12];
  v6 = sub_10003E6D8();
  (*(v2 + 16))(v1, v6, v3);
  sub_1000529E0(v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v11 = v0[19];
  v13 = v0[16];
  v12 = v0[17];
  if (v9)
  {
    v15 = v0[14];
    v14 = v0[15];
    v26 = v0[19];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    sub_1000529E0(v13, v14);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    sub_100052A44(v13);
    v21 = sub_10000728C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "[🤝 Handshake] Handling the event: %s", v16, 0xCu);
    sub_100007F1C(v17);

    (*(v10 + 8))(v26, v12);
  }

  else
  {

    sub_100052A44(v13);
    (*(v10 + 8))(v11, v12);
  }

  v22 = swift_task_alloc();
  v0[20] = v22;
  *v22 = v0;
  v22[1] = sub_10004BF48;
  v23 = v0[12];
  v24 = v0[13];

  return sub_10004C764(v23);
}

uint64_t sub_10004BF48(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  *(v6 + 48) = v3;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = v4;
  v7 = *(v5 + 160);
  v8 = *v4;

  if (v3)
  {

    return _swift_task_switch(sub_10004C270, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v6 + 168) = v9;
    *v9 = v8;
    v9[1] = sub_10004C0C4;
    v10 = *(v6 + 104);
    v11 = *(v6 + 96);

    return sub_10004D264(v11);
  }
}

uint64_t sub_10004C0C4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  *(v6 + 88) = v3;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  *(v6 + 56) = v4;
  v7 = *(v5 + 168);
  v10 = *v4;

  if (v3)
  {
    v8 = sub_10004C318;
  }

  else
  {
    v8 = sub_10004C1E4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10004C1E4()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  sub_10004C3C0(v0[12]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004C270()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 152);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 40);
  sub_10004C3C0(*(v0 + 96));

  v7 = *(v0 + 8);

  return v7(v1, v2, v6);
}

uint64_t sub_10004C318()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 152);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 80);
  sub_10004C3C0(*(v0 + 96));

  v7 = *(v0 + 8);

  return v7(v1, v2, v6);
}

uint64_t sub_10004C3C0(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeEvent();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10003E6D8();
  (*(v14 + 16))(v17, v18, v13);
  sub_1000529E0(a1, v12);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v35 = v13;
    v22 = v21;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v22 = 136315394;
    sub_1000529E0(v12, v10);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_100052A44(v12);
    v26 = sub_10000728C(v23, v25, &v38);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    static Date.now.getter();
    sub_100052E88(&qword_100088060, &type metadata accessor for Date);
    v27 = v37;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v36 + 8))(v5, v27);
    v31 = sub_10000728C(v28, v30, &v38);

    *(v22 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "[🤝 Handshake] ✓ Finished handling the event: %s at time: %s", v22, 0x16u);
    swift_arrayDestroy();

    return (*(v14 + 8))(v17, v35);
  }

  else
  {

    sub_100052A44(v12);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_10004C764(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10004C824, 0, 0);
}

uint64_t sub_10004C824()
{
  v1 = *(**(v0[9] + 24) + 136);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10004C944;
  v4 = v0[8];

  return v6(v4);
}

uint64_t sub_10004C944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 104);
  v10 = *v4;
  v8[14] = a1;
  v8[15] = v3;

  if (v3)
  {
    v11 = v8[12];

    v12 = *(v10 + 8);

    return v12(a1, a2, a3);
  }

  else
  {

    return _swift_task_switch(sub_10004CABC, 0, 0);
  }
}

uint64_t sub_10004CABC()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = *(v0[9] + 16);
    v0[16] = v2;
    v0[7] = v1;
    v3 = (*v2 + 160) & 0xFFFFFFFFFFFFLL | 0xCB0D000000000000;
    v0[17] = *(*v2 + 160);
    v0[18] = v3;

    return _swift_task_switch(sub_10004CB94, v2, 0);
  }

  else
  {
    v4 = v0[12];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10004CB94()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = (*(v0 + 136))(v0 + 56, 1);
  if (v3)
  {
    v7 = *(v0 + 112);
    *(v0 + 200) = v6;
    *(v0 + 168) = v5;
    *(v0 + 176) = v4;

    v8 = sub_10004D150;
  }

  else
  {
    v8 = sub_10004CC38;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10004CC38()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v1[24];
  v4 = v1[25];
  sub_100007AB4(v1 + 21, v3);
  v5 = *(v2 + 32);
  v0[5] = type metadata accessor for RemoteRequestConnectionManager();
  v0[6] = &off_100087970;
  v0[2] = v5;
  v6 = *(v4 + 24);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_10004CDA4;

  return (v10)(v0 + 2, v3, v4);
}

uint64_t sub_10004CDA4()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 112);
  v6 = *v0;

  sub_100007F1C((v1 + 16));
  v4 = swift_task_alloc();
  *(v1 + 160) = v4;
  *v4 = v6;
  v4[1] = sub_10004CEEC;

  return sub_10005390C();
}

uint64_t sub_10004CEEC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 160);
  v10 = *v4;

  if (v3)
  {
    *(v8 + 201) = a3;
    *(v8 + 184) = a2;
    *(v8 + 192) = a1;
    v11 = sub_10004D1D8;
  }

  else
  {
    v12 = *(v8 + 112);

    v11 = sub_10004D02C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10004D02C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = sub_10003E6D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🍀 ServiceDB] New service connected. Activated and added it to the database.", v9, 2u);
  }

  (*(v0[11] + 8))(v0[12], v0[10]);
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10004D150()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 96);
  v5 = *(v0 + 200);

  v6 = *(v0 + 8);

  return v6(v3, v2, v5);
}

uint64_t sub_10004D1D8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 96);
  v5 = *(v0 + 201);

  v6 = *(v0 + 8);

  return v6(v3, v2, v5);
}

uint64_t sub_10004D264(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for XPCRichError();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = type metadata accessor for HandshakeEvent();
  v2[17] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10004D3B0, 0, 0);
}

uint64_t sub_10004D3B0()
{
  v1 = v0[17];
  sub_1000529E0(v0[9], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v19 = *v0[18];
    v20 = *(v0[10] + 16);
    v21 = swift_task_alloc();
    v0[25] = v21;
    *(v21 + 16) = v19;
    v22 = *(*v20 + 168);
    v32 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    v24[1] = sub_10004DC18;

    return (v32)(v0 + 7, &unk_100066F18, v21, v0 + 2);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_100052A44(v0[18]);
    v25 = v0[18];
    v26 = v0[16];
    v27 = v0[13];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v3 = v0[18];
    v5 = v0[15];
    v4 = v0[16];
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    v10 = *(v3 + 1);
    v29 = v0[10];
    v30 = *v3;
    v0[19] = v10;
    v11 = sub_100007CCC(&qword_100087910, &qword_100066728);
    v12 = *(v11 + 64);
    (*(v5 + 32))(v4, &v3[*(v11 + 48)], v6);
    (*(v9 + 32))(v7, &v3[v12], v8);
    v13 = *(v29 + 16);
    v14 = swift_task_alloc();
    v0[20] = v14;
    *(v14 + 16) = v30;
    *(v14 + 24) = v10;
    v15 = *(*v13 + 144);
    v31 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[21] = v17;
    *v17 = v0;
    v17[1] = sub_10004D768;

    return (v31)(v0 + 8, &unk_100066F38, v14);
  }
}

uint64_t sub_10004D768()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return _swift_task_switch(sub_10004D89C, 0, 0);
}

uint64_t sub_10004D89C()
{
  v1 = v0[8];
  v0[22] = v1;
  if (v1)
  {
    v2 = v0[13];
    v3 = v0[11];
    v0[5] = 0;
    v0[6] = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v4 = v0[5];
    v5 = v0[6];
    v0[23] = v5;
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_10004DA24;
    v7 = v0[16];

    return sub_10004E0AC(v7, v4, v5);
  }

  else
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v10 + 8))(v9, v11);
    v12 = v0[18];
    v13 = v0[16];
    v14 = v0[13];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10004DA24()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return _swift_task_switch(sub_10004DB58, 0, 0);
}

uint64_t sub_10004DB58()
{
  v1 = v0[22];

  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v3 + 8))(v2, v4);
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10004DC18()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 200);
    sub_100007D14(*(v2 + 16), *(v2 + 24), *(v2 + 32));

    v5 = sub_10004DD48;
  }

  else
  {
    v6 = *(v2 + 200);

    v5 = sub_10004DDC4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004DD48()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004DDC4()
{
  v0[27] = v0[7];

  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_10004DE64;

  return sub_10004E834();
}

uint64_t sub_10004DE64()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_10004DF7C, 0, 0);
}

uint64_t sub_10004DF7C()
{
  v1 = v0[27];

  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10004E000(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return _swift_task_switch(sub_10004E028, 0, 0);
}

uint64_t sub_10004E028()
{
  v1 = v0[4];
  if (*(v1 + 112) == v0[2] && *(v1 + 120) == v0[3])
  {
    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v4 = v0[1];
  v5 = v3 & 1;

  return v4(v5);
}

uint64_t sub_10004E0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10004E1CC, v3, 0);
}

uint64_t sub_10004E1CC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v4[19];
  v7 = v4[20];
  sub_100007AB4(v4 + 16, v6);
  (*(v7 + 8))(v6, v7);
  v8 = static UUID.== infix(_:_:)();
  (*(v2 + 8))(v1, v3);
  if (v8)
  {
    (*(*v0[5] + 184))(1);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_10004E36C;
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    return sub_1000559F4(v12, v10);
  }

  else
  {
    v14 = v0[11];
    v15 = v0[8];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10004E36C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v8 = *v4;
  v9 = *(*v4 + 96);
  v10 = *v4;

  if (v3)
  {
    sub_100007D14(a1, a2, a3);
  }

  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v10;
  v11[1] = sub_10004E4CC;
  v12 = *(v8 + 40);

  return sub_100054D90();
}

uint64_t sub_10004E4CC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10004E5DC, v2, 0);
}

uint64_t sub_10004E5DC()
{
  v20 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_10003E6D8();
  (*(v2 + 16))(v1, v5, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = v0[5];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000728C(*(v12 + 112), *(v12 + 120), &v19);
    _os_log_impl(&_mh_execute_header, v6, v7, "[⛓️‍💥 XPC Session] Successfully handled the XPC disconnection for the report client: %s.", v13, 0xCu);
    sub_100007F1C(v14);
  }

  (*(v10 + 8))(v9, v11);
  v15 = v0[11];
  v16 = v0[8];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10004E774(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_10004E798, 0, 0);
}

uint64_t sub_10004E798()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[19];
  v4 = v1[20];
  sub_100007AB4(v1 + 16, v3);
  v5 = (*(v4 + 16))(v3, v4) == v2;
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_10004E834()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10004E8F4, v0, 0);
}

uint64_t sub_10004E8F4()
{
  (*(**(v0 + 16) + 184))(1);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_10004E9CC;
  v2 = *(v0 + 16);

  return sub_1000559F4(0xD00000000000001DLL, 0x800000010006B860);
}

uint64_t sub_10004E9CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v8 = *v4;
  v9 = *(*v4 + 48);
  v10 = *v4;

  if (v3)
  {
    sub_100007D14(a1, a2, a3);
  }

  v11 = swift_task_alloc();
  *(v8 + 56) = v11;
  *v11 = v10;
  v11[1] = sub_10004EB2C;
  v12 = *(v8 + 16);

  return sub_100054D90();
}

uint64_t sub_10004EB2C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10004EC3C, v2, 0);
}

uint64_t sub_10004EC3C()
{
  v19 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_10003E6D8();
  (*(v2 + 16))(v1, v5, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000728C(*(v12 + 112), *(v12 + 120), &v18);
    _os_log_impl(&_mh_execute_header, v6, v7, "[⛓️‍💥 XPC Event] Successfully handled the unloading event for the report client: %s.", v13, 0xCu);
    sub_100007F1C(v14);
  }

  (*(v10 + 8))(v9, v11);
  v15 = v0[5];

  v16 = v0[1];

  return v16();
}

void *HandshakeManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t HandshakeManager.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10004EE40()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_100052E88(&qword_100087D10, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100052E88(&unk_100088340, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000487B8;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

char *sub_10004EFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007CCC(&qword_100088098, &qword_100066F78);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10004F0D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100007CCC(&qword_1000880A0, &qword_100066F80);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10004F1D0(void **a1)
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10005229C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10004F278(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10004F278(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UUID();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UUID() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10004F668(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10004F3A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004F3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v46 = &v32 - v13;
  result = __chkstk_darwin(v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_100052E88(&qword_100088090, &type metadata accessor for UUID);
      v27 = dispatch thunk of static Comparable.< infix(_:_:)();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004F668(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v135 = &v120 - v14;
  v15 = __chkstk_darwin(v13);
  v141 = &v120 - v16;
  result = __chkstk_darwin(v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100050710(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_100050090(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100050710(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_100050684(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = &_swiftEmptyArrayStorage;
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_100052E88(&qword_100088090, &type metadata accessor for UUID);
      LODWORD(v134) = dispatch thunk of static Comparable.< infix(_:_:)();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10004EFD0(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_10004EFD0((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_100050090(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100050710(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_100050684(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_100052E88(&qword_100088090, &type metadata accessor for UUID);
    v110 = dispatch thunk of static Comparable.< infix(_:_:)();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100050090(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for UUID();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_100052E88(&qword_100088090, &type metadata accessor for UUID);
          LOBYTE(v36) = dispatch thunk of static Comparable.< infix(_:_:)();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_100052E88(&qword_100088090, &type metadata accessor for UUID);
        LOBYTE(v23) = dispatch thunk of static Comparable.< infix(_:_:)();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_100050724(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_100050684(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100050710(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100050724(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for UUID();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100050808(uint64_t a1, int a2)
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

  sub_100007CCC(&qword_100088080, &qword_100066F68);
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
      sub_100052E88(&qword_100087A70, &type metadata accessor for UUID);
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

uint64_t sub_100050BE4(uint64_t a1, int a2)
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

  sub_100007CCC(&qword_100088070, &qword_100066F58);
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
      sub_100052E88(&qword_100087A70, &type metadata accessor for UUID);
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

uint64_t sub_100050FA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007CCC(&qword_100088068, &unk_100066F48);
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

uint64_t sub_10005124C(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000513FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100042CC8(a2);
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
      sub_100051998();
      goto LABEL_7;
    }

    sub_100050808(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_100042CC8(a2);
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
      return sub_1000518E0(v15, v12, a1, v21);
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

uint64_t sub_1000515C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100042CC8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_100051C18();
    goto LABEL_7;
  }

  sub_100050BE4(result, a3 & 1);
  v22 = *v4;
  result = sub_100042CC8(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1000518E0(v15, v12, a1, v21);
}

uint64_t sub_100051764(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000CB28(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100050FA4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000CB28(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100051E88();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1000518E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_100051998()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007CCC(&qword_100088080, &qword_100066F68);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_100051C18()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007CCC(&qword_100088070, &qword_100066F58);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_100051E88()
{
  v1 = v0;
  sub_100007CCC(&qword_100088068, &unk_100066F48);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_100051FF8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for UUID();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

size_t sub_1000522B0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100007CCC(&qword_1000880A0, &qword_100066F80);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100052488(uint64_t a1)
{
  v2 = sub_100007CCC(&qword_1000880B0, qword_100066F90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007CCC(&qword_100088080, &qword_100066F68);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100015930(v10, v6, &qword_1000880B0, qword_100066F90);
      result = sub_100042CC8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100052670(uint64_t a1)
{
  v2 = sub_100007CCC(&qword_1000880A8, &qword_100066F88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007CCC(&qword_100088070, &qword_100066F58);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100015930(v10, v6, &qword_1000880A8, &qword_100066F88);
      result = sub_100042CC8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100052890(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007CCC(&qword_100088068, &unk_100066F48);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000CB28(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for HandshakeEvent()
{
  result = qword_1000956D0;
  if (!qword_1000956D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000529E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandshakeEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052A44(uint64_t a1)
{
  v2 = type metadata accessor for HandshakeEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100052AC4()
{
  sub_100052BA0(319, &qword_100087D88, &type metadata accessor for XPCRichError);
  if (v0 <= 0x3F)
  {
    sub_100052BA0(319, &qword_100087D90, &type metadata accessor for XPCSession);
    if (v1 <= 0x3F)
    {
      sub_100052C20();
      if (v2 <= 0x3F)
      {
        sub_100052C90();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_100052BA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for UUID();
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_100052C20()
{
  if (!qword_100087D98)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100087D98);
    }
  }
}

void sub_100052C90()
{
  if (!qword_100087DA0)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100087DA0);
    }
  }
}

uint64_t sub_100052D44(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BE28;

  return sub_10004E774(a1, v4);
}

uint64_t sub_100052DE0(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000E524;

  return sub_10004E000(a1, v5, v4);
}

uint64_t sub_100052E88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100052EF0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_100052F68(char a1)
{
  v3 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  *(v1 + 208) = a1;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_100055894();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v8;
  *(v9 + 32) = a1;
  *(v9 + 40) = v1;
  swift_retain_n();
  sub_100002DC0(0, 0, v6, &unk_100066FB0, v9);
}

uint64_t sub_100053090(char a1)
{
  v3 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_100055894();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v8;
  *(v9 + 32) = a1;
  *(v9 + 40) = v1;
  swift_retain_n();
  sub_100002DC0(0, 0, v6, &unk_100066FB8, v9);
}

void (*sub_1000531B4(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100007CCC(&qword_100086800, &qword_100060690) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *(a1 + 8) = v4;
  *(a1 + 16) = *(v1 + 208);
  return sub_100053244;
}

void sub_100053244(uint64_t *a1, char a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  *(*a1 + 208) = v6;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_100055894();
  v11 = a1;
  v9 = *a1;
  v10 = v11[1];
  if (a2)
  {
    v12 = &unk_100066FC0;
  }

  else
  {
    v12 = &unk_100066FC8;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v8;
  *(v13 + 32) = v6;
  *(v13 + 40) = v9;
  swift_retain_n();
  sub_100002DC0(0, 0, v10, v12, v13);

  free(v10);
}

uint64_t sub_100053390()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  sub_100007AB4(v1 + 21, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1000534B8;

  return v8(v2, v3);
}

uint64_t sub_1000534B8(char a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1000535D0, v3, 0);
}

uint64_t sub_1000535D0()
{
  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 16);
    v2 = v1[19];
    v3 = v1[20];
    sub_100007AB4(v1 + 16, v2);
    v4 = (*(v3 + 16))(v2, v3) != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100053680@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ServiceMonitorsSession();
  result = sub_1000457AC();
  a1[3] = v2;
  a1[4] = &off_100080900;
  *a1 = result;
  return result;
}

uint64_t sub_1000536C0(uint64_t a1, uint64_t a2, char a3, __int128 *a4, __int128 *a5)
{
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = a1;
  *(v10 + 120) = a2;
  *(v10 + 208) = a3;
  sub_1000081E8(a4, v10 + 128);
  sub_1000081E8(a5, v10 + 168);
  return v10;
}

uint64_t sub_10005373C(uint64_t a1, uint64_t a2, char a3, __int128 *a4, __int128 *a5)
{
  swift_defaultActor_initialize();
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  *(v5 + 208) = a3;
  sub_1000081E8(a4, v5 + 128);
  sub_1000081E8(a5, v5 + 168);
  return v5;
}

uint64_t sub_1000537A8(uint64_t a1)
{
  (*(*v1 + 144))();
  sub_100001810();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    return (*(*v1 + 152))(a1);
  }

  return result;
}

void *sub_100053858()
{
  v1 = v0[15];

  sub_100007F1C(v0 + 16);
  sub_100007F1C(v0 + 21);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100053890()
{
  v1 = v0[15];

  sub_100007F1C(v0 + 16);
  sub_100007F1C(v0 + 21);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000538D8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);

  return v1;
}

uint64_t sub_10005392C()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  sub_100007AB4(v1 + 21, v2);
  v4 = *(v3 + 32);

  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100053A84;
  v7 = *(v0 + 16);

  return v9(sub_1000559EC, v7, v2, v3);
}

uint64_t sub_100053A84(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 24);
  v11 = *v4;

  v12 = *(v8 + 16);
  if (v3)
  {
    *(v9 + 48) = a3;
    *(v9 + 32) = a2;
    *(v9 + 40) = a1;
    v13 = sub_100053C34;
  }

  else
  {
    v13 = sub_100053BD0;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_100053BD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100053C34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);

  return v2(v3, v4, v5);
}

double sub_100053CA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v4 = type metadata accessor for XPCReceivedMessage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  sub_10002AE40();
  XPCReceivedMessage.decode<A>(as:)();
  v20 = v23;
  v13 = v24;
  v14 = v25;
  XPCReceivedMessage.detachHandoff()();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v16 = (*(v5 + 80) + 57) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v20;
  *(v17 + 48) = v13;
  *(v17 + 56) = v14;
  (*(v5 + 32))(v17 + v16, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;

  sub_100002DC0(0, 0, v10, &unk_1000670D0, v17);

  v18 = v22;
  *(v22 + 32) = 0;
  result = 0.0;
  *v18 = 0u;
  v18[1] = 0u;
  return result;
}

uint64_t sub_100054020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 96) = v14;
  *(v8 + 43) = a7;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 104) = v9;
  v10 = *(v9 - 8);
  *(v8 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_100054100, 0, 0);
}

uint64_t sub_100054100()
{
  v40 = v0;
  v1 = *(v0 + 43);
  v2 = *(v0 + 80);
  if (v1 != 1)
  {
    if (v1 == 3)
    {
      v4 = *(v0 + 64);
      v3 = *(v0 + 72);
      if (v4 == 1 && (v3 | v2) == 0)
      {
        v6 = *(v0 + 88);
        Request.DatabaseReset.init()();
        sub_10002C938();
        XPCReceivedMessage.reply<A>(_:)();
LABEL_18:
        v33 = *(v0 + 120);
        v32 = *(v0 + 128);

        v34 = *(v0 + 8);

        return v34();
      }
    }

    else
    {
      v4 = *(v0 + 64);
      v3 = *(v0 + 72);
    }

    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 104);
    v13 = sub_10003E6D8();
    (*(v11 + 16))(v10, v13, v12);
    sub_100056770(v4, v3, v2, v1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_100013814(v4, v3, v2, v1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 112);
      v37 = *(v0 + 104);
      v38 = *(v0 + 120);
      v18 = *(v0 + 72);
      v17 = *(v0 + 80);
      v19 = *(v0 + 64);
      v20 = *(v0 + 43);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      *(v0 + 16) = v19;
      *(v0 + 24) = v18;
      *(v0 + 32) = v17;
      *(v0 + 40) = v20;
      sub_100056770(v19, v18, v17, v20);
      v23 = String.init<A>(describing:)();
      v25 = sub_10000728C(v23, v24, &v39);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "[🔴] 👨‍🔧 Service Request: the received request is not support %s", v21, 0xCu);
      sub_100007F1C(v22);

      (*(v16 + 8))(v38, v37);
    }

    else
    {
      v27 = *(v0 + 112);
      v26 = *(v0 + 120);
      v28 = *(v0 + 104);

      (*(v27 + 8))(v26, v28);
    }

    v29 = *(v0 + 88);
    Request.DatabaseReset.init()();
    *(v0 + 48) = v30;
    *(v0 + 56) = v31;
    sub_10002C9E0();
    XPCReceivedMessage.reply<A>(_:)();

    goto LABEL_18;
  }

  if (v2)
  {
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_100054494;
    v8 = *(v0 + 96);

    return sub_100054908();
  }

  else
  {
    v35 = *(v0 + 96);
    v36 = (*v35 + 144) & 0xFFFFFFFFFFFFLL | 0xE7EC000000000000;
    *(v0 + 144) = *(*v35 + 144);
    *(v0 + 152) = v36;

    return _swift_task_switch(sub_1000545EC, v35, 0);
  }
}

uint64_t sub_100054494(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 136);
  v14 = *v4;

  if (v3)
  {
    *(v8 + 45) = a3;
    *(v8 + 160) = a2;
    *(v8 + 168) = a1;
    v10 = sub_100054858;
    v11 = 0;
  }

  else
  {
    v11 = *(v8 + 96);
    v12 = (*v11 + 144) & 0xFFFFFFFFFFFFLL | 0xE7EC000000000000;
    *(v8 + 144) = *(*v11 + 144);
    *(v8 + 152) = v12;
    v10 = sub_1000545EC;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1000545EC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  *(v0 + 44) = (*(v0 + 144))();

  return _swift_task_switch(sub_10005465C, 0, 0);
}

uint64_t sub_10005465C()
{
  v27 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = sub_10003E6D8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 44);
    v8 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    *(v0 + 42) = v7;
    v13 = String.init<A>(describing:)();
    v15 = sub_10000728C(v13, v14, &v26);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🟢] 👨‍🔧 Service Request: received StateFetch request and replied with the current state: %s", v11, 0xCu);
    sub_100007F1C(v12);

    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v16 = *(v0 + 128);
    v17 = *(v0 + 104);
    v18 = *(v0 + 112);

    (*(v18 + 8))(v16, v17);
  }

  v19 = *(v0 + 88);
  v20 = *(v0 + 44);
  Request.DatabaseReset.init()();
  *(v0 + 41) = v21;
  sub_10002CD88();
  XPCReceivedMessage.reply<A>(_:)();
  v23 = *(v0 + 120);
  v22 = *(v0 + 128);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100054858()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 45);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  sub_100007B4C();
  swift_allocError();
  *v6 = v1;
  *(v6 + 8) = v2;
  *(v6 + 16) = v3;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100054928()
{
  v1 = *(v0 + 128);
  Request.DatabaseReset.init()();
  v2 = v1[20];
  sub_100007AB4(v1 + 16, v1[19]);
  v3 = *(v2 + 32);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  sub_10003311C();
  *v5 = v0;
  v5[1] = sub_100054A74;

  return v7(v0 + 57);
}

uint64_t sub_100054A74()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_100054C28;
  }

  else
  {
    v6 = sub_100054BA0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100054BA0()
{
  (*(**(v0 + 128) + 184))(*(v0 + 57));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100054C28()
{
  *(v0 + 112) = *(v0 + 144);
  swift_errorRetain();
  sub_100007CCC(&qword_100086538, &qword_1000666F0);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 144);

    v2 = *(v0 + 40);
    *(v0 + 88) = v2;
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    *(v0 + 96) = v3;
    *(v0 + 104) = v4;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v5 = *(v0 + 112);
  }

  else
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 112);

    swift_getErrorValue();
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    v4 = 5;
    *(v0 + 80) = 5;
    sub_100007B4C();
    swift_willThrowTypedImpl();
  }

  v10 = *(v0 + 8);

  return v10(v2, v3, v4);
}

uint64_t sub_100054DB0()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  sub_100007AB4(v1 + 16, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100054ED8;

  return v8(v2, v3);
}

uint64_t sub_100054ED8()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_100054FE8, v2, 0);
}

uint64_t sub_100054FE8()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  sub_100007AB4(v1 + 21, v2);
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_100055110;

  return v8(v2, v3);
}

uint64_t sub_100055110()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100055204(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 192) = a5;
  *(v5 + 146) = a4;
  v7 = type metadata accessor for Logger();
  *(v5 + 200) = v7;
  v8 = *(v7 - 8);
  *(v5 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1000552CC, a5, 0);
}

uint64_t sub_1000552CC()
{
  v36 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = sub_10003E6D8();
  (*(v2 + 16))(v1, v5, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 208);
    v33 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v11 = *(v0 + 146);
    v12 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v12 = 136315394;
    *(v0 + 145) = v11;
    v13 = String.init<A>(describing:)();
    v15 = sub_10000728C(v13, v14, &v35);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10000728C(*(v9 + 112), *(v9 + 120), &v35);
    _os_log_impl(&_mh_execute_header, v6, v7, "[🔔 State Update] broadcasting state update: '%s' for service: '%s'", v12, 0x16u);
    swift_arrayDestroy();

    (*(v8 + 8))(v33, v10);
  }

  else
  {
    v17 = *(v0 + 208);
    v16 = *(v0 + 216);
    v18 = *(v0 + 200);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 192);
  v21 = v19[14];
  v20 = v19[15];
  v22 = *(v0 + 146);

  Request.DatabaseReset.init()();
  Notification.StateUpdate.asCodableEnum.getter(v23, v24, v25, (v0 + 16));

  v26 = v19[24];
  v27 = v19[25];
  sub_100007AB4(v19 + 21, v26);
  sub_10003D784(v0 + 16, v0 + 64);
  sub_100007CCC(&unk_1000878C0, &qword_100067000);
  swift_dynamicCast();
  *(v0 + 144) = *(v0 + 184);
  v28 = *(v0 + 168);
  *(v0 + 112) = *(v0 + 152);
  *(v0 + 128) = v28;
  v29 = *(v27 + 48);
  v34 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  *(v0 + 224) = v31;
  *v31 = v0;
  v31[1] = sub_100055624;

  return v34(v0 + 112, v21, v20, v26, v27);
}

uint64_t sub_100055624(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 224);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v8 + 192);
    *(v8 + 147) = a3;
    *(v8 + 232) = a2;
    *(v8 + 240) = a1;
    sub_100046178(v8 + 112);
    v12 = sub_1000557E4;
  }

  else
  {
    v11 = *(v8 + 192);
    sub_100046178(v8 + 112);
    v12 = sub_100055774;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100055774()
{
  v1 = v0[27];
  sub_100007F1C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000557E4()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 147);
  v4 = *(v0 + 216);
  sub_100007B4C();
  swift_allocError();
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  sub_100007F1C((v0 + 16));

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_100055894()
{
  result = qword_1000880B8;
  if (!qword_1000880B8)
  {
    type metadata accessor for ServiceRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000880B8);
  }

  return result;
}

uint64_t sub_100055910()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082B0;

  return sub_100055204(v4, v5, v6, v3, v2);
}

uint64_t sub_1000559AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000559F4(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  return _swift_task_switch(sub_100055A18, v2, 0);
}

uint64_t sub_100055A18()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v5 = v2[14];
  v4 = v2[15];

  Request.DatabaseReset.init()();
  Notification.ServiceUnavailable.asCodableEnum.getter(v6, v7, v8, v9, (v0 + 16));

  v10 = v2[24];
  v11 = v2[25];
  sub_100007AB4(v2 + 21, v10);
  sub_10003D784(v0 + 16, v0 + 64);
  sub_100007CCC(&unk_1000878C0, &qword_100067000);
  swift_dynamicCast();
  *(v0 + 144) = *(v0 + 184);
  v12 = *(v0 + 168);
  *(v0 + 112) = *(v0 + 152);
  *(v0 + 128) = v12;
  v13 = *(v11 + 48);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_100055BF8;

  return v17(v0 + 112, v5, v4, v10, v11);
}

uint64_t sub_100055BF8(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 216);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v8 + 208);
    *(v8 + 145) = a3;
    *(v8 + 224) = a2;
    *(v8 + 232) = a1;
    sub_100046178(v8 + 112);
    v12 = sub_100055D48;
  }

  else
  {
    v11 = *(v8 + 208);
    sub_100046178(v8 + 112);
    v12 = sub_100005D68;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100055D48()
{
  sub_100007F1C((v0 + 16));
  v1 = *(v0 + 8);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 145);

  return v1(v2, v3, v4);
}

uint64_t sub_100055DB4(uint64_t a1, uint64_t a2)
{
  v3[6] = v2;
  v3[7] = a2;
  v3[5] = a1;
  v4 = *(*(sub_100007CCC(&qword_1000868B0, &qword_100060C60) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for XPCEndpoint();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100055EB0, v2, 0);
}

uint64_t sub_100055EB0()
{
  v1 = v0[6];
  v2 = v1[24];
  v3 = v1[25];
  sub_100007AB4(v1 + 21, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100055FE4;
  v7 = v0[11];

  return (v9)(v7, v0 + 2, v2, v3);
}

uint64_t sub_100055FE4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;

  v4 = *(v2 + 48);
  if (v0)
  {
    *(v2 + 104) = *(v2 + 16);
    *(v2 + 33) = *(v2 + 32);
    v5 = sub_100056108;
  }

  else
  {
    v5 = sub_100056198;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100056108()
{
  v1 = *(v0 + 33);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v1;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100056198()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v12 = v0[5];
  v6 = v5[14];
  v7 = v5[15];
  v8 = *(*v5 + 144);

  LOBYTE(v5) = v8(v9);
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  RequestResponse.ServiceList.ServiceInfo.init(identifier:state:xpcEndpoint:)(v6, v7, v5, v4, v12);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000562FC()
{
  v1 = *(v0 + 128);
  v2 = v1[19];
  v3 = v1[20];
  sub_100007AB4(v1 + 16, v2);
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_100056424;

  return v8(v2, v3);
}

uint64_t sub_100056424()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {
    v4 = v3[16];

    return _swift_task_switch(sub_100054C28, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100056558()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100013814(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100056640()
{
  v2 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100007198;

  return sub_100054020(v9, v10, v11, v4, v5, v6, v8, v0 + v3);
}

uint64_t sub_100056770(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100056850(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100008488(v3, a2);
  sub_1000083A8(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000568EC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_1000083A8(v3, a2);
}

uint64_t sub_100056964@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_1000083A8(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1000569FC()
{
  v0 = sub_100041BE4();
  v2 = *v0;
  v1 = v0[1];
  String.utf8CString.getter();
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();

  return remote_service_listener;
}

uint64_t sub_100056A54()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue_concurrent.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100056C88();
  static DispatchQoS.unspecified.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10005ED20(&qword_1000881C8, 255, &type metadata accessor for OS_dispatch_queue_concurrent.Attributes);
  sub_100007CCC(&qword_1000881D0, &qword_100067130);
  sub_100056CD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return OS_dispatch_queue_concurrent.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_100056C88()
{
  result = qword_1000881C0;
  if (!qword_1000881C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000881C0);
  }

  return result;
}

unint64_t sub_100056CD4()
{
  result = qword_1000881D8;
  if (!qword_1000881D8)
  {
    sub_10002BBE8(&qword_1000881D0, &qword_100067130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000881D8);
  }

  return result;
}

id sub_100056D38()
{
  swift_beginAccess();
  v1 = *(v0 + 144);

  return v1;
}

void sub_100056D7C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_100056DC4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_100056E14(a1, a2);
  return v4;
}

void *sub_100056E14(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v17);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue_concurrent.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  swift_defaultActor_initialize();
  v2[16] = 0;
  v11 = sub_100041BE4();
  v13 = *v11;
  v12 = v11[1];
  String.utf8CString.getter();
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();

  v2[17] = remote_service_listener;
  sub_100056C88();
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_10005ED20(&qword_1000881C8, 255, &type metadata accessor for OS_dispatch_queue_concurrent.Attributes);
  sub_100007CCC(&qword_1000881D0, &qword_100067130);
  sub_100056CD4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v17);
  v2[18] = OS_dispatch_queue_concurrent.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v19;
  v2[14] = v18;
  v2[15] = v15;
  return v2;
}

uint64_t sub_1000570A0()
{
  v2 = type metadata accessor for XPCListener.InitializationOptions();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = swift_allocObject();
  v4[2] = sub_100057414;
  v4[3] = v0;
  v4[4] = sub_100057BD4;
  v4[5] = 0;
  swift_retain_n();
  v5 = sub_100041BBC();
  v6 = *v5;
  v7 = v5[1];

  static XPCListener.InitializationOptions.none.getter();
  v8 = type metadata accessor for XPCListener();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  if (!v1)
  {
    (*(*v0 + 136))(v11);
  }
}

double sub_100057218@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for XPCReceivedMessage();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  XPCReceivedMessage.detachHandoff()();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v7 + 32))(&v15[v14], &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_100002DC0(0, 0, v12, &unk_100067288, v15);

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_10005741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100007198;

  return sub_1000574B8(a5);
}

uint64_t sub_1000574B8(uint64_t a1)
{
  *(v2 + 456) = a1;
  *(v2 + 464) = v1;
  return _swift_task_switch(sub_1000574D8, v1, 0);
}

uint64_t sub_1000574D8()
{
  v1 = *(v0 + 456);
  v2 = XPCReceivedMessage.auditToken.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100041C5C();
  v10 = *v9;
  v11 = v9[1];

  sub_100048AAC(v2, v4, v6, v8, v10, v11, &type metadata for Bool);

  if (*(v0 + 401) == 1)
  {
    v12 = sub_100041C84();
    v14 = *v12;
    v13 = v12[1];

    sub_100048AAC(v2, v4, v6, v8, v14, v13, &type metadata for Bool);

    v15 = *(v0 + 402);
    *(v0 + 403) = v15;
    v16 = *(v0 + 456);
    sub_10002AE40();
    XPCReceivedMessage.decode<A>(as:)();
    v19 = *(v0 + 384);
    v27 = *(v0 + 376);
    *(v0 + 472) = v27;
    *(v0 + 480) = v19;
    v20 = *(v0 + 392);
    *(v0 + 488) = v20;
    v21 = *(v0 + 400);
    *(v0 + 404) = v21;
    sub_100007CCC(&unk_100088300, &qword_100067220);
    inited = swift_initStackObject();
    *(v0 + 496) = inited;
    *(inited + 16) = xmmword_1000670E0;
    Request.DatabaseReset.init()();
    *(inited + 40) = 0;
    *(inited + 48) = 0;
    *(inited + 32) = 1;
    *(inited + 56) = 3;
    Request.DatabaseReset.init()();
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    *(inited + 80) = 0;
    *(inited + 88) = 3;
    *(inited + 96) = Request.ServiceWait.init()();
    *(inited + 120) = 0;
    Request.DatabaseReset.init()();
    *(inited + 136) = 0;
    *(inited + 144) = 0;
    *(inited + 128) = 2;
    *(inited + 152) = 3;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    *(inited + 160) = Request.InterruptConnection.init(of:)(v23);
    *(inited + 176) = 0;
    *(inited + 184) = 2;
    v24 = swift_initStackObject();
    *(v0 + 504) = v24;
    *(v24 + 16) = xmmword_1000670F0;
    Request.DatabaseReset.init()();
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 32) = 1;
    *(v24 + 56) = 3;
    Request.DatabaseReset.init()();
    *(v24 + 64) = 0;
    *(v24 + 72) = 0;
    *(v24 + 80) = 0;
    *(v24 + 88) = 3;
    *(v24 + 96) = Request.ServiceWait.init()();
    *(v24 + 120) = 0;
    if (!v15)
    {
      inited = v24;
    }

    v25 = swift_task_alloc();
    *(v0 + 512) = v25;
    *v25 = v0;
    v25[1] = sub_1000578F4;
    v26 = *(v0 + 464);

    return sub_10005A194(v0 + 336, v27, v19, v20, v21, inited, v0 + 408);
  }

  else
  {
    sub_10005AEFC(*(v0 + 456), 0xD00000000000002CLL, 0x800000010006BB00);
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1000578F4()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v14 = *v1;

  v4 = (v2 + 504);
  if (v0)
  {
    v5 = *(v2 + 480);
    v6 = *(v2 + 488);
    v8 = *(v2 + 464);
    v7 = *(v2 + 472);
    if (*(v2 + 403))
    {
      v4 = (v2 + 496);
    }

    v9 = *v4;
    v10 = *(v2 + 416);
    *(v2 + 520) = *(v2 + 408);
    *(v2 + 528) = v10;
    *(v2 + 405) = *(v2 + 424);
    sub_100013814(v7, v5, v6, *(v2 + 404));

    v11 = sub_100057A78;
  }

  else
  {
    v8 = *(v2 + 464);
    if (*(v2 + 403))
    {
      v4 = (v2 + 496);
    }

    v12 = *v4;
    sub_100013814(*(v2 + 472), *(v2 + 480), *(v2 + 488), *(v2 + 404));

    v11 = sub_100057B44;
  }

  return _swift_task_switch(v11, v8, 0);
}

uint64_t sub_100057A78()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 456);
  *(v0 + 432) = v2;
  *(v0 + 440) = v1;
  v4 = *(v0 + 405);
  *(v0 + 448) = v4;
  sub_1000207E4();
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = v6;
  sub_100007D14(v2, v1, v4);
  sub_10005AEFC(v3, v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100057B44()
{
  v1 = v0[57];
  v2 = v0[46];
  sub_100007AB4(v0 + 42, v0[45]);
  v3 = *(*(v2 + 8) + 16);
  XPCReceivedMessage.reply<A>(_:)();
  sub_100007F1C(v0 + 42);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100057BD4(uint64_t a1)
{
  v2 = type metadata accessor for XPCRichError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003E6D8();
  (*(v11 + 16))(v14, v15, v10);
  v16 = *(v3 + 16);
  v16(v9, a1, v2);
  v17 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v27))
  {
    v18 = swift_slowAlloc();
    v26 = v10;
    v19 = v18;
    v25 = swift_slowAlloc();
    v28 = v25;
    *v19 = 136315138;
    v16(v7, v9, v2);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v3 + 8))(v9, v2);
    v23 = sub_10000728C(v20, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v27, "[🔴] 🔗 Request: The connection is lost due to: %s", v19, 0xCu);
    sub_100007F1C(v25);

    return (*(v11 + 8))(v14, v26);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_100057EC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000568C8();
  (*(v4 + 16))(v7, v8, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v13[0] = a1;
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "🔗 Request: Incoming request XPC received", v11, 2u);
  }

  (*(v4 + 8))(v7, v3);
  dispatch thunk of XPCListener.IncomingSessionRequest.accept(incomingMessageHandler:cancellationHandler:)();
}

uint64_t sub_10005808C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000580CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_100057EC8(v1[2], a1);
}

uint64_t sub_1000580D8()
{
  v1 = v0[17];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100012A4C;
  v5[3] = &unk_100080DF8;
  v2 = _Block_copy(v5);

  xpc_remote_connection_set_event_handler();
  _Block_release(v2);
  v3 = (*(*v0 + 152))();
  xpc_remote_connection_set_target_queue();

  return xpc_remote_connection_activate();
}

uint64_t sub_1000581E0(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34 - v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v1;
    v18[5] = v16;
    swift_unknownObjectRetain();

    sub_100008F94(0, 0, v14, &unk_1000671C8, v18);
  }

  else
  {
    type = xpc_get_type(a1);
    v21 = XPC_TYPE_ERROR.getter();
    v22 = sub_10003E6D8();
    v23 = *(v4 + 16);
    if (type == v21)
    {
      v23(v10, v22, v3);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "[🔴] 🔗 Remote Request: received error remote connection.", v33, 2u);
      }

      return (*(v4 + 8))(v10, v3);
    }

    else
    {
      v23(v8, v22, v3);
      swift_unknownObjectRetain();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v35 = v27;
        *v26 = 136315138;
        swift_getObjectType();
        v34 = a1;
        swift_unknownObjectRetain();
        v28 = String.init<A>(describing:)();
        v30 = sub_10000728C(v28, v29, &v35);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v24, v25, "[🔴] 🔗 Remote Request: RemoteXPC server got unexpected event: %s", v26, 0xCu);
        sub_100007F1C(v27);
      }

      return (*(v4 + 8))(v8, v3);
    }
  }
}

uint64_t sub_1000585A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000585C0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100058608()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100058684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100007198;

  return sub_100058720(a5);
}

uint64_t sub_100058720(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for UUID();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v2[17] = *(v4 + 64);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[20] = v5;
  v6 = *(v5 - 8);
  v2[21] = v6;
  v7 = *(v6 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100058850, v1, 0);
}

uint64_t sub_100058850()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = sub_10003E6D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🔵] 🔗 Remote Request: got incoming remote client connection.", v7, 2u);
  }

  v9 = v0[21];
  v8 = v0[22];
  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[13];
  v12 = v0[14];

  (*(v9 + 8))(v8, v10);
  UUID.init()();
  v14 = v13;
  Request.DatabaseReset.init()();
  v0[23] = v15;
  v16 = *(v12 + 120);
  v0[24] = v16;
  v0[11] = &type metadata for RemoteRequestConnectionManager.RemoteXPCConnection;
  v0[12] = &off_100080820;
  v0[8] = v15;
  v17 = (*v16 + 120) & 0xFFFFFFFFFFFFLL | 0xDC0E000000000000;
  v0[25] = *(*v16 + 120);
  v0[26] = v17;
  v18 = v15;

  return _swift_task_switch(sub_1000589D8, v16, 0);
}

uint64_t sub_1000589D8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  (*(v0 + 200))(v0 + 64, *(v0 + 152));
  v3 = *(v0 + 112);
  sub_100007F1C((v0 + 64));

  return _swift_task_switch(sub_100058A7C, v3, 0);
}

uint64_t sub_100058A7C()
{
  v14 = v0[23];
  v15 = v0[22];
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[13];
  (*(v3 + 16))(v1, v2, v5);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  (*(v3 + 32))(v8 + v7, v1, v5);
  v0[6] = sub_10005E9DC;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100012A4C;
  v0[5] = &unk_100080EC0;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  xpc_remote_connection_set_event_handler();
  _Block_release(v9);
  v11 = (*(*v4 + 152))();
  xpc_remote_connection_set_target_queue();

  xpc_remote_connection_activate();

  (*(v3 + 8))(v2, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100058C88()
{
  sub_100007F1C(v0 + 8);
  v14 = v0[23];
  v15 = v0[22];
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[13];
  (*(v3 + 16))(v1, v2, v5);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  (*(v3 + 32))(v8 + v7, v1, v5);
  v0[6] = sub_10005E9DC;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100012A4C;
  v0[5] = &unk_100080EC0;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  xpc_remote_connection_set_event_handler();
  _Block_release(v9);
  v11 = (*(*v4 + 152))();
  xpc_remote_connection_set_target_queue();

  xpc_remote_connection_activate();

  (*(v3 + 8))(v2, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100058E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a1;
  (*(v7 + 32))(&v15[v14], &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  swift_unknownObjectRetain();
  sub_100008F94(0, 0, v12, &unk_100067200, v15);
}

uint64_t sub_100059090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1000082B0;

  return sub_10005913C(a5, a6);
}

uint64_t sub_10005913C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10005920C, v2, 0);
}

uint64_t sub_10005920C()
{
  v38 = v0;
  type = xpc_get_type(*(v0 + 24));
  v2 = XPC_TYPE_DICTIONARY.getter();
  v3 = *(v0 + 24);
  if (type == v2)
  {
    v23 = *(v0 + 40);
    sub_1000595B0(v3);
LABEL_7:
    v25 = *(v0 + 64);
    v24 = *(v0 + 72);

    v26 = *(v0 + 8);

    return v26();
  }

  v4 = *(v0 + 56);
  v5 = xpc_get_type(v3);
  v6 = XPC_TYPE_ERROR.getter();
  v7 = sub_10003E6D8();
  v8 = *(v4 + 16);
  v9 = *(v0 + 48);
  if (v5 != v6)
  {
    v10 = *(v0 + 24);
    v8(*(v0 + 64), v7, v9);
    swift_unknownObjectRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    v16 = *(v0 + 48);
    if (v13)
    {
      v17 = *(v0 + 24);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136315138;
      swift_getObjectType();
      *(v0 + 16) = v17;
      swift_unknownObjectRetain();
      v20 = String.init<A>(describing:)();
      v22 = sub_10000728C(v20, v21, &v37);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "[🔴] 🔗 Remote Request: Unexpected XPC: %s", v18, 0xCu);
      sub_100007F1C(v19);
    }

    (*(v15 + 8))(v14, v16);
    goto LABEL_7;
  }

  v8(*(v0 + 72), v7, v9);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "[🔴] 🔗 Remote Request: received error remote event from the connected client.", v30, 2u);
  }

  v31 = *(v0 + 72);
  v32 = *(v0 + 48);
  v33 = *(v0 + 56);
  v34 = *(v0 + 40);

  (*(v33 + 8))(v31, v32);
  v35 = *(v34 + 120);
  *(v0 + 80) = v35;
  v36 = (*v35 + 128) & 0xFFFFFFFFFFFFLL | 0xC1A3000000000000;
  *(v0 + 88) = *(*v35 + 128);
  *(v0 + 96) = v36;

  return _swift_task_switch(sub_100059524, v35, 0);
}

uint64_t sub_100059524()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  (*(v0 + 88))(*(v0 + 32));
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000595B0(void *a1)
{
  v2 = v1;
  v4 = sub_100007CCC(&qword_100086800, &qword_100060690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - v6;
  v8 = sub_1000154E8();
  static XPCConvertible.from(xpc:)(a1, &type metadata for Request, v8);
  v16[0] = v16[4];
  v9 = v17;
  v10 = v18;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v13 = sub_10005ED20(&qword_1000882F8, v12, type metadata accessor for RequestServer);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v13;
  *(v14 + 32) = v2;
  *(v14 + 40) = v16[0];
  *(v14 + 56) = v9;
  *(v14 + 64) = v10;
  *(v14 + 72) = a1;
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_100008F94(0, 0, v7, &unk_100067218, v14);
}

uint64_t sub_1000597D8(void *a1, uint64_t a2, unint64_t a3)
{
  v28 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  v13 = sub_10003E6D8();
  v27 = *(v6 + 16);
  v27(v12, v13, v5);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25[1] = v10;
    v19 = v6;
    v20 = v18;
    v29[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10000728C(v28, a3, v29);
    _os_log_impl(&_mh_execute_header, v14, v15, "[🔴] 👓 Remote Request: %s", v17, 0xCu);
    sub_100007F1C(v20);
    v6 = v19;

    a1 = v26;
  }

  (*(v6 + 8))(v12, v5);

  Request.DatabaseReset.init()();
  v29[0] = v21;
  v29[1] = v22;
  v23 = sub_10001382C();
  XPCConvertible.asXPC(replyTo:)(a1, &type metadata for RequestResponse.ErrorResponse, v23);

  xpc_dictionary_send_reply();
  return swift_unknownObjectRelease();
}

uint64_t sub_100059B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 360) = a7;
  *(v8 + 368) = v10;
  *(v8 + 321) = a8;
  *(v8 + 344) = a5;
  *(v8 + 352) = a6;
  *(v8 + 336) = a4;
  return _swift_task_switch(sub_100059B44, a4, 0);
}

uint64_t sub_100059B44()
{
  sub_100007CCC(&unk_100088300, &qword_100067220);
  inited = swift_initStackObject();
  *(v0 + 376) = inited;
  *(inited + 16) = xmmword_100067100;
  Request.DatabaseReset.init()();
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  *(inited + 32) = 1;
  *(inited + 56) = 3;
  Request.DatabaseReset.init()();
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 80) = 0;
  *(inited + 88) = 3;
  *(inited + 96) = Request.ServiceWait.init()();
  *(inited + 120) = 0;
  v2 = default argument 0 of Request.StateFetch.init(serviceIdentifier:poll:)();
  v4 = v3;
  v5 = default argument 1 of Request.StateFetch.init(serviceIdentifier:poll:)() & 1;
  v6._countAndFlagsBits = v2;
  v6._object = v4;
  v16 = Request.StateFetch.init(serviceIdentifier:poll:)(v6, v5);
  *(inited + 128) = v16.serviceIdentifier._countAndFlagsBits;
  *(inited + 136) = v16.serviceIdentifier._object;
  *(inited + 144) = v16.poll;
  *(inited + 152) = 1;
  Request.DatabaseReset.init()();
  *(inited + 168) = 0;
  *(inited + 176) = 0;
  *(inited + 160) = 2;
  *(inited + 184) = 3;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  *(inited + 192) = Request.InterruptConnection.init(of:)(v7);
  *(inited + 208) = 0;
  *(inited + 216) = 2;
  v8 = swift_task_alloc();
  *(v0 + 384) = v8;
  *v8 = v0;
  v8[1] = sub_100059CC0;
  v9 = *(v0 + 352);
  v10 = *(v0 + 360);
  v12 = *(v0 + 336);
  v11 = *(v0 + 344);
  v13 = *(v0 + 321);

  return sub_10005A194(v0 + 240, v11, v9, v10, v13, inited, v0 + 304);
}

uint64_t sub_100059CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v8 = *v1;
  *(*v1 + 392) = v0;

  v4 = *(v2 + 376);
  if (v0)
  {
    v5 = *(v2 + 336);
    *(v2 + 400) = *(v2 + 304);
    *(v2 + 322) = *(v2 + 320);

    v6 = sub_100059DFC;
  }

  else
  {
    v5 = *(v2 + 336);

    v6 = sub_100059FAC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100059DFC()
{
  v1 = *(v0 + 322);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  sub_100007B4C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  v5 = *(v0 + 368);
  _StringGuts.grow(_:)(46);

  swift_getErrorValue();
  v6 = *(v0 + 280);
  v7 = *(*(v0 + 288) - 8);
  v8 = *(v7 + 64) + 15;
  swift_task_alloc();
  (*(v7 + 16))();
  v9 = String.init<A>(describing:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  sub_1000597D8(v5, 0xD00000000000002CLL, 0x800000010006BA30);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100059FAC()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[33];
  v4 = v0[34];
  sub_100007AB4(v0 + 30, v3);
  (*(*(v4 + 8) + 32))(v2, v3);
  if (v1)
  {
    sub_100007F1C(v0 + 30);
    v5 = v0[46];
    _StringGuts.grow(_:)(46);

    swift_getErrorValue();
    v6 = v0[35];
    v7 = *(v0[36] - 8);
    v8 = *(v7 + 64) + 15;
    swift_task_alloc();
    (*(v7 + 16))();
    v9 = String.init<A>(describing:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    sub_1000597D8(v5, 0xD00000000000002CLL, 0x800000010006BA30);
  }

  else
  {
    xpc_dictionary_send_reply();
    swift_unknownObjectRelease();
    sub_100007F1C(v0 + 30);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10005A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 80) = v7;
  *(v8 + 88) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a6;
  *(v8 + 33) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 40) = a1;
  return _swift_task_switch(sub_10005A1C4, v7, 0);
}

uint64_t sub_10005A1C4()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  v3 = (v1 + 56);
  v4 = v2 + 1;
  do
  {
    if (!--v4)
    {
      *(v37 + 16) = 0xD00000000000001CLL;
      *(v37 + 24) = 0x800000010006BA60;
      *(v37 + 32) = 0;
      sub_100007B4C();
      swift_willThrowTypedImpl();
      v20 = *(v37 + 88);
      *v20 = 0xD00000000000001CLL;
      *(v20 + 8) = 0x800000010006BA60;
      *(v20 + 16) = 0;
      v21 = *(v37 + 8);
LABEL_10:

      return v21();
    }

    v5 = v3 + 32;
    v6 = *(v37 + 56);
    v7 = *(v37 + 64);
    v8 = *(v37 + 48);
    v10 = *(v3 - 2);
    v9 = *(v3 - 1);
    v11 = *(v3 - 3);
    v12 = *v3;
    v13 = *(v37 + 33);
    sub_100056770(v11, v10, v9, *v3);
    LOBYTE(v7) = static Request.== infix(_:_:)(v8, v6, v7, v13, v11, v10, v9, v12);
    sub_100013814(v11, v10, v9, v12);
    v3 = v5;
  }

  while ((v7 & 1) == 0);
  if (*(v37 + 33) <= 1u)
  {
    if (*(v37 + 33))
    {
      v26 = *(v37 + 64);
      v27 = *(v37 + 56);
      v28 = swift_task_alloc();
      *(v37 + 120) = v28;
      *v28 = v37;
      v28[1] = sub_10005A920;
      v29 = *(v37 + 80);
      v30 = *(v37 + 48);

      return sub_10005CF54(v30, v27, v26 & 1);
    }

    else
    {
      v14 = *(v37 + 64);
      v15 = *(v37 + 56);
      v16 = swift_task_alloc();
      *(v37 + 104) = v16;
      *v16 = v37;
      v16[1] = sub_10005A7B0;
      v17 = *(v37 + 80);
      v18 = *(v37 + 48);

      return sub_10005BC94(v18, v15, v14);
    }
  }

  if (*(v37 + 33) == 2)
  {
    v22 = *(v37 + 56);
    v23 = swift_task_alloc();
    *(v37 + 136) = v23;
    *v23 = v37;
    v23[1] = sub_10005AA90;
    v24 = *(v37 + 80);
    v25 = *(v37 + 48);

    return sub_10005E084(v25, v22);
  }

  v31 = *(v37 + 48);
  if (*(v37 + 56) | *(v37 + 64) | v31)
  {
    if (v31 == 1 && *(v37 + 56) == 0)
    {
      v32 = *(v37 + 40);
      Request.DatabaseReset.init()();
      *(v32 + 24) = &type metadata for RequestResponse.Acknowledge;
      *(v32 + 32) = sub_10002C114();
      v21 = *(v37 + 8);
      goto LABEL_10;
    }

    v35 = swift_task_alloc();
    *(v37 + 96) = v35;
    *v35 = v37;
    v35[1] = sub_10005A644;
    v36 = *(v37 + 80);

    return sub_10005D7D4();
  }

  else
  {
    v33 = swift_task_alloc();
    *(v37 + 144) = v33;
    *v33 = v37;
    v33[1] = sub_10005ABFC;
    v34 = *(v37 + 80);

    return sub_10005B104();
  }
}

uint64_t sub_10005A644(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 96);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v8 + 88);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3;
    v12 = *(v10 + 8);

    return v12();
  }

  else
  {
    v14 = *(v8 + 80);

    return _swift_task_switch(sub_10005EFC4, v14, 0);
  }
}

uint64_t sub_10005A7B0(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 104);
  v10 = *v4;
  *(*v4 + 112) = a1;

  if (v3)
  {
    v11 = *(v8 + 88);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3;
    v12 = *(v10 + 8);

    return v12();
  }

  else
  {
    v14 = *(v8 + 80);

    return _swift_task_switch(sub_10005AD90, v14, 0);
  }
}

uint64_t sub_10005A920(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 120);
  v10 = *v4;
  *(*v4 + 128) = a1;

  if (v3)
  {
    v11 = *(v8 + 88);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3;
    v12 = *(v10 + 8);

    return v12();
  }

  else
  {
    v14 = *(v8 + 80);

    return _swift_task_switch(sub_10005AE0C, v14, 0);
  }
}

uint64_t sub_10005AA90(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 136);
  v10 = *v4;

  if (v3)
  {
    v11 = *(v8 + 88);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3;
    v12 = *(v10 + 8);

    return v12();
  }

  else
  {
    v14 = *(v8 + 80);

    return _swift_task_switch(sub_10005AE88, v14, 0);
  }
}

uint64_t sub_10005ABFC(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_10005AD14, v3, 0);
}

uint64_t sub_10005AD14()
{
  v1 = v0[19];
  v2 = v0[5];
  v2[3] = &type metadata for RequestResponse.ServiceList;
  v2[4] = sub_10002C2A4();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10005AD90()
{
  v1 = v0[14];
  v2 = v0[5];
  v2[3] = &type metadata for RequestResponse.ServiceList;
  v2[4] = sub_10002C2A4();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10005AE0C()
{
  v1 = v0[16];
  v2 = v0[5];
  *(v2 + 24) = &type metadata for RequestResponse.StateFetchResponse;
  *(v2 + 32) = sub_10002C4F4();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10005AE88()
{
  v1 = *(v0 + 40);
  *(v1 + 24) = &type metadata for RequestResponse.Acknowledge;
  *(v1 + 32) = sub_10002C114();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005AEFC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003E6D8();
  (*(v6 + 16))(v9, v10, v5);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000728C(a2, a3, v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "[🔴] 👓 Request: %s", v13, 0xCu);
    sub_100007F1C(v14);
  }

  (*(v6 + 8))(v9, v5);

  Request.DatabaseReset.init()();
  v18[0] = v15;
  v18[1] = v16;
  sub_10002C9E0();
  XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_10005B104()
{
  v1[5] = v0;
  v2 = *(*(sub_100007CCC(&qword_100088328, &unk_100067258) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for RequestResponse.ServiceList.ServiceInfo();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10005B270, v0, 0);
}

uint64_t sub_10005B270()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = sub_10003E6D8();
  v0[15] = v4;
  v5 = *(v3 + 16);
  v0[16] = v5;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[🟢] 👓 Request: received 'ServiceList' request.", v8, 2u);
  }

  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[5];

  v13 = *(v11 + 8);
  v0[18] = v13;
  v13(v9, v10);
  v14 = *(v12 + 112);
  v0[19] = v14;
  v15 = (*v14 + 152) & 0xFFFFFFFFFFFFLL | 0x41E1000000000000;
  v0[20] = *(*v14 + 152);
  v0[21] = v15;

  return _swift_task_switch(sub_10005B3CC, v14, 0);
}

uint64_t sub_10005B3CC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 40);
  *(v0 + 176) = (*(v0 + 160))();

  return _swift_task_switch(sub_10005B440, v3, 0);
}

uint64_t sub_10005B440()
{
  v1 = v0[22];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[22];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    v0[23] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[23] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[22];
        v0[24] = 0;
        v0[25] = &_swiftEmptyArrayStorage;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[26] = v4;
        v5 = swift_task_alloc();
        v0[27] = v5;
        *v5 = v0;
        v5[1] = sub_10005B5EC;
        v6 = v0[6];

        return sub_100055DB4(v6, (v0 + 2));
      }

      return result;
    }
  }

  v8 = v0[22];

  v9 = v0[13];
  v10 = v0[14];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[6];
  Request.DatabaseReset.init()();
  v15 = v14;

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_10005B5EC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 40);
    sub_100007D14(*(v2 + 16), *(v2 + 24), *(v2 + 32));
    v5 = sub_10005B714;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 40);
    v5 = sub_10005BA44;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10005B714()
{
  v40 = v0;
  v1 = v0[26];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[6];
  (*(v0[8] + 56))(v7, 1, 1, v0[7]);
  sub_10000812C(v7, &qword_100088328, &unk_100067258);
  v3(v5, v4, v6);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[26];
  v12 = v0[18];
  v13 = v0[13];
  v14 = v0[11];
  if (v10)
  {
    v38 = v0[12] + 8;
    v15 = swift_slowAlloc();
    v37 = v12;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 136315138;
    v17 = *(v11 + 112);
    v18 = *(v11 + 120);

    v19 = sub_10000728C(v17, v18, &v39);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "[🟡] 'ServiceList': failed to get the service info for service '%s'. Ignored the service.", v15, 0xCu);
    sub_100007F1C(v16);

    v37(v13, v14);
  }

  else
  {
    v20 = v0[26];

    v12(v13, v14);
  }

  v21 = v0[24] + 1;
  if (v21 == v0[23])
  {
    v22 = v0[25];
    v23 = v0[22];

    v25 = v0[13];
    v24 = v0[14];
    v27 = v0[9];
    v26 = v0[10];
    v28 = v0[6];
    Request.DatabaseReset.init()();
    v30 = v29;

    v31 = v0[1];

    return v31(v30);
  }

  else
  {
    v0[24] = v21;
    v33 = v0[22];
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v34 = *(v33 + 8 * v21 + 32);
    }

    v0[26] = v34;
    v35 = swift_task_alloc();
    v0[27] = v35;
    *v35 = v0;
    v35[1] = sub_10005B5EC;
    v36 = v0[6];

    return sub_100055DB4(v36, (v0 + 2));
  }
}

uint64_t sub_10005BA44()
{
  v1 = v0[25];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];
  (*(v0[8] + 56))(v4, 0, 1, v0[7]);
  sub_10002EA00(v4, v2);
  sub_10002B5C8(v2, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[25];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100029EF4(0, v6[2] + 1, 1, v0[25]);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100029EF4(v7 > 1, v8 + 1, 1, v6);
  }

  v9 = v0[26];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];

  sub_10002B62C(v10);
  v6[2] = v8 + 1;
  sub_10002EA00(v11, v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8);
  v13 = v0[24] + 1;
  if (v13 == v0[23])
  {
    v14 = v0[22];

    v16 = v0[13];
    v15 = v0[14];
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[6];
    Request.DatabaseReset.init()();
    v21 = v20;

    v22 = v0[1];

    return v22(v21);
  }

  else
  {
    v0[24] = v13;
    v0[25] = v6;
    v24 = v0[22];
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(v24 + 8 * v13 + 32);
    }

    v0[26] = v25;
    v26 = swift_task_alloc();
    v0[27] = v26;
    *v26 = v0;
    v26[1] = sub_10005B5EC;
    v27 = v0[6];

    return sub_100055DB4(v27, (v0 + 2));
  }
}

uint64_t sub_10005BC94(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 144) = v3;
  *(v4 + 136) = a3;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  v5 = type metadata accessor for ContinuousClock.Instant();
  *(v4 + 152) = v5;
  v6 = *(v5 - 8);
  *(v4 + 160) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  *(v4 + 184) = v8;
  v9 = *(v8 - 8);
  *(v4 + 192) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v4 + 208) = v11;
  v12 = *(v11 - 8);
  *(v4 + 216) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10005BE20, v3, 0);
}

uint64_t sub_10005BE20()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = sub_10003E6D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🟢] 👓 Request: received 'serviceWait' request.", v7, 2u);
  }

  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v10 = *(v0 + 208);
  v11 = *(v0 + 136);

  (*(v9 + 8))(v8, v10);
  v12 = *(*(v0 + 144) + 112);
  if (v11 <= 0.0)
  {
    *(v0 + 304) = v12;
    v15 = (*v12 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
    *(v0 + 312) = *(*v12 + 136);
    *(v0 + 320) = v15;
    v14 = sub_10005C76C;
  }

  else
  {
    *(v0 + 232) = v12;
    v13 = (*v12 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
    *(v0 + 240) = *(*v12 + 136);
    *(v0 + 248) = v13;
    *(v0 + 256) = 0;
    v14 = sub_10005BFAC;
  }

  return _swift_task_switch(v14, v12, 0);
}

uint64_t sub_10005BFAC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 144);
  (*(v0 + 240))(*(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10005C024, v3, 0);
}

uint64_t sub_10005C024()
{
  v1 = *(v0 + 112);
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = *(*v1 + 168);
    v7 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 272) = v4;
    *v4 = v0;
    v4[1] = sub_10005C19C;

    return v7();
  }

  else
  {
    v6 = *(v0 + 200);
    static Clock<>.continuous.getter();
    *(v0 + 88) = xmmword_100067110;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;

    return _swift_task_switch(sub_10005C380, 0, 0);
  }
}

uint64_t sub_10005C19C(char a1)
{
  v2 = *(*v1 + 272);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 33) = a1;

  return _swift_task_switch(sub_10005C2B4, v3, 0);
}

uint64_t sub_10005C2B4()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 264);

  if (v1)
  {
    v3 = *(*(v0 + 144) + 112);
    *(v0 + 304) = v3;
    v4 = (*v3 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
    *(v0 + 312) = *(*v3 + 136);
    *(v0 + 320) = v4;
    v5 = sub_10005C76C;
  }

  else
  {
    v6 = *(v0 + 200);
    static Clock<>.continuous.getter();
    *(v0 + 88) = xmmword_100067110;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;
    v5 = sub_10005C380;
    v3 = 0;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_10005C380()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = sub_10005ED20(&qword_100087D10, 255, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10005ED20(&unk_100088340, 255, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v5 + 8);
  v0[35] = v8;
  v0[36] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[37] = v10;
  *v10 = v0;
  v10[1] = sub_10005C50C;
  v11 = v0[25];
  v13 = v0[22];
  v12 = v0[23];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 8, v12, v7);
}

uint64_t sub_10005C50C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v19 = *v1;

  if (v0)
  {
    v5 = v2[35];
    v4 = v2[36];
    v6 = v2[22];
    v7 = v2[19];

    v5(v6, v7);
    v8 = sub_10005C6F0;
    v9 = 0;
  }

  else
  {
    v11 = v2[35];
    v10 = v2[36];
    v13 = v2[24];
    v12 = v2[25];
    v14 = v2[22];
    v15 = v2[23];
    v17 = v2 + 18;
    v16 = v2[18];
    v11(v14, v17[1]);
    (*(v13 + 8))(v12, v15);
    v8 = sub_10005C680;
    v9 = v16;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10005C680()
{
  v1 = *(v0 + 256) + 1.0;
  if (v1 >= *(v0 + 136))
  {
    v2 = *(*(v0 + 144) + 112);
    *(v0 + 304) = v2;
    v4 = (*v2 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
    *(v0 + 312) = *(*v2 + 136);
    *(v0 + 320) = v4;
    v3 = sub_10005C76C;
  }

  else
  {
    *(v0 + 256) = v1;
    v2 = *(v0 + 232);
    v3 = sub_10005BFAC;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10005C6F0()
{
  v1 = v0[18];
  (*(v0[24] + 8))(v0[25], v0[23]);

  return _swift_task_switch(sub_10005EFBC, v1, 0);
}

uint64_t sub_10005C76C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 144);
  (*(v0 + 312))(*(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10005C7E4, v3, 0);
}

uint64_t sub_10005C7E4()
{
  v1 = *(v0 + 104);
  *(v0 + 328) = v1;
  if (v1)
  {
    v2 = *(*v1 + 168);
    v13 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 336) = v4;
    *v4 = v0;
    v4[1] = sub_10005C9B4;

    return v13();
  }

  else
  {
    v6 = *(v0 + 136);
    *(v0 + 16) = v6;
    v7 = v6;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v8 = *(v0 + 224);
    v9 = *(v0 + 200);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);

    v12 = *(v0 + 8);

    return v12(v7, 0, 1);
  }
}

uint64_t sub_10005C9B4(char a1)
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 34) = a1;

  return _swift_task_switch(sub_10005CACC, v3, 0);
}

uint64_t sub_10005CACC()
{
  v1 = *(v0 + 328);
  if (*(v0 + 34) == 1)
  {
    sub_100007CCC(&unk_100088330, &qword_100064AB0);
    v2 = *(type metadata accessor for RequestResponse.ServiceList.ServiceInfo() - 8);
    v3 = *(v2 + 72);
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v5 = swift_allocObject();
    *(v0 + 344) = v5;
    *(v5 + 16) = xmmword_100067120;
    v6 = swift_task_alloc();
    *(v0 + 352) = v6;
    *v6 = v0;
    v6[1] = sub_10005CCB8;

    return sub_100055DB4(v5 + v4, v0 + 40);
  }

  else
  {
    v8 = *(v0 + 328);

    v9 = *(v0 + 136);
    *(v0 + 16) = v9;
    v10 = v9;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v11 = *(v0 + 224);
    v12 = *(v0 + 200);
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);

    v15 = *(v0 + 8);

    return v15(v10, 0, 1);
  }
}

uint64_t sub_10005CCB8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v7 = *v1;

  v4 = *(v2 + 144);
  if (v0)
  {
    *(v2 + 360) = *(v2 + 40);
    *(v2 + 35) = *(v2 + 56);
    v5 = sub_10005CDE0;
  }

  else
  {
    v5 = sub_10005CEA0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005CDE0()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);

  *(v1 + 16) = 0;

  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v9 = *(v0 + 35);

  v10 = *(v0 + 8);

  return v10(v3, v4, v9);
}

uint64_t sub_10005CEA0()
{
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[28];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  Request.DatabaseReset.init()();
  v8 = v7;

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_10005CF54(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 33) = a3;
  *(v4 + 120) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 144) = v5;
  v6 = *(v5 - 8);
  *(v4 + 152) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_10005D01C, v3, 0);
}

uint64_t sub_10005D01C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = sub_10003E6D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🟢] 👓 Request: received 'stateFetch' request.", v7, 2u);
  }

  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);

  (*(v9 + 8))(v8, v10);
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(*(v0 + 136) + 112);
    *(v0 + 168) = v14;
    v15 = (*v14 + 136) & 0xFFFFFFFFFFFFLL | 0xC446000000000000;
    *(v0 + 176) = *(*v14 + 136);
    *(v0 + 184) = v15;

    return _swift_task_switch(sub_10005D210, v14, 0);
  }

  else
  {
    *(v0 + 88) = 0xD00000000000001FLL;
    *(v0 + 96) = 0x800000010006BAA0;
    *(v0 + 104) = 0;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v16 = *(v0 + 160);

    v17 = *(v0 + 8);

    return v17(0xD00000000000001FLL, 0x800000010006BAA0, 0);
  }
}

uint64_t sub_10005D210()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  (*(v0 + 176))(*(v0 + 120), *(v0 + 128));

  return _swift_task_switch(sub_10005D288, v3, 0);
}

uint64_t sub_10005D288()
{
  v1 = *(v0 + 112);
  *(v0 + 192) = v1;
  if (v1)
  {
    if (*(v0 + 33) == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 200) = v2;
      *v2 = v0;
      v2[1] = sub_10005D400;

      return sub_100054908();
    }

    else
    {
      v6 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0xE7EC000000000000;
      *(v0 + 208) = *(*v1 + 144);
      *(v0 + 216) = v6;

      return _swift_task_switch(sub_10005D554, v1, 0);
    }
  }

  else
  {
    *(v0 + 16) = xmmword_1000604E0;
    *(v0 + 32) = 6;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 160);

    v5 = *(v0 + 8);

    return v5(3, 0, 6);
  }
}

uint64_t sub_10005D400(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 200);
  v14 = *v4;

  if (v3)
  {
    v10 = *(v8 + 136);
    *(v8 + 35) = a3;
    *(v8 + 224) = a2;
    *(v8 + 232) = a1;
    v11 = sub_10005D654;
  }

  else
  {
    v10 = *(v8 + 192);
    v12 = (*v10 + 144) & 0xFFFFFFFFFFFFLL | 0xE7EC000000000000;
    *(v8 + 208) = *(*v10 + 144);
    *(v8 + 216) = v12;
    v11 = sub_10005D554;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_10005D554()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 136);
  *(v0 + 34) = (*(v0 + 208))();

  return _swift_task_switch(sub_10005D5C8, v3, 0);
}

uint64_t sub_10005D5C8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 34);
  Request.DatabaseReset.init()();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10005D654()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 192);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 35);
  _StringGuts.grow(_:)(31);

  v7._countAndFlagsBits = v5;
  v7._object = v4;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v6;
  sub_1000207E4();
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  sub_100007D14(v1, v2, v6);
  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  *(v0 + 64) = 0xD000000000000019;
  *(v0 + 72) = 0x800000010006BA80;
  *(v0 + 80) = 0;
  sub_100007B4C();
  swift_willThrowTypedImpl();

  v13 = *(v0 + 160);

  v14 = *(v0 + 8);

  return v14(0xD000000000000019, 0x800000010006BA80, 0);
}

uint64_t sub_10005D7D4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10005D8AC, v0, 0);
}

uint64_t sub_10005D8AC()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_10003E6D8();
  v0[8] = v4;
  v5 = *(v3 + 16);
  v0[9] = v5;
  v0[10] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[🟢] 👓 Request: received 'DatabaseReset' request.", v8, 2u);
  }

  v9 = v0[7];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[11] = v13;
  v13(v9, v10);
  v14 = *(v12 + 112);
  v0[12] = v14;
  v15 = (*v14 + 176) & 0xFFFFFFFFFFFFLL | 0xBF31000000000000;
  v0[13] = *(*v14 + 176);
  v0[14] = v15;

  return _swift_task_switch(sub_10005DA08, v14, 0);
}

uint64_t sub_10005DA08()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 16);
  *(v0 + 120) = (*(v0 + 104))();

  return _swift_task_switch(sub_10005DA7C, v3, 0);
}

uint64_t sub_10005DA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3[16] = v5;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = v3[15];
    v12 = v3[12];

    v13 = (*v12 + 152) & 0xFFFFFFFFFFFFLL | 0x41E1000000000000;
    v3[20] = *(*v12 + 152);
    v3[21] = v13;
    v5 = sub_10005DE2C;
    a2 = v12;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  if (v4 < 0)
  {
    v10 = v3[15];
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[16] = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[15];
  v3[17] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[18] = v7;
  v8 = swift_task_alloc();
  v3[19] = v8;
  *v8 = v3;
  v8[1] = sub_10005DBDC;

  return sub_100054D90();
}

uint64_t sub_10005DBDC()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10005DCEC, v2, 0);
}

uint64_t sub_10005DCEC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  if (v2 + 1 == v3)
  {
    v4 = v0[15];
    v5 = v0[12];

    v6 = (*v5 + 152) & 0xFFFFFFFFFFFFLL | 0x41E1000000000000;
    v0[20] = *(*v5 + 152);
    v0[21] = v6;

    return _swift_task_switch(sub_10005DE2C, v5, 0);
  }

  else
  {
    v7 = v0[17] + 1;
    v0[17] = v7;
    v8 = v0[15];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v0[18] = v9;
    v10 = swift_task_alloc();
    v0[19] = v10;
    *v10 = v0;
    v10[1] = sub_10005DBDC;

    return sub_100054D90();
  }
}

uint64_t sub_10005DE2C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 96);
  v3 = *(v0 + 16);
  *(v0 + 176) = (*(v0 + 160))();

  return _swift_task_switch(sub_10005DEA0, v3, 0);
}

uint64_t sub_10005DEA0()
{
  v1 = v0[22];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v0[22];
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[3];
  if (v2)
  {
    v7 = v0 + 6;
    v4(v0[6], v5, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 12;
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v2;
      v12 = "[⚠️] There are still services (count: %ld) after clearning the service database.";
LABEL_8:
      v13 = *v7;
      _os_log_impl(&_mh_execute_header, v8, v9, v12, v11, v10);

      goto LABEL_10;
    }
  }

  else
  {
    v7 = v0 + 5;
    v4(v0[5], v5, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 2;
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "[🧹] Successfully cleaned the service database.";
      goto LABEL_8;
    }
  }

  v13 = *v7;
LABEL_10:
  v14 = v0[11];
  v16 = v0[6];
  v15 = v0[7];
  v18 = v0[4];
  v17 = v0[5];
  v19 = v0[3];

  v14(v13, v19);
  Request.DatabaseReset.init()();

  v20 = v0[1];

  return v20();
}

uint64_t sub_10005E084(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for Logger();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10005E148, v2, 0);
}

uint64_t sub_10005E148()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_10003E6D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[🟢] 👓 Request: received 'InterruptConnection' request.", v7, 2u);
  }

  v9 = v0[10];
  v8 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  v13 = v0[6];
  v12 = v0[7];

  (*(v9 + 8))(v8, v10);
  v14 = *(v11 + 112);
  v15 = swift_task_alloc();
  v0[12] = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  v16 = *(*v14 + 144);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_10005E360;

  return (v20)(v0 + 5, &unk_100067270, v15);
}

uint64_t sub_10005E360()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_10005E48C, v3, 0);
}

uint64_t sub_10005E48C()
{
  v1 = *(v0 + 40);
  *(v0 + 112) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_10005E5AC;

    return sub_1000562DC();
  }

  else
  {
    *(v0 + 16) = xmmword_1000604E0;
    *(v0 + 32) = 6;
    sub_100007B4C();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 88);

    v5 = *(v0 + 8);

    return v5(3, 0, 6);
  }
}

uint64_t sub_10005E5AC(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 120);
  v11 = *v4;

  v12 = *(v8 + 64);
  if (v3)
  {
    *(v9 + 33) = a3;
    *(v9 + 128) = a2;
    *(v9 + 136) = a1;
    v13 = sub_10005E774;
  }

  else
  {
    v13 = sub_10005E6F8;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_10005E6F8()
{
  v1 = v0[14];
  v2 = v0[11];
  Request.DatabaseReset.init()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10005E774()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 88);
  v5 = *(v0 + 33);

  v6 = *(v0 + 8);

  return v6(v3, v2, v5);
}

uint64_t sub_10005E800()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005E848()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082B0;

  return sub_100058684(v4, v5, v6, v2, v3);
}

uint64_t sub_10005E8E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E918()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005E9DC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100058E9C(a1, v4, v5);
}

uint64_t sub_10005EA50()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);
  swift_unknownObjectRelease();
  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005EB24()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000082B0;

  return sub_100059090(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_10005EC00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_100013814(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 72);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10005EC58()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v7 = *(v0 + 64);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100007198;

  return sub_100059B10(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_10005ED20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10005ED68(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BE28;

  return sub_10004E000(a1, v5, v4);
}

uint64_t sub_10005EE10()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005EEDC()
{
  v2 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007198;

  return sub_10005741C(v5, v6, v7, v4, v0 + v3);
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