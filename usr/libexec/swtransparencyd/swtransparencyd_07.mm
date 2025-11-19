uint64_t sub_1000B01C8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000B02E0, v3, 0);
}

uint64_t sub_1000B02E0()
{
  v1 = v0[5];
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      sub_10008B670(v1);
LABEL_11:
      v10 = v0[1];

      return v10(0x8000000000000000);
    }

    if (v1 != 0x8000000000000000)
    {
      goto LABEL_11;
    }

    v8 = v0[2];
    v9 = (*v8 + 192) & 0xFFFFFFFFFFFFLL | 0xBE86000000000000;
    v0[6] = *(*v8 + 192);
    v0[7] = v9;

    return _swift_task_switch(sub_1000B04B0, v8, 0);
  }

  else
  {
    v2 = v0[2];
    sub_10008B670(v1);
    v3 = *(*v2 + 216);
    v11 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_100088E2C;
    v6 = v0[2];

    return v11(0);
  }
}

uint64_t sub_1000B04B0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  (*(v0 + 48))(1);
  v3 = *(v0 + 8);

  return v3(9);
}

uint64_t sub_1000B051C()
{
  v1[7] = v0;
  v2 = type metadata accessor for Logger();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000B05DC, v0, 0);
}

uint64_t sub_1000B05DC()
{
  if ((*(*v0[7] + 136))())
  {
    v1 = v0[10];

    v2 = v0[1];

    return v2(0x8000000000000008);
  }

  else
  {
    v4 = v0[7];
    v5 = *(*v4 + 144);
    v6 = (*v4 + 144) & 0xFFFFFFFFFFFFLL | 0xE4D0000000000000;
    v0[11] = v5;
    v0[12] = v6;
    v5(1);
    v7 = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps;
    v0[13] = OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps;
    v8 = (v4 + v7);
    v9 = v8[3];
    v10 = v8[4];
    sub_100026F6C(v8, v9);
    v11 = v8[3];
    v12 = v8[4];
    sub_100026F6C(v8, v11);
    v13 = (*(v12 + 48))(v11, v12);
    v0[14] = v13;
    v14 = *(v10 + 104);
    v17 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[15] = v16;
    *v16 = v0;
    v16[1] = sub_1000B0818;

    return (v17)(v0 + 2, v13, v9, v10);
  }
}

uint64_t sub_1000B0818()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_1000B0940, v3, 0);
}

uint64_t sub_1000B0940()
{
  v1 = (v0[7] + v0[13]);
  v2 = v1[3];
  v3 = v1[4];
  sub_100026F6C(v1, v2);
  v4 = (*(v3 + 56))(v2, v3);
  v0[16] = v4;
  v8 = (*v4 + 352);
  v9 = (*v8 + **v8);
  v5 = (*v8)[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1000B0AB4;

  return v9(v0 + 2);
}

uint64_t sub_1000B0AB4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 144) = v0;

  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1000B0E44;
  }

  else
  {
    v7 = sub_1000B0BFC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000B0BFC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  (*(v0 + 88))(0);
  sub_100024E14((v0 + 16));
  v3 = *(**(v2 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough) + 168);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_1000B0D30;

  return v7();
}

uint64_t sub_1000B0D30()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 80);

  v4 = *(v6 + 8);

  return v4(0x8000000000000000);
}

uint64_t sub_1000B0E44()
{
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[7];
  sub_100024E14(v0 + 2);
  v3(0);
  Logger.init()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "load config threw error: %@", v9, 0xCu);
    sub_10002533C(v10, &qword_100153450, &unk_100104140);
  }

  v12 = v0[18];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];

  (*(v14 + 8))(v13, v15);
  type metadata accessor for ReachabilityTracker(0);
  v16 = _convertErrorToNSError(_:)();
  sub_1000212AC(v16);
  v18 = v17;

  if (v18)
  {
    v19 = v12;
  }

  else
  {
    v19 = v12 | 0x4000000000000000;
  }

  v20 = v0[10];

  v21 = v0[1];

  return v21(v19);
}

uint64_t sub_1000B1010()
{
  v1 = *(v0 + 120);

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_priority, &unk_100152620, &unk_1001031E0);
  sub_100024E14((v0 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps));
  v2 = *(v0 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000B1078()
{
  v1 = *(v0 + 120);

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_priority, &unk_100152620, &unk_1001031E0);
  sub_100024E14((v0 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_deps));
  v2 = *(v0 + OBJC_IVAR____TtC15swtransparencyd25InitialLoadPublicKeyState_readyEnough);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000B10F0(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B1210(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B13B0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v4 = type metadata accessor for Logger();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = (*a1 + 192) & 0xFFFFFFFFFFFFLL | 0xBE86000000000000;
  v2[12] = *(*a1 + 192);
  v2[13] = v7;

  return _swift_task_switch(sub_1000B1490, a1, 0);
}

uint64_t sub_1000B1490()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  (*(v0 + 96))(1);

  return _swift_task_switch(sub_1000B1500, v2, 0);
}

uint64_t sub_1000B1500()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC15swtransparencyd20ReloadPublicKeyState_deps;
  v0[14] = OBJC_IVAR____TtC15swtransparencyd20ReloadPublicKeyState_deps;
  v3 = (v1 + v2);
  v4 = *(v1 + v2 + 24);
  v5 = *(v1 + v2 + 32);
  sub_100026F6C((v1 + v2), v4);
  v6 = v3[3];
  v7 = v3[4];
  sub_100026F6C(v3, v6);
  v8 = (*(v7 + 48))(v6, v7);
  v0[15] = v8;
  v9 = *(v5 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_1000B1690;

  return (v13)(v0 + 2, v8, v4, v5);
}

uint64_t sub_1000B1690()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_1000B17B8, v3, 0);
}

uint64_t sub_1000B17B8()
{
  v1 = (v0[8] + v0[14]);
  v2 = v1[3];
  v3 = v1[4];
  sub_100026F6C(v1, v2);
  v4 = (*(v3 + 56))(v2, v3);
  v0[17] = v4;
  v8 = (*v4 + 360);
  v9 = (*v8 + **v8);
  v5 = (*v8)[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1000B192C;

  return v9(v0 + 2);
}

uint64_t sub_1000B192C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 152) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1000B1AE0;
  }

  else
  {
    v7 = sub_1000B1A74;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000B1A74()
{
  sub_100024E14(v0 + 2);
  v1 = v0[11];

  v2 = v0[1];

  return v2(9);
}

uint64_t sub_1000B1AE0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 88);
  sub_100024E14((v0 + 16));
  Logger.init()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "reload config threw error: %@", v6, 0xCu);
    sub_10002533C(v7, &qword_100153450, &unk_100104140);
  }

  v9 = *(v0 + 152);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 72);

  (*(v11 + 8))(v10, v12);
  type metadata accessor for ReachabilityTracker(0);
  v13 = _convertErrorToNSError(_:)();
  sub_1000212AC(v13);
  v15 = v14;

  if (v15)
  {
    v16 = *(**(v0 + 56) + 216);
    v24 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 160) = v18;
    *v18 = v0;
    v18[1] = sub_1000B1D94;
    v19 = *(v0 + 56);

    return v24(1);
  }

  else
  {
    v21 = *(v0 + 152);

    v22 = *(v0 + 88);

    v23 = *(v0 + 8);

    return v23(9);
  }
}

uint64_t sub_1000B1D94()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1000B1EA4, v2, 0);
}

uint64_t sub_1000B1EA4()
{
  v1 = v0[19];

  v2 = v0[11];

  v3 = v0[1];

  return v3(9);
}

uint64_t sub_1000B1F38(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B2058(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B21F0(uint64_t a1)
{
  *(v2 + 264) = a1;
  *(v2 + 272) = v1;
  return _swift_task_switch(sub_1000B2210, v1, 0);
}

uint64_t sub_1000B2210()
{
  v1 = v0[34];
  v2 = OBJC_IVAR____TtC15swtransparencyd22MilestoneDownloadState_deps;
  v0[35] = OBJC_IVAR____TtC15swtransparencyd22MilestoneDownloadState_deps;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  sub_100026F6C((v1 + v2), v3);
  v5 = (*(v4 + 56))(v3, v4);
  v0[36] = v5;
  v6 = (*v5 + 160) & 0xFFFFFFFFFFFFLL | 0x445F000000000000;
  v0[37] = *(*v5 + 160);
  v0[38] = v6;

  return _swift_task_switch(sub_1000B22D8, v5, 0);
}

uint64_t sub_1000B22D8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = (*(v0 + 296))();
  *(v0 + 312) = v3;

  v4 = *(v0 + 264);
  if (v3)
  {
    v5 = (*v4 + 200) & 0xFFFFFFFFFFFFLL | 0x5D5C000000000000;
    *(v0 + 320) = *(*v4 + 200);
    *(v0 + 328) = v5;
    v6 = sub_1000B23A0;
  }

  else
  {
    v7 = (*v4 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 352) = *(*v4 + 184);
    *(v0 + 360) = v7;
    v6 = sub_1000B2ADC;
  }

  return _swift_task_switch(v6, v4, 0);
}

uint64_t sub_1000B23A0()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  *(v0 + 368) = (*(v0 + 320))(1) & 1;

  return _swift_task_switch(sub_1000B2418, v2, 0);
}

uint64_t sub_1000B2418()
{
  if (*(v0 + 368))
  {

    v1 = *(v0 + 264);
    v2 = (*v1 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 352) = *(*v1 + 184);
    *(v0 + 360) = v2;

    return _swift_task_switch(sub_1000B2ADC, v1, 0);
  }

  else
  {
    v3 = (*(v0 + 272) + *(v0 + 280));
    v4 = v3[3];
    v5 = v3[4];
    sub_100026F6C(v3, v4);
    v6 = *(v5 + 112);
    v10 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 336) = v8;
    *v8 = v0;
    v8[1] = sub_1000B25B0;

    return v10(v0 + 184, v4, v5);
  }
}

uint64_t sub_1000B25B0()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 272);
  v4 = *v0;

  return _swift_task_switch(sub_1000B26C0, v2, 0);
}

uint64_t sub_1000B26C0()
{
  v28 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 264);
  v3 = (*(v0 + 272) + *(v0 + 280));
  v4 = v3[3];
  v5 = v3[4];
  sub_100026F6C(v3, v4);
  v23 = (*(v5 + 8))(v4, v5);
  v6 = v3[3];
  v7 = v3[4];
  sub_100026F6C(v3, v6);
  v22 = (*(v7 + 48))(v6, v7);
  v9 = v3[3];
  v8 = v3[4];
  sub_100026F6C(v3, v9);
  v10 = *(v8 + 64);
  v11 = v1;
  v12 = v10(v9, v8);
  v25 = type metadata accessor for KTSWDB();
  v26 = sub_1000AF2A8(&qword_100152F48, type metadata accessor for KTSWDB);
  *&v24 = v12;
  sub_1000331C0(v0 + 184, v0 + 224);
  v13 = v3[3];
  v14 = v3[4];
  sub_100026F6C(v3, v13);
  v15 = (*(v14 + 80))(v13, v14);
  v16 = v3[3];
  v17 = v3[4];
  sub_100026F6C(v3, v16);
  (*(v17 + 88))(v27, v16, v17);

  sub_1000593E8(v23, v22, v11, &v24, v2, (v0 + 224), 0, v15, v0 + 16, v27);
  sub_100059DE0();
  v19 = v18;
  v20 = swift_task_alloc();
  *(v0 + 344) = v20;
  *v20 = v0;
  v20[1] = sub_1000B2930;

  return sub_100059E18(v19);
}

uint64_t sub_1000B2930()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;

  v5 = *(v2 + 272);
  if (v0)
  {

    v6 = sub_1000B7380;
  }

  else
  {
    v6 = sub_1000B2A68;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000B2A68()
{
  sub_10006158C(v0 + 16);
  sub_100024E14((v0 + 184));
  v1 = *(v0 + 8);

  return v1(9);
}

uint64_t sub_1000B2ADC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 264);
  (*(v0 + 352))(4);
  v3 = *(v0 + 8);

  return v3(7);
}

uint64_t sub_1000B2B70(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B2C90(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B2E30(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return _swift_task_switch(sub_1000B2E50, v1, 0);
}

uint64_t sub_1000B2E50()
{
  v1 = v0[33];
  v2 = OBJC_IVAR____TtC15swtransparencyd19PatConsistencyState_deps;
  v0[34] = OBJC_IVAR____TtC15swtransparencyd19PatConsistencyState_deps;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  sub_100026F6C((v1 + v2), v3);
  v5 = (*(v4 + 56))(v3, v4);
  v0[35] = v5;
  v6 = (*v5 + 160) & 0xFFFFFFFFFFFFLL | 0x445F000000000000;
  v0[36] = *(*v5 + 160);
  v0[37] = v6;

  return _swift_task_switch(sub_1000B2F18, v5, 0);
}

uint64_t sub_1000B2F18()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = (*(v0 + 288))();
  *(v0 + 304) = v3;

  v4 = *(v0 + 256);
  if (v3)
  {
    v5 = (*v4 + 200) & 0xFFFFFFFFFFFFLL | 0x5D5C000000000000;
    *(v0 + 312) = *(*v4 + 200);
    *(v0 + 320) = v5;
    v6 = sub_1000B2FE0;
  }

  else
  {
    v7 = (*v4 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 344) = *(*v4 + 184);
    *(v0 + 352) = v7;
    v6 = sub_1000B3700;
  }

  return _swift_task_switch(v6, v4, 0);
}

uint64_t sub_1000B2FE0()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  *(v0 + 360) = (*(v0 + 312))(1) & 1;

  return _swift_task_switch(sub_1000B3058, v2, 0);
}

uint64_t sub_1000B3058()
{
  if (*(v0 + 360))
  {

    v1 = *(v0 + 256);
    v2 = (*v1 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 344) = *(*v1 + 184);
    *(v0 + 352) = v2;

    return _swift_task_switch(sub_1000B3700, v1, 0);
  }

  else
  {
    v3 = (*(v0 + 264) + *(v0 + 272));
    v4 = v3[3];
    v5 = v3[4];
    sub_100026F6C(v3, v4);
    v6 = *(v5 + 120);
    v10 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 328) = v8;
    *v8 = v0;
    v8[1] = sub_1000B31F0;

    return v10(v0 + 176, v4, v5);
  }
}

uint64_t sub_1000B31F0()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return _swift_task_switch(sub_1000B3300, v2, 0);
}

uint64_t sub_1000B3300()
{
  v26 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 256);
  v3 = (*(v0 + 264) + *(v0 + 272));
  v4 = v3[3];
  v5 = v3[4];
  sub_100026F6C(v3, v4);
  v21 = (*(v5 + 8))(v4, v5);
  v6 = v3[3];
  v7 = v3[4];
  sub_100026F6C(v3, v6);
  v20 = (*(v7 + 48))(v6, v7);
  v9 = v3[3];
  v8 = v3[4];
  sub_100026F6C(v3, v9);
  v10 = *(v8 + 64);
  v11 = v1;
  v12 = v10(v9, v8);
  v23 = type metadata accessor for KTSWDB();
  v24 = sub_1000AF2A8(&qword_100152F48, type metadata accessor for KTSWDB);
  *&v22 = v12;
  sub_1000331C0(v0 + 176, v0 + 216);
  v13 = v3[3];
  v14 = v3[4];
  sub_100026F6C(v3, v13);
  v15 = (*(v14 + 80))(v13, v14);
  v16 = v3[3];
  v17 = v3[4];
  sub_100026F6C(v3, v16);
  (*(v17 + 88))(v25, v16, v17);

  sub_1000476E0(v21, v20, v11, &v22, v2, (v0 + 216), v15, v25, v0 + 16);
  v18 = swift_task_alloc();
  *(v0 + 336) = v18;
  *v18 = v0;
  v18[1] = sub_1000B3554;

  return sub_100049224();
}

uint64_t sub_1000B3554()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;

  v5 = *(v2 + 264);
  if (v0)
  {

    v6 = sub_1000B7384;
  }

  else
  {
    v6 = sub_1000B368C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000B368C()
{
  sub_10004C15C(v0 + 16);
  sub_100024E14((v0 + 176));
  v1 = *(v0 + 8);

  return v1(9);
}

uint64_t sub_1000B3700()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 256);
  (*(v0 + 344))(3);
  v3 = *(v0 + 8);

  return v3(7);
}

uint64_t sub_1000B3794(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B38B4(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B3A54(__int128 *a1, char a2, uint64_t *a3, void *a4)
{
  swift_defaultActor_initialize();
  *(v4 + 112) = a2;
  *(v4 + 120) = &_swiftEmptySetSingleton;
  v9 = *a3;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  sub_100037608(a1, v4 + *a4);
  return v4;
}

uint64_t sub_1000B3B00()
{
  v1[12] = v0;
  v2 = type metadata accessor for TransparencySWIssue();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for SWTFollowUpType();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[20] = v8;
  v9 = *(v8 - 8);
  v1[21] = v9;
  v10 = *(v9 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v1[26] = v11;
  v12 = *(v11 - 8);
  v1[27] = v12;
  v13 = *(v12 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000B3D10, v0, 0);
}

uint64_t sub_1000B3D10()
{
  v1 = v0[12];
  v2 = OBJC_IVAR____TtC15swtransparencyd20DetectSplitViewState_deps;
  v0[30] = OBJC_IVAR____TtC15swtransparencyd20DetectSplitViewState_deps;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  sub_100026F6C((v1 + v2), v3);
  v5 = (*(v4 + 56))(v3, v4);
  v0[31] = v5;
  v6 = (*v5 + 160) & 0xFFFFFFFFFFFFLL | 0x445F000000000000;
  v0[32] = *(*v5 + 160);
  v0[33] = v6;

  return _swift_task_switch(sub_1000B3DD8, v5, 0);
}

uint64_t sub_1000B3DD8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 96);
  *(v0 + 272) = (*(v0 + 256))();

  return _swift_task_switch(sub_1000B3E54, v3, 0);
}

uint64_t sub_1000B3E54()
{
  v116 = v0;
  v1 = v0[34];
  if (v1)
  {
    v2 = (v0[12] + v0[30]);
    v3 = v2[3];
    v4 = v2[4];
    sub_100026F6C(v2, v3);
    v5 = (*(v4 + 8))(v3, v4);
    v6 = sub_10004CE5C(v5);
    v0[35] = v6;
    v0[36] = v7;
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v10 = v0[29];
      v11 = (v0[12] + v0[30]);
      v12 = v11[3];
      v13 = v11[4];
      sub_100026F6C(v11, v12);
      v14 = [(*(v13 + 32))(v12 v13)];
      swift_unknownObjectRelease();
      [v14 atBackgroundFollowupDelayPeriod];
      swift_unknownObjectRelease();
      Date.init(timeIntervalSinceNow:)();
      result = [v1 patLogBeginningMs];
      v0[37] = result;
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      v16 = v0[29];
      v17 = (v0[12] + v0[30]);
      v18 = v17[3];
      v19 = v17[4];
      sub_100026F6C(v17, v18);
      (*(v19 + 64))(v18, v19);
      v20 = sub_1000531A4();
      v0[38] = v20;
      v0[39] = 0;
      v31 = v20;

      if (*(v31 + 16))
      {
        v32 = v0[25];
        Logger.init()();

        v33 = v1;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        v36 = os_log_type_enabled(v34, v35);
        v37 = v0[25];
        v38 = v0[21];
        v111 = v0[20];
        if (v36)
        {
          v39 = swift_slowAlloc();
          v107 = v37;
          v40 = swift_slowAlloc();
          v115[0] = v40;
          *v39 = 136446466;
          *(v39 + 4) = sub_100021D24(v8, v9, v115);
          *(v39 + 12) = 2050;
          *(v39 + 14) = [v33 patLogBeginningMs];

          _os_log_impl(&_mh_execute_header, v34, v35, "Found %{public}s PAT split view from before CFU delay for %{public}llu epoch", v39, 0x16u);
          sub_100024E14(v40);

          (*(v38 + 8))(v107, v111);
        }

        else
        {

          (*(v38 + 8))(v37, v111);
        }

        v48 = v0[28];
        v50 = v0[14];
        v49 = v0[15];
        v112 = v0[13];
        v51 = (v0[12] + v0[30]);
        (*(v0[17] + 104))(v0[19], enum case for SWTFollowUpType.treeFork(_:), v0[16]);
        v52 = v51[3];
        v53 = v51[4];
        sub_100026F6C(v51, v52);
        SWTFollowUpType.rawValue.getter();
        Date.init()();

        TransparencySWIssue.init(issue:posted:slh:)();
        (*(v53 + 136))(v49, v52, v53);
        (*(v50 + 8))(v49, v112);
        v54 = v51[3];
        v55 = v51[4];
        sub_100026F6C(v51, v54);
        (*(v55 + 40))(v54, v55);
        v56 = v0[5];
        v57 = v0[6];
        sub_100026F6C(v0 + 2, v56);
        v58 = *(v57 + 16);
        v113 = v58 + *v58;
        v59 = v58[1];
        v60 = swift_task_alloc();
        v0[40] = v60;
        *v60 = v0;
        v60[1] = sub_1000B4AE8;
        v61 = v0[19];
        v62 = v51;
        v63 = v31;
        v64 = v56;
        v65 = v57;
        v66 = v113;
LABEL_15:

        return v66(v61, v62, v63, v64, v65);
      }

      v42 = v0[35];
      v41 = v0[36];
      v43 = (v0[12] + v0[30]);
      v44 = v43[3];
      v45 = v43[4];
      sub_100026F6C(v43, v44);
      (*(v45 + 64))(v44, v45);
      sub_100051B88();
      v0[41] = v46;
      v47 = v0[29];
      v67 = v46;
      v69 = v0[35];
      v68 = v0[36];
      v70 = v0[30];
      v71 = v0[12];

      v72 = (v71 + v70);
      v73 = *(v71 + v70 + 24);
      v74 = v72[4];
      sub_100026F6C(v72, v73);
      (*(v74 + 64))(v73, v74);
      v75 = sub_1000531A4();
      v0[42] = v75;
      v0[43] = 0;
      v76 = v75;

      if (*(v76 + 16))
      {
        v114 = v76;
        v77 = v0[36];
        v78 = v0[24];
        Logger.init()();

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v82 = v0[35];
          v81 = v0[36];
          v83 = v0[24];
          v84 = v0[21];
          v108 = v0[20];
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v115[0] = v86;
          *v85 = 136446466;
          *(v85 + 4) = sub_100021D24(v82, v81, v115);
          *(v85 + 12) = 2050;
          *(v85 + 14) = v67;
          _os_log_impl(&_mh_execute_header, v79, v80, "Found %{public}s AT split view from before CFU delay for %{public}lld epoch", v85, 0x16u);
          sub_100024E14(v86);

          (*(v84 + 8))(v83, v108);
        }

        else
        {
          v90 = v0[24];
          v92 = v0[20];
          v91 = v0[21];

          (*(v91 + 8))(v90, v92);
        }

        v93 = v0[38];
        v94 = v0[28];
        v95 = v0[15];
        v96 = v0[14];
        v109 = v0[13];
        v97 = (v0[12] + v0[30]);
        (*(v0[17] + 104))(v0[18], enum case for SWTFollowUpType.treeFork(_:), v0[16]);
        v98 = v97[3];
        v99 = v97[4];
        sub_100026F6C(v97, v98);
        SWTFollowUpType.rawValue.getter();
        Date.init()();
        TransparencySWIssue.init(issue:posted:slh:)();
        (*(v99 + 136))(v95, v98, v99);
        (*(v96 + 8))(v95, v109);
        v100 = v97[3];
        v101 = v97[4];
        sub_100026F6C(v97, v100);
        (*(v101 + 40))(v100, v101);
        v102 = v0[10];
        v103 = v0[11];
        sub_100026F6C(v0 + 7, v102);
        v104 = *(v103 + 16);
        v110 = v104 + *v104;
        v105 = v104[1];
        v106 = swift_task_alloc();
        v0[44] = v106;
        *v106 = v0;
        v106[1] = sub_1000B5390;
        v61 = v0[18];
        v62 = v97;
        v66 = v110;
        v63 = v114;
        v64 = v102;
        v65 = v103;
        goto LABEL_15;
      }

      v87 = v0[38];
      v88 = v0[36];
      v89 = v0[34];
      (*(v0[27] + 8))(v0[29], v0[26]);
    }

    else
    {
    }
  }

  v22 = v0[28];
  v21 = v0[29];
  v24 = v0[24];
  v23 = v0[25];
  v26 = v0[22];
  v25 = v0[23];
  v28 = v0[18];
  v27 = v0[19];
  v29 = v0[15];

  v30 = v0[1];

  return v30(9);
}

uint64_t sub_1000B4AE8()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1000B4BF8, v2, 0);
}

uint64_t sub_1000B4BF8()
{
  v77 = v0;
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[29];
  v6 = (v0[12] + v0[30]);
  sub_100024E14(v0 + 2);
  v7 = v6[3];
  v8 = v6[4];
  sub_100026F6C(v6, v7);
  (*(v8 + 64))(v7, v8);
  sub_100053230();
  v9 = v1;
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  if (v9)
  {

    (*(v12 + 8))(v10, v11);
  }

  else
  {
    (*(v12 + 8))(v0[19], v0[16]);
  }

  v14 = v0[35];
  v13 = v0[36];
  v15 = (v0[12] + v0[30]);
  v16 = v15[3];
  v17 = v15[4];
  sub_100026F6C(v15, v16);
  (*(v17 + 64))(v16, v17);
  sub_100051B88();
  v0[41] = v18;
  v19 = v18;
  v21 = v0[35];
  v20 = v0[36];
  v22 = v0[29];
  v23 = v0[30];
  v24 = v0[12];

  v25 = (v24 + v23);
  v26 = *(v24 + v23 + 24);
  v27 = v25[4];
  sub_100026F6C(v25, v26);
  (*(v27 + 64))(v26, v27);
  v28 = sub_1000531A4();
  v0[42] = v28;
  v0[43] = 0;
  v40 = v28;

  if (*(v40 + 16))
  {
    v75 = v40;
    v41 = v0[36];
    v42 = v0[24];
    Logger.init()();

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v46 = v0[35];
      v45 = v0[36];
      v47 = v0[24];
      v48 = v0[21];
      v72 = v0[20];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v76 = v50;
      *v49 = 136446466;
      *(v49 + 4) = sub_100021D24(v46, v45, &v76);
      *(v49 + 12) = 2050;
      *(v49 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v43, v44, "Found %{public}s AT split view from before CFU delay for %{public}lld epoch", v49, 0x16u);
      sub_100024E14(v50);

      (*(v48 + 8))(v47, v72);
    }

    else
    {
      v54 = v0[24];
      v56 = v0[20];
      v55 = v0[21];

      (*(v55 + 8))(v54, v56);
    }

    v57 = v0[38];
    v58 = v0[28];
    v59 = v0[15];
    v60 = v0[14];
    v73 = v0[13];
    v61 = (v0[12] + v0[30]);
    (*(v0[17] + 104))(v0[18], enum case for SWTFollowUpType.treeFork(_:), v0[16]);
    v62 = v61[3];
    v63 = v61[4];
    sub_100026F6C(v61, v62);
    SWTFollowUpType.rawValue.getter();
    Date.init()();
    TransparencySWIssue.init(issue:posted:slh:)();
    (*(v63 + 136))(v59, v62, v63);
    (*(v60 + 8))(v59, v73);
    v64 = v61[3];
    v65 = v61[4];
    sub_100026F6C(v61, v64);
    (*(v65 + 40))(v64, v65);
    v66 = v0[10];
    v67 = v0[11];
    sub_100026F6C(v0 + 7, v66);
    v68 = *(v67 + 16);
    v74 = (v68 + *v68);
    v69 = v68[1];
    v70 = swift_task_alloc();
    v0[44] = v70;
    *v70 = v0;
    v70[1] = sub_1000B5390;
    v71 = v0[18];

    return (v74)(v71, v61, v75, v66, v67);
  }

  else
  {
    v51 = v0[38];
    v52 = v0[36];
    v53 = v0[34];
    (*(v0[27] + 8))(v0[29], v0[26]);

    v30 = v0[28];
    v29 = v0[29];
    v32 = v0[24];
    v31 = v0[25];
    v34 = v0[22];
    v33 = v0[23];
    v36 = v0[18];
    v35 = v0[19];
    v37 = v0[15];

    v38 = v0[1];

    return v38(9);
  }
}

uint64_t sub_1000B5390()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_1000B54BC, v3, 0);
}

uint64_t sub_1000B54BC()
{
  v1 = v0[43];
  v2 = v0[41];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[29];
  v6 = (v0[12] + v0[30]);
  sub_100024E14(v0 + 7);
  v7 = v6[3];
  v8 = v6[4];
  sub_100026F6C(v6, v7);
  (*(v8 + 64))(v7, v8);
  sub_100053230();
  if (v1)
  {
  }

  v9 = v0[36];
  v10 = v0[34];
  v11 = v0[29];
  v12 = v0[26];
  v13 = v0[27];
  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[16];

  (*(v15 + 8))(v14, v16);
  (*(v13 + 8))(v11, v12);
  v18 = v0[28];
  v17 = v0[29];
  v20 = v0[24];
  v19 = v0[25];
  v22 = v0[22];
  v21 = v0[23];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[15];

  v26 = v0[1];

  return v26(9);
}

uint64_t sub_1000B5690(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B57B0(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B5944(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 9;
  *(v1 + 120) = sub_10008B5FC(&off_100136A50);
  v3 = OBJC_IVAR____TtC15swtransparencyd5Ready_priority;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  sub_100037608(a1, v1 + OBJC_IVAR____TtC15swtransparencyd5Ready_deps);
  return v1;
}

uint64_t sub_1000B59EC(unsigned __int8 a1)
{
  if (a1 >= 6u)
  {
    return (*(v1 + 8))(10);
  }

  else
  {
    return (*(v1 + 8))((0x805060A070AuLL >> (8 * a1)));
  }
}

uint64_t sub_1000B5A48()
{
  v1 = (*(v0 + 56) + OBJC_IVAR____TtC15swtransparencyd5Ready_deps);
  v2 = v1[3];
  v3 = v1[4];
  sub_100026F6C(v1, v2);
  v4 = *(v3 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1000B5B80;

  return v8(v0 + 16, v2, v3);
}

uint64_t sub_1000B5B80()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1000B5C90, v2, 0);
}

uint64_t sub_1000B5C90()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100026F6C(v0 + 2, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1000B5DB4;

  return v7(v1, v2);
}

uint64_t sub_1000B5DB4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1000B5EC4, v2, 0);
}

uint64_t sub_1000B5EC4()
{
  sub_100024E14((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0x8000000000000000);
}

uint64_t sub_1000B5F50(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B6070(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10008BC80;

  return v8(a1);
}

uint64_t sub_1000B6190(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100024248(&qword_100155348, &qword_100108650);
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
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
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

uint64_t sub_1000B6434(uint64_t result, uint64_t a2)
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

uint64_t sub_1000B65E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000B6190(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000435B4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000B675C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_1000B675C()
{
  v1 = v0;
  sub_100024248(&qword_100155348, &qword_100108650);
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

        result = v20;
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

unint64_t sub_1000B6988()
{
  v1 = v0;
  v22 = sub_1000B7268(_swiftEmptyArrayStorage);
  v2 = v0[17];
  v3 = v0[18];
  sub_100026F6C(v0 + 14, v2);
  v4 = (*(v3 + 48))(v2, v3);
  v5 = [v4 currentEnvironment];

  v6 = v0[17];
  v7 = v0[18];
  sub_100026F6C(v1 + 14, v1[17]);
  v8 = [(*(v7 + 32))(v6 v7)];
  swift_unknownObjectRelease();
  v9 = [v8 getEnvironment];
  swift_unknownObjectRelease();
  v10 = v1[17];
  v11 = v1[18];
  sub_100026F6C(v1 + 14, v10);
  v12 = [(*(v11 + 32))(v10 v11)];
  swift_unknownObjectRelease();
  v13 = v1[17];
  v14 = v1[18];
  sub_100026F6C(v1 + 14, v13);
  v15 = (*(v14 + 48))(v13, v14);
  v16 = [v15 configured];

  sub_1000AD070([objc_allocWithZone(NSNumber) initWithBool:v16], 0x676142676663, 0xE600000000000000);
  v17 = v1[17];
  v18 = v1[18];
  sub_100026F6C(v1 + 14, v17);
  v19 = (*(v18 + 48))(v17, v18);
  v20 = [v19 configurationExpired];

  sub_1000AD070([objc_allocWithZone(NSNumber) initWithBool:v20], 0x707845676663, 0xE600000000000000);
  sub_1000AD070([objc_allocWithZone(NSNumber) initWithUnsignedInteger:v5], 0x766E45624B747773, 0xE800000000000000);
  sub_1000AD070([objc_allocWithZone(NSNumber) initWithUnsignedInteger:v12], 0x766E457441747773, 0xE800000000000000);
  sub_1000AD070([objc_allocWithZone(NSNumber) initWithUnsignedInteger:v9], 0x766E45744B747773, 0xE800000000000000);
  return v22;
}

uint64_t sub_1000B6C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B6C84(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B48, type metadata accessor for Initial);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6CDC(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B50, type metadata accessor for WaitForNetwork);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6D34(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B58, type metadata accessor for InitialLoadPublicKeyState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6D8C(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B60, type metadata accessor for ReloadPublicKeyState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6DE4(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B68, type metadata accessor for MilestoneDownloadState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6E3C(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B70, type metadata accessor for PatConsistencyState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6E94(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B78, type metadata accessor for DetectSplitViewState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6EEC(uint64_t a1)
{
  result = sub_1000AF2A8(&qword_100154B80, type metadata accessor for Ready);
  *(a1 + 8) = result;
  return result;
}

void sub_1000B6F78()
{
  sub_10008B9A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000B7034()
{
  sub_10008B9A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000B7108(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void sub_1000B7160()
{
  sub_10008B9A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000B721C()
{
  result = qword_100152F18;
  if (!qword_100152F18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100152F18);
  }

  return result;
}

unint64_t sub_1000B7268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100024248(&qword_100155348, &qword_100108650);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000435B4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void sub_1000B738C(char a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();

  [v1 setHTTPMethod:v4];

  if (a1)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  [v1 setValue:v6 forHTTPHeaderField:v7];

LABEL_5:
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  [v1 setValue:v8 forHTTPHeaderField:v9];

  v10 = objc_opt_self();
  v11 = [v10 deviceUserAgent];
  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v12 = String._bridgeToObjectiveC()();
  [v1 setValue:v11 forHTTPHeaderField:v12];

  sub_100087F8C();
  BinaryInteger.description.getter();
  v13 = String._bridgeToObjectiveC()();

  [v1 setValue:v13 forHTTPHeaderField:off_1001523A0];

  v14 = ProtocolVersion_EnumDescriptor();
  v15 = [v14 textFormatNameForValue:kTransparencyProtocolVersion];

  [v2 setValue:v15 forHTTPHeaderField:off_1001523A8];
  v16 = [v10 transparencyVersionStr];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v2 setValue:v16 forHTTPHeaderField:off_1001523B8];

  v17 = [v10 automatedDeviceGroup];
  if (v17)
  {
    v18 = v17;
    [v2 setValue:v17 forHTTPHeaderField:off_1001523B0];
  }
}

uint64_t sub_1000B76E0(char a1)
{
  if (a1)
  {
    return 1414745936;
  }

  else
  {
    return 5522759;
  }
}

uint64_t sub_1000B7708(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100136E08, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B775C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1414745936;
  }

  else
  {
    v4 = 5522759;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1414745936;
  }

  else
  {
    v6 = 5522759;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000B77F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B7868()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000B78C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B7938@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100136E08, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000B7998(uint64_t *a1@<X8>)
{
  v2 = 5522759;
  if (*v1)
  {
    v2 = 1414745936;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_1000B79C8(uint64_t a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [v4 initWithURL:v6 cachePolicy:0 timeoutInterval:a2];

  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

unint64_t sub_1000B7A7C()
{
  result = qword_100155350;
  if (!qword_100155350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100155350);
  }

  return result;
}

double sub_1000BCE18(void *a1)
{
  sub_1000BD258(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

float sub_1000BCE54(void *a1)
{
  sub_1000BD258(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t sub_1000BCE94(uint64_t *a1)
{
  v2 = 0;
  v3 = 0;
  while (v2 <= 0x3F)
  {
    sub_1000BD258(a1, 1);
    v4 = *a1;
    v5 = a1[2];
    a1[2] = v5 + 1;
    LOBYTE(v4) = *(v4 + v5);
    v3 |= (v4 & 0x7F) << v2;
    v2 += 7;
    if ((v4 & 0x80) == 0)
    {
      return v3;
    }
  }

  sub_1000BD0CC(-105, @"Invalid VarInt64");
  return 0;
}

uint64_t sub_1000BCF34(void *a1)
{
  sub_1000BD258(a1, 8);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 8;
  return result;
}

uint64_t sub_1000BCF70(void *a1)
{
  sub_1000BD258(a1, 4);
  v2 = a1[2];
  result = *(*a1 + v2);
  a1[2] = v2 + 4;
  return result;
}

uint64_t sub_1000BD014(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == *(a1 + 8) || v2 == *(a1 + 24))
  {
    v3 = 0;
    *(a1 + 32) = 0;
  }

  else
  {
    v3 = sub_1000BCE94(a1);
    *(a1 + 32) = v3;
    if (!sub_1000F1CEC(v3))
    {
      sub_1000BD0CC(-103, @"Invalid wireformat in tag.");
      v3 = *(a1 + 32);
    }

    if (!sub_1000F1CE4(v3))
    {
      sub_1000BD0CC(-103, @"A zero field number on the wire is invalid.");
      return *(a1 + 32);
    }
  }

  return v3;
}

id sub_1000BD0CC(uint64_t a1, void *a2)
{
  if ([a2 length])
  {
    v8 = @"Reason";
    v9 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v6 = @"TransparencyGPBCodedInputStreamUnderlyingErrorKey";
  v7 = [NSError errorWithDomain:@"TransparencyGPBCodedInputStreamErrorDomain" code:a1 userInfo:v4];
  return [+[NSException exceptionWithName:reason:userInfo:](NSException raise:@"TransparencyGPBCodedInputStreamException"];
}

const __CFString *sub_1000BD1C4(uint64_t *a1)
{
  v2 = sub_1000BCE94(a1);
  if (!v2)
  {
    return &stru_100139EB0;
  }

  sub_1000BD258(a1, v2);
  result = [[NSString alloc] initWithBytes:*a1 + a1[2] length:v2 encoding:4];
  a1[2] += v2;
  if (!result)
  {
    sub_1000BD0CC(-104, 0);
    return 0;
  }

  return result;
}

void *sub_1000BD258(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[2] + a2;
  if (v3 > result[1])
  {
    result = sub_1000BD0CC(-100, 0);
  }

  v4 = v2[3];
  if (v3 > v4)
  {
    v2[2] = v4;

    return sub_1000BD0CC(-101, 0);
  }

  return result;
}

id sub_1000BD2C8(uint64_t *a1)
{
  v2 = sub_1000BCE94(a1);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2 & 0x7FFFFFFF;
  sub_1000BD258(a1, v3);
  result = [[NSData alloc] initWithBytes:*a1 + a1[2] length:v3];
  a1[2] += v3;
  return result;
}

id sub_1000BD334(uint64_t *a1)
{
  v2 = sub_1000BCE94(a1);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = v2 & 0x7FFFFFFF;
  sub_1000BD258(a1, v3);
  result = [[NSData alloc] initWithBytesNoCopy:*a1 + a1[2] length:v3 freeWhenDone:0];
  a1[2] += v3;
  return result;
}

unint64_t sub_1000BD3A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16) + a2;
  if (v4 > v3)
  {
    sub_1000BD0CC(-102, 0);
  }

  *(a1 + 24) = v4;
  return v3;
}

_DWORD *sub_1000BD404(_DWORD *result, int a2)
{
  if (result[8] != a2)
  {
    return sub_1000BD0CC(-103, @"Unexpected tag read");
  }

  return result;
}

uint64_t *sub_1000BDE70(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[1])
  {
    result = sub_1000C0E60(result);
    v4 = v3[2];
  }

  v5 = *v3;
  v3[2] = v4 + 1;
  *(v5 + v4) = a2;
  v6 = v3[2];
  if (v6 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v6 = v3[2];
  }

  v7 = *v3;
  v3[2] = v6 + 1;
  *(v7 + v6) = BYTE1(a2);
  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = BYTE2(a2);
  v10 = v3[2];
  if (v10 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v10 = v3[2];
  }

  v11 = *v3;
  v3[2] = v10 + 1;
  *(v11 + v10) = BYTE3(a2);
  v12 = v3[2];
  if (v12 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v12 = v3[2];
  }

  v13 = *v3;
  v3[2] = v12 + 1;
  *(v13 + v12) = BYTE4(a2);
  v14 = v3[2];
  if (v14 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v14 = v3[2];
  }

  v15 = *v3;
  v3[2] = v14 + 1;
  *(v15 + v14) = BYTE5(a2);
  v16 = v3[2];
  if (v16 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v16 = v3[2];
  }

  v17 = *v3;
  v3[2] = v16 + 1;
  *(v17 + v16) = BYTE6(a2);
  v18 = v3[2];
  if (v18 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v18 = v3[2];
  }

  v19 = *v3;
  v3[2] = v18 + 1;
  *(v19 + v18) = HIBYTE(a2);
  return result;
}

uint64_t *sub_1000BE058(uint64_t *result, int a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[1])
  {
    result = sub_1000C0E60(result);
    v4 = v3[2];
  }

  v5 = *v3;
  v3[2] = v4 + 1;
  *(v5 + v4) = a2;
  v6 = v3[2];
  if (v6 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v6 = v3[2];
  }

  v7 = *v3;
  v3[2] = v6 + 1;
  *(v7 + v6) = BYTE1(a2);
  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = BYTE2(a2);
  v10 = v3[2];
  if (v10 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v10 = v3[2];
  }

  v11 = *v3;
  v3[2] = v10 + 1;
  *(v11 + v10) = HIBYTE(a2);
  return result;
}

uint64_t *sub_1000BE190(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 >= 0x80)
  {
    do
    {
      v5 = v3[2];
      if (v5 == v3[1])
      {
        result = sub_1000C0E60(v3);
        v5 = v3[2];
      }

      v6 = *v3;
      v3[2] = v5 + 1;
      *(v6 + v5) = v2 | 0x80;
      v4 = v2 >> 7;
      v7 = v2 >= 0x4000;
      v2 >>= 7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = v4;
  return result;
}

uint64_t *sub_1000BE2F0(uint64_t *result, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return sub_1000BE190(result, a2);
  }

  else
  {
    return sub_1000BE618(result, a2);
  }
}

uint64_t *sub_1000BE618(uint64_t *result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  if (a2 >= 0x80)
  {
    do
    {
      v5 = v3[2];
      if (v5 == v3[1])
      {
        result = sub_1000C0E60(v3);
        v5 = v3[2];
      }

      v6 = *v3;
      v3[2] = v5 + 1;
      *(v6 + v5) = v2 | 0x80;
      v4 = v2 >> 7;
      v7 = v2 >= 0x4000;
      v2 >>= 7;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v8 = v3[2];
  if (v8 == v3[1])
  {
    result = sub_1000C0E60(v3);
    v8 = v3[2];
  }

  v9 = *v3;
  v3[2] = v8 + 1;
  *(v9 + v8) = v4;
  return result;
}

uint64_t *sub_1000BE9E0(uint64_t *a1, int a2, unsigned int a3)
{
  v5 = sub_1000F1CD4(a2, 0);
  sub_1000BE618(a1, v5);

  return sub_1000BE618(a1, a3);
}

uint64_t sub_1000BF170(uint64_t a1, unint64_t a2)
{
  result = sub_1000C1128(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000BF374(uint64_t a1, unint64_t a2)
{
  result = sub_1000C1128(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000BF574(uint64_t result, unsigned int a2)
{
  v2 = 10;
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (a2 >> 28)
  {
    v6 = 5;
  }

  if (a2 >= 0x200000)
  {
    v5 = v6;
  }

  if (a2 >= 0x4000)
  {
    v4 = v5;
  }

  if (a2 >= 0x80)
  {
    v3 = v4;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t sub_1000BF5CC(unsigned int a1)
{
  v1 = 1;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 >> 28)
  {
    v4 = 5;
  }

  if (a1 >= 0x200000)
  {
    v3 = v4;
  }

  if (a1 >= 0x4000)
  {
    v2 = v3;
  }

  if (a1 >= 0x80)
  {
    v1 = v2;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return v1;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_1000BF7D4(uint64_t result, unsigned int a2)
{
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (a2 >> 28)
  {
    v5 = 5;
  }

  if (a2 >= 0x200000)
  {
    v4 = v5;
  }

  if (a2 >= 0x4000)
  {
    v3 = v4;
  }

  if (a2 >= 0x80)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t sub_1000BF820(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >= 0x4000)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000BFDD4(uint64_t result, int a2)
{
  v2 = (2 * a2) ^ (a2 >> 31);
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v2 >> 28)
  {
    v5 = 5;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if (v2 >= 0x4000)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  *(*(*(result + 32) + 8) + 24) += v6;
  return result;
}

uint64_t sub_1000BFE28(int a1)
{
  v1 = (2 * a1) ^ (a1 >> 31);
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (v1 >> 28)
  {
    v4 = 5;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000C002C(uint64_t a1, uint64_t a2)
{
  result = sub_1000C1128((2 * a2) ^ (a2 >> 63));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000C07D0(uint64_t result, unsigned int a2)
{
  v2 = 10;
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (a2 >> 28)
  {
    v6 = 5;
  }

  if (a2 >= 0x200000)
  {
    v5 = v6;
  }

  if (a2 >= 0x4000)
  {
    v4 = v5;
  }

  if (a2 >= 0x80)
  {
    v3 = v4;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v2 = v3;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

void *sub_1000C0E60(void *result)
{
  v1 = result;
  if (!result[3])
  {
    result = [NSException raise:@"OutOfSpace" format:&stru_100139EB0];
  }

  if (v1[2])
  {
    result = [v1[3] write:*v1 maxLength:?];
    if (result != v1[2])
    {
      result = [NSException raise:@"WriteFailed" format:&stru_100139EB0];
    }

    v1[2] = 0;
  }

  return result;
}

uint64_t sub_1000C1128(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  if (a1 < 0x4000)
  {
    return 2;
  }

  if (a1 < 0x200000)
  {
    return 3;
  }

  if (!(a1 >> 28))
  {
    return 4;
  }

  if (!(a1 >> 35))
  {
    return 5;
  }

  if (!(a1 >> 42))
  {
    return 6;
  }

  if (!(a1 >> 49))
  {
    return 7;
  }

  v2 = 9;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v2 = 10;
  }

  if (HIBYTE(a1))
  {
    return v2;
  }

  else
  {
    return 8;
  }
}

char *sub_1000C11B8(void *a1)
{
  v1 = [a1 lengthOfBytesUsingEncoding:4];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

char *sub_1000C1210(void *a1)
{
  v1 = [a1 serializedSize];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

char *sub_1000C1260(void *a1)
{
  v1 = [a1 length];
  v2 = 1;
  v3 = 2;
  v4 = 3;
  v5 = 4;
  if (v1 >> 28)
  {
    v5 = 5;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  return &v1[v2];
}

uint64_t sub_1000C12B0(int a1)
{
  v1 = sub_1000F1CD4(a1, 0);
  v2 = 10;
  v3 = 11;
  v4 = 12;
  if (v1 >> 28)
  {
    v4 = 13;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 9;
  }
}

uint64_t sub_1000C1300(int a1)
{
  v1 = sub_1000F1CD4(a1, 0);
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (v1 >> 28)
  {
    v4 = 5;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000C1350(int a1)
{
  v1 = sub_1000F1CD4(a1, 0);
  v2 = 6;
  v3 = 7;
  v4 = 8;
  if (v1 >> 28)
  {
    v4 = 9;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1000C13A0(int a1, unint64_t a2)
{
  v3 = sub_1000F1CD4(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  return sub_1000C1128(a2) + v7;
}

uint64_t sub_1000C1408(int a1, unsigned int a2)
{
  v3 = sub_1000F1CD4(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  v8 = 10;
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (a2 >> 28)
  {
    v12 = 5;
  }

  if (a2 >= 0x200000)
  {
    v11 = v12;
  }

  if (a2 >= 0x4000)
  {
    v10 = v11;
  }

  if (a2 >= 0x80)
  {
    v9 = v10;
  }

  if ((a2 & 0x80000000) == 0)
  {
    v8 = v9;
  }

  return v8 + v4;
}

uint64_t sub_1000C14A8(int a1)
{
  v1 = sub_1000F1CD4(a1, 0);
  v2 = 3;
  v3 = 4;
  v4 = 5;
  if (v1 >> 28)
  {
    v4 = 6;
  }

  if (v1 >= 0x200000)
  {
    v3 = v4;
  }

  if (v1 >= 0x4000)
  {
    v2 = v3;
  }

  if (v1 >= 0x80)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

char *sub_1000C14F8(int a1, void *a2)
{
  v3 = sub_1000F1CD4(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 lengthOfBytesUsingEncoding:4];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

char *sub_1000C159C(int a1, void *a2)
{
  v3 = sub_1000F1CD4(a1, 0);
  v4 = 4;
  v5 = 6;
  v6 = 10;
  if (!(v3 >> 28))
  {
    v6 = 8;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 2;
  }

  return [a2 serializedSize] + v7;
}

char *sub_1000C1608(int a1, void *a2)
{
  v3 = sub_1000F1CD4(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 serializedSize];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

char *sub_1000C16A8(int a1, void *a2)
{
  v3 = sub_1000F1CD4(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = [a2 length];
  v9 = 1;
  v10 = 2;
  v11 = 3;
  v12 = 4;
  if (v8 >> 28)
  {
    v12 = 5;
  }

  if (v8 >= 0x200000)
  {
    v11 = v12;
  }

  if (v8 >= 0x4000)
  {
    v10 = v11;
  }

  if (v8 >= 0x80)
  {
    v9 = v10;
  }

  return &v8[v7 + v9];
}

uint64_t sub_1000C1748(int a1, unsigned int a2)
{
  v3 = sub_1000F1CD4(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  v8 = 1;
  v9 = 2;
  v10 = 3;
  v11 = 4;
  if (a2 >> 28)
  {
    v11 = 5;
  }

  if (a2 >= 0x200000)
  {
    v10 = v11;
  }

  if (a2 >= 0x4000)
  {
    v9 = v10;
  }

  if (a2 >= 0x80)
  {
    v8 = v9;
  }

  return v8 + v4;
}

uint64_t sub_1000C17DC(int a1, int a2)
{
  v3 = sub_1000F1CD4(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  v8 = (2 * a2) ^ (a2 >> 31);
  v9 = 2;
  v10 = 3;
  v11 = 4;
  if (v8 >> 28)
  {
    v11 = 5;
  }

  if (v8 >= 0x200000)
  {
    v10 = v11;
  }

  if (v8 >= 0x4000)
  {
    v9 = v10;
  }

  if (v8 >= 0x80)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  return v12 + v4;
}

uint64_t sub_1000C1878(int a1, uint64_t a2)
{
  v3 = sub_1000F1CD4(a1, 0);
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (v3 >> 28)
  {
    v6 = 5;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if (v3 >= 0x4000)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1;
  }

  return sub_1000C1128((2 * a2) ^ (a2 >> 63)) + v7;
}

char *sub_1000C18E4(unsigned int a1, void *a2)
{
  v4 = sub_1000F1CD4(1, 0);
  v5 = 4;
  v6 = 6;
  v7 = 10;
  if (!(v4 >> 28))
  {
    v7 = 8;
  }

  if (v4 >= 0x200000)
  {
    v6 = v7;
  }

  if (v4 >= 0x4000)
  {
    v5 = v6;
  }

  if (v4 >= 0x80)
  {
    v8 = v5;
  }

  else
  {
    v8 = 2;
  }

  v9 = sub_1000C1748(2, a1) + v8;
  return &sub_1000C1608(3, a2)[v9];
}

char *sub_1000C1974(unsigned int a1, void *a2)
{
  v4 = sub_1000F1CD4(1, 0);
  v5 = 4;
  v6 = 6;
  v7 = 10;
  if (!(v4 >> 28))
  {
    v7 = 8;
  }

  if (v4 >= 0x200000)
  {
    v6 = v7;
  }

  if (v4 >= 0x4000)
  {
    v5 = v6;
  }

  if (v4 >= 0x80)
  {
    v8 = v5;
  }

  else
  {
    v8 = 2;
  }

  v9 = sub_1000C1748(2, a1) + v8;
  return &sub_1000C16A8(3, a2)[v9];
}

uint64_t sub_1000C1A04(int a1, int a2)
{
  v3 = sub_1000F1CD4(a1, 0);
  v4 = 1;
  v5 = 2;
  v6 = 3;
  v7 = 4;
  if (v3 >> 28)
  {
    v7 = 5;
  }

  if (v3 >= 0x200000)
  {
    v6 = v7;
  }

  if (v3 >= 0x4000)
  {
    v5 = v6;
  }

  if (v3 >= 0x80)
  {
    v4 = v5;
  }

  return v4 << (a2 == 16);
}

SEL sub_1000C2B98(char *__s, char *str, const char *a3, int a4)
{
  if (!__s && !a3 && (a4 & 1) == 0)
  {

    return sel_getUid(str);
  }

  if (__s)
  {
    v9 = strlen(__s);
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(str);
  v11 = v10;
  if (a3)
  {
    v10 = strlen(a3);
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v18 = &v18;
  v13 = v11 + v9 + v12;
  v14 = v13 + 2;
  if (a4)
  {
    v15 = v13 + 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  __chkstk_darwin(v10);
  v17 = &v18 - v16;
  bzero(&v18 - v16, v15);
  if (!__s)
  {
    memcpy(v17, str, v11);
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  memcpy(v17, __s, v9);
  memcpy(&v17[v9], str, v11);
  v17[v9] = __toupper(v17[v9]);
  if (a3)
  {
LABEL_18:
    memcpy(&v17[v9 + v11], a3, v12);
  }

LABEL_19:
  if (a4)
  {
    v17[v14 - 2] = 58;
  }

  v17[v15 - 1] = 0;
  return sel_getUid(v17);
}

uint64_t sub_1000C2FE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 28);
  if ((v2 & 0xF00) != 0)
  {
    v3 = 15;
    LOBYTE(v4) = 0;
  }

  else
  {
    v3 = *(v1 + 30);
    v4 = (v2 >> 2) & 1;
  }

  v5 = sub_1000F1CFC(v3, v4);
  v6 = *(v1 + 16);

  return sub_1000F1CD4(v6, v5);
}

uint64_t sub_1000C3044(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_1000F1CFC(*(v1 + 30), (*(v1 + 28) & 4) == 0);
  v3 = *(v1 + 16);

  return sub_1000F1CD4(v3, v2);
}

uint64_t sub_1000C4088(void *a1, uint64_t a2)
{
  v4 = *(*(a2 + 8) + 30);
  v5 = [a1 keyEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v9 = [a1 objectForKeyedSubscript:v7];
      v10 = sub_1000C14F8(1, v7);
      v11 = &v10[sub_1000C416C(v9, v4)];
      v8 += &v11[sub_1000BF820(v11)];
      v7 = [v5 nextObject];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v12 = sub_1000C1A04(*(*(a2 + 8) + 16), 15);
  return v8 + [a1 count] * v12;
}

char *sub_1000C416C(void *a1, int a2)
{
  switch(a2)
  {
    case 13:
      return sub_1000C16A8(2, a1);
    case 14:
      return sub_1000C14F8(2, a1);
    case 15:
      return sub_1000C1608(2, a1);
  }

  return 0;
}

id sub_1000C41B4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(v5 + 30);
  v7 = sub_1000F1CD4(*(v5 + 16), 2);
  v8 = [a2 keyEnumerator];
  result = [v8 nextObject];
  if (result)
  {
    v10 = result;
    do
    {
      v11 = [a2 objectForKeyedSubscript:v10];
      [a1 writeInt32NoTag:v7];
      v12 = sub_1000C14F8(1, v10);
      [a1 writeInt32NoTag:{sub_1000C416C(v11, v6) + v12}];
      [a1 writeString:1 value:v10];
      sub_1000C42A0(a1, v11, v6);
      result = [v8 nextObject];
      v10 = result;
    }

    while (result);
  }

  return result;
}

void *sub_1000C42A0(void *a1, const char *a2, int a3)
{
  switch(a3)
  {
    case 13:
      return [a1 writeBytes:2 value:a2];
    case 14:
      return [a1 writeString:2 value:a2];
    case 15:
      return [a1 writeMessage:2 value:a2];
  }

  return a1;
}

BOOL sub_1000C42E0(void *a1)
{
  v1 = [a1 objectEnumerator];
  do
  {
    v2 = [v1 nextObject];
    v3 = v2;
  }

  while (v2 && ([v2 isInitialized] & 1) != 0);
  return v3 == 0;
}

void sub_1000C4328(void *a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = [a4 mapKeyDataType];
  v10 = *(a4[1] + 30);
  v24 = 0;
  v25 = 0;
  if (v10 == 17)
  {
    v24 = [a4 defaultValue];
  }

  v11 = sub_1000F1CFC(v9, 0);
  v12 = sub_1000F1CD4(1, v11);
  v13 = sub_1000F1CFC(v10, 0);
  v14 = sub_1000F1CD4(2, v13);
  while (1)
  {
    while (1)
    {
      v15 = sub_1000BD014((a2 + 1));
      if (v15 == v12)
      {
        v16 = &v25;
        v17 = a2;
        v18 = v9;
        goto LABEL_8;
      }

      v19 = v15;
      if (v15 != v14)
      {
        break;
      }

      v16 = &v24;
      v17 = a2;
      v18 = v10;
LABEL_8:
      sub_1000C45A4(v17, v16, v18, a3, a4);
    }

    if (!v15)
    {
      break;
    }

    if (([a2 skipField:v15] & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v20 = v25;
  if (v9 == 14 && !v25)
  {
    v20 = &stru_100139EB0;
    v25 = v20;
  }

  v21 = v24;
  if ((v10 - 13) > 3u || v24)
  {
    goto LABEL_25;
  }

  switch(v10)
  {
    case 13:
      v22 = sub_1000EE0C0();
      goto LABEL_23;
    case 15:
      v22 = objc_alloc_init([a4 msgClass]);
LABEL_23:
      v21 = v22;
      v24 = v22;
      goto LABEL_25;
    case 14:
      v22 = &stru_100139EB0;
      goto LABEL_23;
  }

  v21 = 0;
LABEL_25:
  if (v9 == 14 && (v10 - 13) <= 3u)
  {
    [a1 setObject:v21 forKey:v20];
    goto LABEL_34;
  }

  if (v10 == 17 && (*(a4[1] + 28) & 0x1000) != 0 && ![a4 isValidEnumValue:v21])
  {
    [a5 addUnknownMapEntry:*(a4[1] + 16) value:{objc_msgSend(a1, "serializedDataForUnknownValue:forKey:keyDataType:", v21, &v25, v9)}];
  }

  else
  {
    [a1 setTransparencyGPBGenericValue:&v24 forTransparencyGPBGenericValueKey:&v25];
  }

LABEL_32:
  if ((v9 - 13) > 3u)
  {
    goto LABEL_35;
  }

  v20 = v25;
LABEL_34:

LABEL_35:
  if ((v10 - 13) <= 3u)
  {
  }
}

void sub_1000C45A4(uint64_t *a1, id *a2, int a3, uint64_t a4, void *a5)
{
  switch(a3)
  {
    case 0:
      *a2 = sub_1000BCFF4(a1 + 1);
      return;
    case 1:
    case 2:
      v8 = sub_1000BCF70(a1 + 1);
      goto LABEL_15;
    case 3:
      *a2 = sub_1000BCE54(a1 + 1);
      return;
    case 4:
    case 5:
      v7 = sub_1000BCF34(a1 + 1);
      goto LABEL_13;
    case 6:
      *a2 = sub_1000BCE18(a1 + 1);
      return;
    case 7:
    case 11:
    case 17:
      v8 = sub_1000BCF1C(a1 + 1);
      goto LABEL_15;
    case 8:
    case 12:
      v7 = sub_1000BCE90(a1 + 1);
      goto LABEL_13;
    case 9:
      v8 = sub_1000BCFAC(a1 + 1);
LABEL_15:
      *a2 = v8;
      return;
    case 10:
      v7 = sub_1000BCFD0(a1 + 1);
      goto LABEL_13;
    case 13:

      v7 = sub_1000BD2C8(a1 + 1);
      goto LABEL_13;
    case 14:

      v7 = sub_1000BD1C4(a1 + 1);
LABEL_13:
      *a2 = v7;
      break;
    case 15:
      v10 = objc_alloc_init([a5 msgClass]);
      [a1 readMessage:v10 extensionRegistry:a4];

      *a2 = v10;
      break;
    default:
      return;
  }
}

uint64_t sub_1000C4C68(unsigned int a1, int a2, int a3)
{
  if (a3 == 1)
  {
    return sub_1000C1350(a2);
  }

  if (a3 == 11)
  {
    return sub_1000C1748(a2, a1);
  }

  return 0;
}

uint64_t sub_1000C4EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000C5560(unsigned int a1, int a2, int a3)
{
  switch(a3)
  {
    case 2:
      return sub_1000C1350(a2);
    case 9:
      return sub_1000C17DC(a2, a1);
    case 7:
      return sub_1000C1408(a2, a1);
  }

  return 0;
}

id sub_1000C5700(id result, uint64_t a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 2:
      return [result writeSFixed32:a3 value:a2];
    case 9:
      return [result writeSInt32:a3 value:a2];
    case 7:
      return [result writeInt32:a3 value:a2];
  }

  return result;
}

uint64_t sub_1000C5808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000C5E78(unint64_t a1, int a2, int a3)
{
  if (a3 == 4)
  {
    return sub_1000C12B0(a2);
  }

  if (a3 == 12)
  {
    return sub_1000C13A0(a2, a1);
  }

  return 0;
}

uint64_t sub_1000C60F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000C6768(unint64_t a1, int a2, int a3)
{
  switch(a3)
  {
    case 5:
      return sub_1000C12B0(a2);
    case 10:
      return sub_1000C1878(a2, a1);
    case 8:
      return sub_1000C13A0(a2, a1);
  }

  return 0;
}

id sub_1000C6908(id result, uint64_t a2, uint64_t a3, int a4)
{
  switch(a4)
  {
    case 5:
      return [result writeSFixed64:a3 value:a2];
    case 10:
      return [result writeSInt64:a3 value:a2];
    case 8:
      return [result writeInt64:a3 value:a2];
  }

  return result;
}

uint64_t sub_1000C6A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000C727C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000C7ADC(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000C835C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000C8CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000C9940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_1000CA1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000CAA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000CB2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000CBB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000CC398(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000CCBD8(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000CD438(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000CDD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000CE9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_1000CF238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000CFAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D0390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D0C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D14A0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D1D00(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D2580(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D2F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D3B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_1000D43C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%u", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D4C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%d", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D54D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%llu", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D5D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%lld", a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D65A8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  if (a3)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D6DE8(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D7648(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D7F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = [NSNumber numberWithInt:a3];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

uint64_t sub_1000D8BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a2];
  v6 = *(v4 + 16);

  return v6(v4, v5, a3);
}

uint64_t sub_1000D93F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%u", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_1000D9BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%d", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_1000DA3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%llu", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_1000DABDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%lld", a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_1000DB3A0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  return (*(v3 + 16))(v3, a2, v4);
}

uint64_t sub_1000DBB1C(uint64_t a1, uint64_t a2, float a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%.*g", 6, a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_1000DC2F0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"%.*lg", 15, *&a3];
  v6 = *(v4 + 16);

  return v6(v4, a2, v5);
}

uint64_t sub_1000DCBA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [NSNumber numberWithInt:?];
  v5 = *(v3 + 16);

  return v5(v3, a2, v4);
}

id sub_1000E1570(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 8);
  if (*(v5 + 45))
  {
    if ((*(v5 + 45) & 2) != 0)
    {
      [a3 writeTag:*(v5 + 40) format:2];
      v10 = *(v5 + 44);
      if (v10 > 6)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [a2 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v12 = 0;
          v15 = *v25;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(a2);
              }

              v12 += sub_1000E2454(*(v5 + 44), *(*(&v24 + 1) + 8 * i));
            }

            v14 = [a2 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v11 = qword_100108728[v10];
        v12 = [a2 count] * v11;
      }

      [a3 writeRawVarintSizeTAs32:v12];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      result = [a2 countByEnumeratingWithState:&v20 objects:&v28 count:16];
      if (result)
      {
        v17 = result;
        v18 = *v21;
        do
        {
          v19 = 0;
          do
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(a2);
            }

            switch(*(v5 + 44))
            {
              case 0:
                [a3 writeBoolNoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "BOOLValue")}];
                break;
              case 1:
                [a3 writeFixed32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedIntValue")}];
                break;
              case 2:
                [a3 writeSFixed32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 3:
                [*(*(&v20 + 1) + 8 * v19) floatValue];
                [a3 writeFloatNoTag:?];
                break;
              case 4:
                [a3 writeFixed64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedLongLongValue")}];
                break;
              case 5:
                [a3 writeSFixed64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 6:
                [*(*(&v20 + 1) + 8 * v19) doubleValue];
                [a3 writeDoubleNoTag:?];
                break;
              case 7:
                [a3 writeInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 8:
                [a3 writeInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 9:
                [a3 writeSInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              case 0xA:
                [a3 writeSInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "longLongValue")}];
                break;
              case 0xB:
                [a3 writeUInt32NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedIntValue")}];
                break;
              case 0xC:
                [a3 writeUInt64NoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "unsignedLongLongValue")}];
                break;
              case 0xD:
                [a3 writeBytesNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0xE:
                [a3 writeStringNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0xF:
                [a3 writeMessageNoTag:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0x10:
                [a3 writeGroupNoTag:*(v5 + 40) value:*(*(&v20 + 1) + 8 * v19)];
                break;
              case 0x11:
                [a3 writeEnumNoTag:{objc_msgSend(*(*(&v20 + 1) + 8 * v19), "intValue")}];
                break;
              default:
                break;
            }

            v19 = v19 + 1;
          }

          while (v17 != v19);
          result = [a2 countByEnumeratingWithState:&v20 objects:&v28 count:16];
          v17 = result;
        }

        while (result);
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (result)
      {
        v7 = result;
        v8 = *v29;
        do
        {
          v9 = 0;
          do
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(a2);
            }

            sub_1000E1A24(*(*(&v28 + 1) + 8 * v9), v5, a3);
            v9 = v9 + 1;
          }

          while (v7 != v9);
          result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
          v7 = result;
        }

        while (result);
      }
    }
  }

  else
  {

    return sub_1000E1A24(a2, v5, a3);
  }

  return result;
}

id sub_1000E1A24(id result, uint64_t a2, void *a3)
{
  switch(*(a2 + 44))
  {
    case 0:
      v4 = *(a2 + 40);
      v5 = [result BOOLValue];

      result = [a3 writeBool:v4 value:v5];
      break;
    case 1:
      v22 = *(a2 + 40);
      v23 = [result unsignedIntValue];

      result = [a3 writeFixed32:v22 value:v23];
      break;
    case 2:
      v16 = *(a2 + 40);
      v17 = [result intValue];

      result = [a3 writeSFixed32:v16 value:v17];
      break;
    case 3:
      v19 = *(a2 + 40);
      [result floatValue];

      result = [a3 writeFloat:v19 value:?];
      break;
    case 4:
      v10 = *(a2 + 40);
      v11 = [result unsignedLongLongValue];

      result = [a3 writeFixed64:v10 value:v11];
      break;
    case 5:
      v26 = *(a2 + 40);
      v27 = [result longLongValue];

      result = [a3 writeSFixed64:v26 value:v27];
      break;
    case 6:
      v29 = *(a2 + 40);
      [result doubleValue];

      result = [a3 writeDouble:v29 value:?];
      break;
    case 7:
      v20 = *(a2 + 40);
      v21 = [result intValue];

      result = [a3 writeInt32:v20 value:v21];
      break;
    case 8:
      v32 = *(a2 + 40);
      v33 = [result longLongValue];

      result = [a3 writeInt64:v32 value:v33];
      break;
    case 9:
      v14 = *(a2 + 40);
      v15 = [result intValue];

      result = [a3 writeSInt32:v14 value:v15];
      break;
    case 0xA:
      v30 = *(a2 + 40);
      v31 = [result longLongValue];

      result = [a3 writeSInt64:v30 value:v31];
      break;
    case 0xB:
      v8 = *(a2 + 40);
      v9 = [result unsignedIntValue];

      result = [a3 writeUInt32:v8 value:v9];
      break;
    case 0xC:
      v12 = *(a2 + 40);
      v13 = [result unsignedLongLongValue];

      result = [a3 writeUInt64:v12 value:v13];
      break;
    case 0xD:
      v28 = *(a2 + 40);

      result = [a3 writeBytes:v28 value:result];
      break;
    case 0xE:
      v7 = *(a2 + 40);

      result = [a3 writeString:v7 value:result];
      break;
    case 0xF:
      v18 = *(a2 + 40);
      if ((*(a2 + 45) & 4) != 0)
      {

        result = [a3 writeMessageSetExtension:v18 value:result];
      }

      else
      {

        result = [a3 writeMessage:v18 value:result];
      }

      break;
    case 0x10:
      v6 = *(a2 + 40);

      result = [a3 writeGroup:v6 value:result];
      break;
    case 0x11:
      v24 = *(a2 + 40);
      v25 = [result intValue];

      result = [a3 writeEnum:v24 value:v25];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000E1E40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 45))
  {
    if ((*(v3 + 45) & 2) != 0)
    {
      v11 = *(v3 + 44);
      if (v11 > 6)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v14 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          v15 = v14;
          v13 = 0;
          v16 = *v20;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(a2);
              }

              v13 += sub_1000E2454(*(v3 + 44), *(*(&v19 + 1) + 8 * i));
            }

            v15 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v15);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v12 = qword_100108728[v11];
        v13 = [a2 count] * v12;
      }

      v18 = sub_1000C1300(*(v3 + 40));
      return v18 + v13 + sub_1000BF820(v13);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v20;
        do
        {
          for (j = 0; j != v7; j = j + 1)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(a2);
            }

            v8 += sub_1000E2088(v3, *(*(&v19 + 1) + 8 * j));
          }

          v7 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v7);
      }

      else
      {
        return 0;
      }
    }

    return v8;
  }

  else
  {
    v4 = *(a1 + 8);

    return sub_1000E2088(v4, a2);
  }
}

uint64_t sub_1000E2088(uint64_t result, void *a2)
{
  switch(*(result + 44))
  {
    case 0:
      v2 = *(result + 40);
      [a2 BOOLValue];

      return sub_1000C14A8(v2);
    case 1:
      v22 = *(result + 40);
      [a2 unsignedIntValue];
      v15 = v22;

      return sub_1000C1350(v15);
    case 2:
      v14 = *(result + 40);
      [a2 intValue];
      v15 = v14;

      return sub_1000C1350(v15);
    case 3:
      v18 = *(result + 40);
      [a2 floatValue];
      v15 = v18;

      return sub_1000C1350(v15);
    case 4:
      v7 = *(result + 40);
      [a2 unsignedLongLongValue];
      v8 = v7;

      return sub_1000C12B0(v8);
    case 5:
      v24 = *(result + 40);
      [a2 longLongValue];
      v8 = v24;

      return sub_1000C12B0(v8);
    case 6:
      v26 = *(result + 40);
      [a2 doubleValue];
      v8 = v26;

      return sub_1000C12B0(v8);
    case 7:
      v19 = *(result + 40);
      v20 = [a2 intValue];
      v21 = v19;

      goto LABEL_35;
    case 8:
      v29 = *(result + 40);
      v10 = [a2 longLongValue];
      v11 = v29;

      goto LABEL_19;
    case 9:
      v12 = *(result + 40);
      v13 = [a2 intValue];

      return sub_1000C17DC(v12, v13);
    case 0xA:
      v27 = *(result + 40);
      v28 = [a2 longLongValue];

      return sub_1000C1878(v27, v28);
    case 0xB:
      v5 = *(result + 40);
      v6 = [a2 unsignedIntValue];

      return sub_1000C1748(v5, v6);
    case 0xC:
      v9 = *(result + 40);
      v10 = [a2 unsignedLongLongValue];
      v11 = v9;

LABEL_19:
      result = sub_1000C13A0(v11, v10);
      break;
    case 0xD:
      v25 = *(result + 40);

      result = sub_1000C16A8(v25, a2);
      break;
    case 0xE:
      v4 = *(result + 40);

      result = sub_1000C14F8(v4, a2);
      break;
    case 0xF:
      v16 = *(result + 45);
      v17 = *(result + 40);
      if ((v16 & 4) != 0)
      {

        result = sub_1000C18E4(v17, a2);
      }

      else
      {

        result = sub_1000C1608(v17, a2);
      }

      break;
    case 0x10:
      v3 = *(result + 40);

      result = sub_1000C159C(v3, a2);
      break;
    case 0x11:
      v23 = *(result + 40);
      v20 = [a2 intValue];
      v21 = v23;

LABEL_35:
      result = sub_1000C1408(v21, v20);
      break;
    default:
      return result;
  }

  return result;
}

id sub_1000E2454(id result, void *a2)
{
  switch(result)
  {
    case 0:
      [a2 BOOLValue];

      return sub_10002AB0C();
    case 1:
      [a2 unsignedIntValue];

      return sub_10002ACAC();
    case 2:
      [a2 intValue];

      return sub_10002ACAC();
    case 3:
      [a2 floatValue];

      return sub_10002ACAC();
    case 4:
      [a2 unsignedLongLongValue];

      return sub_1000B39D4();
    case 5:
      [a2 longLongValue];

      return sub_1000B39D4();
    case 6:
      [a2 doubleValue];

      return sub_1000B39D4();
    case 7:
      v5 = [a2 intValue];

      goto LABEL_34;
    case 8:
      v3 = [a2 longLongValue];

      goto LABEL_19;
    case 9:
      v4 = [a2 intValue];

      return sub_1000BFE28(v4);
    case 10:
      v6 = [a2 longLongValue];

      return sub_1000C006C(v6);
    case 11:
      v2 = [a2 unsignedIntValue];

      return sub_1000BF820(v2);
    case 12:
      v3 = [a2 unsignedLongLongValue];

LABEL_19:
      result = sub_1000BF1AC(v3);
      break;
    case 13:

      result = sub_1000C1260(a2);
      break;
    case 14:

      result = sub_1000C11B8(a2);
      break;
    case 15:

      result = sub_1000C1210(a2);
      break;
    case 16:

      result = [a2 serializedSize];
      break;
    case 17:
      v5 = [a2 intValue];

LABEL_34:
      result = sub_1000BF5CC(v5);
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000E2944(void *key, const __CFDictionary *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {

    CFDictionaryApplyFunction(a2, sub_1000E29FC, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
    CFDictionarySetValue(theDict, key, MutableCopy);

    CFRelease(MutableCopy);
  }
}

void *sub_1000E2A80(objc_class *a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(a1);
  v5[4] = a2;
  v5[5] = a3;
  return v5;
}

id sub_1000E2AD4(void *a1)
{
  result = a1[4];
  if (result)
  {
    v3 = a1[5];
    if (v3)
    {
      return sub_1000EED0C(result, v3, a1);
    }

    else
    {
      return [result setExtension:a1[6] value:?];
    }
  }

  return result;
}

id sub_1000E2AFC(void *a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *([objc_opt_class() descriptor] + 1);
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 fieldType] == 1 && sub_1000EE6CC(a1, v9) == a2)
        {
          if (*(v9[1] + 30) - 13 >= 4)
          {
            v10 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
          }

          else
          {
            v10 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
          }

          *(a2 + *v10) = 0;
          return sub_1000E2AD4(a1);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

id sub_1000E2C68(void *a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *([objc_opt_class() descriptor] + 1);
  result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([v9 fieldType] == 2 && sub_1000EE6CC(a1, v9) == a2)
        {
          if ([v9 mapKeyDataType] == 14 && *(v9[1] + 30) - 13 < 4)
          {
            v10 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
          }

          else
          {
            v10 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
          }

          *(a2 + *v10) = 0;
          return sub_1000E2AD4(a1);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000E2DE8(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      *(a1 + 32) = 0;

      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }
  }
}

NSError *sub_1000E30F4(void *a1)
{
  if (![objc_msgSend(a1 "name")] || (result = objc_msgSend(objc_msgSend(a1, "userInfo"), "objectForKeyedSubscript:", @"TransparencyGPBCodedInputStreamUnderlyingErrorKey")) == 0)
  {
    v3 = [a1 reason];
    if ([v3 length])
    {
      v5 = @"Reason";
      v6 = v3;
      v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    }

    else
    {
      v4 = 0;
    }

    return [NSError errorWithDomain:@"TransparencyGPBMessageErrorDomain" code:-100 userInfo:v4];
  }

  return result;
}

void sub_1000E3708(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 copyWithZone:*(a1 + 40)];
  [*(a1 + 32) setObject:v5 forKey:a2];
}

NSMutableDictionary *sub_1000E37EC(void *a1, uint64_t a2)
{
  if (![a1 count])
  {
    return 0;
  }

  v4 = -[NSMutableDictionary initWithCapacity:](+[NSMutableDictionary allocWithZone:](NSMutableDictionary, "allocWithZone:", a2), "initWithCapacity:", [a1 count]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v21 = *v29;
    v22 = v4;
    do
    {
      v8 = 0;
      v23 = v6;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [a1 objectForKey:v9];
        v11 = *(v9[1] + 44) - 15;
        if ([v9 isRepeated])
        {
          if (v11 > 1)
          {
            v18 = [v10 mutableCopyWithZone:a2];
            goto LABEL_20;
          }

          v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v25;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v25 != v15)
                {
                  objc_enumerationMutation(v10);
                }

                v17 = [*(*(&v24 + 1) + 8 * i) copyWithZone:a2];
                [v12 addObject:v17];
              }

              v14 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v14);
          }

          v4 = v22;
          [(NSMutableDictionary *)v22 setObject:v12 forKey:v9];

          v7 = v21;
          v6 = v23;
        }

        else
        {
          if (v11 <= 1)
          {
            v18 = [v10 copyWithZone:a2];
LABEL_20:
            v19 = v18;
            [(NSMutableDictionary *)v4 setObject:v18 forKey:v9];

            goto LABEL_22;
          }

          [(NSMutableDictionary *)v4 setObject:v10 forKey:v9];
        }

LABEL_22:
        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [a1 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  return v4;
}

void *sub_1000E3DE8(uint64_t a1, void *a2)
{
  v4 = a2[1];
  if (*(v4 + 30) - 15 >= 2)
  {
    if (sub_1000EEBFC(a1, *(v4 + 20), *(v4 + 16)))
    {
      return *(*(a1 + 64) + *(a2[1] + 24));
    }

    else
    {
      return [a2 defaultValue];
    }
  }

  else
  {
    v5 = (*(a1 + 64) + *(v4 + 24));
    v6 = atomic_load(v5);
    if (!v6)
    {
      v6 = objc_alloc_init([a2 msgClass]);
      v6[4] = a1;
      v7 = a2;
      v8 = 0;
      v6[5] = v7;
      atomic_compare_exchange_strong(v5, &v8, v6);
      if (v8)
      {
        sub_1000E2DE8(v6);

        return v8;
      }
    }
  }

  return v6;
}

void sub_1000E41D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000E41F0(void *result, void *a2, void *a3, _BYTE *a4)
{
  if (*(a2[1] + 44) - 15 <= 1)
  {
    v6 = result;
    if ([a2 isRepeated])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (!result)
      {
        return result;
      }

      v7 = result;
      v8 = *v11;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(a3);
        }

        result = [*(*(&v10 + 1) + 8 * v9) isInitialized];
        if (!result)
        {
          break;
        }

        if (v7 == ++v9)
        {
          result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
          v7 = result;
          if (result)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }

    else
    {
      result = [a3 isInitialized];
      if (result)
      {
        return result;
      }
    }

    *(*(v6[4] + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1000E5504(uint64_t a1, void *a2)
{
  [a2 containingMessageClass];
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return +[NSException raise:format:](NSException, "raise:format:", NSInvalidArgumentException, @"Extension %@ used on wrong class (%@ instead of %@)", [a2 singletonName], objc_opt_class(), objc_msgSend(a2, "containingMessageClass"));
  }

  return result;
}

void sub_1000E5ED0(void *a1, int a2, uint64_t *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v9 = sub_1000BCF1C(a3 + 1);
    v10 = sub_1000BD3A4((a3 + 1), v9);
    while (sub_1000BD3F8((a3 + 1)))
    {
      v11 = sub_1000EA2D0(a1, a5, a3, a4, 0);
      if (v11)
      {
        v12 = v11;
        [a5 addExtension:a1 value:v11];
      }
    }

    sub_1000BD3F0((a3 + 1), v10);
  }

  else
  {
    v13 = a1[1];
    if (*(v13 + 45))
    {
      v15 = sub_1000EA2D0(a1, a5, a3, a4, 0);
      if (!v15)
      {
        return;
      }

      v17 = v15;
      [a5 addExtension:a1 value:v15];
    }

    else
    {
      if (*(v13 + 44) - 15 > 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = [a5 getExistingExtension:a1];
      }

      v16 = sub_1000EA2D0(a1, a5, a3, a4, v14);
      if (!v16)
      {
        return;
      }

      v17 = v16;
      [a5 setExtension:a1 value:v16];
    }
  }
}

uint64_t sub_1000E6094(void *a1)
{
  result = a1[1];
  if (!result)
  {
    a1[1] = objc_alloc_init(TransparencyGPBUnknownFieldSet);
    sub_1000E2AD4(a1);
    return a1[1];
  }

  return result;
}

uint64_t sub_1000E6804(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a2[1] + 30);
  v7 = sub_1000E7504(a1, a2);
  v8 = sub_1000BCF1C((a3 + 8));
  v9 = sub_1000BD3A4(a3 + 8, v8);
  while (sub_1000BD3F8(a3 + 8))
  {
    switch(v6)
    {
      case 0:
        v10 = sub_1000BCFF4((a3 + 8));
        goto LABEL_17;
      case 1:
      case 2:
        v10 = sub_1000BCF70((a3 + 8));
        goto LABEL_17;
      case 3:
        *&v11 = sub_1000BCE54((a3 + 8));
        [v7 addValue:v11];
        continue;
      case 4:
      case 5:
        v10 = sub_1000BCF34((a3 + 8));
        goto LABEL_17;
      case 6:
        [v7 addValue:sub_1000BCE18((a3 + 8))];
        continue;
      case 7:
      case 11:
        v10 = sub_1000BCF1C((a3 + 8));
        goto LABEL_17;
      case 8:
      case 12:
        v10 = sub_1000BCE90(a3 + 8);
        goto LABEL_17;
      case 9:
        v10 = sub_1000BCFAC((a3 + 8));
        goto LABEL_17;
      case 10:
        v10 = sub_1000BCFD0((a3 + 8));
LABEL_17:
        [v7 addValue:v10];
        break;
      case 17:
        v12 = sub_1000BCF1C((a3 + 8));
        if ((*(a2[1] + 28) & 0x1000) != 0 && ![a2 isValidEnumValue:v12])
        {
          [sub_1000E6094(a1) mergeVarintField:*(a2[1] + 16) value:v12];
        }

        else
        {
          [v7 addRawValue:v12];
        }

        break;
      default:
        continue;
    }
  }

  return sub_1000BD3F0(a3 + 8, v9);
}

void sub_1000E6A44(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_1000E7504(a1, a2);
  switch(*(a2[1] + 30))
  {
    case 0:
      sub_1000BCFF4(a3 + 1);
      goto LABEL_14;
    case 1:
    case 2:
      sub_1000BCF70(a3 + 1);
      goto LABEL_14;
    case 3:
      *&v9 = sub_1000BCE54(a3 + 1);
      v13 = v8;

      goto LABEL_12;
    case 4:
    case 5:
      sub_1000BCF34(a3 + 1);
      goto LABEL_32;
    case 6:
      v9 = sub_1000BCE18(a3 + 1);
      v13 = v8;

      goto LABEL_12;
    case 7:
    case 0xB:
      sub_1000BCF1C(a3 + 1);
      goto LABEL_14;
    case 8:
    case 0xC:
      sub_1000BCE90(a3 + 1);
      goto LABEL_32;
    case 9:
      sub_1000BCFAC(a3 + 1);
LABEL_14:
      v13 = v8;

      goto LABEL_12;
    case 0xA:
      sub_1000BCFD0(a3 + 1);
LABEL_32:
      v13 = v8;

LABEL_12:
      [v13 addValue:v9];
      return;
    case 0xD:
      v10 = sub_1000BD2C8(a3 + 1);
      goto LABEL_23;
    case 0xE:
      v10 = sub_1000BD1C4(a3 + 1);
LABEL_23:
      v12 = v10;
      v17 = v10;
      v11 = v8;
      goto LABEL_24;
    case 0xF:
      v17 = objc_alloc_init([a2 msgClass]);
      [a3 readMessage:v17 extensionRegistry:a4];
      goto LABEL_9;
    case 0x10:
      v17 = objc_alloc_init([a2 msgClass]);
      [a3 readGroup:*(a2[1] + 16) message:v17 extensionRegistry:a4];
LABEL_9:
      v11 = v8;
      v12 = v17;
LABEL_24:
      [v11 addObject:v12];

      break;
    case 0x11:
      v14 = sub_1000BCF1C(a3 + 1);
      if ((*(a2[1] + 28) & 0x1000) != 0 && ![a2 isValidEnumValue:v14])
      {
        v15 = sub_1000E6094(a1);
        v16 = *(a2[1] + 16);

        [v15 mergeVarintField:v16 value:v14];
      }

      else
      {

        [v8 addRawValue:v14];
      }

      break;
    default:
      return;
  }
}

void *sub_1000E6DD0(uint64_t a1, void *a2)
{
  v4 = sub_1000EE6CC(a1, a2);
  if (!v4)
  {
    v4 = sub_1000EA77C(a2, 0);
    sub_1000EED50(a1, a2, v4);
  }

  return v4;
}

void *sub_1000E7504(uint64_t a1, void *a2)
{
  v4 = sub_1000EE6CC(a1, a2);
  if (!v4)
  {
    v4 = sub_1000EAE24(a2, 0);
    sub_1000EED50(a1, a2, v4);
  }

  return v4;
}

uint64_t sub_1000E89B4(uint64_t a1)
{
  result = sub_10002AB0C();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E89F0(uint64_t a1)
{
  result = sub_10002ACAC();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8A2C(uint64_t a1)
{
  result = sub_10002ACAC();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8A68(uint64_t a1)
{
  result = sub_10002ACAC();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8AA0(uint64_t a1)
{
  result = sub_1000B39D4();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8ADC(uint64_t a1)
{
  result = sub_1000B39D4();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8B18(uint64_t a1)
{
  result = sub_1000B39D4();
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8B50(uint64_t a1, unsigned int a2)
{
  result = sub_1000BF5CC(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8B8C(uint64_t a1, unint64_t a2)
{
  result = sub_1000BF1AC(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8BC8(uint64_t a1, int a2)
{
  result = sub_1000BFE28(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8C04(uint64_t a1, uint64_t a2)
{
  result = sub_1000C006C(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8C40(uint64_t a1, unsigned int a2)
{
  result = sub_1000BF820(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8C7C(uint64_t a1, unint64_t a2)
{
  result = sub_1000BF1AC(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000E8CB8(uint64_t a1, unsigned int a2)
{
  result = sub_1000BF5CC(a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_1000E9F08(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    if (*(v6 + 48))
    {
      v7 = *(v6 + 48);
    }

    else
    {
      v7 = 0;
    }

    [NSException raise:NSInvalidArgumentException format:@"%@: %@ can only be set to NO (to clear field).", v5, NSStringFromSelector(v7)];
  }

  v8 = *(a1 + 32);

  sub_1000EE970(a2, v8);
}

TransparencyGPBAutocreatedArray *sub_1000E9FF0(uint64_t a1, objc_class *a2)
{
  v2 = *(a1 + 32);
  v3 = (*(a2 + 8) + *(v2[1] + 24));
  result = atomic_load(v3);
  if (!result)
  {
    result = sub_1000EAE24(v2, a2);
    v5 = 0;
    atomic_compare_exchange_strong(v3, &v5, result);
    if (v5)
    {
      if (*(v2[1] + 30) - 13 >= 4)
      {
        v6 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
      }

      else
      {
        v6 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
      }

      *(&result->super.super.super.isa + *v6) = 0;

      return v5;
    }
  }

  return result;
}

TransparencyGPBAutocreatedDictionary *sub_1000EA08C(uint64_t a1, objc_class *a2)
{
  v2 = *(a1 + 32);
  v3 = (*(a2 + 8) + *(v2[1] + 24));
  v4 = atomic_load(v3);
  if (!v4)
  {
    v4 = sub_1000EA77C(*(a1 + 32), a2);
    v5 = 0;
    atomic_compare_exchange_strong(v3, &v5, v4);
    if (v5)
    {
      if ([v2 mapKeyDataType] == 14 && *(v2[1] + 30) - 13 < 4)
      {
        v6 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
      }

      else
      {
        v6 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
      }

      *(&v4->super.super.super.isa + *v6) = 0;

      return v5;
    }
  }

  return v4;
}

id sub_1000EA15C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000EE6CC(a2, *(a1 + 32));

  return [v2 count];
}

const __CFString *sub_1000EA2D0(void *a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  switch(*(v5 + 44))
  {
    case 0:
      v21 = [NSNumber alloc];
      v22 = sub_1000BCFF4(a3 + 1);

      return [v21 initWithBool:v22];
    case 1:
      v11 = [NSNumber alloc];
      v12 = sub_1000BCF70(a3 + 1);
      goto LABEL_27;
    case 2:
      v15 = [NSNumber alloc];
      v16 = sub_1000BCF70(a3 + 1);
      goto LABEL_19;
    case 3:
      v17 = [NSNumber alloc];
      sub_1000BCE54(a3 + 1);

      return [v17 initWithFloat:v18];
    case 4:
      v13 = [NSNumber alloc];
      v14 = sub_1000BCF34(a3 + 1);
      goto LABEL_10;
    case 5:
      v26 = [NSNumber alloc];
      v27 = sub_1000BCF34(a3 + 1);
      goto LABEL_42;
    case 6:
      v28 = [NSNumber alloc];
      sub_1000BCE18(a3 + 1);

      return [v28 initWithDouble:v29];
    case 7:
      v15 = [NSNumber alloc];
      v16 = sub_1000BCF1C(a3 + 1);
      goto LABEL_19;
    case 8:
      v26 = [NSNumber alloc];
      v27 = sub_1000BCE90(a3 + 1);
      goto LABEL_42;
    case 9:
      v15 = [NSNumber alloc];
      v16 = sub_1000BCFAC(a3 + 1);
LABEL_19:
      v19 = v16;
      v20 = v15;
      goto LABEL_20;
    case 0xA:
      v26 = [NSNumber alloc];
      v27 = sub_1000BCFD0(a3 + 1);
LABEL_42:

      return [v26 initWithLongLong:v27];
    case 0xB:
      v11 = [NSNumber alloc];
      v12 = sub_1000BCF1C(a3 + 1);
LABEL_27:

      return [v11 initWithUnsignedInt:v12];
    case 0xC:
      v13 = [NSNumber alloc];
      v14 = sub_1000BCE90(a3 + 1);
LABEL_10:

      return [v13 initWithUnsignedLongLong:v14];
    case 0xD:

      return sub_1000BD2C8(a3 + 1);
    case 0xE:

      return sub_1000BD1C4(a3 + 1);
    case 0xF:
    case 0x10:
      if (a5)
      {
        v9 = a5;
      }

      else
      {
        v9 = objc_alloc_init([objc_msgSend(objc_msgSend(a1 "msgClass")]);
      }

      v30 = v9;
      if (*(v5 + 44) == 16)
      {
        [a3 readGroup:*(v5 + 40) message:v9 extensionRegistry:a4];
      }

      else if ((*(v5 + 45) & 4) != 0)
      {
        [v9 mergeFromCodedInputStream:a3 extensionRegistry:a4];
      }

      else
      {
        [a3 readMessage:v9 extensionRegistry:a4];
      }

      return v30;
    case 0x11:
      v24 = sub_1000BCF1C(a3 + 1);
      v25 = [a1 enumDescriptor];
      if ([v25 isClosed] && !(objc_msgSend(v25, "enumVerifier"))(v24))
      {
        [sub_1000E6094(a2) mergeVarintField:*(a1[1] + 40) value:v24];
        return 0;
      }

      else
      {
        v20 = [NSNumber alloc];
        v19 = v24;
LABEL_20:

        return [v20 initWithInt:v19];
      }

    default:
      return 0;
  }
}

TransparencyGPBAutocreatedDictionary *sub_1000EA77C(void *a1, objc_class *a2)
{
  v4 = [a1 mapKeyDataType];
  result = 0;
  v6 = a1[1];
  v7 = *(v6 + 30);
  switch(v4)
  {
    case 0u:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBBoolBoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBBoolUInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBBoolInt32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBBoolFloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBBoolUInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBBoolInt64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBBoolDoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBBoolObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBBoolEnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 1u:
    case 0xBu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBUInt32BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBUInt32UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBUInt32Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBUInt32FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBUInt32UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBUInt32Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBUInt32DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBUInt32ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBUInt32EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 2u:
    case 7u:
    case 9u:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBInt32BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBInt32UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBInt32Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBInt32FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBInt32UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBInt32Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBInt32DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBInt32ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBInt32EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 3u:
    case 6u:
    case 0xDu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
      return result;
    case 4u:
    case 0xCu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBUInt64BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBUInt64UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBUInt64Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBUInt64FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBUInt64UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBUInt64Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBUInt64DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBUInt64ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBUInt64EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 5u:
    case 8u:
    case 0xAu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBInt64BoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBInt64UInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBInt64Int32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBInt64FloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBInt64UInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBInt64Int64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBInt64DoubleDictionary;
          goto LABEL_67;
        case 0xD:
        case 0xE:
        case 0xF:
          v8 = TransparencyGPBInt64ObjectDictionary;
          goto LABEL_67;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBInt64EnumDictionary;
          goto LABEL_65;
        default:
          goto LABEL_68;
      }

    case 0xEu:
      result = 0;
      switch(*(v6 + 30))
      {
        case 0:
          v8 = TransparencyGPBStringBoolDictionary;
          goto LABEL_67;
        case 1:
        case 0xB:
          v8 = TransparencyGPBStringUInt32Dictionary;
          goto LABEL_67;
        case 2:
        case 7:
        case 9:
          v8 = TransparencyGPBStringInt32Dictionary;
          goto LABEL_67;
        case 3:
          v8 = TransparencyGPBStringFloatDictionary;
          goto LABEL_67;
        case 4:
        case 0xC:
          v8 = TransparencyGPBStringUInt64Dictionary;
          goto LABEL_67;
        case 5:
        case 8:
        case 0xA:
          v8 = TransparencyGPBStringInt64Dictionary;
          goto LABEL_67;
        case 6:
          v8 = TransparencyGPBStringDoubleDictionary;
LABEL_67:
          result = objc_alloc_init(v8);
          goto LABEL_68;
        case 0xD:
        case 0xE:
        case 0xF:
          if (a2)
          {
            result = objc_alloc_init(TransparencyGPBAutocreatedDictionary);
            goto LABEL_71;
          }

          result = objc_alloc_init(NSMutableDictionary);
          break;
        case 0x10:
          return result;
        case 0x11:
          v9 = TransparencyGPBStringEnumDictionary;
LABEL_65:
          result = [[v9 alloc] initWithValidationFunction:{objc_msgSend(objc_msgSend(a1, "enumDescriptor"), "enumVerifier")}];
          goto LABEL_68;
        default:
          goto LABEL_68;
      }

      break;
    default:
LABEL_68:
      if (a2)
      {
        if (v4 == 14 && (v7 - 13) <= 3)
        {
LABEL_71:
          v10 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
        }

        else
        {
          v10 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
        }

        *(&result->super.super.super.isa + *v10) = a2;
      }

      break;
  }

  return result;
}

TransparencyGPBAutocreatedArray *sub_1000EAE24(void *a1, objc_class *a2)
{
  v3 = *(a1[1] + 30);
  switch(*(a1[1] + 30))
  {
    case 0:
      v5 = TransparencyGPBBoolArray;
      goto LABEL_14;
    case 1:
    case 0xB:
      v5 = TransparencyGPBUInt32Array;
      goto LABEL_14;
    case 2:
    case 7:
    case 9:
      v5 = TransparencyGPBInt32Array;
      goto LABEL_14;
    case 3:
      v5 = TransparencyGPBFloatArray;
      goto LABEL_14;
    case 4:
    case 0xC:
      v5 = TransparencyGPBUInt64Array;
      goto LABEL_14;
    case 5:
    case 8:
    case 0xA:
      v5 = TransparencyGPBInt64Array;
      goto LABEL_14;
    case 6:
      v5 = TransparencyGPBDoubleArray;
LABEL_14:
      result = objc_alloc_init(v5);
      goto LABEL_15;
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
      if (a2)
      {
        result = objc_alloc_init(TransparencyGPBAutocreatedArray);
LABEL_17:
        v6 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
LABEL_19:
        *(&result->super.super.super.isa + *v6) = a2;
      }

      else
      {

        return objc_alloc_init(NSMutableArray);
      }

      return result;
    case 0x11:
      result = -[TransparencyGPBEnumArray initWithValidationFunction:]([TransparencyGPBEnumArray alloc], "initWithValidationFunction:", [objc_msgSend(a1 "enumDescriptor")]);
      goto LABEL_15;
    default:
      result = 0;
LABEL_15:
      if (!a2)
      {
        return result;
      }

      if ((v3 - 13) <= 3)
      {
        goto LABEL_17;
      }

      v6 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
      goto LABEL_19;
  }
}

uint64_t sub_1000EB1B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 copy];

  return sub_1000EED50(a2, v4, v5);
}

uint64_t sub_1000EB200(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 copy];

  return sub_1000EED50(a2, v4, v5);
}

uint64_t sub_1000EB36C(_BYTE *a1)
{
  LOBYTE(v1) = *a1;
  if (*a1)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v2 = (1025 * (v2 + v1)) ^ ((1025 * (v2 + v1)) >> 6);
      v1 = a1[v3++];
    }

    while (v1);
    v4 = 9 * v2;
  }

  else
  {
    v4 = 0;
  }

  return 32769 * (v4 ^ (v4 >> 11));
}

uint64_t sub_1000EB424(objc_class *a1, const char *a2)
{
  result = sub_1000EB504(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = sub_1000EF984("getClassValue", 0);
    Name = class_getName(a1);
    MetaClass = objc_getMetaClass(Name);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EB658;
    block[3] = &unk_100137B48;
    block[4] = v5;
    v9 = imp_implementationWithBlock(block);
    return class_addMethod(MetaClass, a2, v9, v6) || sub_1000F0CA4(MetaClass, a2);
  }

  return result;
}

const void *sub_1000EB504(objc_class *a1, SEL sel)
{
  Name = sel_getName(sel);
  v4 = *Name;
  if (v4 != 95)
  {
    v6 = Name;
    v7 = 1;
    if (!*Name)
    {
LABEL_6:
      v8 = class_getName(a1);
      v9 = strlen(v8);
      __chkstk_darwin(v9);
      v11 = &v14 - v10;
      bzero(&v14 - v10, v12 + 1);
      memcpy(v11, v8, v9);
      v11[v9] = 95;
      memcpy(&v11[v9 + 1], v6, v7 - 1);
      v11[v9 + v7] = 0;
      os_unfair_lock_lock(&unk_10015D038);
      Value = CFDictionaryGetValue(qword_10015D028, v11);
      os_unfair_lock_unlock(&unk_10015D038);
      return Value;
    }

    while (v4 != 58)
    {
      v4 = Name[v7++];
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  return 0;
}

unint64_t sub_1000EB730()
{
  if (!atomic_load(&qword_10015D048))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBNullValue" valueNames:"NullValue" values:&unk_10010876C count:1 enumVerifier:sub_1000EB7B0 flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10015D048, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10015D048);
}

uint64_t sub_1000EB8B8(uint64_t a1)
{
  v2 = [+[TransparencyGPBValue descriptor](TransparencyGPBValue "descriptor")];

  return sub_1000EF20C(a1, v2);
}

uint64_t sub_1000EB904(uint64_t a1, uint64_t a2)
{
  v4 = [+[TransparencyGPBValue descriptor](TransparencyGPBValue "descriptor")];

  return sub_1000EF210(a1, v4, a2);
}

void sub_1000EB958(uint64_t a1)
{
  v2 = [objc_msgSend(+[TransparencyGPBValue descriptor](TransparencyGPBValue "descriptor")];

  sub_1000EEAB4(a1, v2);
}

unint64_t sub_1000EBA88()
{
  if (!atomic_load(&qword_10015D070))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBSyntax" valueNames:"SyntaxProto2" values:&unk_10010878C count:2 enumVerifier:sub_1000EBB08 flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10015D070, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10015D070);
}

unint64_t sub_1000EBB14()
{
  if (!atomic_load(&qword_10015D078))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBField_Kind" valueNames:"TypeUnknown" values:&unk_100108868 count:19 enumVerifier:sub_1000EBB94 flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10015D078, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10015D078);
}

unint64_t sub_1000EBBA0()
{
  if (!atomic_load(&qword_10015D080))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"TransparencyGPBField_Cardinality" valueNames:"CardinalityUnknown" values:&unk_100108904 count:4 enumVerifier:sub_1000EBC20 flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10015D080, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10015D080);
}

uint64_t sub_1000EBC9C(uint64_t a1)
{
  v2 = [+[TransparencyGPBType descriptor](TransparencyGPBType "descriptor")];

  return sub_1000EF20C(a1, v2);
}

uint64_t sub_1000EBCE8(uint64_t a1, uint64_t a2)
{
  v4 = [+[TransparencyGPBType descriptor](TransparencyGPBType "descriptor")];

  return sub_1000EF210(a1, v4, a2);
}

uint64_t sub_1000EBDC0(uint64_t a1)
{
  v2 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_1000EF20C(a1, v2);
}

uint64_t sub_1000EBE0C(uint64_t a1, uint64_t a2)
{
  v4 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_1000EF210(a1, v4, a2);
}

uint64_t sub_1000EBE60(uint64_t a1)
{
  v2 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_1000EF20C(a1, v2);
}

uint64_t sub_1000EBEAC(uint64_t a1, uint64_t a2)
{
  v4 = [+[TransparencyGPBField descriptor](TransparencyGPBField "descriptor")];

  return sub_1000EF210(a1, v4, a2);
}

uint64_t sub_1000EBF70(uint64_t a1)
{
  v2 = [+[TransparencyGPBEnum descriptor](TransparencyGPBEnum "descriptor")];

  return sub_1000EF20C(a1, v2);
}

uint64_t sub_1000EBFBC(uint64_t a1, uint64_t a2)
{
  v4 = [+[TransparencyGPBEnum descriptor](TransparencyGPBEnum "descriptor")];

  return sub_1000EF210(a1, v4, a2);
}

uint64_t sub_1000EC8D0(uint64_t a1, unint64_t a2)
{
  result = sub_1000C13A0(*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000EC90C(uint64_t a1)
{
  result = sub_1000C1350(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_1000EC948(uint64_t a1)
{
  result = sub_1000C12B0(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_1000ED3B0(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 copy];
  [a3 addField:v4];
}

int sub_1000ED6E8(id a1, const void *a2, const void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

int sub_1000ED85C(id a1, const void *a2, const void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

id sub_1000ED934(uint64_t a1, void *a2, void *a3)
{
  result = [a2 serializedSize];
  *a3 += result;
  return result;
}

id sub_1000ED9D4(uint64_t a1, void *a2, void *a3)
{
  result = [a2 serializedSizeAsMessageSetExtension];
  *a3 += result;
  return result;
}

void sub_1000EDBEC(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 number];
  if (!v5)
  {
    [NSException raise:NSInvalidArgumentException format:@"Zero is not a valid field number."];
  }

  v6 = [a3 mutableFieldForNumber:v5 create:0];
  if (v6)
  {

    [v6 mergeFromField:a2];
  }

  else
  {
    v7 = [a2 copy];
    [a3 addField:v7];
  }
}

uint64_t sub_1000EE0C0()
{
  if (qword_10015D0B0 != -1)
  {
    sub_1000F161C();
  }

  return qword_10015D0B8;
}

id sub_1000EE120(id result)
{
  if (!result)
  {
    return result;
  }

  v1 = [NSMutableArray arrayWithObject:result];
  result = [(NSMutableArray *)v1 count];
  if (!result)
  {
    return result;
  }

  v31 = v43;
  v32 = v45;
  v33 = v41;
  v29 = v39;
  v30 = v47;
  v28 = v49;
  do
  {
    v2 = [(NSMutableArray *)v1 lastObject:v28];
    [(NSMutableArray *)v1 removeLastObject];
    [v2 setUnknownFields:0];
    v3 = [objc_opt_class() descriptor];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v4 = v3[1];
    v5 = [v4 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (!v5)
    {
      goto LABEL_50;
    }

    v6 = v5;
    v7 = *v51;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v51 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v50 + 1) + 8 * i);
        if (*(v9[1] + 30) - 15 <= 1)
        {
          v10 = [*(*(&v50 + 1) + 8 * i) fieldType];
          if (v10 == 2)
          {
            v16 = v2[8];
            if (v16)
            {
              v17 = *(v16 + *(v9[1] + 24));
            }

            else
            {
              v17 = 0;
            }

            v18 = [v9 mapKeyDataType];
            if (v18 > 7)
            {
              if (v18 <= 10)
              {
                if (v18 != 9)
                {
LABEL_43:
                  v40[0] = _NSConcreteStackBlock;
                  v40[1] = 3221225472;
                  v41[0] = sub_1000EE724;
                  v41[1] = &unk_100137CE0;
                  v41[2] = v1;
                  v19 = v40;
                  goto LABEL_47;
                }

LABEL_38:
                v44[0] = _NSConcreteStackBlock;
                v44[1] = 3221225472;
                v45[0] = sub_1000EE714;
                v45[1] = &unk_100137C90;
                v45[2] = v1;
                v19 = v44;
LABEL_47:
                [v17 enumerateKeysAndObjectsUsingBlock:v19];
                continue;
              }

              if (v18 == 11)
              {
LABEL_44:
                v46[0] = _NSConcreteStackBlock;
                v46[1] = 3221225472;
                v47[0] = sub_1000EE70C;
                v47[1] = &unk_100137C68;
                v47[2] = v1;
                v19 = v46;
                goto LABEL_47;
              }

              if (v18 != 12)
              {
                if (v18 != 14)
                {
                  continue;
                }

                v38[0] = _NSConcreteStackBlock;
                v38[1] = 3221225472;
                v39[0] = sub_1000EE72C;
                v39[1] = &unk_100137D08;
                v39[2] = v1;
                v19 = v38;
                goto LABEL_47;
              }

LABEL_45:
              v42[0] = _NSConcreteStackBlock;
              v42[1] = 3221225472;
              v43[0] = sub_1000EE71C;
              v43[1] = &unk_100137CB8;
              v43[2] = v1;
              v19 = v42;
              goto LABEL_47;
            }

            if (v18 > 3)
            {
              if (v18 != 4)
              {
                if (v18 == 5)
                {
                  goto LABEL_43;
                }

                if (v18 != 7)
                {
                  continue;
                }

                goto LABEL_38;
              }

              goto LABEL_45;
            }

            switch(v18)
            {
              case 0:
                v48[0] = _NSConcreteStackBlock;
                v48[1] = 3221225472;
                v49[0] = sub_1000EE704;
                v49[1] = &unk_100137C40;
                v49[2] = v1;
                v19 = v48;
                goto LABEL_47;
              case 1:
                goto LABEL_44;
              case 2:
                goto LABEL_38;
            }
          }

          else if (v10 == 1)
          {
            v14 = v2[8];
            if (v14)
            {
              v15 = *(v14 + *(v9[1] + 24));
            }

            else
            {
              v15 = 0;
            }

            if ([v15 count])
            {
              [(NSMutableArray *)v1 addObjectsFromArray:v15];
            }
          }

          else
          {
            if (v10)
            {
              continue;
            }

            v11 = v9[1];
            v12 = v11[5];
            if ((v12 & 0x80000000) != 0)
            {
              v13 = v2[8];
              if (*(v13 + 4 * -v12) != v11[4])
              {
                continue;
              }

LABEL_34:
              [(NSMutableArray *)v1 addObject:*(v13 + v11[6])];
              continue;
            }

            v13 = v2[8];
            if ((*(v13 + ((v12 >> 3) & 0x1FFFFFFC)) >> v12))
            {
              goto LABEL_34;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v6);
LABEL_50:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = [v2 extensionsCurrentlySet];
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v34 + 1) + 8 * j);
          if ([v25 dataType] - 15 <= 1)
          {
            v26 = [v25 isRepeated];
            v27 = [v2 getExtension:v25];
            if (v26)
            {
              [(NSMutableArray *)v1 addObjectsFromArray:v27];
            }

            else
            {
              [(NSMutableArray *)v1 addObject:v27];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v54 count:16];
      }

      while (v22);
    }

    result = [(NSMutableArray *)v1 count];
  }

  while (result);
  return result;
}

uint64_t sub_1000EE6CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    return *(v2 + *(*(a2 + 8) + 24));
  }

  else
  {
    return 0;
  }
}

id sub_1000EE734(id result)
{
  if (result >= 30008)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Linked to ProtocolBuffer runtime version %d, but code compiled needing at least %d!", 30007, result];
  }

  if (result <= 30000)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Proto generation source compiled against runtime version %d, but this version of the runtime only supports back to %d!", result, 30001];
  }

  return result;
}

id sub_1000EE800(id result)
{
  if (result != 30001)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Linked to ProtocolBuffer runtime version %d, but code compiled with version %d!", 30001, result, v1, v2];
  }

  return result;
}

BOOL sub_1000EE858(void *a1, uint64_t a2)
{
  v3 = [objc_msgSend(a1 "descriptor")];

  return sub_1000EE8A0(a1, v3);
}

BOOL sub_1000EE8A0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (a1 && a2)
  {
    v5 = *(a2 + 8);
    if ((*(v5 + 28) & 0xF02) != 0)
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        v7 = *(v6 + *(v5 + 24));
      }

      else
      {
        v7 = 0;
      }

      return [v7 count] != 0;
    }

    else
    {
      v8 = *(v5 + 20);
      if ((v8 & 0x80000000) != 0)
      {
        return *(*(a1 + 64) + 4 * -v8) == *(v5 + 16);
      }

      else
      {
        return (*(*(a1 + 64) + ((v8 >> 3) & 0x1FFFFFFC)) >> v8) & 1;
      }
    }
  }

  return v4;
}

void sub_1000EE970(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 20);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = *(a1 + 64);
    if (*(v5 + 4 * -v4) != *(v3 + 16))
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 64);
    if (((*(v5 + ((v4 >> 3) & 0x1FFFFFFC)) >> v4) & 1) == 0)
    {
      return;
    }
  }

  if ((*(v3 + 28) & 0xF02) != 0 || *(v3 + 30) - 13 <= 3)
  {
    v6 = *(v3 + 24);

    *(v5 + v6) = 0;
    LODWORD(v4) = *(v3 + 20);
  }

  v7 = *(a1 + 64);
  if ((v4 & 0x80000000) != 0)
  {
    *(v7 + 4 * -v4) = 0;
  }

  else
  {
    *(v7 + 4 * (v4 >> 5)) &= ~(1 << v4);
  }
}

uint64_t sub_1000EEA60(uint64_t result, unsigned int a2, int a3, int a4)
{
  v4 = *(result + 64);
  if ((a2 & 0x80000000) != 0)
  {
    if (!a4)
    {
      a3 = 0;
    }

    *(v4 + 4 * -a2) = a3;
  }

  else
  {
    v5 = a2 >> 5;
    v6 = 1 << a2;
    if (a4)
    {
      v7 = *(v4 + 4 * v5) | v6;
    }

    else
    {
      v7 = *(v4 + 4 * v5) & ~v6;
    }

    *(v4 + 4 * v5) = v7;
  }

  return result;
}

void sub_1000EEAB4(uint64_t a1, id *a2)
{
  v4 = *(*([a2[2] objectAtIndexedSubscript:0] + 1) + 20);

  sub_1000EEB20(a1, a2, v4, 0);
}

void sub_1000EEB20(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v5 = *(*(a1 + 64) - 4 * a3);
  if (v5 != a4 && v5 != 0)
  {
    v8 = [a2 fieldWithNumber:?];
    if (v8)
    {
      v9 = v8[1];
      if ((*(v9 + 28) & 0xF02) != 0 || *(v9 + 30) - 13 <= 3)
      {
        v10 = *(a1 + 64);
        v11 = *(v9 + 24);

        *(v10 + v11) = 0;
      }
    }

    v12 = *(a1 + 64);
    if ((a3 & 0x80000000) != 0)
    {
      *(v12 + 4 * -a3) = 0;
    }

    else
    {
      *(v12 + 4 * (a3 >> 5)) &= ~(1 << a3);
    }
  }
}

BOOL sub_1000EEBFC(uint64_t a1, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return *(*(a1 + 64) + 4 * -a2) == a3;
  }

  else
  {
    return (*(*(a1 + 64) + 4 * (a2 >> 5)) >> a2) & 1;
  }
}

void sub_1000EEC64(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = v3[5];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = *(a1 + 64);
    if (*(v5 + 4 * -v4) == v3[4])
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 64);
    if ((*(v5 + ((v4 >> 3) & 0x1FFFFFFC)) >> v4))
    {
      return;
    }
  }

  v6 = v3[6];
  v7 = *(v5 + v6);
  v8 = v7;
  *(v5 + v6) = 0;
  sub_1000E2DE8(v7);
}

uint64_t sub_1000EED0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;

  return sub_1000EED50(a1, a2, v5);
}

uint64_t sub_1000EED50(uint64_t a1, void *a2, void *a3)
{
  v3 = a3;
  v6 = a2[1];
  v7 = *(v6 + 30);
  v8 = *(v6 + 28);
  if ((v8 & 0xF02) != 0)
  {
    v9 = *(a1 + 64);
    v10 = *(v6 + 24);
    v11 = *(v9 + v10);
    *(v9 + v10) = a3;
    if (!v11)
    {
      goto LABEL_32;
    }

    if ([a2 fieldType] == 1)
    {
      if ((v7 - 13) <= 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
          goto LABEL_29;
        }

LABEL_31:

        goto LABEL_32;
      }

      v12 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
    }

    else if ([a2 mapKeyDataType] == 14 && (v7 - 13) <= 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      v12 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
    }

    else
    {
      v12 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
    }

LABEL_29:
    v22 = *v12;
    if (*&v11[v22] == a1)
    {
      *&v11[v22] = 0;
    }

    goto LABEL_31;
  }

  v13 = a2[2];
  if (v13)
  {
    sub_1000EEB20(a1, v13, *(v6 + 20), *(v6 + 16));
    v8 = *(v6 + 28);
  }

  v14 = v3 != 0;
  if ((v8 & 0x20) != 0 && ![v3 length])
  {

    v14 = 0;
    v3 = 0;
  }

  v15 = *(v6 + 20);
  v16 = *(a1 + 64);
  if ((v15 & 0x80000000) != 0)
  {
    v19 = *(v6 + 16);
    if (!v14)
    {
      v19 = 0;
    }

    *(v16 + 4 * -v15) = v19;
  }

  else
  {
    v17 = v15 >> 5;
    v18 = 1 << v15;
    if (v14)
    {
      *(v16 + 4 * v17) |= v18;
    }

    else
    {
      *(v16 + 4 * v17) &= ~v18;
    }
  }

  v20 = *(a1 + 64);
  v21 = *(v6 + 24);
  v11 = *(v20 + v21);
  *(v20 + v21) = v3;
  if (v11)
  {
    if ((v7 - 15) <= 1 && sub_1000E2AC4(v11, a1))
    {
      sub_1000E2DE8(v11);
    }

    goto LABEL_31;
  }

LABEL_32:

  return sub_1000E2AD4(a1);
}

uint64_t sub_1000EEF78(uint64_t a1, void *a2)
{
  v3 = sub_1000EEFD8(a1, a2);
  if ((*(a2[1] + 28) & 0x1000) == 0)
  {
    if ([a2 isValidEnumValue:v3])
    {
      return v3;
    }

    else
    {
      return 4222467823;
    }
  }

  return v3;
}

id sub_1000EEFD8(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[5];
  if ((v5 & 0x80000000) != 0)
  {
    v6 = *(a1 + 64);
    if (*(v6 + 4 * -v5) == v4[4])
    {
      return *(v6 + v4[6]);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if ((*(v6 + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      return *(v6 + v4[6]);
    }
  }

  return [a2 defaultValue];
}

id sub_1000EF068(void *a1, void *a2, uint64_t a3)
{
  if (([a2 isValidEnumValue:?] & 1) == 0)
  {
    +[NSException raise:format:](NSException, "raise:format:", NSInvalidArgumentException, @"%@.%@: Attempt to set an unknown enum value (%d)", objc_opt_class(), [a2 name], a3);
  }

  return sub_1000EF114(a1, a2, a3);
}

id sub_1000EF114(void *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1000EEB20(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 28) & 0x20) == 0;
  }

  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_1000E2AD4(a1);
}

uint64_t sub_1000EF214(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[4];
  v6 = v4[5];
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 64);
    if ((*(v7 + ((v6 >> 3) & 0x1FFFFFFC)) >> v6))
    {
      goto LABEL_3;
    }

LABEL_6:
    LOBYTE(v9) = [a2 defaultValue];
    return v9 & 1;
  }

  v7 = *(a1 + 64);
  if (*(v7 + 4 * -v6) != v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = v4[6];
  if ((v8 & 0x80000000) != 0)
  {
    LOBYTE(v9) = *(v7 + 4 * -v8) == v5;
  }

  else
  {
    v9 = (*(v7 + ((v8 >> 3) & 0x1FFFFFFC)) >> v8) & 1;
  }

  return v9 & 1;
}

void *sub_1000EF2C0(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_1000EF2D0(a1, a2, a3);
    }
  }

  return a1;
}

id sub_1000EF2D0(void *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v6)
  {
    sub_1000EEB20(a1, v6, *(v5 + 20), *(v5 + 16));
  }

  v7 = *(v5 + 24);
  v8 = a1[8];
  if ((v7 & 0x80000000) != 0)
  {
    v11 = *(v5 + 16);
    if (!a3)
    {
      v11 = 0;
    }

    *(v8 + 4 * -v7) = v11;
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = v7 >> 5;
    v10 = 1 << v7;
    if (a3)
    {
      *(v8 + 4 * v9) |= v10;
LABEL_9:
      v12 = 1;
      goto LABEL_12;
    }

    *(v8 + 4 * v9) &= ~v10;
  }

  v12 = (*(v5 + 28) & 0x20) == 0;
LABEL_12:
  v13 = *(v5 + 20);
  v14 = a1[8];
  if ((v13 & 0x80000000) != 0)
  {
    if (v12)
    {
      v17 = *(v5 + 16);
    }

    else
    {
      v17 = 0;
    }

    *(v14 + 4 * -v13) = v17;
  }

  else
  {
    v15 = v13 >> 5;
    v16 = 1 << v13;
    if (v12)
    {
      *(v14 + 4 * v15) |= v16;
    }

    else
    {
      *(v14 + 4 * v15) &= ~v16;
    }
  }

  return sub_1000E2AD4(a1);
}

void *sub_1000EF404(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_1000EF114(a1, a2, a3);
    }
  }

  return a1;
}

id sub_1000EF414(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = v2[5];
  if ((v3 & 0x80000000) != 0)
  {
    v4 = *(a1 + 64);
    if (*(v4 + 4 * -v3) == v2[4])
    {
      return *(v4 + v2[6]);
    }
  }

  else
  {
    v4 = *(a1 + 64);
    if ((*(v4 + ((v3 >> 3) & 0x1FFFFFFC)) >> v3))
    {
      return *(v4 + v2[6]);
    }
  }

  return [a2 defaultValue];
}

void *sub_1000EF488(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_1000EF498(a1, a2, a3);
    }
  }

  return a1;
}

id sub_1000EF498(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1000EEB20(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 28) & 0x20) == 0;
  }

  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_1000E2AD4(a1);
}

float sub_1000EF590(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[5];
  if ((v5 & 0x80000000) != 0)
  {
    v6 = *(a1 + 64);
    if (*(v6 + 4 * -v5) == v4[4])
    {
      return *(v6 + v4[6]);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if ((*(v6 + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      return *(v6 + v4[6]);
    }
  }

  LODWORD(result) = [a2 defaultValue];
  return result;
}

void *sub_1000EF620(void *a1, uint64_t a2, float a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_1000EF630(a1, a2, a3);
    }
  }

  return a1;
}

id sub_1000EF630(void *a1, uint64_t a2, float a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1000EEB20(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  v8 = a3 != 0.0 || (*(v7 + 28) & 0x20) == 0;
  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_1000E2AD4(a1);
}

double sub_1000EF72C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[5];
  if ((v5 & 0x80000000) != 0)
  {
    v6 = *(a1 + 64);
    if (*(v6 + 4 * -v5) == v4[4])
    {
      return *(v6 + v4[6]);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if ((*(v6 + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      return *(v6 + v4[6]);
    }
  }

  return COERCE_DOUBLE([a2 defaultValue]);
}

void *sub_1000EF7BC(void *a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_1000EF7CC(a1, a2, a3);
    }
  }

  return a1;
}

id sub_1000EF7CC(void *a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_1000EEB20(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  v8 = a3 != 0.0 || (*(v7 + 28) & 0x20) == 0;
  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_1000E2AD4(a1);
}

uint64_t sub_1000EF8CC(uint64_t result, void *a2, void *a3)
{
  if (result && a2)
  {
    v4 = result;
    v5 = [a3 copy];

    return sub_1000EED50(v4, a2, v5);
  }

  return result;
}

uint64_t sub_1000EF92C(uint64_t result, void *a2, void *a3)
{
  if (result && a2)
  {
    v4 = result;
    v5 = a3;

    return sub_1000EED50(v4, a2, v5);
  }

  return result;
}

__CFString *sub_1000EF9C8(void *a1, __CFString *a2)
{
  v2 = &stru_100139EB0;
  if (a1)
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = &stru_100139EB0;
    }

    v2 = +[NSMutableString string];
    sub_1000EFA28(a1, v2, v4);
  }

  return v2;
}

id sub_1000EFA28(void *a1, void *a2, __CFString *a3)
{
  v5 = a1;
  v6 = [a1 descriptor];
  v7 = v6[1];
  v8 = [v7 count];
  v9 = [v6 extensionRanges];
  LODWORD(v10) = [v6 extensionRangesCount];
  v11 = [objc_msgSend(v5 "extensionsCurrentlySet")];
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
    v10 = v10;
    v57 = v75;
    v58 = v71;
    v67 = v5;
    v60 = v11;
    v61 = v9;
    v64 = a3;
    v65 = v10;
    v62 = v8;
    v63 = v7;
    do
    {
      if (v14 == v8)
      {
        sub_1000F0D28(v5, v13, v9[v15++], a2, a3);
        v14 = v8;
        continue;
      }

      if (v15 != v10)
      {
        v16 = [v7 objectAtIndexedSubscript:v14];
        v17 = &v9[v15];
        if (*(v16[1] + 16) >= *v17)
        {
          ++v15;
          sub_1000F0D28(v5, v13, *v17, a2, a3);
          continue;
        }
      }

      v68 = v14 + 1;
      v69 = [v7 objectAtIndexedSubscript:v14];
      v18 = [v69 fieldType];
      v19 = v18;
      if (v18 == 2 || v18 == 1)
      {
        v66 = v15;
        v23 = v5[8];
        if (v23)
        {
          v24 = *(v23 + *(v69[1] + 24));
        }

        else
        {
          v24 = 0;
        }

        v25 = [v24 count];
        if (v25)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v18)
        {
          v14 = v68;
          continue;
        }

        v20 = v69[1];
        v21 = *(v20 + 20);
        v66 = v15;
        if ((v21 & 0x80000000) != 0)
        {
          v22 = *(v5[8] + 4 * -v21) == *(v20 + 16);
        }

        else
        {
          v22 = (*(v5[8] + ((v21 >> 3) & 0x1FFFFFFC)) >> v21) & 1;
        }

        v24 = 0;
        v25 = v22;
        if (v22)
        {
LABEL_21:
          v26 = [v69 textFormatName];
          if (![(NSString *)v26 length])
          {
            v26 = [NSString stringWithFormat:@"%u", *(v69[1] + 16)];
            if (v25 == 1)
            {
              a3 = v64;
              v5 = v67;
              v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  # %@", [v69 name]);
LABEL_29:
              if (v19 == 2)
              {
                v28 = [v69 mapKeyDataType];
                a3 = v64;
                v29 = *(v69[1] + 30);
                v59 = [NSString stringWithFormat:@"%@%@ {%@\n", v64, v26, v27, v57, v58];
                v30 = [NSString stringWithFormat:@"%@%@ {\n", v64, v26];
                v31 = [NSString stringWithFormat:@"%@}\n", v64];
                v32 = [NSString stringWithFormat:@"%@  key: ", v64];
                v33 = ":";
                if ((v29 - 15) < 2)
                {
                  v33 = "";
                }

                v34 = [NSString stringWithFormat:@"%@  value%s ", v64, v33];
                v77[0] = 0;
                v77[1] = v77;
                v77[2] = 0x2020000000;
                v78 = 1;
                if (v28 == 14 && (v29 - 13) <= 3)
                {
                  v74[0] = _NSConcreteStackBlock;
                  v74[1] = 3221225472;
                  v75[0] = sub_1000F1300;
                  v75[1] = &unk_100137D80;
                  v75[2] = a2;
                  v75[3] = v59;
                  v75[4] = v30;
                  v75[5] = v32;
                  v76 = v29;
                  v75[6] = v34;
                  v75[7] = v64;
                  v75[8] = v31;
                  v75[9] = v77;
                  [v24 enumerateKeysAndObjectsUsingBlock:v74];
                }

                else
                {
                  v70[0] = _NSConcreteStackBlock;
                  v70[1] = 3221225472;
                  v71[0] = sub_1000F144C;
                  v71[1] = &unk_100137DA8;
                  v71[9] = v31;
                  v71[10] = v77;
                  v71[2] = a2;
                  v71[3] = v59;
                  v72 = v28;
                  v71[4] = v30;
                  v71[5] = v32;
                  v73 = v29;
                  v71[6] = v34;
                  v71[7] = v64;
                  v71[8] = v69;
                  [v24 enumerateForTextFormat:v70];
                }

                _Block_object_dispose(v77, 8);
                v5 = v67;
                v14 = v68;
              }

              else
              {
                v35 = 0;
                v36 = *(v69[1] + 30);
                if ((v36 - 15) >= 2)
                {
                  v37 = ":";
                }

                else
                {
                  v37 = "";
                }

                do
                {
                  [a2 appendFormat:@"%@%@%s ", a3, v26, v37];
                  switch(v36)
                  {
                    case 0:
                      if (v24)
                      {
                        v45 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v45 = sub_1000EF214(v5, v69);
                      }

                      if (v45)
                      {
                        v51 = @"true";
                      }

                      else
                      {
                        v51 = @"false";
                      }

                      [a2 appendString:v51];
                      break;
                    case 1:
                    case 11:
                      if (v24)
                      {
                        v42 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v42 = sub_1000EEFD8(v5, v69);
                      }

                      [a2 appendFormat:@"%u", v42, v56];
                      break;
                    case 2:
                    case 7:
                    case 9:
                      if (v24)
                      {
                        v38 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v38 = sub_1000EEFD8(v5, v69);
                      }

                      [a2 appendFormat:@"%d", v38, v56];
                      break;
                    case 3:
                      if (v24)
                      {
                        [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v46 = sub_1000EF590(v5, v69);
                      }

                      [a2 appendFormat:@"%.*g", 6, v46];
                      break;
                    case 4:
                    case 12:
                      if (v24)
                      {
                        v40 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v40 = sub_1000EF414(v5, v69);
                      }

                      [a2 appendFormat:@"%llu", v40, v56];
                      break;
                    case 5:
                    case 8:
                    case 10:
                      if (v24)
                      {
                        v39 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v39 = sub_1000EF414(v5, v69);
                      }

                      [a2 appendFormat:@"%lld", v39, v56];
                      break;
                    case 6:
                      if (v24)
                      {
                        [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v44 = sub_1000EF72C(v5, v69);
                      }

                      [a2 appendFormat:@"%.*lg", 15, *&v44];
                      break;
                    case 13:
                      if (v24)
                      {
                        v49 = [v24 objectAtIndex:v35];
                      }

                      else
                      {
                        v49 = sub_1000E3DE8(v5, v69);
                      }

                      sub_1000F081C(v49, a2);
                      break;
                    case 14:
                      if (v24)
                      {
                        v43 = [v24 objectAtIndex:v35];
                      }

                      else
                      {
                        v43 = sub_1000E3DE8(v5, v69);
                      }

                      sub_1000F1168(v43, a2);
                      break;
                    case 15:
                    case 16:
                      if (v24)
                      {
                        v41 = [v24 objectAtIndex:v35];
                      }

                      else
                      {
                        v41 = sub_1000E3DE8(v5, v69);
                      }

                      v50 = v41;
                      [a2 appendFormat:@"{%@\n", v27];
                      sub_1000EFA28(v50, a2, [(__CFString *)a3 stringByAppendingString:@"  "]);
                      [a2 appendFormat:@"%@}", a3];
                      v27 = &stru_100139EB0;
                      v5 = v67;
                      break;
                    case 17:
                      if (v24)
                      {
                        v47 = [v24 rawValueAtIndex:v35];
                        v48 = v69;
                      }

                      else
                      {
                        v48 = v69;
                        v47 = sub_1000EEFD8(v5, v69);
                      }

                      v52 = [v48 enumDescriptor];
                      if (v52 && (v53 = [v52 textFormatNameForValue:v47]) != 0)
                      {
                        [a2 appendString:v53];
                      }

                      else
                      {
                        [a2 appendFormat:@"%d", v47];
                      }

                      v5 = v67;
                      a3 = v64;
                      break;
                    default:
                      break;
                  }

                  [a2 appendFormat:@"%@\n", v27];
                  ++v35;
                }

                while (v25 != v35);
                v14 = v68;
              }

              v8 = v62;
              v7 = v63;
              v13 = v60;
              v9 = v61;
              goto LABEL_95;
            }

            [a2 appendFormat:@"%@# %@\n", a3, objc_msgSend(v69, "name")];
          }

          v27 = &stru_100139EB0;
          goto LABEL_29;
        }
      }

      v14 = v68;
LABEL_95:
      v10 = v65;
      v15 = v66;
    }

    while (v14 < v8 || v15 < v10);
  }

  v54 = sub_1000F0374([v5 unknownFields], a3);
  result = [(__CFString *)v54 length];
  if (result)
  {
    [a2 appendFormat:@"%@# --- Unknown fields ---\n", a3];
    return [a2 appendString:v54];
  }

  return result;
}

__CFString *sub_1000F0374(void *a1, const __CFString *a2)
{
  v2 = &stru_100139EB0;
  if (a1)
  {
    v4 = a2 ? a2 : &stru_100139EB0;
    v2 = +[NSMutableString string];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [a1 sortedFields];
    v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v26)
    {
      v25 = *v44;
      do
      {
        v5 = 0;
        do
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v5;
          v6 = *(*(&v43 + 1) + 8 * v5);
          v7 = [v6 number];
          v8 = [v6 varintList];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1000F0768;
          v41[3] = &unk_100137D30;
          v41[4] = v2;
          v41[5] = v4;
          v42 = v7;
          [v8 enumerateValuesWithBlock:v41];
          v9 = [v6 fixed32List];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_1000F07A4;
          v39[3] = &unk_100137D58;
          v39[4] = v2;
          v39[5] = v4;
          v40 = v7;
          [v9 enumerateValuesWithBlock:v39];
          v10 = [v6 fixed64List];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_1000F07E0;
          v37[3] = &unk_100137D30;
          v37[4] = v2;
          v37[5] = v4;
          v38 = v7;
          [v10 enumerateValuesWithBlock:v37];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v27 = v6;
          v11 = [v6 lengthDelimitedList];
          v12 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v34;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v34 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v33 + 1) + 8 * i);
                [(__CFString *)v2 appendFormat:@"%@%d: ", v4, v7];
                sub_1000F081C(v16, v2);
                [(__CFString *)v2 appendString:@"\n"];
              }

              v13 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
            }

            while (v13);
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v17 = [v27 groupList];
          v18 = [v17 countByEnumeratingWithState:&v29 objects:v47 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v30;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v29 + 1) + 8 * j);
                [(__CFString *)v2 appendFormat:@"%@%d: {\n", v4, v7];
                [(__CFString *)v2 appendString:sub_1000F0374(v22, [(__CFString *)v4 stringByAppendingString:@"  "])];
                [(__CFString *)v2 appendFormat:@"%@}\n", v4];
              }

              v19 = [v17 countByEnumeratingWithState:&v29 objects:v47 count:16];
            }

            while (v19);
          }

          v5 = v28 + 1;
        }

        while ((v28 + 1) != v26);
        v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v26);
    }
  }

  return v2;
}

id sub_1000F081C(void *a1, void *a2)
{
  v4 = [a1 bytes];
  v5 = [a1 length];
  [a2 appendString:@""];
  if (v5 >= 1)
  {
    v6 = &v4[v5];
    do
    {
      v7 = *v4;
      v8 = *v4;
      if (*v4 > 0x21u)
      {
        switch(v8)
        {
          case '""':
            v9 = a2;
            v10 = @"\\"";
            goto LABEL_19;
          case '\'':
            v9 = a2;
            v10 = @"\\'";
            goto LABEL_19;
          case '\\':
            v9 = a2;
            v10 = @"\\\";
            goto LABEL_19;
        }
      }

      else
      {
        switch(v8)
        {
          case 9:
            v9 = a2;
            v10 = @"\\t";
            goto LABEL_19;
          case 0xA:
            v9 = a2;
            v10 = @"\\n";
            goto LABEL_19;
          case 0xD:
            v9 = a2;
            v10 = @"\\r";
LABEL_19:
            [v9 appendString:v10];
            goto LABEL_20;
        }
      }

      if ((v7 & 0x80000000) != 0)
      {
        if (!__maskrune(*v4, 0x40000uLL))
        {
LABEL_23:
          [a2 appendFormat:@"\\%03o", v8];
          goto LABEL_20;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v7] & 0x40000) == 0)
      {
        goto LABEL_23;
      }

      [a2 appendFormat:@"%c", v7];
LABEL_20:
      ++v4;
    }

    while (v4 < v6);
  }

  return [a2 appendString:@""];
}

NSString *sub_1000F09D0(char *a1, int a2, void *a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    v23 = a1;
    v6 = sub_1000F0BB4(&v23);
    if (v6 < 1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      while (1)
      {
        v8 = sub_1000F0BB4(&v23);
        v9 = v23;
        if (v8 == a2)
        {
          break;
        }

        v10 = v23 + 1;
          ;
        }

        v23 = v10;
        if (v7-- < 2)
        {
          return 0;
        }
      }

      if (*v23)
      {
        v3 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [a3 length]);
        v14 = *v9;
        if (*v9)
        {
          v15 = 0;
          while (1)
          {
            if (v14 < 0)
            {
              [(NSMutableString *)v3 appendString:@"_"];
              v14 = *v9;
            }

            v16 = v14 & 0x1F;
            v17 = v14 & 0x60;
            if (v17 == 32)
            {
              break;
            }

            if (v17 == 64)
            {
              v18 = __toupper([a3 characterAtIndex:v15]);
LABEL_21:
              [(NSMutableString *)v3 appendFormat:@"%c", v18];
              ++v15;
              --v16;
            }

            if (v16 >= 1)
            {
              v19 = v16;
              v20 = v15;
              do
              {
                v21 = [a3 characterAtIndex:v20];
                if (v17 == 96)
                {
                  [(NSMutableString *)v3 appendFormat:@"%c", __toupper(v21)];
                }

                else
                {
                  [(NSMutableString *)v3 appendFormat:@"%C", v21];
                }

                ++v20;
                --v19;
              }

              while (v19);
            }

            v15 += v16;
            v22 = *++v9;
            v14 = v22;
            if (!v22)
            {
              return v3;
            }
          }

          v18 = __tolower([a3 characterAtIndex:v15]);
          goto LABEL_21;
        }
      }

      else
      {
        return [NSString stringWithUTF8String:v23 + 1];
      }
    }
  }

  return v3;
}

uint64_t sub_1000F0BB4(char **a1)
{
  v1 = *a1;
  v2 = *(*a1)++;
  if ((v2 & 0x80000000) != 0)
  {
    v3 = v2 & 0x7F;
    v4 = v1[1];
    *a1 = v1 + 2;
    v5 = v4 << 7;
    if ((v4 & 0x80000000) == 0)
    {
      return v5 | v3;
    }

    v3 |= v5 & 0x3F80;
    v6 = v1[2];
    *a1 = v1 + 3;
    v5 = v6 << 14;
    if ((v6 & 0x80000000) == 0)
    {
      return v5 | v3;
    }

    v3 |= v5 & 0x1FC000;
    v7 = v1[3];
    *a1 = v1 + 4;
    v5 = v7 << 21;
    if (v7 < 0)
    {
      v9 = v1[4];
      *a1 = v1 + 5;
      v2 = v5 & 0xFE00000 | (v9 << 28) | v3;
      if (v9 < 0)
      {
        v10 = v1 + 6;
        v11 = 5;
        while (1)
        {
          v12 = *(v10 - 1);
          *a1 = v10;
          if ((v12 & 0x80000000) == 0)
          {
            break;
          }

          ++v10;
          if (!--v11)
          {
            [NSException raise:NSParseErrorException format:@"Unable to read varint32"];
            return v2;
          }
        }
      }
    }

    else
    {
      return v5 | v3;
    }
  }

  return v2;
}

BOOL sub_1000F0CA4(objc_class *a1, const char *a2)
{
  outCount = 0;
  v3 = class_copyMethodList(a1, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = method_getName(v3[i]);
      v6 = Name == a2;
      if (Name == a2)
      {
        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  free(v3);
  return v6;
}

id sub_1000F0D28(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  result = [a2 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v28 = result;
  if (result)
  {
    v27 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(a2);
        }

        v30 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        result = [v8 fieldNumber];
        if (result >= a3)
        {
          v9 = result;
          if (result >= HIDWORD(a3))
          {
            return result;
          }

          v10 = [a1 getExtension:v8];
          v11 = [v8 isRepeated];
          if (v11)
          {
            v12 = [v10 count];
            v13 = [v8 singletonName];
            if (v12 != 1)
            {
              [a4 appendFormat:@"%@# [%@]\n", a5, v13];
              v14 = [v8 dataType];
              if (!v12)
              {
                goto LABEL_36;
              }

              v15 = v14;
              v16 = &stru_100139EB0;
              goto LABEL_14;
            }
          }

          else
          {
            v13 = [v8 singletonName];
          }

          v16 = [NSString stringWithFormat:@"  # [%@]", v13];
          v15 = [v8 dataType];
          v12 = 1;
LABEL_14:
          v17 = 0;
          if (v15 - 15 >= 2)
          {
            v18 = ":";
          }

          else
          {
            v18 = "";
          }

          do
          {
            v19 = v10;
            if (v11)
            {
              v19 = [v10 objectAtIndex:v17];
            }

            [a4 appendFormat:@"%@%u%s ", a5, v9, v18];
            switch(v15)
            {
              case 0u:
                if ([v19 BOOLValue])
                {
                  v23 = @"true";
                }

                else
                {
                  v23 = @"false";
                }

                [a4 appendString:v23];
                break;
              case 1u:
              case 0xBu:
                [a4 appendFormat:@"%u", objc_msgSend(v19, "unsignedIntValue"), v24];
                break;
              case 2u:
                v20 = [v19 unsignedIntValue];
                goto LABEL_34;
              case 3u:
                [v19 floatValue];
                [a4 appendFormat:@"%.*g", 6, v21];
                break;
              case 4u:
              case 0xCu:
                [a4 appendFormat:@"%llu", objc_msgSend(v19, "unsignedLongLongValue"), v24];
                break;
              case 5u:
              case 8u:
              case 0xAu:
                [a4 appendFormat:@"%lld", objc_msgSend(v19, "longLongValue"), v24];
                break;
              case 6u:
                [v19 doubleValue];
                [a4 appendFormat:@"%.*lg", 15, v22];
                break;
              case 7u:
              case 9u:
              case 0x11u:
                v20 = [v19 intValue];
LABEL_34:
                [a4 appendFormat:@"%d", v20, v24];
                break;
              case 0xDu:
                sub_1000F081C(v19, a4);
                break;
              case 0xEu:
                sub_1000F1168(v19, a4);
                break;
              case 0xFu:
              case 0x10u:
                [a4 appendFormat:@"{%@\n", v16];
                sub_1000EFA28(v19, a4, [a5 stringByAppendingString:@"  "]);
                [a4 appendFormat:@"%@}", a5];
                v16 = &stru_100139EB0;
                break;
              default:
                break;
            }

            [a4 appendFormat:@"%@\n", v16];
            ++v17;
          }

          while (v12 != v17);
        }

LABEL_36:
        v7 = v30 + 1;
      }

      while ((v30 + 1) != v28);
      result = [a2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v28 = result;
    }

    while (result);
  }

  return result;
}

id sub_1000F1168(void *a1, void *a2)
{
  [a2 appendString:@""];
  v4 = [a1 length];
  if (v4)
  {
    v5 = v4;
    for (i = 0; v5 != i; ++i)
    {
      v7 = [a1 characterAtIndex:i];
      if (v7 > 33)
      {
        switch(v7)
        {
          case '""':
            v8 = a2;
            v9 = @"\\"";
            break;
          case '\'':
            v8 = a2;
            v9 = @"\\'";
            break;
          case '\\':
            v8 = a2;
            v9 = @"\\\";
            break;
          default:
LABEL_14:
            if (v7 > 0x1F)
            {
              [a2 appendFormat:@"%C", v7, v11, v12];
            }

            else
            {
              [a2 appendFormat:@"\\%d%d%d", 0, v7 >> 3, v7 & 7];
            }

            continue;
        }
      }

      else
      {
        switch(v7)
        {
          case 9:
            v8 = a2;
            v9 = @"\\t";
            break;
          case 0xA:
            v8 = a2;
            v9 = @"\\n";
            break;
          case 0xD:
            v8 = a2;
            v9 = @"\\r";
            break;
          default:
            goto LABEL_14;
        }
      }

      [v8 appendString:v9];
    }
  }

  return [a2 appendString:@""];
}

id sub_1000F1300(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = 48;
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    v7 = 40;
  }

  [v6 appendString:*(a1 + v7)];
  *(*(*(a1 + 88) + 8) + 24) = 0;
  [*(a1 + 32) appendString:*(a1 + 56)];
  sub_1000F1168(a2, *(a1 + 32));
  [*(a1 + 32) appendString:@"\n"];
  [*(a1 + 32) appendString:*(a1 + 64)];
  v8 = *(a1 + 96);
  switch(v8)
  {
    case 13:
      sub_1000F081C(a3, *(a1 + 32));
      break;
    case 15:
      [*(a1 + 32) appendString:@"{\n"];
      sub_1000EFA28(a3, *(a1 + 32), [*(a1 + 72) stringByAppendingString:@"    "]);
      [*(a1 + 32) appendFormat:@"%@  }", *(a1 + 72)];
      break;
    case 14:
      sub_1000F1168(a3, *(a1 + 32));
      break;
  }

  [*(a1 + 32) appendString:@"\n"];
  v9 = *(a1 + 32);
  v10 = *(a1 + 80);

  return [v9 appendString:v10];
}

id sub_1000F144C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = 48;
  if (*(*(*(a1 + 96) + 8) + 24))
  {
    v7 = 40;
  }

  [v6 appendString:*(a1 + v7)];
  *(*(*(a1 + 96) + 8) + 24) = 0;
  v8 = *(a1 + 32);
  if (*(a1 + 104) == 14)
  {
    [v8 appendString:*(a1 + 56)];
    sub_1000F1168(a2, *(a1 + 32));
    [*(a1 + 32) appendString:@"\n"];
  }

  else
  {
    [v8 appendFormat:@"%@%@\n", *(a1 + 56), a2];
  }

  [*(a1 + 32) appendString:*(a1 + 64)];
  v9 = *(a1 + 105);
  if (v9 > 0xE)
  {
    if (v9 == 15)
    {
      [*(a1 + 32) appendString:@"{\n"];
      sub_1000EFA28(a3, *(a1 + 32), [*(a1 + 72) stringByAppendingString:@"    "]);
      [*(a1 + 32) appendFormat:@"%@  }", *(a1 + 72)];
    }

    else
    {
      if (v9 != 17)
      {
LABEL_15:
        v14 = *(a1 + 32);
        v13 = a3;
        goto LABEL_16;
      }

      v10 = [a3 intValue];
      v11 = [*(a1 + 80) enumDescriptor];
      if (v11)
      {
        v12 = [v11 textFormatNameForValue:v10];
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 32);
LABEL_16:
          [v14 appendString:v13];
          goto LABEL_20;
        }
      }

      [*(a1 + 32) appendFormat:@"%d", v10];
    }
  }

  else
  {
    if (v9 != 13)
    {
      if (v9 == 14)
      {
        sub_1000F1168(a3, *(a1 + 32));
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    sub_1000F081C(a3, *(a1 + 32));
  }

LABEL_20:
  [*(a1 + 32) appendString:@"\n"];
  v15 = *(a1 + 32);
  v16 = *(a1 + 88);

  return [v15 appendString:v16];
}

uint64_t sub_1000F1CFC(int a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return dword_100108928[a1];
  }
}

uint64_t sub_1000F21FC(uint64_t a1)
{
  v2 = [+[TransparencyGPBApi descriptor](TransparencyGPBApi "descriptor")];

  return sub_1000EF20C(a1, v2);
}

uint64_t sub_1000F2248(uint64_t a1, uint64_t a2)
{
  v4 = [+[TransparencyGPBApi descriptor](TransparencyGPBApi "descriptor")];

  return sub_1000EF210(a1, v4, a2);
}

uint64_t sub_1000F2320(uint64_t a1)
{
  v2 = [+[TransparencyGPBMethod descriptor](TransparencyGPBMethod "descriptor")];

  return sub_1000EF20C(a1, v2);
}

uint64_t sub_1000F236C(uint64_t a1, uint64_t a2)
{
  v4 = [+[TransparencyGPBMethod descriptor](TransparencyGPBMethod "descriptor")];

  return sub_1000EF210(a1, v4, a2);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
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

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}