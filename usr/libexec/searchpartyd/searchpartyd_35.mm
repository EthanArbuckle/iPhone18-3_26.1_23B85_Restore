uint64_t sub_10039FCA4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 632);
  v5 = *v1;
  v3[80] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[81] = v7;
  *v7 = v5;
  v7[1] = sub_10039FE30;
  v8 = v3[68];
  v9 = v3[67];
  v10 = v3[58];
  v11 = v3[57];

  return ActorServiceDaemon.getService<A>()(v11, v9, v10, v8);
}

uint64_t sub_10039FE30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 648);
  v6 = *v2;
  *(*v2 + 656) = v1;

  if (v1)
  {
    v7 = sub_1003A0348;
  }

  else
  {
    v8 = *(v4 + 640);

    *(v4 + 664) = a1;
    v7 = sub_10039FFE4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10039FF60()
{
  v1 = v0[72];
  v2 = v0[62];
  v3 = v0[59];

  sub_100007BAC(v0 + 8);
  v4 = v0[76];
  v5 = v0[1];

  return v5();
}

uint64_t sub_10039FFE4()
{
  v1 = v0[83];
  v0[46] = v0[67];
  v0[47] = &off_10164F068;
  v0[43] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[84] = v3;
  *v3 = v0;
  v3[1] = sub_1003A008C;

  return daemon.getter();
}

uint64_t sub_1003A008C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 672);
  v5 = *v1;
  v3[85] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[86] = v7;
  *v7 = v5;
  v7[1] = sub_1003A0218;
  v8 = v3[75];
  v9 = v3[74];
  v10 = v3[58];
  v11 = v3[57];

  return ActorServiceDaemon.getService<A>()(v11, v9, v10, v8);
}

uint64_t sub_1003A0218(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 688);
  v6 = *v2;
  *(*v2 + 696) = v1;

  if (v1)
  {
    v7 = sub_1003A0718;
  }

  else
  {
    v8 = *(v4 + 680);

    *(v4 + 704) = a1;
    v7 = sub_1003A03D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003A0348()
{
  v1 = v0[80];
  v2 = v0[78];
  v3 = v0[62];
  v4 = v0[59];

  v5 = v0[82];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A03D8()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 472);
  v3 = *(v0 + 368);
  v4 = sub_10015049C(v0 + 344, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v8 = *v7;

  v10 = sub_1003AB5DC(v9, v8, v1);
  *(v0 + 712) = v10;
  sub_100007BAC((v0 + 344));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 624);
  sub_10001F280(*(v0 + 424), v0 + 384);
  v12 = swift_allocObject();
  *(v0 + 720) = v12;
  *(v12 + 16) = v11;
  sub_10000A748((v0 + 384), v12 + 24);
  *(v12 + 64) = v10;
  v13 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v16 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v14 = swift_task_alloc();
  *(v0 + 728) = v14;
  *v14 = v0;
  v14[1] = sub_1003A05E8;

  return v16(&unk_10139FEF8, v12);
}

uint64_t sub_1003A05E8()
{
  v2 = *(*v1 + 728);
  v3 = *(*v1 + 720);
  v6 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v4 = sub_1003A0840;
  }

  else
  {
    v4 = sub_1003A07B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A0718()
{
  v1 = v0[85];
  v2 = v0[78];
  v3 = v0[62];
  v4 = v0[59];

  sub_100007BAC(v0 + 43);
  v5 = v0[87];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A07B0()
{
  v1 = v0[89];
  v2 = v0[78];
  v3 = v0[62];
  v4 = v0[59];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A0840()
{
  v1 = v0[89];
  v2 = v0[78];
  v3 = v0[62];
  v4 = v0[59];

  v5 = v0[92];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A08D0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  type metadata accessor for WorkItemQueue();
  v6 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  UUID.init()();
  result = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  qword_10169EED8 = result;
  return result;
}

uint64_t sub_1003A0A0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100014744;

  return sub_100F5A858(a2, a3, a4);
}

uint64_t sub_1003A0AC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100014744;

  return sub_1012AEE88(a2, a3, a4);
}

uint64_t sub_1003A0B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v15;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 196) = a5;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1000BC4D4(&qword_10169EF88, &unk_1013E4B70);
  *(v8 + 80) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0);
  *(v8 + 96) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1003A0C68, 0, 0);
}

uint64_t sub_1003A0C68()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v29 = *(v0 + 72);
  v28 = *(v0 + 64);
  v27 = *(v0 + 48);
  v22 = *(v0 + 196);
  v5 = *(v0 + 32);
  sub_1000D2A70(*(v0 + 24), v2, &qword_10169EF90, &unk_10139FCF0);
  v6 = v2 + v1[16];
  v35 = *(v2 + v1[12]);
  v30 = *(v6 + 16);
  v31 = *(v6 + 8);
  v26 = *v6;
  *(v0 + 112) = v30;
  v7 = (v2 + v1[20]);
  v24 = v7[1];
  v25 = *v7;
  *(v0 + 120) = v24;
  v23 = *(v2 + v1[24]);
  *(v0 + 128) = v23;
  v8 = (v2 + v1[28]);
  *(v0 + 136) = *v8;
  *(v0 + 144) = v8[1];
  sub_1000D2A70(v5, v4, &qword_10169EF88, &unk_1013E4B70);
  *(v0 + 192) = v3[12];
  v9 = (v4 + v3[16]);
  v10 = *v9;
  *(v0 + 152) = v9[1];
  v11 = (v4 + v3[20]);
  v21 = *v11;
  *(v0 + 160) = v11[1];
  v12 = (v4 + v3[24]);
  v20 = *v12;
  *(v0 + 168) = v12[1];
  LODWORD(v1) = *(v4 + v3[28]);
  LODWORD(v2) = *(v4 + v3[32]);
  v13 = *(v4 + v3[36]);
  v14 = (v4 + v3[40]);
  v15 = *v14;
  *(v0 + 176) = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_1003A0ED8;
  v17 = *(v0 + 104);
  v18 = *(v0 + 16);
  v34 = *(v0 + 40);
  v33 = *(v0 + 88);

  return sub_100F67848(v17, v35, v26, v31, v30, v25, v24, v23);
}

uint64_t sub_1003A0ED8()
{
  v1 = *(*v0 + 184);
  v17 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v15 = *(*v0 + 152);
  v16 = *(*v0 + 192);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 136);
  v6 = *(*v0 + 128);
  v7 = *(*v0 + 120);
  v8 = *(*v0 + 112);
  v9 = *(*v0 + 104);
  v10 = *(*v0 + 88);
  v18 = *v0;

  sub_100016590(v5, v4);

  sub_10000B3A8(v10 + v16, &qword_1016980D0, &unk_10138F3B0);
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  v12(v9, v11);

  v13 = *(v18 + 8);

  return v13();
}

uint64_t sub_1003A1198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1003A1238;

  return sub_1001EF36C(a3);
}

uint64_t sub_1003A1238(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_1003A1388, 0, 0);
  }
}

uint64_t sub_1003A13AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1003A1450;

  return sub_1001EF968(a2);
}

uint64_t sub_1003A1450(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_1003A19DC;
  }

  else
  {
    v5 = sub_1003A1564;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A1564()
{
  v42 = v0;
  v1 = [*(v0 + 48) share];
  if (v1)
  {

    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 16);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AE40);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 16);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v41 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      v10 = [v7 inputUrl];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_1000136BC(v11, v13, &v41);

      *(v8 + 14) = v14;
      v15 = "Sending imported share for url %{private,mask.hash}s to the app.";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v5, v6, v15, v8, 0x16u);
      sub_100007BAC(v9);
    }
  }

  else
  {
    v16 = [*(v0 + 48) authUrl];
    if (v16)
    {

      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 16);
      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10177AE40);
      v19 = v17;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v20 = *(v0 + 16);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v41 = v9;
        *v8 = 141558275;
        *(v8 + 4) = 1752392040;
        *(v8 + 12) = 2081;
        v21 = [v20 inputUrl];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = sub_1000136BC(v22, v24, &v41);

        *(v8 + 14) = v25;
        v15 = " Sending auth url for importing url %{private,mask.hash}s to the app.";
        goto LABEL_15;
      }
    }

    else
    {
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 16);
      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_10177AE40);
      v28 = v26;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v29 = *(v0 + 16);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v41 = v9;
        *v8 = 141558275;
        *(v8 + 4) = 1752392040;
        *(v8 + 12) = 2081;
        v30 = [v29 inputUrl];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_1000136BC(v31, v33, &v41);

        *(v8 + 14) = v34;
        v15 = "Importing url %{private,mask.hash}s didnt result in a share or authUrl";
        goto LABEL_15;
      }
    }
  }

  v35 = *(v0 + 48);
  v37 = *(v0 + 24);
  v36 = *(v0 + 32);
  v38 = v35;
  v37(v35, 0);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1003A19DC()
{
  v24 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE40);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[7];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v12 = [v8 inputUrl];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1000136BC(v13, v15, &v23);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not import share for url %{private,mask.hash}s, %{public}@", v9, 0x20u);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v11);
  }

  v18 = v0[7];
  v20 = v0[3];
  v19 = v0[4];
  swift_errorRetain();
  v20(0, v18);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1003A1C54(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_1001FB974(a2, a3);
}

uint64_t sub_1003A1D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[7] = v10;
  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = sub_1003A1E44;

  return sub_1005A8170(v10, a2);
}

uint64_t sub_1003A1E44()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1003A2068;
  }

  else
  {
    v3 = sub_1003A1F58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A1F58()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6(v4, 0);
  sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
  (*(v2 + 8))(v1, v3);
  v7 = v0[7];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003A2068()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];
  (*(v0[6] + 56))(v2, 1, 1, v0[5]);
  swift_errorRetain();
  v3(v2, v1);

  sub_10000B3A8(v2, &unk_101696AC0, &qword_101390A60);
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A2168()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1003A220C;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003A220C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    sub_10000B3A8((v4 + 2), &unk_101698E08, &qword_101390A08);

    return _swift_task_switch(sub_1003A24C0, 0, 0);
  }

  else
  {
    sub_10000B3A8((v4 + 2), &unk_101698E08, &qword_101390A08);
    v7 = swift_task_alloc();
    v4[10] = v7;
    *v7 = v6;
    v7[1] = sub_1003A23AC;

    return sub_1005B2F84();
  }
}

uint64_t sub_1003A23AC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1003A253C;
  }

  else
  {
    v3 = sub_1003A24D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A24D8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003A253C()
{
  v1 = v0[8];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A25A0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v4 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_1003A2684;

  return sub_1005B39DC(a2, 0, 0, 0);
}

uint64_t sub_1003A2684()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 48);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_1003A27D0, 0, 0);
  }
}

uint64_t sub_1003A27D0()
{
  if (qword_1016954D8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  swift_beginAccess();
  sub_1010F6584(v2, v1);
  swift_endAccess();
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A28BC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1005B0CD4(a2);
}

uint64_t sub_1003A2958(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1005AFF60(a2);
}

uint64_t sub_1003A29F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1003A2A94;

  return sub_1005C0C5C(a3);
}

uint64_t sub_1003A2A94(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1003CC2E0, 0, 0);
}

uint64_t sub_1003A2B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003A2C38, 0, 0);
}

uint64_t sub_1003A2C38()
{
  if (v0[5])
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_1003A2DAC;
    v2 = v0[8];
    v3 = v0[9];
    v5 = v0[6];
    v4 = v0[7];

    return sub_1005C10E4(v5, v4, v2, v3);
  }

  else
  {
    v7 = *(type metadata accessor for OwnerSharingCircle() + 24);
    if (qword_1016954D8 != -1)
    {
      swift_once();
    }

    v8 = v0[10];
    v9 = v0[6];
    swift_beginAccess();
    sub_1010F6584(v9 + v7, v8);
    swift_endAccess();
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1003A2DAC()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_1003A2EA8, 0, 0);
}

uint64_t sub_1003A2EA8()
{
  v1 = *(type metadata accessor for OwnerSharingCircle() + 24);
  if (qword_1016954D8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = v0[6];
  swift_beginAccess();
  sub_1010F6584(v3 + v1, v2);
  swift_endAccess();
  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A2FA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1003A3040;

  return sub_1005C02F4(a2);
}

uint64_t sub_1003A3040()
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
    v7 = swift_task_alloc();
    v2[5] = v7;
    *v7 = v4;
    v7[1] = sub_1000D2464;
    v8 = v2[2];
    v9 = v2[3];

    return sub_1005C07B4(v9);
  }
}

uint64_t sub_1003A31B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1005BBAF4();
}

uint64_t sub_1003A3244(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for UUID();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v1[12] = *(v3 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v1[15] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle();
  v1[17] = v6;
  v7 = *(v6 - 8);
  v1[18] = v7;
  v8 = *(v7 + 64) + 15;
  v1[19] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_10169F040, &qword_10139FE30) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v1[22] = v11;
  *v11 = v1;
  v11[1] = sub_1003A3424;

  return daemon.getter();
}

uint64_t sub_1003A3424(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v12 = *v1;
  v3[23] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[24] = v6;
  v7 = type metadata accessor for Daemon();
  v3[25] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[26] = v8;
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[27] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  v3[28] = v10;
  *v6 = v12;
  v6[1] = sub_1003A3618;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003A3618(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_1003A3B80;
    v8 = 0;
  }

  else
  {
    v9 = *(v4 + 184);

    *(v4 + 240) = a1;
    v7 = sub_1003A3754;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1003A3754()
{
  v1 = v0[30];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[31] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[32] = v4;
  *v3 = v0;
  v3[1] = sub_1003A3838;
  v5 = v0[30];

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_1003A3838()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_1003A3950, v2, 0);
}

uint64_t sub_1003A3950()
{
  v1 = v0[30];

  v0[33] = v0[7];

  return _swift_task_switch(sub_1003A39C0, 0, 0);
}

uint64_t sub_1003A39C0()
{
  v1 = *(v0[33] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_1003A3A6C;
  v3 = v0[21];
  v4 = v0[9];

  return sub_10068F740(v3, v4);
}

uint64_t sub_1003A3A6C()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1003A3DFC;
  }

  else
  {
    v3 = sub_1003A3C30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A3B80()
{
  v1 = v0[23];

  v2 = v0[29];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003A3C30()
{
  v1 = v0[33];
  v2 = v0[20];
  v3 = v0[21];

  sub_1000D2AD8(v3, v2, &qword_10169F040, &qword_10139FE30);
  v4 = type metadata accessor for DelegatedBeaconMetadata(0);
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  v6 = v0[20];
  if (v5 == 1)
  {
    sub_10000B3A8(v6, &qword_10169F040, &qword_10139FE30);
LABEL_4:
    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[19];
    v11 = v0[16];
    v13 = v0[13];
    v12 = v0[14];

    v14 = v0[1];

    return v14();
  }

  v7 = *(v6 + *(v4 + 32));
  sub_10002FE88(v6, type metadata accessor for DelegatedBeaconMetadata);
  if (v7)
  {
    goto LABEL_4;
  }

  v16 = async function pointer to daemon.getter[1];
  v17 = swift_task_alloc();
  v0[36] = v17;
  *v17 = v0;
  v17[1] = sub_1003A3EAC;

  return daemon.getter();
}

uint64_t sub_1003A3DFC()
{
  v1 = v0[33];

  v2 = v0[35];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003A3EAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 288);
  v5 = *v1;
  v3[37] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[38] = v7;
  v8 = type metadata accessor for ItemSharingNotificationsService();
  v9 = sub_100019420(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService);
  *v7 = v5;
  v7[1] = sub_1003A4060;
  v10 = v3[27];
  v11 = v3[25];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003A4060(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(*v2 + 312) = a1;

  v7 = v3[37];
  if (v1)
  {

    v9 = v4[20];
    v8 = v4[21];
    v10 = v4[19];
    v11 = v4[16];
    v14 = v4 + 13;
    v12 = v4[13];
    v13 = v14[1];

    v15 = *(v6 + 8);

    return v15();
  }

  else
  {

    return _swift_task_switch(sub_1003A4224, 0, 0);
  }
}

uint64_t sub_1003A4224()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 320) = v1;
  *v1 = v0;
  v1[1] = sub_1003A42C8;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003A42C8(uint64_t a1)
{
  v3 = *(*v2 + 320);
  v4 = *v2;
  v4[41] = a1;
  v4[42] = v1;

  if (v1)
  {
    sub_10000B3A8((v4 + 2), &unk_101698E08, &qword_101390A08);

    return _swift_task_switch(sub_1003A471C, 0, 0);
  }

  else
  {
    sub_10000B3A8((v4 + 2), &unk_101698E08, &qword_101390A08);
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v4[43] = v6;
    *v6 = v4;
    v6[1] = sub_1003A4454;

    return daemon.getter();
  }
}

uint64_t sub_1003A4454(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 344);
  v5 = *v1;
  v3[44] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[45] = v7;
  *v7 = v5;
  v7[1] = sub_1003A45E0;
  v8 = v3[28];
  v9 = v3[27];
  v10 = v3[26];
  v11 = v3[25];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_1003A45E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v7 = sub_1003A4DF0;
    v8 = 0;
  }

  else
  {
    v9 = *(v4 + 352);

    *(v4 + 376) = a1;
    v7 = sub_1003A47CC;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1003A471C()
{
  v1 = v0[39];

  v2 = v0[42];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003A47CC()
{
  v1 = v0[47];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[48] = v6;
  v0[49] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v4, v5);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[50] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v5);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[51] = v10;
  *v10 = v0;
  v10[1] = sub_1003A4930;
  v12 = v0[15];
  v11 = v0[16];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1003CA280, v8, v12);
}

uint64_t sub_1003A4930()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 376);
  v5 = *v0;

  return _swift_task_switch(sub_1003A4A64, 0, 0);
}

uint64_t sub_1003A4A64()
{
  v36 = v0;
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v3 = v0[48];
    v2 = v0[49];
    v4 = v0[13];
    v6 = v0[9];
    v5 = v0[10];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177A560);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[41];
    v12 = v0[39];
    v13 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    if (v10)
    {
      v34 = v0[41];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_100019420(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_1000136BC(v18, v20, &v35);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v8, v9, "    HandleMaxViewsNotification - delegated circle not found withshareIdentifier %{private,mask.hash}s.", v16, 0x16u);
      sub_100007BAC(v17);
    }

    else
    {
      v26 = v0[41];

      (*(v14 + 8))(v13, v15);
    }

    v28 = v0[20];
    v27 = v0[21];
    v29 = v0[19];
    v30 = v0[16];
    v32 = v0[13];
    v31 = v0[14];

    v33 = v0[1];

    return v33();
  }

  else
  {
    sub_1003CBBBC(v1, v0[19], type metadata accessor for OwnerSharingCircle);
    v22 = swift_task_alloc();
    v0[52] = v22;
    *v22 = v0;
    v22[1] = sub_1003A4EB8;
    v23 = v0[39];
    v24 = v0[19];

    return sub_100B56A3C(v24);
  }
}

uint64_t sub_1003A4DF0()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[39];

  v4 = v0[46];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A4EB8()
{
  v2 = *(*v1 + 416);
  v3 = *v1;
  *(v3 + 424) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003A5878, 0, 0);
  }

  else
  {
    v4 = async function pointer to daemon.getter[1];
    v5 = swift_task_alloc();
    *(v3 + 432) = v5;
    *v5 = v3;
    v5[1] = sub_1003A5024;

    return daemon.getter();
  }
}

uint64_t sub_1003A5024(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v5 = *v1;
  v3[55] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[56] = v7;
  *v7 = v5;
  v7[1] = sub_1003A51B0;
  v8 = v3[28];
  v9 = v3[27];
  v10 = v3[26];
  v11 = v3[25];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_1003A51B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v7 = sub_1003A56B4;
    v8 = 0;
  }

  else
  {
    v9 = *(v4 + 440);

    *(v4 + 464) = a1;
    v7 = sub_1003A52EC;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1003A52EC()
{
  v1 = v0[58];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[59] = v3;
  *v3 = v0;
  v3[1] = sub_1003A53C4;
  v4 = v0[58];
  v5 = v0[32];

  return unsafeBlocking<A>(context:_:)(v0 + 8, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v4, v5);
}

uint64_t sub_1003A53C4()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v4 = *v0;

  return _swift_task_switch(sub_1003A54DC, v2, 0);
}

uint64_t sub_1003A54DC()
{
  v1 = v0[58];

  v0[60] = v0[8];
  v2 = swift_task_alloc();
  v0[61] = v2;
  *v2 = v0;
  v2[1] = sub_1003A5584;
  v3 = v0[9];

  return sub_1012DC548(v3, 1);
}

uint64_t sub_1003A5584()
{
  v2 = *(*v1 + 488);
  v3 = *(*v1 + 480);
  v6 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = sub_1003A5954;
  }

  else
  {
    v4 = sub_1003A579C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A56B4()
{
  v1 = v0[55];
  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[19];

  sub_10002FE88(v4, type metadata accessor for OwnerSharingCircle);
  v5 = v0[57];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[16];
  v11 = v0[13];
  v10 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003A579C()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[19];

  sub_10002FE88(v3, type metadata accessor for OwnerSharingCircle);
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = v0[16];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A5878()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[19];

  sub_10002FE88(v3, type metadata accessor for OwnerSharingCircle);
  v4 = v0[53];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A5954()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[19];

  sub_10002FE88(v3, type metadata accessor for OwnerSharingCircle);
  v4 = v0[62];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A5A30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100014744;

  return sub_1005BF8E8(a2, a3, a4, a5);
}

uint64_t sub_1003A5AF4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1005ABDC8(a2);
}

uint64_t sub_1003A5B90()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_1003A5C00(char a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_1003A5D00, 0, 0);
}

uint64_t sub_1003A5D00()
{
  if (*(v0 + 224) == 1)
  {
    sub_10001F280(*(v0 + 112), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 184) = v1;
    *v1 = v0;
    v1[1] = sub_1003A5DF0;

    return sub_1003AC554(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 152);

    v4 = *(v0 + 120);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1003A5DF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {

    sub_10000B3A8(v4 + 16, &unk_101698E08, &qword_101390A08);

    return _swift_task_switch(sub_1003A6134, 0, 0);
  }

  else
  {
    sub_10000B3A8(v4 + 16, &unk_101698E08, &qword_101390A08);
    v7 = swift_task_alloc();
    *(v4 + 200) = v7;
    *v7 = v6;
    v7[1] = sub_1003A5FBC;
    v8 = *(v4 + 104);

    return sub_1005B39DC(v8, 0, 0, 1);
  }
}

uint64_t sub_1003A5FBC()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003A643C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[27] = v4;
    *v4 = v3;
    v4[1] = sub_1003A6260;
    v5 = v3[24];
    v6 = v3[19];
    v7 = v3[13];

    return sub_1003CA2F4(v7, v5, v6);
  }
}

uint64_t sub_1003A6134()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[19];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DelegatedShareUseCase not available", v6, 2u);
  }

  v7 = v0[15];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003A6260()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(sub_1003A635C, 0, 0);
}

uint64_t sub_1003A635C()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[13];
  swift_beginAccess();
  sub_1010F6584(v4, v3);
  swift_endAccess();

  sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A643C()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to stop delegation ", v4, 2u);
  }

  v5 = v0[26];

  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_1003A6260;
  v7 = v0[24];
  v8 = v0[19];
  v9 = v0[13];

  return sub_1003CA2F4(v9, v7, v8);
}

uint64_t sub_1003A659C(uint64_t a1)
{
  v1[6] = a1;
  v2 = type metadata accessor for UUID();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[11] = v5;
  v1[12] = *(v5 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  v7[1] = sub_1003A6710;

  return daemon.getter();
}

uint64_t sub_1003A6710(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  *(v3 + 128) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003A68EC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003A68EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v8 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_1003A7100;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_1003A6A08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A6A08()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = *(v4 + 16);
  v0[20] = v6;
  v0[21] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  (*(v4 + 56))(v2, 0, 1, v3);

  return _swift_task_switch(sub_1003A6AC8, v1, 0);
}

uint64_t sub_1003A6AC8()
{
  v1 = v0[18];
  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  sub_1000D2A70(v0[14], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[22] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[23] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_1003A6C44;

  return unsafeBlocking<A>(context:_:)(v0 + 5, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2D0C, v7, v10);
}

uint64_t sub_1003A6C44()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return _swift_task_switch(sub_1003A6D70, v3, 0);
}

uint64_t sub_1003A6D70()
{
  sub_10000B3A8(v0[14], &qword_1016980D0, &unk_10138F3B0);
  v0[24] = v0[5];

  return _swift_task_switch(sub_1003A6DF0, 0, 0);
}

uint64_t sub_1003A6DF0()
{
  v0[25] = *(v0[24] + 16);

  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1003A6EAC;
  v2 = v0[18];
  v3 = v0[6];

  return sub_101296F78(v3, v2);
}

uint64_t sub_1003A6EAC(char a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1003A6FAC, 0, 0);
}

uint64_t sub_1003A6FAC()
{
  if (*(v0 + 200))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 216) == 0;
  }

  if (v1)
  {
    v8 = *(v0 + 144);
  }

  else
  {
    if (qword_1016954D8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 168);
    v3 = *(v0 + 144);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    (*(v0 + 160))(v4, *(v0 + 48), v6);
    swift_beginAccess();
    sub_100DE8BCC(v5, v4);
    swift_endAccess();

    (*(v7 + 8))(v5, v6);
  }

  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v12 = *(v0 + 72);
  v11 = *(v0 + 80);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1003A7100()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];
  v7 = v0[19];

  return v6();
}

uint64_t sub_1003A7194(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100F66694(a2);
}

uint64_t sub_1003A7230(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100102B40(a2);
}

uint64_t sub_1003A72CC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100237320(a2, a3);
}

uint64_t sub_1003A7378(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_10023D968(a2);
}

uint64_t sub_1003A7414(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 68) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1003A743C, 0, 0);
}

uint64_t sub_1003A743C()
{
  v1 = *(v0 + 24);
  sub_1000BC4D4(&qword_10169EF80, &qword_10139FCC0);
  v2 = *(type metadata accessor for OwnerPeerTrust() - 8);
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  *(v0 + 64) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 40) = v6;
  *(v6 + 16) = xmmword_101385D80;
  sub_10002FDC4(v1, v6 + v5, type metadata accessor for OwnerPeerTrust);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1003A759C;
  v8 = *(v0 + 68);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return sub_10126DA14(v6, v9, v8);
}

uint64_t sub_1003A759C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003A7718, 0, 0);
  }

  else
  {
    v4 = *(v3 + 40);
    v5 = (*(v3 + 64) + 32) & ~*(v3 + 64);
    swift_setDeallocating();
    sub_10002FE88(v4 + v5, type metadata accessor for OwnerPeerTrust);
    swift_deallocClassInstance();
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_1003A7718()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 64) + 32) & ~*(v0 + 64);
  swift_setDeallocating();
  sub_10002FE88(v1 + v2, type metadata accessor for OwnerPeerTrust);
  swift_deallocClassInstance();
  v3 = *(v0 + 8);
  v4 = *(v0 + 56);

  return v3();
}

uint64_t sub_1003A77B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_101282F9C(a2, a3);
}

uint64_t sub_1003A7864(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_10127256C(a2);
}

uint64_t sub_1003A7900(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_101277214(a2);
}

uint64_t sub_1003A799C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1012776E0(a2);
}

uint64_t sub_1003A7A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_1008424C4(a2, a3);
}

uint64_t sub_1003A7AE4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100843F5C(a2);
}

uint64_t sub_1003A7B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_1003A7C18;

  return sub_10128A078();
}

uint64_t sub_1003A7C18()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v3;
  v4[1] = sub_1003A7D5C;
  v5 = *(v1 + 24);

  return sub_1003AE100(v5);
}

uint64_t sub_1003A7D5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_1003A80F0;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_1003A7E88;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003A7E88()
{
  v1 = v0[7];

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1003A7F40;
  v3 = v0[7];
  v4 = v0[2];

  return sub_1003AB7F8(v3, v4);
}

uint64_t sub_1003A7F40()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1003A8058, 0, 0);
}

uint64_t sub_1003A8058()
{
  v1 = v0[7];

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1003A823C;
  v3 = v0[4];

  return sub_100240044();
}

uint64_t sub_1003A80F0()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Can't create shareCreateUseCase!", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1003A823C;
  v6 = *(v0 + 32);

  return sub_100240044();
}

uint64_t sub_1003A823C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v3;
  v4[1] = sub_1003A837C;
  v5 = *(v1 + 32);

  return sub_100241254();
}

uint64_t sub_1003A837C()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1003A8474()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      sub_10001F280(v4, v6);
      sub_1000BC4D4(&qword_10169EF08, &qword_10139FBE8);
      type metadata accessor for OwnerCommandManager();
      if (swift_dynamicCast())
      {
        return;
      }

      ++v3;
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_1003BE54C();
    swift_allocError();
    *v5 = 0xD000000000000013;
    v5[1] = 0x8000000101351DF0;
    swift_willThrow();
  }
}

void *sub_1003A86D8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1003A886C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_1003A88EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1003A89B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003A8AC8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1003A8B54(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaDictionary.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1003A8AC8(v2, 0);

    v1 = sub_1003A95D8(&v5, v3 + 4, v2, v1);
    sub_1000128F8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_1003A8C20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1003A8CF8(void *result, unint64_t a2)
{
  v3 = result;
  v4 = a2 - result;
  if (a2 < result)
  {
    if ((result - a2) < 0)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v4 = a2 - result;
LABEL_5:
    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      if (v4 != -1)
      {
        v6 = sub_100036438(v4 + 1, 0, &qword_10169EF40, &qword_10139FC28);
        if (sub_1011B8814(&v7, (v6 + 4), v5, v3, a2) == v5)
        {
          return v6;
        }

        __break(1u);
      }

      return _swiftEmptyArrayStorage;
    }

    __break(1u);
    goto LABEL_12;
  }

  if ((a2 - result) >= 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t **sub_1003A8DCC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v9 = sub_1003A8AC8(v8, 0);

    a4 = sub_1003AAD90(&v11, v9 + 4, v8, a1, a2, a3, a4);
    sub_1000128F8();
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v9;
}

void *sub_1003A8EB8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      v16 = *(v14 + 8);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1003A8FC4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_10169BAA8, &unk_10139FDB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v37 - v12;
  v13 = sub_1000BC4D4(&qword_10169BAB8, &qword_1013956D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v37 - v16;
  v48 = a4;
  *v17 = a4;
  *(v17 + 1) = 0;
  v18 = *(v15 + 52);
  v19 = type metadata accessor for Data.Iterator();
  v20 = *(v19 - 8);
  v44 = *(v20 + 56);
  v45 = v20 + 56;
  result = v44(&v17[v18], 1, 1, v19);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_24;
  }

  if (a3 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v41 = a2;
  v42 = a1;
  v22 = 0;
  v23 = 0;
  v49 = (v20 + 48);
  v24 = v48 + 40;
  v25 = 1;
  v38 = v48 + 40;
  v39 = a3;
  while (2)
  {
    v43 = v22;
    v40 = v25;
    for (i = (v24 + 16 * v23); ; i += 2)
    {
      v28 = v47;
      sub_1000D2A70(&v17[v18], v47, &qword_10169BAA8, &unk_10139FDB0);
      v29 = *v49;
      v30 = (*v49)(v28, 1, v19);
      result = sub_10000B3A8(v28, &qword_10169BAA8, &unk_10139FDB0);
      if (v30 != 1)
      {
        result = v29(&v17[v18], 1, v19);
        if (result == 1)
        {
          goto LABEL_28;
        }

        sub_100019420(&qword_10169BAC8, &type metadata accessor for Data.Iterator);
        result = dispatch thunk of IteratorProtocol.next()();
        if (v51 != 1)
        {
          break;
        }
      }

      v31 = *(v48 + 16);
      if (v23 == v31)
      {
        goto LABEL_22;
      }

      if (v23 >= v31)
      {
        __break(1u);
        goto LABEL_27;
      }

      v32 = *(i - 1);
      v33 = *i;
      *(v17 + 1) = v23 + 1;
      v34 = v33 >> 62;
      if ((v33 >> 62) > 1)
      {
        if (v34 == 2)
        {
          v35 = *(v32 + 16);
LABEL_6:
          sub_100017D5C(v32, v33);
        }
      }

      else if (v34)
      {
        goto LABEL_6;
      }

      v27 = v46;
      Data.Iterator.init(_:at:)();
      v44(v27, 0, 1, v19);
      sub_1002696E4(v27, &v17[v18]);
      ++v23;
    }

    v22 = v40;
    v36 = v41;
    *v41 = v50;
    a3 = v39;
    if (v22 != v39)
    {
      v41 = v36 + 1;
      v25 = v22 + 1;
      v24 = v38;
      if (!__OFADD__(v22, 1))
      {
        continue;
      }

      __break(1u);
LABEL_22:
      a1 = v42;
      a3 = v43;
      goto LABEL_24;
    }

    break;
  }

  a1 = v42;
LABEL_24:
  sub_1000D2AD8(v17, a1, &qword_10169BAB8, &qword_1013956D8);
  return a3;
}

uint64_t sub_1003A9374(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v32 = &v29 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_10002FDC4(*(a4 + 56) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for OwnedBeaconGroup.PairingState);
      v25 = v24;
      v26 = v32;
      sub_1003CBBBC(v25, v32, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_1003CBBBC(v26, a2, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1003A95D8(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

void *sub_1003A97DC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003A99B0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v41 = a6;
  v42 = a7;
  v11 = a5(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = a4 + 7;
  v19 = -1 << *(a4 + 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & a4[7];
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v18;
    a1[2] = ~v19;
    a1[3] = v22;
    a1[4] = v21;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = a1;
    v38 = a3;
    result = 0;
    v22 = 0;
    v36 = v19;
    v23 = (63 - v19) >> 6;
    v24 = 1;
    while (v21)
    {
LABEL_14:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      a1 = a4;
      v28 = a4[6];
      v29 = v39;
      v30 = *(v40 + 72);
      sub_10002FDC4(v28 + v30 * (v27 | (v22 << 6)), v39, v41);
      v31 = v29;
      v32 = v42;
      sub_1003CBBBC(v31, v17, v42);
      sub_1003CBBBC(v17, a2, v32);
      if (v24 == v38)
      {
        a4 = a1;
        a1 = v37;
        a3 = v38;
        goto LABEL_23;
      }

      a2 += v30;
      result = v24;
      v33 = __OFADD__(v24++, 1);
      a4 = a1;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v25 = v22;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v26 >= v23)
      {
        break;
      }

      v21 = v18[v26];
      ++v25;
      if (v21)
      {
        v22 = v26;
        goto LABEL_14;
      }
    }

    v21 = 0;
    if (v23 <= v22 + 1)
    {
      v34 = v22 + 1;
    }

    else
    {
      v34 = v23;
    }

    v22 = v34 - 1;
    a3 = result;
    a1 = v37;
LABEL_23:
    v19 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1003A9BF4(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_100017D5C(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_100017D5C(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003A9D58(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for UUID();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
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
    v38 = a4 + 56;
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

void *sub_1003AA0FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v19;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1003AA29C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1003AA39C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1003AA498(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1003AA5EC(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1003AA6E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9))));
      v18 = *v17;
      v19 = *(v17 + 8);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1003AA840(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003AA994(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for Device();
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
      v24 = *(a4 + 56);
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

void *sub_1003AAC38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_1003AAD90(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_100008BB8(0, a5, a6);
  sub_100009CC8(a7, a5, a6);
  result = Set.Iterator.init(_cocoa:)();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_100008BB8(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_1003AAFC0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003AB114(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1003AB3B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = type metadata accessor for SharingCircleKeyManager();
  v34[3] = v8;
  v34[4] = &off_10164E4F0;
  v34[0] = a1;
  v9 = type metadata accessor for MemberCircleRevokeManager();
  v32 = v9;
  v33 = &off_1016634E8;
  v31[0] = a3;
  a4(0);
  v10 = swift_allocObject();
  v11 = sub_10015049C(v34, v8);
  v12 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v32;
  v17 = sub_10015049C(v31, v32);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v14;
  v23 = *v20;
  v29 = v8;
  v30 = &off_10164E4F0;
  v27 = &off_1016634E8;
  *&v28 = v22;
  v26 = v9;
  *&v25 = v23;
  swift_defaultActor_initialize();
  sub_10000A748(&v28, v10 + 112);
  *(v10 + 152) = a2;
  sub_10000A748(&v25, v10 + 160);
  sub_100007BAC(v31);
  sub_100007BAC(v34);
  return v10;
}

uint64_t sub_1003AB5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v32[3] = v6;
  v32[4] = &off_10164F068;
  v32[0] = a2;
  v7 = type metadata accessor for FamilyCircleService();
  v30 = v7;
  v31 = &off_10164F7C0;
  v29[0] = a3;
  type metadata accessor for ShareDeclineUseCase();
  v8 = swift_allocObject();
  v9 = sub_10015049C(v32, v6);
  v10 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = v30;
  v15 = sub_10015049C(v29, v30);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v12;
  v21 = *v18;
  v27 = v6;
  v28 = &off_10164F068;
  v25 = &off_10164F7C0;
  *&v26 = v20;
  v24 = v7;
  *&v23 = v21;
  swift_defaultActor_initialize();
  *(v8 + 112) = a1;
  sub_10000A748(&v26, v8 + 120);
  sub_10000A748(&v23, v8 + 160);
  sub_100007BAC(v29);
  sub_100007BAC(v32);
  return v8;
}

uint64_t sub_1003AB7F8(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v5 = type metadata accessor for OwnerSharingCircle();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[5] = type metadata accessor for ShareCreateUseCase();
  v2[6] = &off_10165C8E0;
  v2[2] = a1;

  return _swift_task_switch(sub_1003AB910, a2, 0);
}

uint64_t sub_1003AB910()
{
  v1 = *(*(v0 + 64) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_1003AB934, v1, 0);
}

uint64_t sub_1003AB934()
{
  v1 = *(v0 + 120);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_1003ABA20;
  v5 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_1003ABA20()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_1003ABB38, v2, 0);
}

uint64_t sub_1003ABB38()
{
  v1 = v0[8];
  v0[17] = v0[7];
  return _swift_task_switch(sub_1003ABB58, v1, 0);
}

uint64_t sub_1003ABB58()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v33 = *(v1 + 16);
    v34 = *(v0 + 136);
    while (v3 < *(v1 + 16))
    {
      v6 = *(v0 + 112);
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_10002FDC4(*(v0 + 136) + v7 + v8 * v3, v6, type metadata accessor for OwnerSharingCircle);
      v9 = *(v0 + 112);
      if (*(v6 + *(v5 + 28)) == 3 || *(v9 + *(v5 + 36)) != 4)
      {
        sub_10002FE88(v9, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        sub_1003CBBBC(v9, *(v0 + 88), type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_101123FE4(v10 > 1, v11 + 1, 1);
        }

        v12 = *(v0 + 88);
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_1003CBBBC(v12, _swiftEmptyArrayStorage + v7 + v11 * v8, type metadata accessor for OwnerSharingCircle);
        v2 = v33;
        v1 = v34;
      }

      if (v2 == ++v3)
      {
        v13 = *(v0 + 136);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *(v0 + 144) = _swiftEmptyArrayStorage;

    if (qword_101694480 == -1)
    {
      goto LABEL_15;
    }
  }

  swift_once();
LABEL_15:
  v14 = type metadata accessor for Logger();
  *(v0 + 152) = sub_1000076D4(v14, qword_10177A560);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = _swiftEmptyArrayStorage[2];

    _os_log_impl(&_mh_execute_header, v15, v16, "Found %ld of expired tentatively revoked owner circles.", v17, 0xCu);
  }

  else
  {
  }

  v18 = _swiftEmptyArrayStorage[2];
  *(v0 + 160) = v18;
  if (v18)
  {
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v19 + 80);
    *(v0 + 200) = v21;
    *(v0 + 168) = *(v19 + 72);
    *(v0 + 176) = 0;
    v22 = *(v0 + 104);
    sub_10002FDC4(*(v0 + 144) + ((v21 + 32) & ~v21), v22, type metadata accessor for OwnerSharingCircle);
    v23 = sub_1000035D0((v0 + 16), *(v0 + 40));
    v24 = *(v20 + 20);
    v25 = *v23;
    v26 = swift_task_alloc();
    *(v0 + 184) = v26;
    *v26 = v0;
    v26[1] = sub_1003ABF4C;

    return sub_100F66694(v22 + v24);
  }

  else
  {

    v28 = *(v0 + 104);
    v29 = *(v0 + 112);
    v31 = *(v0 + 88);
    v30 = *(v0 + 96);
    sub_100007BAC((v0 + 16));

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1003ABF4C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1003AC208;
  }

  else
  {
    v6 = sub_1003AC078;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003AC078()
{
  sub_10002FE88(*(v0 + 104), type metadata accessor for OwnerSharingCircle);
  v1 = *(v0 + 176) + 1;
  if (v1 == *(v0 + 160))
  {
    v2 = *(v0 + 144);

    v3 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    sub_100007BAC((v0 + 16));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 176) = v1;
    v9 = *(v0 + 104);
    v10 = *(v0 + 72);
    sub_10002FDC4(*(v0 + 144) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 168) * v1, v9, type metadata accessor for OwnerSharingCircle);
    v11 = sub_1000035D0((v0 + 16), *(v0 + 40));
    v12 = *(v10 + 20);
    v13 = *v11;
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_1003ABF4C;

    return sub_100F66694(v9 + v12);
  }
}

uint64_t sub_1003AC208()
{
  v34 = v0;
  v1 = *(v0 + 152);
  sub_10002FDC4(*(v0 + 104), *(v0 + 96), type metadata accessor for OwnerSharingCircle);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 192);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  if (v4)
  {
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_100019420(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v6;
    v14 = v13;
    sub_10002FE88(v7, type metadata accessor for OwnerSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v33);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to re-create owned tentatively revoked share with identifier: %s", v9, 0xCu);
    sub_100007BAC(v10);

    v16 = v32;
  }

  else
  {
    v17 = *(v0 + 192);

    sub_10002FE88(v7, type metadata accessor for OwnerSharingCircle);
    v16 = v6;
  }

  sub_10002FE88(v16, type metadata accessor for OwnerSharingCircle);
  v18 = *(v0 + 176) + 1;
  if (v18 == *(v0 + 160))
  {
    v19 = *(v0 + 144);

    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    sub_100007BAC((v0 + 16));

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    *(v0 + 176) = v18;
    v26 = *(v0 + 104);
    v27 = *(v0 + 72);
    sub_10002FDC4(*(v0 + 144) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 168) * v18, v26, type metadata accessor for OwnerSharingCircle);
    v28 = sub_1000035D0((v0 + 16), *(v0 + 40));
    v29 = *(v27 + 20);
    v30 = *v28;
    v31 = swift_task_alloc();
    *(v0 + 184) = v31;
    *v31 = v0;
    v31[1] = sub_1003ABF4C;

    return sub_100F66694(v26 + v29);
  }
}

uint64_t sub_1003AC554(uint64_t a1)
{
  *(v1 + 536) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 544) = v3;
  *v3 = v1;
  v3[1] = sub_1003AC5E8;

  return daemon.getter();
}

uint64_t sub_1003AC5E8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 544);
  v12 = *v1;
  v3[69] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[70] = v6;
  v7 = type metadata accessor for Daemon();
  v3[71] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[72] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003AC7C8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003AC7C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 560);
  v8 = *v2;
  v3[73] = a1;
  v3[74] = v1;

  if (v1)
  {
    v5 = sub_1003ACC1C;
  }

  else
  {
    v6 = v3[69];

    v5 = sub_1003AC8E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003AC8E8()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 536);
  v3 = type metadata accessor for SharingCircleKeyManager();
  *(v0 + 600) = v3;
  v4 = swift_allocObject();

  swift_defaultActor_initialize();
  v5 = type metadata accessor for KeyDropInterface();
  *(v0 + 608) = v5;
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v4 + 112) = v6;
  *(v4 + 120) = v1;
  sub_1000D2A70(v2, v0 + 216, &unk_101698E08, &qword_101390A08);
  if (*(v0 + 240))
  {
    sub_10000A748((v0 + 216), v0 + 176);
  }

  else
  {
    v7 = qword_101694920;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_10177B2E8;
    *(v0 + 152) = type metadata accessor for BeaconObservationStore();
    *(v0 + 160) = &off_101632E88;
    *(v0 + 168) = &off_101613BE0;
    *(v0 + 128) = v8;
    v9 = type metadata accessor for MemberCircleRevokeManager();
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_1000BB3F0((v0 + 128), (v10 + 32));
    *(v0 + 200) = v9;
    *(v0 + 208) = &off_1016634E8;
    *(v0 + 176) = v10;
    v11 = *(v0 + 240);

    if (v11)
    {
      sub_10000B3A8(v0 + 216, &unk_101698E08, &qword_101390A08);
    }
  }

  v12 = *(v0 + 584);
  v13 = *(v0 + 200);
  v14 = sub_10015049C(v0 + 176, v13);
  v15 = *(v13 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  (*(v15 + 16))(v17, v14, v13);
  v18 = *v17;

  *(v0 + 616) = sub_1003AB3B8(v4, v12, v18, type metadata accessor for ShareKeysUploadUseCase);
  sub_100007BAC((v0 + 176));

  *(v0 + 280) = v3;
  *(v0 + 288) = &off_10164E4F0;
  *(v0 + 256) = v4;
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v19 + 112) = 0;
  *(v19 + 120) = 0;
  *(v0 + 40) = v5;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 64) = &off_101613330;
  *(v0 + 16) = v19;
  v20 = async function pointer to daemon.getter[1];
  v21 = swift_task_alloc();
  *(v0 + 624) = v21;
  *v21 = v0;
  v21[1] = sub_1003ACC80;

  return daemon.getter();
}

uint64_t sub_1003ACC1C()
{
  v1 = v0[69];

  v2 = v0[74];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003ACC80(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 624);
  v5 = *v1;
  v3[79] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[80] = v7;
  v8 = type metadata accessor for PeerTrustService();
  v9 = sub_100019420(&qword_1016B1190, type metadata accessor for PeerTrustService);
  *v7 = v5;
  v7[1] = sub_1003ACE34;
  v10 = v3[72];
  v11 = v3[71];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003ACE34(uint64_t a1)
{
  v3 = *(*v2 + 640);
  v4 = *v2;
  v4[81] = a1;
  v4[82] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003AD294, 0, 0);
  }

  else
  {
    v5 = v4[79];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[83] = v7;
    *v7 = v4;
    v7[1] = sub_1003ACFAC;

    return daemon.getter();
  }
}

uint64_t sub_1003ACFAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 664);
  v5 = *v1;
  v3[84] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[85] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[86] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003AD164;
  v10 = v3[72];
  v11 = v3[71];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003AD164(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 680);
  v6 = *v2;
  *(*v2 + 696) = v1;

  if (v1)
  {
    v7 = sub_1003AD7F8;
  }

  else
  {
    v8 = *(v4 + 672);

    *(v4 + 704) = a1;
    v7 = sub_1003AD320;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003AD294()
{
  v1 = v0[79];
  v2 = v0[77];
  v3 = v0[73];

  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 32);
  v4 = v0[82];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003AD320()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v34 = v2;
  v32 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v38 = *(v0 + 584);
  v39 = *(v0 + 648);
  v5 = *(v0 + 280);
  sub_10015049C(v0 + 256, v5);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v37 = swift_task_alloc();
  (*(v6 + 16))();
  v8 = *(v0 + 40);
  sub_10015049C(v0 + 16, v8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64) + 15;
  v36 = swift_task_alloc();
  (*(v9 + 16))();
  v11 = *v36;
  *(v0 + 296) = *v37;
  *(v0 + 96) = v3;
  *(v0 + 104) = &off_101660C48;
  *(v0 + 320) = v4;
  *(v0 + 328) = &off_10164E4F0;
  *(v0 + 112) = &off_10162BCD8;
  *(v0 + 120) = &off_101613330;
  *(v0 + 72) = v11;
  v35 = sub_100019420(&qword_10169EF00, type metadata accessor for PeerTrustService);
  *(v0 + 360) = v2;
  *(v0 + 368) = &off_10164F068;
  *(v0 + 336) = v1;
  v33 = type metadata accessor for ShareKeysUploadUseCase();
  *(v0 + 400) = v33;
  *(v0 + 408) = &off_10162F848;
  *(v0 + 376) = v32;
  type metadata accessor for DelegatedShareUseCase();
  v12 = swift_allocObject();
  v13 = sub_10015049C(v0 + 296, v4);
  v14 = *(v4 - 8);
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  (*(v14 + 16))(v16, v13, v4);
  v17 = *(v0 + 360);
  v18 = sub_10015049C(v0 + 336, v17);
  v19 = *(v17 - 8);
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  (*(v19 + 16))(v21, v18, v17);
  v22 = *(v0 + 400);
  v23 = sub_10015049C(v0 + 376, v22);
  v24 = *(v22 - 8);
  v25 = *(v24 + 64) + 15;
  v26 = swift_task_alloc();
  (*(v24 + 16))(v26, v23, v22);
  v27 = *v16;
  v28 = *v21;
  v29 = *v26;
  *(v0 + 440) = v4;
  *(v0 + 448) = &off_10164E4F0;
  *(v0 + 416) = v27;
  *(v0 + 480) = v34;
  *(v0 + 488) = &off_10164F068;
  *(v0 + 456) = v28;
  *(v0 + 520) = v33;
  *(v0 + 528) = &off_10162F848;
  *(v0 + 496) = v29;
  swift_defaultActor_initialize();
  v12[21] = v38;
  sub_1003BE5A0((v0 + 72), (v12 + 14));
  sub_10000A748((v0 + 416), (v12 + 22));
  v12[27] = v39;
  v12[28] = v35;
  sub_10000A748((v0 + 456), (v12 + 29));
  sub_10000A748((v0 + 496), (v12 + 34));
  sub_100007BAC((v0 + 376));

  sub_100007BAC((v0 + 336));

  sub_100007BAC((v0 + 296));

  sub_100007BAC((v0 + 16));

  sub_100007BAC((v0 + 256));

  v30 = *(v0 + 8);

  return v30(v12);
}

uint64_t sub_1003AD7F8()
{
  v1 = v0[84];
  v2 = v0[81];
  v3 = v0[77];
  v4 = v0[73];

  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 32);
  v5 = v0[87];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1003AD898(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003AD960, 0, 0);
}

uint64_t sub_1003AD960()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1003ADA04;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1003ADA04(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v5 = sub_1003CC2E4;
  }

  else
  {
    v5 = sub_1003ADB30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003ADB30()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  (*(v4 + 16))(v2, v0[7], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v10 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1003ADCB8;

  return v10(&unk_1013A0010, v6);
}

uint64_t sub_1003ADCB8()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1003CC2F8;
  }

  else
  {
    v4 = sub_1003CC2B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003ADDE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v9, v16, v4);
      sub_100DE8BCC(v11, v9);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

uint64_t sub_1003ADF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v11 = &v16 - v10;
  v17 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    do
    {
      sub_10002FDC4(v13, v8, type metadata accessor for OwnerSharingCircle);
      sub_100DEC12C(v11, v8);
      sub_10002FE88(v11, type metadata accessor for OwnerSharingCircle);
      v13 += v14;
      --v12;
    }

    while (v12);
    return v17;
  }

  return a2;
}

uint64_t sub_1003AE094(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_100DEE55C(&v6, v4);

      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1003AE100(uint64_t a1)
{
  *(v1 + 1472) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 1480) = v3;
  *v3 = v1;
  v3[1] = sub_1003AE194;

  return daemon.getter();
}

uint64_t sub_1003AE194(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1480);
  v12 = *v1;
  v3[186] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[187] = v6;
  v7 = type metadata accessor for Daemon();
  v3[188] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[189] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003AE374;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003AE374(uint64_t a1)
{
  v3 = *(*v2 + 1496);
  v4 = *v2;
  v4[190] = a1;
  v4[191] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003AE7C4, 0, 0);
  }

  else
  {
    v5 = v4[186];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[192] = v7;
    *v7 = v4;
    v7[1] = sub_1003AE4EC;

    return daemon.getter();
  }
}

uint64_t sub_1003AE4EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1536);
  v5 = *v1;
  v3[193] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[194] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[195] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003AE6A4;
  v10 = v3[189];
  v11 = v3[188];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003AE6A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1552);
  v8 = *v2;
  v3[196] = a1;
  v3[197] = v1;

  if (v1)
  {
    v5 = sub_1003AED54;
  }

  else
  {
    v6 = v3[193];

    v5 = sub_1003AE828;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003AE7C4()
{
  v1 = v0[186];

  v2 = v0[191];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003AE828()
{
  v1 = v0[196];
  v17 = v0[195];
  v2 = v0[190];
  v3 = v0[184];
  v4 = type metadata accessor for SharingCircleKeyManager();
  v0[198] = v4;
  v5 = swift_allocObject();
  v0[199] = v5;

  swift_defaultActor_initialize();
  v0[200] = type metadata accessor for KeyDropInterface();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v5 + 112) = v6;
  *(v5 + 120) = v2;
  sub_10001F280(v3, (v0 + 26));
  v7 = v0[29];
  v8 = sub_10015049C((v0 + 26), v7);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  (*(v9 + 16))(v11, v8, v7);
  v12 = *v11;

  v0[201] = sub_1003AB3B8(v13, v2, v12, type metadata accessor for ShareKeysDownloadUseCase);
  sub_100007BAC(v0 + 26);

  v0[144] = v17;
  v0[145] = &off_10164F7C0;
  v0[141] = v1;
  v0[124] = v4;
  v0[125] = &off_10164E4F0;
  v0[121] = v5;
  sub_10001F280(v3, (v0 + 66));
  v14 = async function pointer to daemon.getter[1];

  v15 = swift_task_alloc();
  v0[202] = v15;
  *v15 = v0;
  v15[1] = sub_1003AEA68;

  return daemon.getter();
}

uint64_t sub_1003AEA68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1616);
  v5 = *v1;
  v3[203] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[204] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[205] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  v3[206] = v9;
  *v7 = v5;
  v7[1] = sub_1003AEC24;
  v10 = v3[189];
  v11 = v3[188];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003AEC24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1632);
  v6 = *v2;
  *(*v2 + 1656) = v1;

  if (v1)
  {
    v7 = sub_1003AF1D4;
  }

  else
  {
    v8 = *(v4 + 1624);

    *(v4 + 1664) = a1;
    v7 = sub_1003AEDC4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003AED54()
{
  v1 = v0[193];
  v2 = v0[190];

  v3 = v0[197];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1003AEDC4()
{
  v1 = v0[208];
  v2 = v0[201];
  v3 = v0[200];
  v0[39] = v0[205];
  v0[40] = &off_10164F068;
  v0[36] = v1;
  v4 = type metadata accessor for ShareKeysDownloadUseCase();
  v0[209] = v4;
  v0[179] = v4;
  v0[180] = &off_1016344E0;
  v0[176] = v2;
  v5 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  v0[5] = v3;
  v0[6] = &off_101660C48;
  v0[7] = &off_10162BCD8;
  v0[2] = v5;
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v0[210] = v7;
  *v7 = v0;
  v7[1] = sub_1003AEEE0;

  return daemon.getter();
}

uint64_t sub_1003AEEE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1680);
  v5 = *v1;
  v3[211] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[212] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100019420(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v7 = v5;
  v7[1] = sub_1003AF094;
  v10 = v3[189];
  v11 = v3[188];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003AF094(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1696);
  v6 = *v2;
  v4[213] = a1;
  v4[214] = v1;

  if (v1)
  {
    v7 = v4[211];

    v4[224] = v1;
    v8 = sub_1003B013C;
    v9 = 0;
  }

  else
  {
    v8 = sub_1003AF288;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1003AF1D4()
{
  v1 = v0[203];
  v2 = v0[201];
  v3 = v0[199];
  v4 = v0[196];
  v5 = v0[190];

  sub_100007BAC(v0 + 66);

  sub_100007BAC(v0 + 121);
  sub_100007BAC(v0 + 141);
  v6 = v0[207];
  v7 = v0[1];

  return v7();
}

uint64_t sub_1003AF288()
{
  v1 = v0[214];
  v2 = v0[213];
  sub_10001B108();
  v0[215] = v3;
  v0[216] = v1;
  v4 = v0[211];
  v5 = v0[188];
  sub_100019420(&qword_1016969E0, &type metadata accessor for Daemon);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v8 = sub_1003B00C0;
  }

  else
  {
    v8 = sub_1003AF364;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1003AF364()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1688);

  return _swift_task_switch(sub_1003AF3D8, 0, 0);
}

uint64_t sub_1003AF3D8()
{
  v66 = *(v0 + 1720);
  v79 = *(v0 + 1640);
  v80 = *(v0 + 1672);
  v68 = *(v0 + 1600);
  v77 = *(v0 + 1592);
  v81 = *(v0 + 1584);
  v76 = *(v0 + 1568);
  v78 = *(v0 + 1560);
  v75 = *(v0 + 1520);
  v1 = *(v0 + 1152);
  sub_10015049C(v0 + 1128, v1);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64) + 15;
  v74 = swift_task_alloc();
  (*(v2 + 16))();
  v4 = *(v0 + 992);
  sub_10015049C(v0 + 968, v4);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64) + 15;
  v73 = swift_task_alloc();
  (*(v5 + 16))();
  v7 = *(v0 + 552);
  sub_10015049C(v0 + 528, v7);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v72 = swift_task_alloc();
  (*(v8 + 16))();
  v10 = *(v0 + 312);
  sub_10015049C(v0 + 288, v10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64) + 15;
  v71 = swift_task_alloc();
  (*(v11 + 16))();
  v13 = *(v0 + 1432);
  sub_10015049C(v0 + 1408, v13);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64) + 15;
  v70 = swift_task_alloc();
  (*(v14 + 16))();
  v16 = *(v0 + 40);
  sub_10015049C(v0 + 16, v16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64) + 15;
  v69 = swift_task_alloc();
  (*(v17 + 16))();
  v19 = *v74;
  v20 = *v73;
  v21 = *v72;
  v22 = *v71;
  v23 = *v70;
  v24 = *v69;
  *(v0 + 352) = v78;
  *(v0 + 360) = &off_10164F7C0;
  *(v0 + 328) = v19;
  *(v0 + 392) = v81;
  *(v0 + 400) = &off_10164E4F0;
  *(v0 + 368) = v20;
  v65 = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 432) = v65;
  *(v0 + 440) = &off_1016634E8;
  *(v0 + 408) = v21;
  *(v0 + 472) = v79;
  *(v0 + 480) = &off_10164F068;
  *(v0 + 448) = v22;
  *(v0 + 512) = v80;
  *(v0 + 520) = &off_1016344E0;
  *(v0 + 488) = v23;
  *(v0 + 184) = v68;
  *(v0 + 192) = &off_101660C48;
  *(v0 + 200) = &off_10162BCD8;
  *(v0 + 160) = v24;
  v64 = type metadata accessor for BeaconManagerService();
  *(v0 + 592) = v64;
  *(v0 + 600) = &off_101622B80;
  *(v0 + 568) = v66;
  *(v0 + 1736) = type metadata accessor for ShareAcceptUseCase();
  v25 = swift_allocObject();
  *(v0 + 1744) = v25;
  v26 = sub_10015049C(v0 + 328, v78);
  v27 = *(v78 - 8);
  *(v0 + 1752) = v27;
  v28 = v27;
  v29 = *(v27 + 64) + 15;
  v67 = swift_task_alloc();
  (*(v28 + 16))(v67, v26, v78);
  v30 = *(v0 + 392);
  v31 = sub_10015049C(v0 + 368, v30);
  v32 = *(v30 - 8);
  v33 = *(v32 + 64) + 15;
  v63 = swift_task_alloc();
  (*(v32 + 16))(v63, v31, v30);
  v34 = *(v0 + 432);
  v35 = sub_10015049C(v0 + 408, v34);
  v36 = *(v34 - 8);
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  (*(v36 + 16))(v38, v35, v34);
  v39 = *(v0 + 472);
  v40 = sub_10015049C(v0 + 448, v39);
  v41 = *(v39 - 8);
  v42 = *(v41 + 64) + 15;
  v43 = swift_task_alloc();
  (*(v41 + 16))(v43, v40, v39);
  v44 = *(v0 + 512);
  v45 = sub_10015049C(v0 + 488, v44);
  v46 = *(v44 - 8);
  v47 = *(v46 + 64) + 15;
  v48 = swift_task_alloc();
  (*(v46 + 16))(v48, v45, v44);
  v49 = *(v0 + 592);
  v50 = sub_10015049C(v0 + 568, v49);
  v51 = *(v49 - 8);
  v52 = *(v51 + 64) + 15;
  v53 = swift_task_alloc();
  (*(v51 + 16))(v53, v50, v49);
  v54 = *v67;
  v55 = *v63;
  v56 = *v38;
  v57 = *v43;
  v58 = *v48;
  v59 = *v53;
  *(v0 + 632) = v78;
  *(v0 + 640) = &off_10164F7C0;
  *(v0 + 608) = v54;
  *(v0 + 672) = v81;
  *(v0 + 680) = &off_10164E4F0;
  *(v0 + 648) = v55;
  *(v0 + 712) = v65;
  *(v0 + 720) = &off_1016634E8;
  *(v0 + 688) = v56;
  *(v0 + 752) = v79;
  *(v0 + 760) = &off_10164F068;
  *(v0 + 728) = v57;
  *(v0 + 792) = v80;
  *(v0 + 800) = &off_1016344E0;
  *(v0 + 768) = v58;
  *(v0 + 832) = v64;
  *(v0 + 840) = &off_101622B80;
  *(v0 + 808) = v59;

  swift_defaultActor_initialize();
  *(v25 + 408) = &_swiftEmptyDictionarySingleton;
  *(v25 + 112) = v75;
  sub_10000A748((v0 + 608), v25 + 120);
  sub_10000A748((v0 + 648), v25 + 160);
  sub_10000A748((v0 + 688), v25 + 200);
  sub_10000A748((v0 + 728), v25 + 240);
  sub_10000A748((v0 + 768), v25 + 280);
  sub_1000BB3F0((v0 + 160), (v25 + 320));
  sub_10000A748((v0 + 808), v25 + 368);
  sub_100007BAC((v0 + 568));

  sub_100007BAC((v0 + 488));

  sub_100007BAC((v0 + 448));

  sub_100007BAC((v0 + 408));

  sub_100007BAC((v0 + 368));

  sub_100007BAC((v0 + 328));

  sub_100007BAC((v0 + 16));

  sub_100007BAC((v0 + 1408));

  sub_100007BAC((v0 + 288));

  sub_100007BAC((v0 + 528));

  sub_100007BAC((v0 + 968));

  sub_100007BAC((v0 + 1128));

  *(v0 + 872) = v78;
  *(v0 + 880) = &off_10164F7C0;
  *(v0 + 848) = v76;
  *(v0 + 912) = v81;
  *(v0 + 920) = &off_10164E4F0;
  *(v0 + 888) = v77;
  v60 = async function pointer to daemon.getter[1];
  v61 = swift_task_alloc();
  *(v0 + 1760) = v61;
  *v61 = v0;
  v61[1] = sub_1003AFDF0;

  return daemon.getter();
}

uint64_t sub_1003AFDF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1760);
  v5 = *v1;
  v3[221] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[222] = v7;
  *v7 = v5;
  v7[1] = sub_1003AFF7C;
  v8 = v3[206];
  v9 = v3[205];
  v10 = v3[189];
  v11 = v3[188];

  return ActorServiceDaemon.getService<A>()(v11, v9, v10, v8);
}

uint64_t sub_1003AFF7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1776);
  v6 = *v2;
  v4[223] = v1;

  v7 = v4[221];

  if (v1)
  {
    v8 = sub_1003B05DC;
  }

  else
  {
    v4[225] = a1;
    v8 = sub_1003B0200;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1003B00C0()
{
  v1 = v0[213];
  v2 = v0[211];

  v0[224] = v0[216];

  return _swift_task_switch(sub_1003B013C, 0, 0);
}

uint64_t sub_1003B013C()
{
  v1 = v0[201];
  v2 = v0[199];
  v3 = v0[196];
  v4 = v0[190];
  sub_100007BAC(v0 + 66);

  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 176);
  sub_100007BAC(v0 + 36);
  sub_100007BAC(v0 + 121);
  sub_100007BAC(v0 + 141);
  v5 = v0[224];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1003B0200()
{
  v1 = v0[225];
  v2 = v0[200];
  v0[119] = v0[205];
  v0[120] = &off_10164F068;
  v0[116] = v1;
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v0[17] = v2;
  v0[18] = &off_101660C48;
  v0[19] = &off_10162BCD8;
  v0[14] = v3;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[226] = v5;
  *v5 = v0;
  v5[1] = sub_1003B02E8;

  return daemon.getter();
}

uint64_t sub_1003B02E8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1808);
  v5 = *v1;
  v3[227] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[228] = v7;
  v8 = type metadata accessor for PeerTrustService();
  v9 = sub_100019420(&qword_1016B1190, type metadata accessor for PeerTrustService);
  *v7 = v5;
  v7[1] = sub_1003B049C;
  v10 = v3[189];
  v11 = v3[188];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B049C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[181] = v2;
  v4[182] = a1;
  v4[183] = v1;
  v5 = v3[228];
  v6 = *v2;
  v4[229] = v1;

  v7 = v3[227];

  if (v1)
  {
    v8 = sub_1003B0EA4;
  }

  else
  {
    v8 = sub_1003B0668;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1003B05DC()
{
  v1 = v0[218];
  v2 = v0[201];
  v3 = v0[190];

  sub_100007BAC(v0 + 111);
  sub_100007BAC(v0 + 106);
  v4 = v0[223];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B0668()
{
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 1456);
  v52 = *(v0 + 1752);
  v51 = *(v0 + 1744);
  v65 = *(v0 + 1672);
  v66 = *(v0 + 1736);
  v1 = *(v0 + 1640);
  v50 = *(v0 + 1608);
  v55 = *(v0 + 1600);
  v2 = *(v0 + 1584);
  v53 = v2;
  v54 = v1;
  v64 = *(v0 + 1560);
  v61 = qword_10177B2E8;
  v62 = *(v0 + 1520);
  v3 = *(v0 + 872);
  sub_10015049C(v0 + 848, v3);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64) + 15;
  v60 = swift_task_alloc();
  (*(v4 + 16))();
  v6 = *(v0 + 912);
  sub_10015049C(v0 + 888, v6);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v59 = swift_task_alloc();
  (*(v7 + 16))();
  v9 = *(v0 + 952);
  sub_10015049C(v0 + 928, v9);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64) + 15;
  v58 = swift_task_alloc();
  (*(v10 + 16))();
  v12 = *(v0 + 136);
  sub_10015049C(v0 + 112, v12);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64) + 15;
  v57 = swift_task_alloc();
  (*(v13 + 16))();
  v15 = *v60;
  v16 = *v59;
  v17 = *v58;
  v18 = *v57;
  *(v0 + 1032) = v64;
  *(v0 + 1040) = &off_10164F7C0;
  *(v0 + 1008) = v15;
  *(v0 + 1072) = v2;
  *(v0 + 1080) = &off_10164E4F0;
  *(v0 + 1048) = v16;
  *(v0 + 1112) = v1;
  *(v0 + 1120) = &off_10164F068;
  *(v0 + 1088) = v17;
  *(v0 + 88) = v55;
  *(v0 + 96) = &off_101660C48;
  *(v0 + 104) = &off_10162BCD8;
  *(v0 + 64) = v18;
  v56 = sub_100019420(&qword_10169EF00, type metadata accessor for PeerTrustService);
  *(v0 + 1192) = v65;
  *(v0 + 1200) = &off_1016344E0;
  *(v0 + 1168) = v50;
  *(v0 + 1232) = v66;
  *(v0 + 1240) = &off_10160F130;
  *(v0 + 1208) = v51;
  type metadata accessor for ShareCreateUseCase();
  v19 = swift_allocObject();
  v20 = sub_10015049C(v0 + 1008, v64);
  v21 = *(v52 + 64) + 15;
  v22 = swift_task_alloc();
  (*(v52 + 16))(v22, v20, v64);
  v23 = *(v0 + 1072);
  v24 = sub_10015049C(v0 + 1048, v23);
  v25 = *(v23 - 8);
  v26 = *(v25 + 64) + 15;
  v27 = swift_task_alloc();
  (*(v25 + 16))(v27, v24, v23);
  v28 = *(v0 + 1112);
  v29 = sub_10015049C(v0 + 1088, v28);
  v30 = *(v28 - 8);
  v31 = *(v30 + 64) + 15;
  v32 = swift_task_alloc();
  (*(v30 + 16))(v32, v29, v28);
  v33 = *(v0 + 1192);
  v34 = sub_10015049C(v0 + 1168, v33);
  v35 = *(v33 - 8);
  v36 = *(v35 + 64) + 15;
  v37 = swift_task_alloc();
  (*(v35 + 16))(v37, v34, v33);
  v38 = *(v0 + 1232);
  v39 = sub_10015049C(v0 + 1208, v38);
  v40 = *(v38 - 8);
  v41 = *(v40 + 64) + 15;
  v42 = swift_task_alloc();
  (*(v40 + 16))(v42, v39, v38);
  v43 = *v22;
  v44 = *v27;
  v45 = *v32;
  v46 = *v37;
  v47 = *v42;
  *(v0 + 1272) = v64;
  *(v0 + 1280) = &off_10164F7C0;
  *(v0 + 1248) = v43;
  *(v0 + 1312) = v53;
  *(v0 + 1320) = &off_10164E4F0;
  *(v0 + 1288) = v44;
  *(v0 + 1352) = v54;
  *(v0 + 1360) = &off_10164F068;
  *(v0 + 1328) = v45;
  *(v0 + 1392) = v65;
  *(v0 + 1400) = &off_1016344E0;
  *(v0 + 1368) = v46;
  *(v0 + 272) = v66;
  *(v0 + 280) = &off_10160F130;
  *(v0 + 248) = v47;

  swift_defaultActor_initialize();
  *(v19 + 384) = &_swiftEmptyDictionarySingleton;
  sub_1000BB3F0((v0 + 64), (v19 + 112));
  sub_10000A748((v0 + 1288), v19 + 248);
  *(v19 + 160) = v62;
  sub_10000A748((v0 + 1248), v19 + 168);
  sub_10000A748((v0 + 1328), v19 + 208);
  *(v19 + 288) = v63;
  *(v19 + 296) = v56;
  sub_10000A748((v0 + 1368), v19 + 304);
  sub_10000A748((v0 + 248), v19 + 344);
  *(v19 + 392) = v61;
  sub_100007BAC((v0 + 1208));

  sub_100007BAC((v0 + 1168));

  sub_100007BAC((v0 + 1088));

  sub_100007BAC((v0 + 1048));

  sub_100007BAC((v0 + 1008));

  sub_100007BAC((v0 + 112));

  sub_100007BAC((v0 + 928));

  sub_100007BAC((v0 + 888));

  sub_100007BAC((v0 + 848));

  v48 = *(v0 + 8);

  return v48(v19);
}

uint64_t sub_1003B0EA4()
{
  v1 = v0[218];
  v2 = v0[201];
  v3 = v0[190];

  sub_100007BAC(v0 + 14);
  sub_100007BAC(v0 + 116);
  sub_100007BAC(v0 + 111);
  sub_100007BAC(v0 + 106);
  v4 = v0[229];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B0F40(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 616) = a3;
  *(v3 + 344) = a1;
  *(v3 + 352) = a2;
  v4 = *(type metadata accessor for OwnerSharingCircle() - 8);
  *(v3 + 360) = v4;
  *(v3 + 368) = *(v4 + 64);
  *(v3 + 376) = swift_task_alloc();
  v5 = *(type metadata accessor for OwnerPeerTrust() - 8);
  *(v3 + 384) = v5;
  *(v3 + 392) = *(v5 + 64);
  *(v3 + 400) = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v3 + 408) = v7;
  *v7 = v3;
  v7[1] = sub_1003B1098;

  return daemon.getter();
}

uint64_t sub_1003B1098(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 408);
  v12 = *v1;
  v3[52] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[53] = v6;
  v7 = type metadata accessor for Daemon();
  v3[54] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[55] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003B1278;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003B1278(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v8 = *v2;
  v3[56] = a1;
  v3[57] = v1;

  if (v1)
  {
    v5 = sub_1003CC2B8;
  }

  else
  {
    v6 = v3[52];

    v5 = sub_1003B1394;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B1394()
{
  v1 = v0[56];
  v0[58] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[59] = v2;

  swift_defaultActor_initialize();
  v0[60] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_1003B1488;

  return daemon.getter();
}

uint64_t sub_1003B1488(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 488);
  v5 = *v1;
  v3[62] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[63] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[64] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003B1640;
  v10 = v3[55];
  v11 = v3[54];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B1640(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v7 = sub_1003CC308;
  }

  else
  {
    v8 = *(v4 + 496);

    *(v4 + 528) = a1;
    v7 = sub_1003B1770;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B1770()
{
  v1 = v0[66];
  v0[11] = v0[64];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_1003B1818;

  return daemon.getter();
}

uint64_t sub_1003B1818(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 536);
  v5 = *v1;
  v3[68] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[69] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[70] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003B19D0;
  v10 = v3[55];
  v11 = v3[54];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B19D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v7 = sub_1003CC2D8;
  }

  else
  {
    v8 = *(v4 + 544);

    *(v4 + 576) = a1;
    v7 = sub_1003B1B00;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B1B00()
{
  v1 = *(v0 + 560);
  v38 = *(v0 + 576);
  v2 = *(v0 + 512);
  v3 = *(v0 + 480);
  v41 = *(v0 + 464);
  v43 = *(v0 + 472);
  v39 = *(v0 + 448);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v40 = swift_task_alloc();
  v7 = *(v5 + 16);
  v7();
  v8 = *v40;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v8;
  *(v0 + 144) = v38;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v41;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v43;
  type metadata accessor for ShareStopUseCase();
  v9 = swift_allocObject();
  *(v0 + 584) = v9;
  v10 = sub_10015049C(v0 + 104, v2);
  v37 = swift_task_alloc();
  (v7)(v37, v10, v2);
  v11 = *(v0 + 168);
  v12 = sub_10015049C(v0 + 144, v11);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  (*(v13 + 16))(v15, v12, v11);
  v16 = *(v0 + 208);
  v17 = sub_10015049C(v0 + 184, v16);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  (*(v18 + 16))(v20, v17, v16);
  v21 = *v15;
  v22 = *v20;
  *(v0 + 224) = *v37;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v21;
  *(v0 + 328) = v41;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v22;

  swift_defaultActor_initialize();
  *(v9 + 112) = v39;
  sub_10000A748((v0 + 224), v9 + 120);
  sub_10000A748((v0 + 264), v9 + 160);
  sub_1000BB3F0((v0 + 16), (v9 + 200));
  sub_10000A748((v0 + 304), v9 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 392);
  v23 = *(v0 + 400);
  v25 = *(v0 + 376);
  v26 = *(v0 + 384);
  v27 = *(v0 + 360);
  v28 = *(v0 + 368);
  v29 = *(v0 + 616);
  v30 = *(v0 + 352);
  sub_10002FDC4(*(v0 + 344), v23, type metadata accessor for OwnerPeerTrust);
  sub_10002FDC4(v30, v25, type metadata accessor for OwnerSharingCircle);
  v31 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v32 = (v24 + *(v27 + 80) + v31) & ~*(v27 + 80);
  v33 = swift_allocObject();
  *(v0 + 592) = v33;
  *(v33 + 16) = v9;
  sub_1003CBBBC(v23, v33 + v31, type metadata accessor for OwnerPeerTrust);
  sub_1003CBBBC(v25, v33 + v32, type metadata accessor for OwnerSharingCircle);
  *(v33 + v32 + v28) = v29;
  v34 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v42 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v35 = swift_task_alloc();
  *(v0 + 600) = v35;
  *v35 = v0;
  v35[1] = sub_1003B205C;

  return v42(&unk_10139FCB8, v33);
}

uint64_t sub_1003B205C()
{
  v2 = *(*v1 + 600);
  v3 = *(*v1 + 592);
  v6 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v4 = sub_1003CC2BC;
  }

  else
  {
    v4 = sub_1003CC314;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B218C(uint64_t a1, char a2)
{
  *(v2 + 272) = a2;
  *(v2 + 56) = a1;
  v3 = type metadata accessor for UUID();
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 + 64);
  *(v2 + 88) = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v2 + 96) = v6;
  *v6 = v2;
  v6[1] = sub_1003B2288;

  return daemon.getter();
}

uint64_t sub_1003B2288(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  v3[13] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[14] = v6;
  v7 = type metadata accessor for Daemon();
  v3[15] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[16] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003B2468;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003B2468(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003CC2F0, 0, 0);
  }

  else
  {
    v5 = v4[13];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[19] = v7;
    *v7 = v4;
    v7[1] = sub_1003B25DC;

    return daemon.getter();
  }
}

uint64_t sub_1003B25DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *v1;
  v3[20] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[21] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[22] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003B2794;
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B2794(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_1003CC2EC;
  }

  else
  {
    v8 = *(v4 + 160);

    *(v4 + 192) = a1;
    v7 = sub_1003B28C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B28C4()
{
  v1 = v0[24];
  v0[5] = v0[22];
  v0[6] = &off_10164F068;
  v0[2] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_1003B296C;

  return daemon.getter();
}

uint64_t sub_1003B296C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *v1;
  v3[26] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[27] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003B2B20;
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B2B20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = sub_1003CC31C;
  }

  else
  {
    v8 = *(v4 + 208);

    *(v4 + 232) = a1;
    v7 = sub_1003B2C50;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B2C50()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  v4 = sub_10015049C(v0 + 16, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v2);
  v8 = sub_1003AB5DC(v3, *v7, v1);
  *(v0 + 240) = v8;
  sub_100007BAC((v0 + 16));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 272);
  (*(v12 + 16))(v9, *(v0 + 56), v11);
  v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v15 = v14 + v10;
  v16 = swift_allocObject();
  *(v0 + 248) = v16;
  *(v16 + 16) = v8;
  (*(v12 + 32))(v16 + v14, v9, v11);
  *(v16 + v15) = v13;
  v17 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v20 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = sub_1003B2E98;

  return v20(&unk_10139FBC8, v16);
}

uint64_t sub_1003B2E98()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_1003CC2F4;
  }

  else
  {
    v4 = sub_1003CC2B0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B2FC8(uint64_t a1, uint64_t a2)
{
  v2[105] = a2;
  v2[104] = a1;
  v3 = type metadata accessor for UUID();
  v2[106] = v3;
  v4 = *(v3 - 8);
  v2[107] = v4;
  v2[108] = *(v4 + 64);
  v2[109] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v2[110] = v6;
  *v6 = v2;
  v6[1] = sub_1003B30C4;

  return daemon.getter();
}

uint64_t sub_1003B30C4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 880);
  v12 = *v1;
  v3[111] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[112] = v6;
  v7 = type metadata accessor for Daemon();
  v3[113] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[114] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003B32A4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003B32A4(uint64_t a1)
{
  v3 = *(*v2 + 896);
  v4 = *v2;
  v4[115] = a1;
  v4[116] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003B36F4, 0, 0);
  }

  else
  {
    v5 = v4[111];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[117] = v7;
    *v7 = v4;
    v7[1] = sub_1003B341C;

    return daemon.getter();
  }
}

uint64_t sub_1003B341C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 936);
  v5 = *v1;
  v3[118] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[119] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[120] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003B35D4;
  v10 = v3[114];
  v11 = v3[113];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B35D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 952);
  v8 = *v2;
  v3[121] = a1;
  v3[122] = v1;

  if (v1)
  {
    v5 = sub_1003B3C80;
  }

  else
  {
    v6 = v3[118];

    v5 = sub_1003B3760;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B36F4()
{
  v1 = v0[111];

  v2 = v0[116];
  v3 = v0[109];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003B3760()
{
  v1 = v0[121];
  v17 = v0[120];
  v2 = v0[115];
  v3 = v0[105];
  v4 = type metadata accessor for SharingCircleKeyManager();
  v0[123] = v4;
  v5 = swift_allocObject();
  v0[124] = v5;

  swift_defaultActor_initialize();
  v0[125] = type metadata accessor for KeyDropInterface();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v5 + 112) = v6;
  *(v5 + 120) = v2;
  sub_10001F280(v3, (v0 + 14));
  v7 = v0[17];
  v8 = sub_10015049C((v0 + 14), v7);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  (*(v9 + 16))(v11, v8, v7);
  v12 = *v11;

  v0[126] = sub_1003AB3B8(v13, v2, v12, type metadata accessor for ShareKeysDownloadUseCase);
  sub_100007BAC(v0 + 14);

  v0[22] = v17;
  v0[23] = &off_10164F7C0;
  v0[19] = v1;
  v0[27] = v4;
  v0[28] = &off_10164E4F0;
  v0[24] = v5;
  sub_10001F280(v3, (v0 + 29));
  v14 = async function pointer to daemon.getter[1];

  v15 = swift_task_alloc();
  v0[127] = v15;
  *v15 = v0;
  v15[1] = sub_1003B3998;

  return daemon.getter();
}

uint64_t sub_1003B3998(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1016);
  v5 = *v1;
  v3[128] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[129] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[130] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003B3B50;
  v10 = v3[114];
  v11 = v3[113];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B3B50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1032);
  v6 = *v2;
  *(*v2 + 1048) = v1;

  if (v1)
  {
    v7 = sub_1003B4104;
  }

  else
  {
    v8 = *(v4 + 1024);

    *(v4 + 1056) = a1;
    v7 = sub_1003B3CF8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B3C80()
{
  v1 = v0[118];
  v2 = v0[115];

  v3 = v0[122];
  v4 = v0[109];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B3CF8()
{
  v1 = v0[132];
  v2 = v0[126];
  v3 = v0[125];
  v0[37] = v0[130];
  v0[38] = &off_10164F068;
  v0[34] = v1;
  v4 = type metadata accessor for ShareKeysDownloadUseCase();
  v0[133] = v4;
  v0[42] = v4;
  v0[43] = &off_1016344E0;
  v0[39] = v2;
  v5 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  v0[5] = v3;
  v0[6] = &off_101660C48;
  v0[7] = &off_10162BCD8;
  v0[2] = v5;
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v0[134] = v7;
  *v7 = v0;
  v7[1] = sub_1003B3E10;

  return daemon.getter();
}

uint64_t sub_1003B3E10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1072);
  v5 = *v1;
  v3[135] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[136] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100019420(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v7 = v5;
  v7[1] = sub_1003B3FC4;
  v10 = v3[114];
  v11 = v3[113];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B3FC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1088);
  v6 = *v2;
  v4[137] = a1;
  v4[138] = v1;

  if (v1)
  {
    v7 = v4[135];

    v4[145] = v1;
    v8 = sub_1003B4F6C;
    v9 = 0;
  }

  else
  {
    v8 = sub_1003B41C0;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1003B4104()
{
  v1 = v0[128];
  v2 = v0[126];
  v3 = v0[124];
  v4 = v0[121];
  v5 = v0[115];

  sub_100007BAC(v0 + 29);

  sub_100007BAC(v0 + 24);
  sub_100007BAC(v0 + 19);
  v6 = v0[131];
  v7 = v0[109];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003B41C0()
{
  v1 = v0[138];
  v2 = v0[137];
  sub_10001B108();
  v0[139] = v3;
  v0[140] = v1;
  v4 = v0[135];
  v5 = v0[113];
  sub_100019420(&qword_1016969E0, &type metadata accessor for Daemon);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v8 = sub_1003B4EF0;
  }

  else
  {
    v8 = sub_1003B429C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1003B429C()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1080);

  return _swift_task_switch(sub_1003B4310, 0, 0);
}

uint64_t sub_1003B4310()
{
  v1 = v0;
  v73 = *(v0 + 1112);
  v84 = *(v0 + 1040);
  v85 = *(v0 + 1064);
  v70 = *(v0 + 1000);
  v82 = *(v0 + 960);
  v83 = *(v0 + 984);
  v81 = *(v0 + 920);
  v2 = *(v0 + 176);
  sub_10015049C(v0 + 152, v2);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64) + 15;
  v80 = swift_task_alloc();
  (*(v3 + 16))();
  v5 = *(v0 + 216);
  sub_10015049C((v1 + 24), v1[27]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v79 = swift_task_alloc();
  (*(v6 + 16))();
  v8 = *(v0 + 256);
  sub_10015049C((v1 + 29), v1[32]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64) + 15;
  v78 = swift_task_alloc();
  (*(v9 + 16))();
  v11 = *(v0 + 296);
  sub_10015049C((v1 + 34), v1[37]);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64) + 15;
  v77 = swift_task_alloc();
  (*(v12 + 16))();
  v14 = *(v0 + 336);
  sub_10015049C((v1 + 39), v1[42]);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64) + 15;
  v76 = swift_task_alloc();
  (*(v15 + 16))();
  v17 = *(v0 + 40);
  sub_10015049C((v1 + 2), v1[5]);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64) + 15;
  v75 = swift_task_alloc();
  (*(v18 + 16))();
  v20 = *v80;
  v21 = *v79;
  v22 = *v78;
  v23 = *v77;
  v24 = *v76;
  v25 = *v75;
  *(v0 + 376) = v82;
  *(v0 + 384) = &off_10164F7C0;
  *(v0 + 352) = v20;
  *(v0 + 416) = v83;
  *(v0 + 424) = &off_10164E4F0;
  *(v0 + 392) = v21;
  v72 = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 64) = v25;
  *(v0 + 456) = v72;
  *(v0 + 464) = &off_1016634E8;
  *(v0 + 432) = v22;
  *(v0 + 496) = v84;
  *(v0 + 504) = &off_10164F068;
  *(v0 + 472) = v23;
  *(v0 + 512) = v24;
  *(v0 + 536) = v85;
  *(v0 + 544) = &off_1016344E0;
  *(v0 + 88) = v70;
  *(v0 + 96) = &off_101660C48;
  *(v0 + 104) = &off_10162BCD8;
  v71 = type metadata accessor for BeaconManagerService();
  *(v0 + 576) = v71;
  *(v0 + 584) = &off_101622B80;
  *(v0 + 552) = v73;
  type metadata accessor for ShareAcceptUseCase();
  v26 = swift_allocObject();
  *(v0 + 1128) = v26;
  v27 = sub_10015049C(v0 + 352, v82);
  v28 = *(v82 - 8);
  v29 = *(v28 + 64) + 15;
  v74 = swift_task_alloc();
  (*(v28 + 16))(v74, v27, v82);
  v30 = *(v0 + 416);
  v31 = sub_10015049C((v1 + 49), v1[52]);
  v32 = *(v30 - 8);
  v33 = *(v32 + 64) + 15;
  v69 = swift_task_alloc();
  (*(v32 + 16))(v69, v31, v30);
  v34 = *(v0 + 456);
  v35 = sub_10015049C((v1 + 54), v1[57]);
  v36 = *(v34 - 8);
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  (*(v36 + 16))(v38, v35, v34);
  v39 = *(v0 + 496);
  v40 = sub_10015049C((v1 + 59), v1[62]);
  v41 = *(v39 - 8);
  v42 = *(v41 + 64) + 15;
  v43 = swift_task_alloc();
  (*(v41 + 16))(v43, v40, v39);
  v44 = *(v0 + 536);
  v45 = sub_10015049C((v1 + 64), v1[67]);
  v46 = *(v44 - 8);
  v47 = *(v46 + 64) + 15;
  v48 = swift_task_alloc();
  (*(v46 + 16))(v48, v45, v44);
  v49 = *(v0 + 576);
  v50 = sub_10015049C((v1 + 69), v1[72]);
  v51 = *(v49 - 8);
  v52 = *(v51 + 64) + 15;
  v53 = swift_task_alloc();
  (*(v51 + 16))(v53, v50, v49);
  v54 = *v74;
  v55 = *v69;
  v56 = *v38;
  v57 = *v43;
  v58 = *v48;
  v59 = *v53;
  *(v0 + 616) = v82;
  *(v0 + 624) = &off_10164F7C0;
  *(v0 + 592) = v54;
  *(v0 + 656) = v83;
  *(v0 + 664) = &off_10164E4F0;
  *(v0 + 632) = v55;
  *(v0 + 696) = v72;
  *(v0 + 704) = &off_1016634E8;
  *(v0 + 672) = v56;
  *(v0 + 736) = v84;
  *(v0 + 744) = &off_10164F068;
  *(v0 + 712) = v57;
  *(v0 + 776) = v85;
  *(v0 + 784) = &off_1016344E0;
  *(v0 + 752) = v58;
  *(v0 + 816) = v71;
  *(v0 + 824) = &off_101622B80;
  *(v0 + 792) = v59;

  swift_defaultActor_initialize();
  *(v26 + 408) = _swiftEmptyDictionarySingleton;
  *(v26 + 112) = v81;
  sub_10000A748((v0 + 592), v26 + 120);
  sub_10000A748((v0 + 632), v26 + 160);
  sub_10000A748((v0 + 672), v26 + 200);
  sub_10000A748((v0 + 712), v26 + 240);
  sub_10000A748((v0 + 752), v26 + 280);
  sub_1000BB3F0((v0 + 64), (v26 + 320));
  sub_10000A748((v0 + 792), v26 + 368);
  sub_100007BAC((v0 + 552));

  sub_100007BAC((v0 + 512));

  sub_100007BAC((v0 + 472));

  sub_100007BAC((v0 + 432));

  sub_100007BAC((v0 + 392));

  sub_100007BAC((v0 + 352));

  sub_100007BAC((v0 + 16));

  sub_100007BAC((v0 + 312));

  sub_100007BAC((v0 + 272));

  sub_100007BAC((v0 + 232));

  sub_100007BAC((v0 + 192));

  sub_100007BAC((v0 + 152));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 872);
  v61 = v1[108];
  v62 = v1[107];
  v63 = v1[106];
  (*(v62 + 16))(v1[109], v1[104], v63);
  v64 = (*(v62 + 80) + 24) & ~*(v62 + 80);
  v65 = swift_allocObject();
  v1[142] = v65;
  *(v65 + 16) = v26;
  (*(v62 + 32))(v65 + v64, v60, v63);
  v66 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v86 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v67 = swift_task_alloc();
  v1[143] = v67;
  *v67 = v1;
  v67[1] = sub_1003B4DBC;

  return v86(&unk_10139FFF8, v65);
}

uint64_t sub_1003B4DBC()
{
  v2 = *v1;
  v3 = *(*v1 + 1144);
  v4 = *v1;
  *(*v1 + 1152) = v0;

  v5 = *(v2 + 1136);

  if (v0)
  {
    v6 = sub_1003B50E8;
  }

  else
  {
    v6 = sub_1003B5038;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003B4EF0()
{
  v1 = v0[137];
  v2 = v0[135];

  v0[145] = v0[140];

  return _swift_task_switch(sub_1003B4F6C, 0, 0);
}

uint64_t sub_1003B4F6C()
{
  v1 = v0[126];
  v2 = v0[124];
  v3 = v0[121];
  v4 = v0[115];
  sub_100007BAC(v0 + 29);

  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 39);
  sub_100007BAC(v0 + 34);
  sub_100007BAC(v0 + 24);
  sub_100007BAC(v0 + 19);
  v5 = v0[145];
  v6 = v0[109];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003B5038()
{
  v1 = v0[141];
  v2 = v0[126];
  v3 = v0[124];
  v4 = v0[121];
  v5 = v0[115];
  v6 = v0[109];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003B50E8()
{
  v1 = v0[141];
  v2 = v0[126];
  v3 = v0[124];
  v4 = v0[121];
  v5 = v0[115];

  v6 = v0[144];
  v7 = v0[109];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003B518C(uint64_t a1)
{
  *(v1 + 344) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 352) = v3;
  *v3 = v1;
  v3[1] = sub_1003B5220;

  return daemon.getter();
}

uint64_t sub_1003B5220(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 352);
  v12 = *v1;
  v3[45] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[46] = v6;
  v7 = type metadata accessor for Daemon();
  v3[47] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[48] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003B5400;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003B5400(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  if (v1)
  {
    v5 = sub_1003B58F8;
  }

  else
  {
    v6 = v3[45];

    v5 = sub_1003B551C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B551C()
{
  v1 = v0[49];
  v0[51] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[52] = v2;

  swift_defaultActor_initialize();
  v0[53] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_1003B5610;

  return daemon.getter();
}

uint64_t sub_1003B5610(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v5 = *v1;
  v3[55] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[56] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[57] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003B57C8;
  v10 = v3[48];
  v11 = v3[47];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B57C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v7 = sub_1003B5CEC;
  }

  else
  {
    v8 = *(v4 + 440);

    *(v4 + 472) = a1;
    v7 = sub_1003B595C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B58F8()
{
  v1 = v0[45];

  v2 = v0[50];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003B595C()
{
  v1 = v0[59];
  v0[11] = v0[57];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_1003B5A04;

  return daemon.getter();
}

uint64_t sub_1003B5A04(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 480);
  v5 = *v1;
  v3[61] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[62] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[63] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003B5BBC;
  v10 = v3[48];
  v11 = v3[47];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B5BBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v7 = sub_1003B6330;
  }

  else
  {
    v8 = *(v4 + 488);

    *(v4 + 520) = a1;
    v7 = sub_1003B5D68;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B5CEC()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[49];

  v4 = v0[58];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B5D68()
{
  v1 = *(v0 + 504);
  v29 = *(v0 + 520);
  v2 = *(v0 + 456);
  v3 = *(v0 + 424);
  v32 = *(v0 + 408);
  v33 = *(v0 + 416);
  v30 = *(v0 + 392);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v31 = swift_task_alloc();
  v7 = *(v5 + 16);
  v7();
  v8 = *v31;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v8;
  *(v0 + 144) = v29;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v32;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v33;
  type metadata accessor for ShareStopUseCase();
  v9 = swift_allocObject();
  *(v0 + 528) = v9;
  v10 = sub_10015049C(v0 + 104, v2);
  v28 = swift_task_alloc();
  (v7)(v28, v10, v2);
  v11 = *(v0 + 168);
  v12 = sub_10015049C(v0 + 144, v11);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  (*(v13 + 16))(v15, v12, v11);
  v16 = *(v0 + 208);
  v17 = sub_10015049C(v0 + 184, v16);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  (*(v18 + 16))(v20, v17, v16);
  v21 = *v15;
  v22 = *v20;
  *(v0 + 224) = *v28;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v21;
  *(v0 + 328) = v32;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v22;

  swift_defaultActor_initialize();
  *(v9 + 112) = v30;
  sub_10000A748((v0 + 224), v9 + 120);
  sub_10000A748((v0 + 264), v9 + 160);
  sub_1000BB3F0((v0 + 16), (v9 + 200));
  sub_10000A748((v0 + 304), v9 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 344);
  v24 = swift_allocObject();
  *(v0 + 536) = v24;
  *(v24 + 16) = v9;
  *(v24 + 24) = v23;
  v25 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v34 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v26 = swift_task_alloc();
  *(v0 + 544) = v26;
  *v26 = v0;
  v26[1] = sub_1003B6214;

  return v34(&unk_10139FFE0, v24);
}

uint64_t sub_1003B6214()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v7 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = sub_1003B6430;
  }

  else
  {
    v5 = *(v2 + 536);

    v4 = sub_1003B63B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B6330()
{
  v1 = v0[61];
  v2 = v0[52];
  v3 = v0[49];

  sub_100007BAC(v0 + 8);
  v4 = v0[64];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B63B4()
{
  v1 = v0[66];
  v2 = v0[52];
  v3 = v0[49];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003B6430()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[52];
  v4 = v0[49];

  v5 = v0[69];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1003B64C0(uint64_t a1)
{
  *(v1 + 344) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 352) = v3;
  *v3 = v1;
  v3[1] = sub_1003B6554;

  return daemon.getter();
}

uint64_t sub_1003B6554(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 352);
  v12 = *v1;
  v3[45] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[46] = v6;
  v7 = type metadata accessor for Daemon();
  v3[47] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[48] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003B6734;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003B6734(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  if (v1)
  {
    v5 = sub_1003CC300;
  }

  else
  {
    v6 = v3[45];

    v5 = sub_1003B6850;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B6850()
{
  v1 = v0[49];
  v0[51] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[52] = v2;

  swift_defaultActor_initialize();
  v0[53] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_1003B6944;

  return daemon.getter();
}

uint64_t sub_1003B6944(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v5 = *v1;
  v3[55] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[56] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[57] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003B6AFC;
  v10 = v3[48];
  v11 = v3[47];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B6AFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    v7 = sub_1003CC2DC;
  }

  else
  {
    v8 = *(v4 + 440);

    *(v4 + 472) = a1;
    v7 = sub_1003B6C2C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B6C2C()
{
  v1 = v0[59];
  v0[11] = v0[57];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_1003B6CD4;

  return daemon.getter();
}

uint64_t sub_1003B6CD4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 480);
  v5 = *v1;
  v3[61] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[62] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[63] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003B6E8C;
  v10 = v3[48];
  v11 = v3[47];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B6E8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v7 = sub_1003CC320;
  }

  else
  {
    v8 = *(v4 + 488);

    *(v4 + 520) = a1;
    v7 = sub_1003B6FBC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B6FBC()
{
  v1 = *(v0 + 504);
  v29 = *(v0 + 520);
  v2 = *(v0 + 456);
  v3 = *(v0 + 424);
  v32 = *(v0 + 408);
  v33 = *(v0 + 416);
  v30 = *(v0 + 392);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v31 = swift_task_alloc();
  v7 = *(v5 + 16);
  v7();
  v8 = *v31;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v8;
  *(v0 + 144) = v29;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v32;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v33;
  type metadata accessor for ShareStopUseCase();
  v9 = swift_allocObject();
  *(v0 + 528) = v9;
  v10 = sub_10015049C(v0 + 104, v2);
  v28 = swift_task_alloc();
  (v7)(v28, v10, v2);
  v11 = *(v0 + 168);
  v12 = sub_10015049C(v0 + 144, v11);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  (*(v13 + 16))(v15, v12, v11);
  v16 = *(v0 + 208);
  v17 = sub_10015049C(v0 + 184, v16);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  (*(v18 + 16))(v20, v17, v16);
  v21 = *v15;
  v22 = *v20;
  *(v0 + 224) = *v28;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v21;
  *(v0 + 328) = v32;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v22;

  swift_defaultActor_initialize();
  *(v9 + 112) = v30;
  sub_10000A748((v0 + 224), v9 + 120);
  sub_10000A748((v0 + 264), v9 + 160);
  sub_1000BB3F0((v0 + 16), (v9 + 200));
  sub_10000A748((v0 + 304), v9 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 344);
  v24 = swift_allocObject();
  *(v0 + 536) = v24;
  *(v24 + 16) = v9;
  *(v24 + 24) = v23;
  v25 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v34 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v26 = swift_task_alloc();
  *(v0 + 544) = v26;
  *v26 = v0;
  v26[1] = sub_1003B7468;

  return v34(&unk_10139FFB0, v24);
}

uint64_t sub_1003B7468()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v7 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = sub_1003CC30C;
  }

  else
  {
    v5 = *(v2 + 536);

    v4 = sub_1003CC2C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B7584(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_1003B767C;

  return daemon.getter();
}

uint64_t sub_1003B767C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  v3[13] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[14] = v6;
  v7 = type metadata accessor for Daemon();
  v3[15] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[16] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003B785C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003B785C(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003B7CB8, 0, 0);
  }

  else
  {
    v5 = v4[13];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[19] = v7;
    *v7 = v4;
    v7[1] = sub_1003B79D0;

    return daemon.getter();
  }
}

uint64_t sub_1003B79D0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *v1;
  v3[20] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[21] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[22] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003B7B88;
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B7B88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_1003B80B0;
  }

  else
  {
    v8 = *(v4 + 160);

    *(v4 + 192) = a1;
    v7 = sub_1003B7D24;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B7CB8()
{
  v1 = v0[13];

  v2 = v0[18];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003B7D24()
{
  v1 = v0[24];
  v0[5] = v0[22];
  v0[6] = &off_10164F068;
  v0[2] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_1003B7DCC;

  return daemon.getter();
}

uint64_t sub_1003B7DCC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *v1;
  v3[26] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[27] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003B7F80;
  v10 = v3[16];
  v11 = v3[15];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B7F80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = sub_1003B848C;
  }

  else
  {
    v8 = *(v4 + 208);

    *(v4 + 232) = a1;
    v7 = sub_1003B8128;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B80B0()
{
  v1 = v0[20];
  v2 = v0[17];

  v3 = v0[23];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B8128()
{
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[17];
  v4 = sub_10015049C((v0 + 2), v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v2);
  v8 = sub_1003AB5DC(v3, *v7, v1);
  v0[30] = v8;
  sub_100007BAC(v0 + 2);

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  (*(v11 + 16))(v9, v0[7], v10);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v0[31] = v13;
  *(v13 + 16) = v8;
  (*(v11 + 32))(v13 + v12, v9, v10);
  v14 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v17 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v15 = swift_task_alloc();
  v0[32] = v15;
  *v15 = v0;
  v15[1] = sub_1003B835C;

  return v17(&unk_10139FF98, v13);
}

uint64_t sub_1003B835C()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_1003B857C;
  }

  else
  {
    v4 = sub_1003B850C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B848C()
{
  v1 = v0[26];
  v2 = v0[17];

  sub_100007BAC(v0 + 2);
  v3 = v0[28];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B850C()
{
  v1 = v0[30];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003B857C()
{
  v1 = v0[30];

  v2 = v0[33];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003B85E8(uint64_t a1, uint64_t a2)
{
  v2[43] = a1;
  v2[44] = a2;
  v3 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v2[45] = v3;
  v2[46] = *(v3 + 64);
  v2[47] = swift_task_alloc();
  v4 = *(type metadata accessor for OwnerPeerTrust() - 8);
  v2[48] = v4;
  v2[49] = *(v4 + 64);
  v2[50] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v2[51] = v6;
  *v6 = v2;
  v6[1] = sub_1003B873C;

  return daemon.getter();
}

uint64_t sub_1003B873C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 408);
  v12 = *v1;
  v3[52] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[53] = v6;
  v7 = type metadata accessor for Daemon();
  v3[54] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[55] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003B891C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003B891C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v8 = *v2;
  v3[56] = a1;
  v3[57] = v1;

  if (v1)
  {
    v5 = sub_1003B8E14;
  }

  else
  {
    v6 = v3[52];

    v5 = sub_1003B8A38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B8A38()
{
  v1 = v0[56];
  v0[58] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[59] = v2;

  swift_defaultActor_initialize();
  v0[60] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_1003B8B2C;

  return daemon.getter();
}

uint64_t sub_1003B8B2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 488);
  v5 = *v1;
  v3[62] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[63] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[64] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003B8CE4;
  v10 = v3[55];
  v11 = v3[54];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B8CE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  *(*v2 + 520) = v1;

  if (v1)
  {
    v7 = sub_1003B921C;
  }

  else
  {
    v8 = *(v4 + 496);

    *(v4 + 528) = a1;
    v7 = sub_1003B8E8C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B8E14()
{
  v1 = v0[52];

  v2 = v0[57];
  v3 = v0[50];
  v4 = v0[47];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003B8E8C()
{
  v1 = v0[66];
  v0[11] = v0[64];
  v0[12] = &off_10164F068;
  v0[8] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_1003B8F34;

  return daemon.getter();
}

uint64_t sub_1003B8F34(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 536);
  v5 = *v1;
  v3[68] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[69] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[70] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003B90EC;
  v10 = v3[55];
  v11 = v3[54];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003B90EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v7 = sub_1003B9928;
  }

  else
  {
    v8 = *(v4 + 544);

    *(v4 + 576) = a1;
    v7 = sub_1003B92AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003B921C()
{
  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[56];

  v4 = v0[65];
  v5 = v0[50];
  v6 = v0[47];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003B92AC()
{
  v1 = *(v0 + 560);
  v37 = *(v0 + 576);
  v2 = *(v0 + 512);
  v3 = *(v0 + 480);
  v40 = *(v0 + 464);
  v41 = *(v0 + 472);
  v38 = *(v0 + 448);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_10015049C(v0 + 64, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v39 = swift_task_alloc();
  v7 = *(v5 + 16);
  v7();
  v8 = *v39;
  *(v0 + 128) = v2;
  *(v0 + 136) = &off_10164F068;
  *(v0 + 104) = v8;
  *(v0 + 144) = v37;
  *(v0 + 168) = v1;
  *(v0 + 176) = &off_10164F7C0;
  *(v0 + 40) = v3;
  *(v0 + 48) = &off_101660C48;
  *(v0 + 16) = v4;
  *(v0 + 56) = &off_10162BCD8;
  *(v0 + 208) = v40;
  *(v0 + 216) = &off_10164E4F0;
  *(v0 + 184) = v41;
  type metadata accessor for ShareStopUseCase();
  v9 = swift_allocObject();
  *(v0 + 584) = v9;
  v10 = sub_10015049C(v0 + 104, v2);
  v36 = swift_task_alloc();
  (v7)(v36, v10, v2);
  v11 = *(v0 + 168);
  v12 = sub_10015049C(v0 + 144, v11);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  (*(v13 + 16))(v15, v12, v11);
  v16 = *(v0 + 208);
  v17 = sub_10015049C(v0 + 184, v16);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  (*(v18 + 16))(v20, v17, v16);
  v21 = *v15;
  v22 = *v20;
  *(v0 + 224) = *v36;
  *(v0 + 248) = v2;
  *(v0 + 256) = &off_10164F068;
  *(v0 + 288) = v1;
  *(v0 + 296) = &off_10164F7C0;
  *(v0 + 264) = v21;
  *(v0 + 328) = v40;
  *(v0 + 336) = &off_10164E4F0;
  *(v0 + 304) = v22;

  swift_defaultActor_initialize();
  *(v9 + 112) = v38;
  sub_10000A748((v0 + 224), v9 + 120);
  sub_10000A748((v0 + 264), v9 + 160);
  sub_1000BB3F0((v0 + 16), (v9 + 200));
  sub_10000A748((v0 + 304), v9 + 248);
  sub_100007BAC((v0 + 184));

  sub_100007BAC((v0 + 144));

  sub_100007BAC((v0 + 104));

  sub_100007BAC((v0 + 64));

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 392);
  v23 = *(v0 + 400);
  v25 = *(v0 + 376);
  v26 = *(v0 + 384);
  v28 = *(v0 + 360);
  v27 = *(v0 + 368);
  v29 = *(v0 + 352);
  sub_10002FDC4(*(v0 + 344), v23, type metadata accessor for OwnerPeerTrust);
  sub_10002FDC4(v29, v25, type metadata accessor for OwnerSharingCircle);
  v30 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v31 = (v24 + *(v28 + 80) + v30) & ~*(v28 + 80);
  v32 = swift_allocObject();
  *(v0 + 592) = v32;
  *(v32 + 16) = v9;
  sub_1003CBBBC(v23, v32 + v30, type metadata accessor for OwnerPeerTrust);
  sub_1003CBBBC(v25, v32 + v31, type metadata accessor for OwnerSharingCircle);
  v33 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v42 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v34 = swift_task_alloc();
  *(v0 + 600) = v34;
  *v34 = v0;
  v34[1] = sub_1003B97F8;

  return v42(&unk_10139FFC8, v32);
}

uint64_t sub_1003B97F8()
{
  v2 = *(*v1 + 600);
  v3 = *(*v1 + 592);
  v6 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v4 = sub_1003B9A5C;
  }

  else
  {
    v4 = sub_1003B99C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003B9928()
{
  v1 = v0[68];
  v2 = v0[59];
  v3 = v0[56];

  sub_100007BAC(v0 + 8);
  v4 = v0[71];
  v5 = v0[50];
  v6 = v0[47];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003B99C0()
{
  v1 = v0[73];
  v2 = v0[59];
  v3 = v0[56];
  v4 = v0[50];
  v5 = v0[47];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003B9A5C()
{
  v1 = v0[73];
  v2 = v0[59];
  v3 = v0[56];

  v4 = v0[76];
  v5 = v0[50];
  v6 = v0[47];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003B9AEC()
{
  v1 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v0[77] = swift_task_alloc();
  v2 = *(sub_1000BC4D4(&qword_101697700, &unk_10139FB90) - 8);
  v0[78] = v2;
  v3 = *(v2 + 64) + 15;
  v0[79] = swift_task_alloc();
  v0[80] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v0[81] = v4;
  v5 = *(v4 - 8);
  v0[82] = v5;
  v6 = *(v5 + 64) + 15;
  v0[83] = swift_task_alloc();
  v0[84] = swift_task_alloc();
  v0[85] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v0[86] = v8;
  *v8 = v0;
  v8[1] = sub_1003B9C98;

  return daemon.getter();
}

uint64_t sub_1003B9C98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 688);
  v12 = *v1;
  v3[87] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[88] = v6;
  v7 = type metadata accessor for Daemon();
  v3[89] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019420(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[90] = v9;
  v10 = sub_100019420(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1003B9E78;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003B9E78(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 704);
  v8 = *v2;
  v3[91] = a1;
  v3[92] = v1;

  if (v1)
  {
    v5 = sub_1003BA374;
  }

  else
  {
    v6 = v3[87];

    v5 = sub_1003B9F98;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003B9F98()
{
  v1 = v0[91];
  v0[93] = type metadata accessor for SharingCircleKeyManager();
  v2 = swift_allocObject();
  v0[94] = v2;

  swift_defaultActor_initialize();
  v0[95] = type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v2 + 112) = v3;
  *(v2 + 120) = v1;
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[96] = v5;
  *v5 = v0;
  v5[1] = sub_1003BA08C;

  return daemon.getter();
}

uint64_t sub_1003BA08C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 768);
  v5 = *v1;
  v3[97] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[98] = v7;
  v8 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v3[99] = v8;
  v9 = sub_100019420(&qword_1016B1180, type metadata accessor for IDSTransportService_ItemSharingCrossAccount);
  *v7 = v5;
  v7[1] = sub_1003BA244;
  v10 = v3[90];
  v11 = v3[89];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003BA244(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 784);
  v6 = *v2;
  *(*v2 + 800) = v1;

  if (v1)
  {
    v7 = sub_1003BA7BC;
  }

  else
  {
    v8 = *(v4 + 776);

    *(v4 + 808) = a1;
    v7 = sub_1003BA42C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003BA374()
{
  v1 = v0[87];

  v2 = v0[92];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[77];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003BA42C()
{
  v1 = v0[101];
  v0[20] = v0[99];
  v0[21] = &off_10164F068;
  v0[17] = v1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[102] = v3;
  *v3 = v0;
  v3[1] = sub_1003BA4D4;

  return daemon.getter();
}

uint64_t sub_1003BA4D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 816);
  v5 = *v1;
  v3[103] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[104] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v3[105] = v8;
  v9 = sub_100019420(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_1003BA68C;
  v10 = v3[90];
  v11 = v3[89];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003BA68C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 832);
  v6 = *v2;
  *(*v2 + 848) = v1;

  if (v1)
  {
    v7 = sub_1003BAE8C;
  }

  else
  {
    v8 = *(v4 + 824);

    *(v4 + 856) = a1;
    v7 = sub_1003BA88C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003BA7BC()
{
  v1 = v0[97];
  v2 = v0[94];
  v3 = v0[91];

  v4 = v0[100];
  v5 = v0[85];
  v6 = v0[84];
  v7 = v0[83];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[77];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003BA88C()
{
  v1 = *(v0 + 840);
  v31 = v1;
  v32 = *(v0 + 856);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v30 = *(v0 + 792);
  v33 = *(v0 + 728);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  v6 = *(v0 + 160);
  sub_10015049C(v0 + 136, v6);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v34 = swift_task_alloc();
  (*(v7 + 16))();
  v9 = *v34;
  *(v0 + 200) = v30;
  *(v0 + 208) = &off_10164F068;
  *(v0 + 176) = v9;
  *(v0 + 240) = v1;
  *(v0 + 248) = &off_10164F7C0;
  *(v0 + 216) = v32;
  *(v0 + 112) = v2;
  *(v0 + 120) = &off_101660C48;
  *(v0 + 88) = v5;
  *(v0 + 128) = &off_10162BCD8;
  *(v0 + 280) = v4;
  *(v0 + 288) = &off_10164E4F0;
  *(v0 + 256) = v3;
  type metadata accessor for ShareStopUseCase();
  v10 = swift_allocObject();
  *(v0 + 864) = v10;
  v11 = sub_10015049C(v0 + 176, v30);
  v12 = *(v30 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  (*(v12 + 16))(v14, v11, v30);
  v15 = *(v0 + 240);
  v16 = sub_10015049C(v0 + 216, v15);
  v17 = *(v15 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  (*(v17 + 16))(v19, v16, v15);
  v20 = *(v0 + 280);
  v21 = sub_10015049C(v0 + 256, v20);
  v22 = *(v20 - 8);
  v23 = *(v22 + 64) + 15;
  v24 = swift_task_alloc();
  (*(v22 + 16))(v24, v21, v20);
  v25 = *v14;
  v26 = *v19;
  v27 = *v24;
  *(v0 + 320) = v30;
  *(v0 + 328) = &off_10164F068;
  *(v0 + 296) = v25;
  *(v0 + 360) = v31;
  *(v0 + 368) = &off_10164F7C0;
  *(v0 + 336) = v26;
  *(v0 + 400) = v4;
  *(v0 + 408) = &off_10164E4F0;
  *(v0 + 376) = v27;

  swift_defaultActor_initialize();
  *(v10 + 112) = v33;
  sub_10000A748((v0 + 296), v10 + 120);
  sub_10000A748((v0 + 336), v10 + 160);
  sub_1000BB3F0((v0 + 88), (v10 + 200));
  sub_10000A748((v0 + 376), v10 + 248);
  sub_100007BAC((v0 + 256));

  sub_100007BAC((v0 + 216));

  sub_100007BAC((v0 + 176));

  sub_100007BAC((v0 + 136));

  type metadata accessor for CheckDataIntegrityUseCase();
  swift_allocObject();
  v28 = swift_task_alloc();
  *(v0 + 872) = v28;
  *v28 = v0;
  v28[1] = sub_1003BAD04;

  return sub_100111F58();
}